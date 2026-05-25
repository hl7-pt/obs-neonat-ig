# Tipos de doença congénita ValueSet - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de doença congénita ValueSet**

## ValueSet: Tipos de doença congénita ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/ValueSet/newborn-congenital-anomalies-vs | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:NewbornCongenitalAnomaliesVS |

 
Tipos de doença congénita ValueSet 

 **References** 

* [Perfil de informação clinicas - Rastreio Cardiopatias Congénitas](StructureDefinition-Congenital.md)

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
  "id" : "newborn-congenital-anomalies-vs",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/ValueSet/newborn-congenital-anomalies-vs",
  "version" : "1.0.0",
  "name" : "NewbornCongenitalAnomaliesVS",
  "title" : "Tipos de doença congénita ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T10:59:19+00:00",
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
  "description" : "Tipos de doença congénita ValueSet",
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
        "code" : "89369001",
        "display" : "Anencephalus"
      },
      {
        "code" : "67531005",
        "display" : "Meningomyelocele/Spina bifida"
      },
      {
        "code" : "12770006",
        "display" : "Cyanotic congenital heart disease"
      },
      {
        "code" : "17190001",
        "display" : "Congenital diaphragmatic hernia"
      },
      {
        "code" : "18735004",
        "display" : "Congenital omphalocele"
      },
      {
        "code" : "72951007",
        "display" : "Gastroschisis"
      },
      {
        "code" : "67341007",
        "display" : "Longitudinal deficiency of limb - Limb reduction defect (excluding congenital amputation and dwarfing syndromes)"
      },
      {
        "code" : "80281008",
        "display" : "Cleft Lip with or without Cleft Palate"
      },
      {
        "code" : "87979003",
        "display" : "Cleft palate"
      },
      {
        "code" : "70156005",
        "display" : "Anomaly of chromosome pair 21"
      },
      {
        "code" : "409709004",
        "display" : "Chromosomal disorder"
      },
      {
        "code" : "416010008",
        "display" : "Hypospadias"
      },
      {
        "code" : "282332003",
        "display" : "No abnormality detected - examination result"
      }]
    }]
  }
}

```
