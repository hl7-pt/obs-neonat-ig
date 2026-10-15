# gestational-age-example - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **gestational-age-example**

## Example Observation: gestational-age-example

Perfil: [Perfil de Idade gestacional](StructureDefinition-GestationalAge.md)

**status**: Final

**code**: Gestational age Estimated

**subject**: [Doente anónimo Female, DoB: 2024-08-01](Patient-newBornNN.md)

**effective**: 2024-08-01 10:00:00+0000

**value**: 270 dias (Detalhes: UCUM códigod = 'd')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "gestational-age-example",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/GestationalAge"]
  },
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11884-4",
      "display" : "Gestational age Estimated"
    }]
  },
  "subject" : {
    "reference" : "Patient/newBornNN"
  },
  "effectiveDateTime" : "2024-08-01T10:00:00.000Z",
  "valueQuantity" : {
    "value" : 270,
    "unit" : "dias",
    "system" : "http://unitsofmeasure.org",
    "code" : "d"
  }
}

```
