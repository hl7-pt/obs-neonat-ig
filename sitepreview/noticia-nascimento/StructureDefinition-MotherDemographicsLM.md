# Dados demográficos da mãe (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Dados demográficos da mãe (modelo)**

## Logical Model: Dados demográficos da mãe (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/MotherDemographicsLM | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:MotherDemographicsLM |

 
Modelo Lógico - Dados demográficos da mãe 

**Usos:**

* Usa este Modelo lógico: [Informações Core da Noticia (modelo)](StructureDefinition-CoredaNoticiaLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-MotherDemographicsLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MotherDemographicsLM.csv), [Excel](StructureDefinition-MotherDemographicsLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MotherDemographicsLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/MotherDemographicsLM",
  "version" : "1.0.0",
  "name" : "MotherDemographicsLM",
  "title" : "Dados demográficos da mãe (modelo)",
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
  "description" : "Modelo Lógico - Dados demográficos da mãe",
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
  "type" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/MotherDemographicsLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "MotherDemographicsLM",
      "path" : "MotherDemographicsLM",
      "short" : "Dados demográficos da mãe (modelo)",
      "definition" : "Modelo Lógico - Dados demográficos da mãe"
    },
    {
      "id" : "MotherDemographicsLM.healthcardNumber",
      "path" : "MotherDemographicsLM.healthcardNumber",
      "short" : "Nº de SNS da mãe",
      "definition" : "Nº de SNS da mãe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "MotherDemographicsLM.name",
      "path" : "MotherDemographicsLM.name",
      "short" : "Nome da mãe",
      "definition" : "Nome da mãe",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.birthdate",
      "path" : "MotherDemographicsLM.birthdate",
      "short" : "Data de nascimento (YYYY-MM-DD)",
      "definition" : "Data de nascimento (YYYY-MM-DD)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "MotherDemographicsLM.Age",
      "path" : "MotherDemographicsLM.Age",
      "short" : "Idade da mãe",
      "definition" : "Idade da mãe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "MotherDemographicsLM.address",
      "path" : "MotherDemographicsLM.address",
      "short" : "Morada",
      "definition" : "Morada",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.placeOfBirth",
      "path" : "MotherDemographicsLM.placeOfBirth",
      "short" : "Local de nascimento",
      "definition" : "Local de nascimento",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.nationality",
      "path" : "MotherDemographicsLM.nationality",
      "short" : "Nacionalidade",
      "definition" : "Nacionalidade",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.phone",
      "path" : "MotherDemographicsLM.phone",
      "short" : "Contacto(s) telefónico(s)",
      "definition" : "Contacto(s) telefónico(s)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.postalCode",
      "path" : "MotherDemographicsLM.postalCode",
      "short" : "Código postal da morada",
      "definition" : "Código postal da morada",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.countryOfBirth",
      "path" : "MotherDemographicsLM.countryOfBirth",
      "short" : "País da naturalidade do utente",
      "definition" : "País da naturalidade do utente",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.districtOfBirth",
      "path" : "MotherDemographicsLM.districtOfBirth",
      "short" : "Distrito da naturalidade",
      "definition" : "Distrito da naturalidade",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.countyOfBirth",
      "path" : "MotherDemographicsLM.countyOfBirth",
      "short" : "Código concelho da naturalidade",
      "definition" : "Código concelho da naturalidade",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.parishOfBirth",
      "path" : "MotherDemographicsLM.parishOfBirth",
      "short" : "Freguesia da naturalidade",
      "definition" : "Freguesia da naturalidade",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.districtAddress",
      "path" : "MotherDemographicsLM.districtAddress",
      "short" : "Distrito da morada",
      "definition" : "Distrito da morada",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.countyAddress",
      "path" : "MotherDemographicsLM.countyAddress",
      "short" : "Código concelho da morada",
      "definition" : "Código concelho da morada",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "MotherDemographicsLM.parishAddress",
      "path" : "MotherDemographicsLM.parishAddress",
      "short" : "Freguesia da morada",
      "definition" : "Freguesia da morada",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
