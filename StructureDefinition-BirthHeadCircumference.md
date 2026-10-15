# Perfil de Perímetro cefálico ao nascer - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil de Perímetro cefálico ao nascer**

## Resource Profile: Perfil de Perímetro cefálico ao nascer 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthHeadCircumference | *Version*:1.0.0 |
| Active as of 2026-10-15 | *Computable Name*:BirthHeadCircumference |

 
Perímetro cefálico do recém-nascido ao nascer, em centímetros. Mantém o código LOINC 9843-4 do perfil de sinais vitais e acrescenta o código específico 8290-9 (Head Occipital-frontal circumference –at birth- by Tape measure). 

**Usos:**

* Refere a este Perfil: [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md)
* Exemplos para este Perfil: [Observation/cephalic-perimeter-example](Observation-cephalic-perimeter-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-BirthHeadCircumference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BirthHeadCircumference.csv), [Excel](StructureDefinition-BirthHeadCircumference.xlsx), [Schematron](StructureDefinition-BirthHeadCircumference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BirthHeadCircumference",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthHeadCircumference",
  "version" : "1.0.0",
  "name" : "BirthHeadCircumference",
  "title" : "Perfil de Perímetro cefálico ao nascer",
  "status" : "active",
  "date" : "2026-10-15T08:48:18+00:00",
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
  "description" : "Perímetro cefálico do recém-nascido ao nascer, em centímetros. Mantém o código LOINC 9843-4 do perfil de sinais vitais e acrescenta o código específico 8290-9 (Head Occipital-frontal circumference --at birth- by Tape measure).",
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
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/headcircum",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code.coding",
      "path" : "Observation.code.coding",
      "min" : 2
    },
    {
      "id" : "Observation.code.coding:BirthHeadCircumCode",
      "path" : "Observation.code.coding",
      "sliceName" : "BirthHeadCircumCode",
      "min" : 1,
      "max" : "1",
      "patternCoding" : {
        "system" : "http://loinc.org",
        "code" : "8290-9",
        "display" : "Head Occipital-frontal circumference --at birth- by Tape measure"
      },
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Child"]
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity",
      "path" : "Observation.value[x]",
      "sliceName" : "valueQuantity",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x]:valueQuantity.code",
      "path" : "Observation.value[x].code",
      "patternCode" : "cm"
    }]
  }
}

```
