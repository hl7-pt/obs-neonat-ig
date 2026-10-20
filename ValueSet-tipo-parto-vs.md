# Tipos de parto ValueSet - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de parto ValueSet**

## ValueSet: Tipos de parto ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/ValueSet/tipo-parto-vs | *Version*:1.0.0 |
| Active as of 2026-10-20 | *Computable Name*:TipoPartoVS |

 
Tipos de parto ValueSet 

 **References** 

* [Perfil de Informação do Parto](StructureDefinition-Birth.md)

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
  "id" : "tipo-parto-vs",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/ValueSet/tipo-parto-vs",
  "version" : "1.0.0",
  "name" : "TipoPartoVS",
  "title" : "Tipos de parto ValueSet",
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
  "description" : "Tipos de parto ValueSet",
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
        "code" : "48782003",
        "display" : "Delivery normal (finding)"
      },
      {
        "code" : "271373005",
        "display" : "Deliveries by spontaneous breech delivery (finding)"
      },
      {
        "code" : "309469004",
        "display" : "Spontaneous vertex delivery (finding)"
      },
      {
        "code" : "200130005",
        "display" : "Forceps delivery - delivered (finding)"
      },
      {
        "code" : "10761101000119105",
        "display" : "Vacuum assisted vaginal delivery (finding)"
      },
      {
        "code" : "271370008",
        "display" : "Deliveries by breech extraction (finding)"
      }]
    }]
  }
}

```
