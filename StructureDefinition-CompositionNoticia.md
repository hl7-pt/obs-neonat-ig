# Perfil do recurso Composition que cria as secções da noticia nascimento - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil do recurso Composition que cria as secções da noticia nascimento**

## Resource Profile: Perfil do recurso Composition que cria as secções da noticia nascimento 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia | *Version*:1.0.0 |
| Active as of 2026-10-15 | *Computable Name*:CompositionNoticia |

 
Perfil do recurso Composition que cria as secções da noticia nascimento 

**Usos:**

* Exemplos para este Perfil: [Composition/compNN](Composition-compNN.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-CompositionNoticia.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CompositionNoticia.csv), [Excel](StructureDefinition-CompositionNoticia.xlsx), [Schematron](StructureDefinition-CompositionNoticia.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CompositionNoticia",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia",
  "version" : "1.0.0",
  "name" : "CompositionNoticia",
  "title" : "Perfil do recurso Composition que cria as secções da noticia nascimento",
  "status" : "active",
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
  "description" : "Perfil do recurso Composition que cria as secções da noticia nascimento",
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "fhirdocumentreference",
    "uri" : "http://hl7.org/fhir/documentreference",
    "name" : "FHIR DocumentReference"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/clinicaldocument",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition"
    },
    {
      "id" : "Composition.identifier",
      "path" : "Composition.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "patternCode" : "final"
    },
    {
      "id" : "Composition.type",
      "path" : "Composition.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org/",
          "code" : "71230-7",
          "display" : "Birth certificate"
        }]
      }
    },
    {
      "id" : "Composition.encounter",
      "path" : "Composition.encounter",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.date",
      "path" : "Composition.date",
      "mustSupport" : true
    },
    {
      "id" : "Composition.author",
      "path" : "Composition.author",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Sections composing the IPS",
      "definition" : "The root of the sections that make up the IPS composition.",
      "min" : 8
    },
    {
      "id" : "Composition.section.code",
      "path" : "Composition.section.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section.section",
      "path" : "Composition.section.section",
      "max" : "0"
    },
    {
      "id" : "Composition.section:mother",
      "path" : "Composition.section",
      "sliceName" : "mother",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:mother.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "92014-0",
          "display" : "Mother's administrative information"
        }]
      }
    },
    {
      "id" : "Composition.section:mother.entry",
      "path" : "Composition.section.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Mother"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:pregnancy",
      "path" : "Composition.section",
      "sliceName" : "pregnancy",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:pregnancy.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "56833-7",
          "display" : "Pregnancy related history Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:pregnancy.entry",
      "path" : "Composition.section.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Pregnancy",
        "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/GestationalAge"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:pregnancy.entry:pregnancyInfo",
      "path" : "Composition.section.entry",
      "sliceName" : "pregnancyInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Pregnancy"]
      }]
    },
    {
      "id" : "Composition.section:pregnancy.entry:gestationalAge",
      "path" : "Composition.section.entry",
      "sliceName" : "gestationalAge",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/GestationalAge"]
      }]
    },
    {
      "id" : "Composition.section:birth",
      "path" : "Composition.section",
      "sliceName" : "birth",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:birth.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57074-7",
          "display" : "Labor and delivery process Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:birth.entry",
      "path" : "Composition.section.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:birth.entry:birthInfo",
      "path" : "Composition.section.entry",
      "sliceName" : "birthInfo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Birth"]
      }]
    },
    {
      "id" : "Composition.section:birth.entry:episode",
      "path" : "Composition.section.entry",
      "sliceName" : "episode",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Encounter",
        "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Contact"]
      }]
    },
    {
      "id" : "Composition.section:newborn",
      "path" : "Composition.section",
      "sliceName" : "newborn",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:newborn.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "57075-4",
          "display" : "Newborn delivery information"
        }]
      }
    },
    {
      "id" : "Composition.section:newborn.entry",
      "path" : "Composition.section.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Child"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:exams",
      "path" : "Composition.section",
      "sliceName" : "exams",
      "min" : 1,
      "max" : "1",
      "constraint" : [{
        "key" : "screening-hearing-single",
        "severity" : "error",
        "human" : "O rastreio auditivo é registado como realizado (Observation) ou marcado (ServiceRequest), nunca ambos",
        "expression" : "entry.resolve().where(code.coding.where(system = 'http://snomed.info/sct' and code = '417491009').exists()).count() <= 1",
        "source" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia"
      },
      {
        "key" : "screening-metabolic-single",
        "severity" : "error",
        "human" : "O rastreio de doenças metabólicas é registado como realizado/não realizado (Observation) ou marcado (ServiceRequest), nunca ambos",
        "expression" : "entry.resolve().where(code.coding.where(system = 'http://snomed.info/sct' and code = '275977009').exists()).count() <= 1",
        "source" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:exams.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "73738-7",
          "display" : "Newborn screening test results panel - Point of Care"
        }]
      }
    },
    {
      "id" : "Composition.section:exams.entry",
      "path" : "Composition.section.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "min" : 5,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:exams.entry:length",
      "path" : "Composition.section.entry",
      "sliceName" : "length",
      "short" : "Comprimento (cm)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthLength"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:bodyweigth",
      "path" : "Composition.section.entry",
      "sliceName" : "bodyweigth",
      "short" : "Peso (gr)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthWeight"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:cephalicPerimeter",
      "path" : "Composition.section.entry",
      "sliceName" : "cephalicPerimeter",
      "short" : "Perímetro cefálico (cm)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthHeadCircumference"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:apgar",
      "path" : "Composition.section.entry",
      "sliceName" : "apgar",
      "short" : "Índice(s) apgar",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ApgarScore"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:malformation",
      "path" : "Composition.section.entry",
      "sliceName" : "malformation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Malformation"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:Phototherapy",
      "path" : "Composition.section.entry",
      "sliceName" : "Phototherapy",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Phototherapy"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:hearingscreen",
      "path" : "Composition.section.entry",
      "sliceName" : "hearingscreen",
      "short" : "Rastreio auditivo neonatal universal (realizado)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Hearingscreen"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:Congenital",
      "path" : "Composition.section.entry",
      "sliceName" : "Congenital",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Congenital"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:Metabolic",
      "path" : "Composition.section.entry",
      "sliceName" : "Metabolic",
      "short" : "Rastreio de doenças metabólicas (realizado/não realizado)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Metabolic"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:Pupillary",
      "path" : "Composition.section.entry",
      "sliceName" : "Pupillary",
      "short" : "Teste Reflexo pupilar",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Pupillary"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:newbornriskassessment",
      "path" : "Composition.section.entry",
      "sliceName" : "newbornriskassessment",
      "short" : "Avaliação de risco e referenciação ao NHACJR",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Newbornriskassessment"]
      }]
    },
    {
      "id" : "Composition.section:exams.entry:screeningRequest",
      "path" : "Composition.section.entry",
      "sliceName" : "screeningRequest",
      "short" : "Rastreio auditivo e/ou de doenças metabólicas marcado para data futura",
      "min" : 0,
      "max" : "2",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ScreeningRequest"]
      }]
    },
    {
      "id" : "Composition.section:vaccination",
      "path" : "Composition.section",
      "sliceName" : "vaccination",
      "min" : 1,
      "max" : "1",
      "constraint" : [{
        "key" : "vacc-hepb",
        "severity" : "error",
        "human" : "A secção de vacinação tem de incluir exatamente um registo da vacina contra a Hepatite B (SNOMED CT 836374004)",
        "expression" : "entry.resolve().ofType(Immunization).where(vaccineCode.coding.where(system = 'http://snomed.info/sct' and code = '836374004').exists()).count() = 1",
        "source" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia"
      },
      {
        "key" : "vacc-bcg",
        "severity" : "error",
        "human" : "A secção de vacinação tem de incluir exatamente um registo da vacina BCG (SNOMED CT 836402002)",
        "expression" : "entry.resolve().ofType(Immunization).where(vaccineCode.coding.where(system = 'http://snomed.info/sct' and code = '836402002').exists()).count() = 1",
        "source" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia"
      },
      {
        "key" : "vacc-antid",
        "severity" : "error",
        "human" : "A secção de vacinação tem de incluir exatamente um registo da imunoglobulina anti-D (SNOMED CT 786224004)",
        "expression" : "entry.resolve().ofType(Immunization).where(vaccineCode.coding.where(system = 'http://snomed.info/sct' and code = '786224004').exists()).count() = 1",
        "source" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia"
      }]
    },
    {
      "id" : "Composition.section:vaccination.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11369-6",
          "display" : "History of Immunization Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:vaccination.entry",
      "path" : "Composition.section.entry",
      "min" : 3,
      "max" : "3",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Vaccination"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:followup",
      "path" : "Composition.section",
      "sliceName" : "followup",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:followup.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11544-4",
          "display" : "Hospital discharge follow-up Narrative"
        }]
      }
    },
    {
      "id" : "Composition.section:followup.entry",
      "path" : "Composition.section.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resolve()"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Composition.section:followup.entry:puerperium",
      "path" : "Composition.section.entry",
      "sliceName" : "puerperium",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Puerperium"]
      }]
    },
    {
      "id" : "Composition.section:followup.entry:childhealthsurveilance",
      "path" : "Composition.section.entry",
      "sliceName" : "childhealthsurveilance",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/HealthcareOrganization"]
      }]
    },
    {
      "id" : "Composition.section:followup.entry:bulletindelivery",
      "path" : "Composition.section.entry",
      "sliceName" : "bulletindelivery",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Bulletindelivery"]
      }]
    },
    {
      "id" : "Composition.section:followup.entry:letter",
      "path" : "Composition.section.entry",
      "sliceName" : "letter",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Letter"]
      }]
    },
    {
      "id" : "Composition.section:followup.entry:nextappointment",
      "path" : "Composition.section.entry",
      "sliceName" : "nextappointment",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Encounter"]
      }]
    },
    {
      "id" : "Composition.section:followup.entry:transport",
      "path" : "Composition.section.entry",
      "sliceName" : "transport",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Transport"]
      }]
    },
    {
      "id" : "Composition.section:destination",
      "path" : "Composition.section",
      "sliceName" : "destination",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Composition.section:destination.code",
      "path" : "Composition.section.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "45131006",
          "display" : "Primary care hospital (environment)"
        }]
      }
    },
    {
      "id" : "Composition.section:destination.entry",
      "path" : "Composition.section.entry",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
