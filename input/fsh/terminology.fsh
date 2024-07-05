CodeSystem: TipoPartoCS
Id:         tipo-parto-cs
Title:     "Tipos de parto code system"
Description: "Tipos de parto code system"
// For information about creating a code system in the `terminology.hl7.org` namespace, see
// this documentation on the UTG process: https://confluence.hl7.org/display/VMAH/Vocabulary+Maintenance+at+HL7
// You can also create a URL local to your Implementation Guide like `http://hl7.org/fhir/uv/your-ig/CodeSystem/lymphnodes`
// The "Terminology" stream on chat.fhir.org (free registration required) is a good place to ask
// questions about how to handle this for your specific use case (direct link: https://bit.ly/terminology-fhir-chat)
* ^url =  "http://terminology.hl7.pt/CodeSystem/tipoparto"
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #1
    "Eutócico Cefálico"
    "Eutócico Cefálico"
* #2
    "Distócico-Forceps"
    "Distócico-Forceps"
* #3
    "Distócico-Ventosa"
    "Distócico-Ventosa"
* #4
    "Distócico-Cesariana"
    "Distócico-Cesariana"
* #5
    "Eutócico-Gemelar"
    "Eutócico-Gemelar"
* #6
    "Eutócico-Pélvico"
    "Eutócico-Pélvico"
* #7
    "Distócico Gemelar"
    "Distócico Gemelar"
* #8
    "Distócico- Pélvico"
    "Distócico- Pélvico"
* #9
    "Desconhecido"
    "Desconhecido"
* #10
    "Distócico-Espátulas de Thierry"
    "Distócico-Espátulas de Thierry"

ValueSet: TipoPartoVS
Id: tipo-parto-vs
Title:  "Tipos de parto ValueSet"
Description:  "Tipos de parto ValueSet"

* include codes from system tipo-parto-cs



CodeSystem: RiscoGravidezCS
Id:         risco-gravidez-cs
Title:     "Risco de gravidez code system"
Description: "Risco de gravidez code system"
// For information about creating a code system in the `terminology.hl7.org` namespace, see
// this documentation on the UTG process: https://confluence.hl7.org/display/VMAH/Vocabulary+Maintenance+at+HL7
// You can also create a URL local to your Implementation Guide like `http://hl7.org/fhir/uv/your-ig/CodeSystem/lymphnodes`
// The "Terminology" stream on chat.fhir.org (free registration required) is a good place to ask
// questions about how to handle this for your specific use case (direct link: https://bit.ly/terminology-fhir-chat)
* ^url =  "http://terminology.hl7.pt/CodeSystem/riscogravidez"
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #0
    "Baixo"
    "Baixo"
* #1
    "Médio"
    "Médio"
* #2
    "Alto"
    "Alto"

ValueSet: RiscoGravidezVS
Id: risco-gravidez-vs
Title:  "Risco de gravidez ValueSet"
Description:  "Risco de gravidez ValueSet"

* include codes from system risco-gravidez-cs


ValueSet: TipoGravidezVS
Id: tipo-gravidez-vs
Title:  "Tipo de gravidez ValueSet"
Description:  "Tipo de gravidez ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#169826009  "Single live birth (finding)"
* $sct#45384004  "Multiple birth (finding)"

ValueSet: VacinasinfanciaVS
Id: vacinas-infancia-vs
Title:  "Tipo de gravidez ValueSet"
Description:  "Tipo de gravidez ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#1861000221106  "Vaccine product containing only live attenuated Mycobacterium bovis antigen (medicinal product)"
* $sct#871822003  "Vaccine product containing only Hepatitis B virus antigen (medicinal product)"
* $sct#769102002 "Human anti-D immunoglobulin (substance)"




