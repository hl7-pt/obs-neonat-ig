# pregnancyNN - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pregnancyNN**

## Example Observation: pregnancyNN

Perfil: [Perfil de Informação de gravidez](StructureDefinition-Pregnancy.md)

**status**: Final

**code**: Pregnancy (finding)

**subject**: [Doente anónimo Female, DN Desconhecida](Patient-newBornNN.md)

**effective**: 2024-08-01 10:00:00+0000



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pregnancyNN",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Pregnancy"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "77386006",
      "display" : "Pregnancy (finding)"
    }]
  },
  "subject" : {
    "reference" : "Patient/newBornNN"
  },
  "effectiveDateTime" : "2024-08-01T10:00:00.000Z"
}

```
