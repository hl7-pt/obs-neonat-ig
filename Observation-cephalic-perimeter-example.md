# cephalic-perimeter-example - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **cephalic-perimeter-example**

## Example Observation: cephalic-perimeter-example

Perfil: [Perfil de Perímetro cefálico ao nascer](StructureDefinition-BirthHeadCircumference.md)

**status**: Final

**category**: Vital Signs

**code**: Head Occipital-frontal circumference --at birth- by Tape measure

**subject**: [Doente anónimo Female, DoB: 2024-08-01](Patient-newBornNN.md)

**effective**: 2024-08-01 10:00:00+0000

**value**: 50.1 cm(s) (Detalhes: UCUM códigocm = 'cm')



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "cephalic-perimeter-example",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthHeadCircumference"]
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
      "code" : "8290-9",
      "display" : "Head Occipital-frontal circumference --at birth- by Tape measure"
    },
    {
      "system" : "http://loinc.org",
      "code" : "9843-4"
    }]
  },
  "subject" : {
    "reference" : "Patient/newBornNN"
  },
  "effectiveDateTime" : "2024-08-01T10:00:00.000Z",
  "valueQuantity" : {
    "value" : 50.1,
    "unit" : "cm(s)",
    "system" : "http://unitsofmeasure.org",
    "code" : "cm"
  }
}

```
