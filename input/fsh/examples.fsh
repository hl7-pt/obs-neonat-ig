Instance: mother
InstanceOf: Mother
Description: "Exemplo NN"
Usage: #inline

* identifier.system = "http://example"
* identifier.value = "1234567"
* name.text = "NOME DE TESTE"
* birthDate = "1989-07-30"
* address.line = "MORADA DE TESTE"
* extension[nationality].extension[code].valueCodeableConcept.text = "Portugal"


Instance: inst
InstanceOf: Organization
Description: "Exemplo NN"
Usage: #inline
* name = "CH ENTRE DOURO E VOUGA"

Instance: destino
InstanceOf: Organization
Description: "Exemplo NN"
Usage: #inline
* identifier.value = "2010491"
* name = "USF ESCARIZ"

Instance: episodio
InstanceOf: Contact
Description: "Exemplo NN"
Usage: #inline

* identifier.value = "18001555"

* class = tipo-episodio-cs#INT

* serviceProvider = Reference(inst)

* serviceType.text = "Obstetricia"

Instance: episodioInt
InstanceOf: Encounter
Description: "Exemplo NN"
Usage: #inline

* class = tipo-episodio-cs#INT
* status = #finished

Instance: BirthNN
InstanceOf: Birth
Description: "Exemplo NN"
Usage: #inline

* effectiveDateTime = "2024-08-01T10:00:00.000Z"

Instance: pregnancyNN
InstanceOf: Birth
Description: "Exemplo Pregnancy"
Usage: #inline

* effectiveDateTime = "2024-08-01T10:00:00.000Z"


Instance: newBornNN
InstanceOf: Child
Description: "Exemplo New born"
Usage: #inline

* gender = #female



Instance: vaccNN
InstanceOf: Vaccination
Description: "Exemplo NN"
Usage: #inline

* status = #completed
* vaccineCode = http://example#1 "xx"
* patient = Reference(newBornNN)
* occurrenceDateTime = "2024-08-01T10:00:00.000Z"



Instance: compNN
InstanceOf: CompositionNoticia
Description: "Exemplo NN"
Usage: #inline
* date = "2021-09-01"

* author.display = "ee"
* title = "ssss"

* encounter = Reference(episodio)
* section[mother].entry = Reference(mother)


* section[pregnancy].entry = Reference(pregnancyNN)
* section[birth].entry[birthInfo]  = Reference(BirthNN)
* section[birth].entry[episode]  = Reference(episodioInt)

* section[newborn].entry = Reference(newBornNN)
//* section[exams].entry = Reference(pregnancyNN)
* section[vaccination].entry = Reference(vaccNN)
* section[followup].entry[destination]  = Reference(destino)


Instance: exemploNN
InstanceOf: Bundle
Description: "Exemplo NN"
Usage: #example

* identifier.system = "http:/example.org"
* identifier.value = "2"


* timestamp = "2024-11-28T22:00:00Z"
* type = #document
* entry[0].resource = compNN
* entry[0].fullUrl = "http://example.org/Composition/compNN"

* entry[+].resource = BirthNN
* entry[=].fullUrl = "http://example.org/Observation/BirthNN"

* entry[+].resource = episodioInt
* entry[=].fullUrl = "http://example.org/Encounter/episodioInt"

* entry[+].resource = destino
* entry[=].fullUrl = "http://example.org/Organization/destino"

* entry[+].resource = mother
* entry[=].fullUrl = "http://example.org/Patient/mother"

* entry[+].resource = episodio
* entry[=].fullUrl = "http://example.org/Encounter/episodio"

* entry[+].resource = inst
* entry[=].fullUrl = "http://example.org/Organization/inst"


* entry[+].fullUrl = "http://example.org/Observation/pregnancyNN"
* entry[=].resource = pregnancyNN

* entry[+].fullUrl = "http://example.org/Patient/newBornNN"
* entry[=].resource = newBornNN

* entry[+].fullUrl = "http://example.org/Immunization/vaccNN"
* entry[=].resource = vaccNN