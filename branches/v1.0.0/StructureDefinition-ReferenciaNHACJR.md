# ReferenciaNHACJR - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ReferenciaNHACJR**

## Extension: ReferenciaNHACJR 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ReferenciaNHACJR | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:ReferenciaNHACJR |

Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR)

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR](StructureDefinition-Newbornriskassessment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-ReferenciaNHACJR.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ReferenciaNHACJR.csv), [Excel](StructureDefinition-ReferenciaNHACJR.xlsx), [Schematron](StructureDefinition-ReferenciaNHACJR.sch) 

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ReferenciaNHACJR",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ReferenciaNHACJR",
  "version" : "1.0.0",
  "name" : "ReferenciaNHACJR",
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
  "description" : "Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "definition" : "Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR)"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/ReferenciaNHACJR"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
