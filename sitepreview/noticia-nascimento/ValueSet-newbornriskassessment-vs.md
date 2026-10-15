# Tipos de risco para avaliação de recém-nascidos ValueSet - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de risco para avaliação de recém-nascidos ValueSet**

## ValueSet: Tipos de risco para avaliação de recém-nascidos ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/ValueSet/newbornriskassessment-vs | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:NewbornriskassessmentVS |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | |

 
Tipos de risco para avaliação de recém-nascidos ValueSet 

 **References** 

* [Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR](StructureDefinition-Newbornriskassessment.md)

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
  "id" : "newbornriskassessment-vs",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/ValueSet/newbornriskassessment-vs",
  "version" : "1.0.0",
  "name" : "NewbornriskassessmentVS",
  "title" : "Tipos de risco para avaliação de recém-nascidos ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-05-25T11:01:41+00:00",
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
  "description" : "Tipos de risco para avaliação de recém-nascidos ValueSet",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "102486008",
        "display" : "Familial risk factor (observable entity)"
      },
      {
        "code" : "102485007",
        "display" : "Personal risk factor (observable entity)"
      },
      {
        "code" : "102487004",
        "display" : "Environmental risk factor (observable entity)"
      }]
    }]
  }
}

```
