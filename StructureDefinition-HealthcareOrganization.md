# Perfil da organização de saúde - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Perfil da organização de saúde**

## Resource Profile: Perfil da organização de saúde 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/HealthcareOrganization | *Version*:1.0.0 |
| Active as of 2026-10-20 | *Computable Name*:HealthcareOrganization |

 
Organização de saúde (hospital/maternidade, unidade de cuidados de saúde primários, etc.) referenciada na notícia de nascimento 

**Usos:**

* Refere a este Perfil: [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md) and [Perfil sobre episódio da notícia de nascimento](StructureDefinition-Contact.md)
* Exemplos para este Perfil: [Vigilância de Saúde Infantil](Organization-childhealthsurveilance-ex.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-HealthcareOrganization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-HealthcareOrganization.csv), [Excel](StructureDefinition-HealthcareOrganization.xlsx), [Schematron](StructureDefinition-HealthcareOrganization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "HealthcareOrganization",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/HealthcareOrganization",
  "version" : "1.0.0",
  "name" : "HealthcareOrganization",
  "title" : "Perfil da organização de saúde",
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
  "description" : "Organização de saúde (hospital/maternidade, unidade de cuidados de saúde primários, etc.) referenciada na notícia de nascimento",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "short" : "Identificador da instituição/unidade de saúde",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "short" : "Tipo de local de seguimento (cuidados de saúde primários, consulta hospitalar, estrangeiro)",
      "comment" : "'Outro' regista-se em type.text. 'Não sabe' não é um tipo de local: regista-se com a extensão data-absent-reason (http://hl7.org/fhir/StructureDefinition/data-absent-reason) em type, com o código 'unknown'. O seguimento privado não tem código adequado neste value set, uma vez que a distinção público/privado corresponde ao setor do prestador e não ao tipo de local.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://hl7.pt/fhir/NoticiaNascimento/ValueSet/tipo-local-seguimento-vs"
      }
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.alias",
      "path" : "Organization.alias",
      "short" : "Outros nomes ou siglas da instituição",
      "mustSupport" : true
    }]
  }
}

```
