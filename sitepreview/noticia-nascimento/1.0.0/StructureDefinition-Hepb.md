# Perfil de Informação sobre vacinação - hepb - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Informação sobre vacinação - hepb**

## Resource Profile: Perfil de Informação sobre vacinação - hepb 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Hepb | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:Hepb |

 
Perfil de Informação sobre vacinação - hepb 

**Usos:**

* Refere a este Perfil: [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md)
* Exemplos para este Perfil: [Immunization/vaccNN-hepb](Immunization-vaccNN-hepb.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-Hepb.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Hepb.csv), [Excel](StructureDefinition-Hepb.xlsx), [Schematron](StructureDefinition-Hepb.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Hepb",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Hepb",
  "version" : "1.0.0",
  "name" : "Hepb",
  "title" : "Perfil de Informação sobre vacinação - hepb",
  "status" : "active",
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
  "description" : "Perfil de Informação sobre vacinação - hepb",
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
  "baseDefinition" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Vaccination",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Immunization",
      "path" : "Immunization"
    },
    {
      "id" : "Immunization.vaccineCode",
      "path" : "Immunization.vaccineCode",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "871822003",
          "display" : "Vaccine product containing only Hepatitis B virus antigen (medicinal product)"
        }]
      }
    }]
  }
}

```
