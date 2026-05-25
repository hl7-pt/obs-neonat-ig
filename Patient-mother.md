# mother - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mother**

## Example Patient: mother

Perfil: [Perfil da mãe](StructureDefinition-Mother.md)

NOME DE TESTE (sem género declarado), DoB: 1989-07-30 ( http://example#1234567)

-------

| | |
| :--- | :--- |
| Detalhes do contacto | MORADA DE TESTE |
| Patient Nationality: | * code: Portugal
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "mother",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Mother"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "text" : "Portugal"
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
  }],
  "identifier" : [{
    "system" : "http://example",
    "value" : "1234567"
  }],
  "name" : [{
    "text" : "NOME DE TESTE"
  }],
  "birthDate" : "1989-07-30",
  "address" : [{
    "line" : ["MORADA DE TESTE"]
  }]
}

```
