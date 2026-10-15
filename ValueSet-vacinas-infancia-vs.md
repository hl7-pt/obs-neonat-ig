# Vacinas e imunoglobulinas do recém-nascido ValueSet - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vacinas e imunoglobulinas do recém-nascido ValueSet**

## ValueSet: Vacinas e imunoglobulinas do recém-nascido ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/ValueSet/vacinas-infancia-vs | *Version*:1.0.0 |
| Active as of 2026-10-15 | *Computable Name*:VacinasinfanciaVS |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | |

 
Vacinas e imunoglobulinas registadas na notícia de nascimento (Immunization.vaccineCode). 

 **References** 

* [Perfil sobre Informação sobre vacinação](StructureDefinition-Vaccination.md)

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
  "id" : "vacinas-infancia-vs",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/ValueSet/vacinas-infancia-vs",
  "version" : "1.0.0",
  "name" : "VacinasinfanciaVS",
  "title" : "Vacinas e imunoglobulinas do recém-nascido ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-15T08:48:18+00:00",
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
  "description" : "Vacinas e imunoglobulinas registadas na notícia de nascimento (Immunization.vaccineCode).",
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
        "code" : "836374004",
        "display" : "Vaccine product containing only Hepatitis B virus antigen (medicinal product)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Vacina contra a hepatite B"
        }]
      },
      {
        "code" : "836402002",
        "display" : "Vaccine product containing only live attenuated Mycobacterium bovis antigen (medicinal product)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Vacina BCG"
        }]
      },
      {
        "code" : "786224004",
        "display" : "Product containing only human anti-D immunoglobulin (medicinal product)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Imunoglobulina anti-D humana"
        }]
      }]
    }]
  }
}

```
