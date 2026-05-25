# Tipos de transporte de recém-nascido ValueSet - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de transporte de recém-nascido ValueSet**

## ValueSet: Tipos de transporte de recém-nascido ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/ValueSet/transport-type-vs | *Version*:0.0.1 |
| Active as of 2026-05-25 | *Computable Name*:TransportTypeVS |

 
Tipos de transporte de recém-nascido ValueSet 

 **References** 

* [Extensão sobre informação sobre Transportes](StructureDefinition-transport-information.md)

### Logical Definition (CLD)

 

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
  "id" : "transport-type-vs",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/ValueSet/transport-type-vs",
  "version" : "0.0.1",
  "name" : "TransportTypeVS",
  "title" : "Tipos de transporte de recém-nascido ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T11:22:18+00:00",
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
  "description" : "Tipos de transporte de recém-nascido ValueSet",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "255407002",
        "display" : "Neonatal (qualifier value)"
      },
      {
        "code" : "1156684004",
        "display" : "Fetal antepartum and/or intrapartum and/or early neonatal period (qualifier value)"
      }]
    }]
  }
}

```
