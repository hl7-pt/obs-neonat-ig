# apgar-example - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **apgar-example**

## Example Observation: apgar-example

Perfil: [Perfil de informação clinicas - apgarScore](StructureDefinition-ApgarScore.md)

**status**: Final

**code**: Apgar score (assessment scale)

> **component****code**: Apgar score at 1 minute (observable entity)**value**: 7

> **component****code**: Apgar score at 5 minutes (observable entity)**value**: 9

> **component****code**: Apgar score at 10 minutes (observable entity)**value**: 10



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "apgar-example",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ApgarScore"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1287344004",
      "display" : "Apgar score (assessment scale)"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "169895004",
        "display" : "Apgar score at 1 minute (observable entity)"
      }]
    },
    "valueInteger" : 7
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "169909004",
        "display" : "Apgar score at 5 minutes (observable entity)"
      }]
    },
    "valueInteger" : 9
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "169922007",
        "display" : "Apgar score at 10 minutes (observable entity)"
      }]
    },
    "valueInteger" : 10
  }]
}

```
