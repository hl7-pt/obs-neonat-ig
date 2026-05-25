# Perfil de Informação de gravidez - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Informação de gravidez**

## Resource Profile: Perfil de Informação de gravidez 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Pregnancy | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:Pregnancy |

 
Perfil de Informação de gravidez 

**Usos:**

* Refere a este Perfil: [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md)
* Exemplos para este Perfil: [Observation/pregnancyNN](Observation-pregnancyNN.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-Pregnancy.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Pregnancy.csv), [Excel](StructureDefinition-Pregnancy.xlsx), [Schematron](StructureDefinition-Pregnancy.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Pregnancy",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Pregnancy",
  "version" : "1.0.0",
  "name" : "Pregnancy",
  "title" : "Perfil de Informação de gravidez",
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
  "description" : "Perfil de Informação de gravidez",
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
          "code" : "77386006",
          "display" : "Pregnancy (finding)"
        }]
      }
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "min" : 1
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "value"
        }],
        "description" : "Slicing based on value[x] type.",
        "rules" : "closed"
      },
      "requirements" : "Required if not(exists(Observation.valueString))",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:days",
      "path" : "Observation.component",
      "sliceName" : "days",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:days.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "258703001",
          "display" : "day (qualifier value)"
        }]
      }
    },
    {
      "id" : "Observation.component:days.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:weeks",
      "path" : "Observation.component",
      "sliceName" : "weeks",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:weeks.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "258705008",
          "display" : "week (qualifier value)"
        }]
      }
    },
    {
      "id" : "Observation.component:weeks.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:risk",
      "path" : "Observation.component",
      "sliceName" : "risk",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:risk.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1303221004",
          "display" : "Pregnancy risk level (observable entity)"
        }]
      }
    },
    {
      "id" : "Observation.component:risk.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.pt/fhir/noticia-nascimento/ValueSet/risco-gravidez-vs"
      }
    },
    {
      "id" : "Observation.component:riskreason",
      "path" : "Observation.component",
      "sliceName" : "riskreason",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:riskreason.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.pt/fhir/noticia-nascimento/CodeSystem/InfosGravidezCS",
          "code" : "PREGRISKREASON",
          "display" : "Motivo do risco"
        }]
      }
    },
    {
      "id" : "Observation.component:riskreason.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:firstQuarterEco",
      "path" : "Observation.component",
      "sliceName" : "firstQuarterEco",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:firstQuarterEco.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "446522006",
          "display" : "Ultrasonography in first trimester (procedure)"
        }]
      }
    },
    {
      "id" : "Observation.component:firstQuarterEco.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:firstQuarterBio",
      "path" : "Observation.component",
      "sliceName" : "firstQuarterBio",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:firstQuarterBio.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.pt/fhir/noticia-nascimento/CodeSystem/InfosGravidezCS",
          "code" : "BIO1T",
          "display" : "Analítico 1º Trimestre"
        }]
      }
    },
    {
      "id" : "Observation.component:firstQuarterBio.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:secondQuarterEco",
      "path" : "Observation.component",
      "sliceName" : "secondQuarterEco",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:secondQuarterEco.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "446208007",
          "display" : "Ultrasonography in second trimester (procedure)"
        }]
      }
    },
    {
      "id" : "Observation.component:secondQuarterEco.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:secondQuarterBio",
      "path" : "Observation.component",
      "sliceName" : "secondQuarterBio",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:secondQuarterBio.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.pt/fhir/noticia-nascimento/CodeSystem/InfosGravidezCS",
          "code" : "BIO2T",
          "display" : "Analítico 2º Trimestre"
        }]
      }
    },
    {
      "id" : "Observation.component:secondQuarterBio.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:thirdQuarterEco",
      "path" : "Observation.component",
      "sliceName" : "thirdQuarterEco",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:thirdQuarterEco.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "446353007",
          "display" : "Ultrasonography in third trimester (procedure)"
        }]
      }
    },
    {
      "id" : "Observation.component:thirdQuarterEco.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:thirdQuarterBio",
      "path" : "Observation.component",
      "sliceName" : "thirdQuarterBio",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:thirdQuarterBio.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.pt/fhir/noticia-nascimento/CodeSystem/InfosGravidezCS",
          "code" : "BIO3T",
          "display" : "Analítico 3º Trimestre"
        }]
      }
    },
    {
      "id" : "Observation.component:thirdQuarterBio.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Observation.component:visits",
      "path" : "Observation.component",
      "sliceName" : "visits",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:visits.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "3401000175105",
          "display" : "Total number of prenatal care visits (observable entity)"
        }]
      }
    },
    {
      "id" : "Observation.component:visits.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "Observation.component:intercurrences",
      "path" : "Observation.component",
      "sliceName" : "intercurrences",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:intercurrences.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://hl7.pt/fhir/noticia-nascimento/CodeSystem/InfosGravidezCS",
          "code" : "BIO3T",
          "display" : "Analítico 3º Trimestre"
        }]
      }
    },
    {
      "id" : "Observation.component:intercurrences.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Observation.component:pregancyType",
      "path" : "Observation.component",
      "sliceName" : "pregancyType",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:pregancyType.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "3950001",
          "display" : "Birth (finding)"
        }]
      }
    },
    {
      "id" : "Observation.component:pregancyType.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.pt/fhir/noticia-nascimento/ValueSet/tipo-gravidez-vs"
      }
    }]
  }
}

```
