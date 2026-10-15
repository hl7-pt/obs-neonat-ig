# Perfil sobre episódio da notícia de nascimento - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil sobre episódio da notícia de nascimento**

## Resource Profile: Perfil sobre episódio da notícia de nascimento 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Contact | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:Contact |

 
Perfil sobre episódio da notícia de nascimento 

**Usos:**

* Refere a este Perfil: [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md)
* Exemplos para este Perfil: [Encounter/episodio](Encounter-episodio.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-Contact.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Contact.csv), [Excel](StructureDefinition-Contact.xlsx), [Schematron](StructureDefinition-Contact.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Contact",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Contact",
  "version" : "1.0.0",
  "name" : "Contact",
  "title" : "Perfil sobre episódio da notícia de nascimento",
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
  "description" : "Perfil sobre episódio da notícia de nascimento",
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "patternCode" : "finished"
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.pt/fhir/noticia-nascimento/ValueSet/episode-type-vs"
      }
    },
    {
      "id" : "Encounter.serviceType",
      "path" : "Encounter.serviceType",
      "min" : 1
    },
    {
      "id" : "Encounter.serviceProvider",
      "path" : "Encounter.serviceProvider",
      "min" : 1
    }]
  }
}

```
