# Perfil sobre Informação sobre vacinação - genérico - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil sobre Informação sobre vacinação - genérico**

## Resource Profile: Perfil sobre Informação sobre vacinação - genérico 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Vaccination | *Version*:0.0.1 |
| Active as of 2026-05-25 | *Computable Name*:Vaccination |

 
Perfil sobre Informação sobre vacinação - genérico 

**Usos:**

* Derivado deste Perfil: [Perfil de Informação sobre vacinação - antid](StructureDefinition-Antid.md), [Perfil de Informação sobre vacinação - BCG](StructureDefinition-Bcg.md) and [Perfil de Informação sobre vacinação - hepb](StructureDefinition-Hepb.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-Vaccination.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Vaccination.csv), [Excel](StructureDefinition-Vaccination.xlsx), [Schematron](StructureDefinition-Vaccination.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Vaccination",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Vaccination",
  "version" : "0.0.1",
  "name" : "Vaccination",
  "title" : "Perfil sobre Informação sobre vacinação - genérico",
  "status" : "active",
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
  "description" : "Perfil sobre Informação sobre vacinação - genérico",
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
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Immunization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Immunization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization",
      "constraint" : [{
        "key" : "reason-required-not-completed",
        "severity" : "error",
        "human" : "Either status is completed with date or a reason for the status is required",
        "expression" : "(status = 'completed' and occurrence.exists() and lotNumber.exists()) or (status!='completed' and statusReason.exists())",
        "source" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Vaccination"
      }]
    },
    {
      "id" : "Immunization.status",
      "path" : "Immunization.status",
      "mustSupport" : true
    },
    {
      "id" : "Immunization.patient",
      "path" : "Immunization.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Child"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.occurrence[x]",
      "path" : "Immunization.occurrence[x]",
      "type" : [{
        "code" : "dateTime"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Immunization.lotNumber",
      "path" : "Immunization.lotNumber",
      "mustSupport" : true
    }]
  }
}

```
