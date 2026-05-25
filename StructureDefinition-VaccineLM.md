# Vacina (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Vacina (modelo)**

## Logical Model: Vacina (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/VaccineLM | *Version*:0.0.1 |
| Active as of 2026-05-25 | *Computable Name*:VaccineLM |

 
Modelo Lógico - Vacina 

**Usos:**

* Usa este Modelo lógico: [Recem-nascido (modelo)](StructureDefinition-NewBornLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-VaccineLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-VaccineLM.csv), [Excel](StructureDefinition-VaccineLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "VaccineLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/VaccineLM",
  "version" : "0.0.1",
  "name" : "VaccineLM",
  "title" : "Vacina (modelo)",
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
  "description" : "Modelo Lógico - Vacina",
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
  "type" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/VaccineLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "VaccineLM",
      "path" : "VaccineLM",
      "short" : "Vacina (modelo)",
      "definition" : "Modelo Lógico - Vacina"
    },
    {
      "id" : "VaccineLM.taken",
      "path" : "VaccineLM.taken",
      "short" : "Confirmação de toma da vacina",
      "definition" : "Confirmação de toma da vacina",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "VaccineLM.date",
      "path" : "VaccineLM.date",
      "short" : "Data da toma (YYYY-MM-DD)",
      "definition" : "Data da toma (YYYY-MM-DD)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "VaccineLM.lot",
      "path" : "VaccineLM.lot",
      "short" : "Lote da vacina",
      "definition" : "Lote da vacina",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "VaccineLM.reason",
      "path" : "VaccineLM.reason",
      "short" : "Motivo de não toma da vacina",
      "definition" : "Motivo de não toma da vacina",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
