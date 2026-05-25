# congenital-example - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **congenital-example**

## Example Observation: congenital-example

Perfil: [Perfil de informação clinicas - Rastreio Cardiopatias Congénitas](StructureDefinition-Congenital.md)

**status**: Final

**code**: Congenital anomalies of the newborn [US Standard Certificate of Live Birth]

**value**: No abnormality detected - examination result



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "congenital-example",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Congenital"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "73780-9",
      "display" : "Congenital anomalies of the newborn [US Standard Certificate of Live Birth]"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "282332003",
      "display" : "No abnormality detected - examination result"
    }]
  }
}

```
