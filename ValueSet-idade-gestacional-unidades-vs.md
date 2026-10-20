# Unidades da idade gestacional - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Unidades da idade gestacional**

## ValueSet: Unidades da idade gestacional 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/ValueSet/idade-gestacional-unidades-vs | *Version*:1.0.0 |
| Active as of 2026-10-20 | *Computable Name*:IdadeGestacionalUnidadesVS |

 
Unidades UCUM permitidas para a idade gestacional (semanas ou dias) 

 **References** 

* [Perfil de Idade gestacional](StructureDefinition-GestationalAge.md)

### Definição lógica (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "idade-gestacional-unidades-vs",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/ValueSet/idade-gestacional-unidades-vs",
  "version" : "1.0.0",
  "name" : "IdadeGestacionalUnidadesVS",
  "title" : "Unidades da idade gestacional",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-20T10:47:32+00:00",
  "publisher" : "HL7 Portugal",
  "contact" : [{
    "name" : "HL7 Portugal",
    "telecom" : [{
      "system" : "url",
      "value" : "http://hl7.pt"
    },
    {
      "system" : "email",
      "value" : "info@hl7.pt"
    }]
  },
  {
    "name" : "HL7 Portugal",
    "telecom" : [{
      "system" : "email",
      "value" : "geral@hl7.pt",
      "use" : "work"
    }]
  }],
  "description" : "Unidades UCUM permitidas para a idade gestacional (semanas ou dias)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://unitsofmeasure.org",
      "concept" : [{
        "code" : "wk",
        "display" : "week",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "semana"
        }]
      },
      {
        "code" : "d",
        "display" : "day",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "dia"
        }]
      }]
    }]
  }
}

```
