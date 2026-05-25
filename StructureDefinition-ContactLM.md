# Contacto (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Contacto (modelo)**

## Logical Model: Contacto (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ContactLM | *Version*:0.0.1 |
| Active as of 2026-05-25 | *Computable Name*:ContactLM |

 
Modelo Lógico - Contacto 

**Usos:**

* Usa este Modelo lógico: [Notícia de Nascimento (modelo)](StructureDefinition-NoticiaLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-ContactLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ContactLM.csv), [Excel](StructureDefinition-ContactLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ContactLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ContactLM",
  "version" : "0.0.1",
  "name" : "ContactLM",
  "title" : "Contacto (modelo)",
  "status" : "active",
  "date" : "2026-05-25T11:22:18+00:00",
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
  "description" : "Modelo Lógico - Contacto",
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
  "type" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ContactLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "ContactLM",
      "path" : "ContactLM",
      "short" : "Contacto (modelo)",
      "definition" : "Modelo Lógico - Contacto"
    },
    {
      "id" : "ContactLM.id",
      "path" : "ContactLM.id",
      "short" : "Identificador do episódio",
      "definition" : "Identificador do episódio",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "ContactLM.module",
      "path" : "ContactLM.module",
      "short" : "Tipo de episódio (CON/INT/URG/BLO/HDI/RAD/LAB)",
      "definition" : "Tipo de episódio (CON/INT/URG/BLO/HDI/RAD/LAB)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    }]
  }
}

```
