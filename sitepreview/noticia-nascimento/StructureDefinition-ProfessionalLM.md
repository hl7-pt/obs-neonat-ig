# Professional (Modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Professional (Modelo)**

## Logical Model: Professional (Modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ProfessionalLM | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:ProfessionalLM |

 
Modelo Lógico - Professional 

**Usos:**

* Usa este Modelo lógico: [Notícia de Nascimento (modelo)](StructureDefinition-NoticiaLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-ProfessionalLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ProfessionalLM.csv), [Excel](StructureDefinition-ProfessionalLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ProfessionalLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ProfessionalLM",
  "version" : "1.0.0",
  "name" : "ProfessionalLM",
  "title" : "Professional (Modelo)",
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
  "description" : "Modelo Lógico - Professional",
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
  "type" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ProfessionalLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ProfessionalLM",
      "path" : "ProfessionalLM",
      "short" : "Professional (Modelo)",
      "definition" : "Modelo Lógico - Professional"
    },
    {
      "id" : "ProfessionalLM.functionalgroup",
      "path" : "ProfessionalLM.functionalgroup",
      "short" : "Grupo funcional do profissional (5 – Médico; 4 -Enfermeiro)",
      "definition" : "Grupo funcional do profissional (5 – Médico; 4 -Enfermeiro)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "ProfessionalLM.licence",
      "path" : "ProfessionalLM.licence",
      "short" : "Nº de ordem do profissional",
      "definition" : "Nº de ordem do profissional",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "ProfessionalLM.name",
      "path" : "ProfessionalLM.name",
      "short" : "Nome clínico",
      "definition" : "Nome clínico",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
