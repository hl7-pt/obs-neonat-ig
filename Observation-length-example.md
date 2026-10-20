# length-example - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **length-example**

## Example Observation: length-example

Perfil: [Perfil de Comprimento ao nascer](StructureDefinition-BirthLength.md)

**status**: Final

**category**: Vital Signs

**code**: Body height Measured --at birth

**subject**: [Doente anónimo Female, DoB: 2024-08-01](Patient-newBornNN.md)

**effective**: 2024-08-01 10:00:00+0000

**value**: 50 cm(s) (Detalhes: UCUM códigocm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "length-example",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthLength"]
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
      "code" : "89269-5",
      "display" : "Body height Measured --at birth"
    },
    {
      "system" : "http://loinc.org",
      "code" : "8302-2"
    }]
  },
  "subject" : {
    "reference" : "Patient/newBornNN"
  },
  "effectiveDateTime" : "2024-08-01T10:00:00.000Z",
  "valueQuantity" : {
    "value" : 50,
    "unit" : "cm(s)",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
