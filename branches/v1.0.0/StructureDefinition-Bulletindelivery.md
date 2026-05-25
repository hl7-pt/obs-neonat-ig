# Perfil de Informação sobre entrega de boletim - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Informação sobre entrega de boletim**

## Resource Profile: Perfil de Informação sobre entrega de boletim 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Bulletindelivery | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:Bulletindelivery |

 
Perfil de Informação sobre entrega de boletim 

**Usos:**

* Refere a este Perfil: [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-Bulletindelivery.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Bulletindelivery.csv), [Excel](StructureDefinition-Bulletindelivery.xlsx), [Schematron](StructureDefinition-Bulletindelivery.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Bulletindelivery",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Bulletindelivery",
  "version" : "1.0.0",
  "name" : "Bulletindelivery",
  "title" : "Perfil de Informação sobre entrega de boletim",
  "status" : "active",
  "date" : "2026-05-25T11:37:14+00:00",
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
  "description" : "Perfil de Informação sobre entrega de boletim",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure"
    },
    {
      "id" : "Procedure.category",
      "path" : "Procedure.category",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.pt/fhir/noticia-nascimento/ValueSet/document-type-vs"
      }
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.pt/fhir/noticia-nascimento/ValueSet/bulletin-delivery-vs"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Mother"]
      }]
    },
    {
      "id" : "Procedure.performed[x]",
      "path" : "Procedure.performed[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
