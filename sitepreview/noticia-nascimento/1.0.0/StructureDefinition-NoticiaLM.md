# Notícia de Nascimento (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Notícia de Nascimento (modelo)**

## Logical Model: Notícia de Nascimento (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/NoticiaLM | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:NoticiaLM |

 
Modelo Lógico - Notícia de Nascimento 

**Usos:**

* Este Modelo lógico não é utilizado por nenhum perfil neste guia de implementação

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-NoticiaLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NoticiaLM.csv), [Excel](StructureDefinition-NoticiaLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NoticiaLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/NoticiaLM",
  "version" : "1.0.0",
  "name" : "NoticiaLM",
  "title" : "Notícia de Nascimento (modelo)",
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
  "description" : "Modelo Lógico - Notícia de Nascimento",
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
  "type" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/NoticiaLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NoticiaLM",
      "path" : "NoticiaLM",
      "short" : "Notícia de Nascimento (modelo)",
      "definition" : "Modelo Lógico - Notícia de Nascimento"
    },
    {
      "id" : "NoticiaLM.contact",
      "path" : "NoticiaLM.contact",
      "short" : "Estrutura do episódio da notícia de nascimento",
      "definition" : "Estrutura do episódio da notícia de nascimento",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ContactLM"
      }]
    },
    {
      "id" : "NoticiaLM.professional",
      "path" : "NoticiaLM.professional",
      "short" : "Estrutura do profissional envolvido na submissão da informação",
      "definition" : "Estrutura do profissional envolvido na submissão da informação",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ProfessionalLM"
      }]
    },
    {
      "id" : "NoticiaLM.birthNotice",
      "path" : "NoticiaLM.birthNotice",
      "short" : "Estrutura da notícia de nascimento",
      "definition" : "Estrutura da notícia de nascimento",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/CoredaNoticiaLM"
      }]
    }]
  }
}

```
