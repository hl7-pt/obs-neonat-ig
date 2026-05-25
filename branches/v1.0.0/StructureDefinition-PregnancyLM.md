# Gravidez (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Gravidez (modelo)**

## Logical Model: Gravidez (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/PregnancyLM | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:PregnancyLM |

 
Modelo Lógico - Gravidez 

**Usos:**

* Usa este Modelo lógico: [Informações Core da Noticia (modelo)](StructureDefinition-CoredaNoticiaLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-PregnancyLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-PregnancyLM.csv), [Excel](StructureDefinition-PregnancyLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "PregnancyLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/PregnancyLM",
  "version" : "1.0.0",
  "name" : "PregnancyLM",
  "title" : "Gravidez (modelo)",
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
  "description" : "Modelo Lógico - Gravidez",
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
  "type" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/PregnancyLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "PregnancyLM",
      "path" : "PregnancyLM",
      "short" : "Gravidez (modelo)",
      "definition" : "Modelo Lógico - Gravidez"
    },
    {
      "id" : "PregnancyLM.days",
      "path" : "PregnancyLM.days",
      "short" : "Dias de gravidez",
      "definition" : "Dias de gravidez",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "PregnancyLM.weeks",
      "path" : "PregnancyLM.weeks",
      "short" : "Semanas de gravidez",
      "definition" : "Semanas de gravidez",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "PregnancyLM.risk",
      "path" : "PregnancyLM.risk",
      "short" : "Risco da gravidez (0- Baixo; 1- Médio; 2- Alto)",
      "definition" : "Risco da gravidez (0- Baixo; 1- Médio; 2- Alto)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "PregnancyLM.riskReason",
      "path" : "PregnancyLM.riskReason",
      "short" : "Motivo do risco",
      "definition" : "Motivo do risco",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PregnancyLM.immunoglobulinAdministration",
      "path" : "PregnancyLM.immunoglobulinAdministration",
      "short" : "Administração da Imunoglobulina anti-D",
      "definition" : "Administração da Imunoglobulina anti-D",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "PregnancyLM.immunoglobulinAdministrationDate",
      "path" : "PregnancyLM.immunoglobulinAdministrationDate",
      "short" : "Data da administração da Imunoglobulina anti-D (YYYY-MM-DD)",
      "definition" : "Data da administração da Imunoglobulina anti-D (YYYY-MM-DD)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment",
      "short" : "Dados do cumprimento do esquema vigilância pré-natal",
      "definition" : "Dados do cumprimento do esquema vigilância pré-natal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.firstQuarterEco",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.firstQuarterEco",
      "short" : "Ecografia 1º Trimestre",
      "definition" : "Ecografia 1º Trimestre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.firstQuarterBio",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.firstQuarterBio",
      "short" : "Analítico 1º Trimestre",
      "definition" : "Analítico 1º Trimestre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.secondQuarterEco",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.secondQuarterEco",
      "short" : "Ecografia 2º Trimestre",
      "definition" : "Ecografia 2º Trimestre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.secondQuarterBio",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.secondQuarterBio",
      "short" : "Analítico 2º Trimestre",
      "definition" : "Analítico 2º Trimestre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.thirdQuarterEco",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.thirdQuarterEco",
      "short" : "Ecografia 3º Trimestre",
      "definition" : "Ecografia 3º Trimestre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.thirdQuarterBio",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.thirdQuarterBio",
      "short" : "Analítico 3º Trimestre",
      "definition" : "Analítico 3º Trimestre",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.visits",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.visits",
      "short" : "Nº de consultas",
      "definition" : "Nº de consultas",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.intercurrences",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.intercurrences",
      "short" : "Intercorrências",
      "definition" : "Intercorrências",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.locals",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.locals",
      "short" : "Dados acerca dos locais de seguimento",
      "definition" : "Dados acerca dos locais de seguimento",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.locals.type",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.locals.type",
      "short" : "Local do seguimento (0- Centro de saúde; 1- Hospital; 2- Obstetra privado; 3- Vigilância partilhado; 4-Outro)",
      "definition" : "Local do seguimento (0- Centro de saúde; 1- Hospital; 2- Obstetra privado; 3- Vigilância partilhado; 4-Outro)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.locals.value",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.locals.value",
      "short" : "Indicação de seguimento",
      "definition" : "Indicação de seguimento",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "PregnancyLM.prenatalMonitorizationFulfillment.locals.reason",
      "path" : "PregnancyLM.prenatalMonitorizationFulfillment.locals.reason",
      "short" : "Motivo do seguimento",
      "definition" : "Motivo do seguimento",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "PregnancyLM.PregnancyType",
      "path" : "PregnancyLM.PregnancyType",
      "short" : "Tipo de gravidez ( 'Simple'- Gravidez de um bebé; 'Multiple'- Gravidez de gémeos)",
      "definition" : "Tipo de gravidez ( 'Simple'- Gravidez de um bebé; 'Multiple'- Gravidez de gémeos)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "PregnancyLM.twinNumber",
      "path" : "PregnancyLM.twinNumber",
      "short" : "Corresponde ao Número da criança / total de crianças. Exemplo: '1/2'",
      "definition" : "Corresponde ao Número da criança / total de crianças. Exemplo: '1/2'",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
