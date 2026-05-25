# body-weigth-example - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **body-weigth-example**

## Example Observation: body-weigth-example

Perfil: [Observation Body Weight Profile](http://hl7.org/fhir/R4/bodyweight.html)

**status**: Final

**category**: Vital Signs

**code**: Weight

**subject**: [Doente anónimo Female, DN Desconhecida](Patient-newBornNN.md)

**effective**: 2024-08-01 10:00:00+0000

**value**: 3250 gram(s) (Detalhes: UCUM códigog = 'g')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "body-weigth-example",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/bodyweight"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "vital-signs"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "29463-7"
    }]
  },
  "subject" : {
    "reference" : "Patient/newBornNN"
  },
  "effectiveDateTime" : "2024-08-01T10:00:00.000Z",
  "valueQuantity" : {
    "value" : 3250,
    "unit" : "gram(s)",
    "system" : "http://unitsofmeasure.org",
    "code" : "g"
  }
}

```
