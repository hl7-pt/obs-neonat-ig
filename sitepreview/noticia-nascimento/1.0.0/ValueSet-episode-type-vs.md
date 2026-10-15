# Tipos de episódio ValueSet - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de episódio ValueSet**

## ValueSet: Tipos de episódio ValueSet (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/ValueSet/episode-type-vs | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:TipoepisodioVS |

 
Tipos de episódio ValueSet 

 **References** 

* [Perfil sobre episódio da notícia de nascimento](StructureDefinition-Contact.md)

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
  "id" : "episode-type-vs",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/ValueSet/episode-type-vs",
  "version" : "1.0.0",
  "name" : "TipoepisodioVS",
  "title" : "Tipos de episódio ValueSet",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Tipos de episódio ValueSet",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://hl7.pt/fhir/noticia-nascimento/CodeSystem/tipo-episodio-cs"
    }]
  }
}

```
