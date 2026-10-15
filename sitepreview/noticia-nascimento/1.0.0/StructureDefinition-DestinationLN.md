# Dados da inscrição nos cuidados de saúde primários (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dados da inscrição nos cuidados de saúde primários (modelo)**

## Logical Model: Dados da inscrição nos cuidados de saúde primários (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/DestinationLN | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:DestinationLN |

 
Modelo Lógico - Dados da inscrição nos cuidados de saúde primários 

**Usos:**

* Usa este Modelo lógico: [Informações Core da Noticia (modelo)](StructureDefinition-CoredaNoticiaLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-DestinationLN.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-DestinationLN.csv), [Excel](StructureDefinition-DestinationLN.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "DestinationLN",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/DestinationLN",
  "version" : "1.0.0",
  "name" : "DestinationLN",
  "title" : "Dados da inscrição nos cuidados de saúde primários (modelo)",
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
  "type" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/DestinationLN",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "DestinationLN",
      "path" : "DestinationLN",
      "short" : "Dados da inscrição nos cuidados de saúde primários (modelo)",
      "definition" : "Modelo Lógico - Dados da inscrição nos cuidados de saúde primários"
    },
    {
      "id" : "DestinationLN.headquarters",
      "path" : "DestinationLN.headquarters",
      "short" : "Dados da unidade de saúde de inscrição",
      "definition" : "Dados da unidade de saúde de inscrição",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "DestinationLN.headquarters.id",
      "path" : "DestinationLN.headquarters.id",
      "short" : "Identificador único da unidade de saúde de inscrição (presente no RNU – Registo Nacional de Utentes)",
      "definition" : "Identificador único da unidade de saúde de inscrição (presente no RNU – Registo Nacional de Utentes)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLN.headquarters.description",
      "path" : "DestinationLN.headquarters.description",
      "short" : "Serviço da instituição",
      "definition" : "Serviço da instituição",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLN.ACES",
      "path" : "DestinationLN.ACES",
      "short" : "Agrupamento do centro de saúde",
      "definition" : "Agrupamento do centro de saúde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLN.healthcardNumber",
      "path" : "DestinationLN.healthcardNumber",
      "short" : "Nº de SNS do recém-nascido",
      "definition" : "Nº de SNS do recém-nascido",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "DestinationLN.extension",
      "path" : "DestinationLN.extension",
      "short" : "Extensão de saúde",
      "definition" : "Extensão de saúde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLN.familyDoctor",
      "path" : "DestinationLN.familyDoctor",
      "short" : "Nome clinico do médico de família",
      "definition" : "Nome clinico do médico de família",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "DestinationLN.familyNurse",
      "path" : "DestinationLN.familyNurse",
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
