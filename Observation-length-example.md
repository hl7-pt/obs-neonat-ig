# length-example - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **length-example**

## Example Observation: length-example

Perfil: [Observation Body Height Profile](http://hl7.org/fhir/R4/bodyheight.html)

**status**: Final

**category**: Vital Signs

**code**: Bdy height

**subject**: [Doente anónimo Female, DN Desconhecida](Patient-newBornNN.md)

**effective**: 2024-08-01 10:00:00+0000

**value**: 50 cm(s) (Detalhes: UCUM códigocm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "length-example",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/bodyheight"]
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
