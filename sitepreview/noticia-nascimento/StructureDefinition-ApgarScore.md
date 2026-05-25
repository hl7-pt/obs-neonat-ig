# Perfil de informação clinicas - apgarScore - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de informação clinicas - apgarScore**

## Resource Profile: Perfil de informação clinicas - apgarScore 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ApgarScore | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:ApgarScore |

 
Perfil de informação clinicas - apgarScore 

**Usos:**

* Refere a este Perfil: [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md)
* Exemplos para este Perfil: [Observation/apgar-example](Observation-apgar-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-ApgarScore.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ApgarScore.csv), [Excel](StructureDefinition-ApgarScore.xlsx), [Schematron](StructureDefinition-ApgarScore.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ApgarScore",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ApgarScore",
  "version" : "1.0.0",
  "name" : "ApgarScore",
  "title" : "Perfil de informação clinicas - apgarScore",
  "status" : "active",
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
  "description" : "Perfil de informação clinicas - apgarScore",
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
      "path" : "Observation",
      "constraint" : [{
        "key" : "should-be-between-0-and-10",
        "severity" : "error",
        "human" : "Integer SHOULD be between 0 and 10",
        "expression" : "Observation.component.all($this.value >=7 and $this.value <=10 )",
        "source" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ApgarScore"
      }]
    },
    {
      "id" : "Observation.status",
      "path" : "Observation.status",
      "patternCode" : "final"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1287344004",
          "display" : "Apgar score (assessment scale)"
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
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:first",
      "path" : "Observation.component",
      "sliceName" : "first",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:first.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "169895004",
          "display" : "Apgar score at 1 minute (observable entity)"
        }]
      }
    },
    {
      "id" : "Observation.component:first.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:fifth",
      "path" : "Observation.component",
      "sliceName" : "fifth",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:fifth.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "169909004",
          "display" : "Apgar score at 5 minutes (observable entity)"
        }]
      }
    },
    {
      "id" : "Observation.component:fifth.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:tenth",
      "path" : "Observation.component",
      "sliceName" : "tenth",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:tenth.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "169922007",
          "display" : "Apgar score at 10 minutes (observable entity)"
        }]
      }
    },
    {
      "id" : "Observation.component:tenth.value[x]",
      "path" : "Observation.component.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
