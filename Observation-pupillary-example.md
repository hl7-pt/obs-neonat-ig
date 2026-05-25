# pupillary-example - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **pupillary-example**

## Example Observation: pupillary-example

Perfil: [Perfil de informação clinicas - Teste Reflexo pupilar](StructureDefinition-Pupillary.md)

**status**: Final

**code**: Pupil reaction

> **component****code**: Right pupil Pupillary response**value**: No abnormality detected - examination result

> **component****code**: Left pupil Pupillary response**value**: No abnormality detected - examination result



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "pupillary-example",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Pupillary"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "271733001",
      "display" : "Pupil reaction"
    }]
  },
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "79815-7",
        "display" : "Right pupil Pupillary response"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "282332003",
        "display" : "No abnormality detected - examination result"
      }]
    }
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "79899-1",
        "display" : "Left pupil Pupillary response"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "282332003",
        "display" : "No abnormality detected - examination result"
      }]
    }
  }]
}

```
