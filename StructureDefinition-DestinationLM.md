# Dados da inscrição nos cuidados de saúde primários (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dados da inscrição nos cuidados de saúde primários (modelo)**

## Logical Model: Dados da inscrição nos cuidados de saúde primários (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/DestinationLM | *Version*:1.0.0 |
| Active as of 2026-10-20 | *Computable Name*:DestinationLM |

 
Modelo Lógico - Dados da inscrição nos cuidados de saúde primários 

**Usos:**

* Usa este Modelo lógico: [Notícia de Nascimento - informação core (modelo)](StructureDefinition-BirthNoticeLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-DestinationLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DestinationLM.csv), [Excel](StructureDefinition-DestinationLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DestinationLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/DestinationLM",
  "version" : "1.0.0",
  "name" : "DestinationLM",
  "title" : "Dados da inscrição nos cuidados de saúde primários (modelo)",
  "status" : "active",
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
  "description" : "Modelo Lógico - Dados da inscrição nos cuidados de saúde primários",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/DestinationLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "DestinationLM",
      "path" : "DestinationLM",
      "short" : "Dados da inscrição nos cuidados de saúde primários (modelo)",
      "definition" : "Modelo Lógico - Dados da inscrição nos cuidados de saúde primários"
    },
    {
      "id" : "DestinationLM.headquarters",
      "path" : "DestinationLM.headquarters",
      "short" : "Dados da unidade de saúde de inscrição",
      "definition" : "Dados da unidade de saúde de inscrição",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DestinationLM.headquarters.id",
      "path" : "DestinationLM.headquarters.id",
      "short" : "Identificador único da unidade de saúde de inscrição (presente no RNU – Registo Nacional de Utentes)",
      "definition" : "Identificador único da unidade de saúde de inscrição (presente no RNU – Registo Nacional de Utentes)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLM.headquarters.description",
      "path" : "DestinationLM.headquarters.description",
      "short" : "Serviço da instituição",
      "definition" : "Serviço da instituição",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLM.aces",
      "path" : "DestinationLM.aces",
      "short" : "Agrupamento do centro de saúde",
      "definition" : "Agrupamento do centro de saúde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLM.healthcardNumber",
      "path" : "DestinationLM.healthcardNumber",
      "short" : "Nº de SNS do recém-nascido",
      "definition" : "Nº de SNS do recém-nascido",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "DestinationLM.healthExtension",
      "path" : "DestinationLM.healthExtension",
      "short" : "Extensão de saúde",
      "definition" : "Extensão de saúde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLM.familyDoctor",
      "path" : "DestinationLM.familyDoctor",
      "short" : "Nome clinico do médico de família",
      "definition" : "Nome clinico do médico de família",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLM.familyNurse",
      "path" : "DestinationLM.familyNurse",
      "short" : "Nome clinico do enfermeiro de família",
      "definition" : "Nome clinico do enfermeiro de família",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
