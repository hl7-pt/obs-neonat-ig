#!/bin/bash
publisher_jar=publisher.jar
input_cache_path=./input-cache

has_tx_arg=false
for arg in "$@"; do
	if [ "$arg" = "-tx" ]; then
		has_tx_arg=true
		break
	fi
done

if [ "$has_tx_arg" = true ]; then
	txoption=""
elif [ -n "$TX_SERVER" ]; then
	if [ "$TX_SERVER" = "n/a" ]; then
		txoption="-tx n/a"
	else
		txoption="-tx $TX_SERVER"
	fi
else
	echo "Checking internet connection to terminology server..."
	if curl -sSf --connect-timeout 5 --max-time 10 https://tx.fhir.org > /dev/null 2>&1; then
		echo "Online: tx.fhir.org is reachable"
		txoption=""
	else
		echo "Offline or tx.fhir.org unreachable, falling back to -tx n/a"
		txoption="-tx n/a"
	fi
fi

if [ -n "$txoption" ]; then
	echo "Terminology option: $txoption"
fi

publisher="$input_cache_path/$publisher_jar"
if ! test -f "$publisher"; then
	publisher="../$publisher_jar"
fi

if test -f "$publisher"; then
	java ${JAVA_OPTS:--Xmx4g} -jar "$publisher" -ig . $txoption "$@"
	EXIT_CODE=$?
	if [ $EXIT_CODE -ne 0 ] && [ -z "$txoption" ] && [ "$has_tx_arg" = false ]; then
		echo "Build failed with default terminology server. Retrying offline with -tx n/a..."
		java ${JAVA_OPTS:--Xmx4g} -jar "$publisher" -ig . -tx n/a "$@"
		EXIT_CODE=$?
	fi
	exit $EXIT_CODE
else
	echo "IG Publisher NOT FOUND in input-cache or parent folder. Please run _updatePublisher. Aborting..."
	exit 1
fi
