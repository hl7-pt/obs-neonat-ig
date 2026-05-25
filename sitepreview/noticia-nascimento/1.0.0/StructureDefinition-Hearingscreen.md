# Perfil de informação clinicas - Rastreio auditivo neonatal universal - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de informação clinicas - Rastreio auditivo neonatal universal**

## Resource Profile: Perfil de informação clinicas - Rastreio auditivo neonatal universal 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Hearingscreen | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:Hearingscreen |

 
Perfil de informação clinicas - Rastreio auditivo neonatal universal 

**Usos:**

* Refere a este Perfil: [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-Hearingscreen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Hearingscreen.csv), [Excel](StructureDefinition-Hearingscreen.xlsx), [Schematron](StructureDefinition-Hearingscreen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Hearingscreen",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Hearingscreen",
  "version" : "1.0.0",
  "name" : "Hearingscreen",
  "title" : "Perfil de informação clinicas - Rastreio auditivo neonatal universal",
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
  "description" : "Perfil de informação clinicas - Rastreio auditivo neonatal universal",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "417491009",
          "display" : "Neonatal hearing test"
        }]
      }
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "code"
        }],
        "rules" : "closed"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:right",
      "path" : "Observation.component",
      "sliceName" : "right",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:right.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1268789008",
          "display" : "Structure of right auditory system"
        }]
      }
    },
    {
      "id" : "Observation.component:right.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:left",
      "path" : "Observation.component",
      "sliceName" : "left",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:left.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1268788000",
          "display" : "Structure of left auditory system (body structure)"
        }]
      }
    },
    {
      "id" : "Observation.component:left.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
