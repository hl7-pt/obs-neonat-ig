# Perfil para a função do profissional de saúde - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil para a função do profissional de saúde**

## Resource Profile: Perfil para a função do profissional de saúde 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ProfessionalRole | *Version*:1.0.0 |
| Active as of 2026-10-20 | *Computable Name*:ProfessionalRole |

 
Função desempenhada pelo profissional de saúde (ex.: médico, enfermeiro) no registo da notícia de nascimento 

**Usos:**

* Refere a este Perfil: [Perfil de Informação do Parto](StructureDefinition-Birth.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-ProfessionalRole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ProfessionalRole.csv), [Excel](StructureDefinition-ProfessionalRole.xlsx), [Schematron](StructureDefinition-ProfessionalRole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ProfessionalRole",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ProfessionalRole",
  "version" : "1.0.0",
  "name" : "ProfessionalRole",
  "title" : "Perfil para a função do profissional de saúde",
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
  "description" : "Função desempenhada pelo profissional de saúde (ex.: médico, enfermeiro) no registo da notícia de nascimento",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Professional"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Grupo funcional do profissional (médico, enfermeiro, ...)",
      "min" : 1,
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.pt/fhir/NoticiaNascimento/ValueSet/professional-role-vs"
      }
    }]
  }
}

```
