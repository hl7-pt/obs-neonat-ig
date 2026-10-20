# Extensão sobre informação sobre Transportes - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Extensão sobre informação sobre Transportes**

## Extension: Extensão sobre informação sobre Transportes 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/transport-information | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:TransportInformation |

Extensão sobre informação sobre Transportes

**Context of Use**

**Usage info**

**Usos:**

* Usa este Extensão: [Perfil de informação sobre Transportes](StructureDefinition-Transport.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-transport-information.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-transport-information.csv), [Excel](StructureDefinition-transport-information.xlsx), [Schematron](StructureDefinition-transport-information.sch) 

#### Terminologia Ligações

#### Restrições



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "transport-information",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/transport-information",
  "version" : "1.0.0",
  "name" : "TransportInformation",
  "title" : "Extensão sobre informação sobre Transportes",
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
  "description" : "Extensão sobre informação sobre Transportes",
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
      "short" : "Extensão sobre informação sobre Transportes",
      "definition" : "Extensão sobre informação sobre Transportes"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:transporttype",
      "path" : "Extension.extension",
      "sliceName" : "transporttype",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "isModifier" : true,
      "isModifierReason" : "Changes concept: If InUtero, provenance, if Neonatal, destination"
    },
    {
      "id" : "Extension.extension:transporttype.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transporttype.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transporttype"
    },
    {
      "id" : "Extension.extension:transporttype.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://hl7.pt/fhir/noticia-nascimento/ValueSet/transport-type-vs"
      }
    },
    {
      "id" : "Extension.extension:reason",
      "path" : "Extension.extension",
      "sliceName" : "reason",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:reason.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reason.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reason"
    },
    {
      "id" : "Extension.extension:reason.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:location",
      "path" : "Extension.extension",
      "sliceName" : "location",
      "short" : "If InUtero, provenance, if Neonatal, destination",
      "definition" : "Location is dependent on transporttype",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:location.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:location.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "location"
    },
    {
      "id" : "Extension.extension:location.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/transport-information"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
