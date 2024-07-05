O mapeamento não foi feito de forma direta, sendo que a estrutura foi alterada de forma a corresponder a um documento em FHIR. No entanto, tentou-se que a alteração fosse o menos profunda possivel, de forma a facilitar a implementação.
Tentámos usar terminologias internacionais sempre que possiveis, criando CodeSystem quando não foi possivel. Tentámos também vincular campos codificados a estas terminologias. De igual forma, criámos constraints adicionais para facilitar a transformação.

Aqui deixamos uma visão geral do modelo lógico e de como este se transforma no documento FHIR.



<div>{% include mapping-overview.svg %}</div>
<br clear="all"/>

