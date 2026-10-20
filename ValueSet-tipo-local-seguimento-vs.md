# Tipo de local de seguimento ValueSet - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipo de local de seguimento ValueSet**

## ValueSet: Tipo de local de seguimento ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/ValueSet/tipo-local-seguimento-vs | *Version*:1.0.0 |
| Active as of 2026-10-20 | *Computable Name*:TipoLocalSeguimentoVS |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | |

 
Tipo de local de seguimento (revisão do puerpério e vigilância de saúde infantil). Mapeamento dos valores do formulário da norma: USF/UCSP → 45131006; No Hospital → 224885007 (consulta externa hospitalar). 'Privado' não tem correspondência adequada (o setor público/privado é uma característica do prestador e não um tipo de local); 'Outro' regista-se em type.text; 'Não sabe' representa ausência de informação e regista-se com a extensão data-absent-reason, não como código deste value set. 

 **References** 

* [Perfil da organização de saúde](StructureDefinition-HealthcareOrganization.md)

### Definição lógica (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "tipo-local-seguimento-vs",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/ValueSet/tipo-local-seguimento-vs",
  "version" : "1.0.0",
  "name" : "TipoLocalSeguimentoVS",
  "title" : "Tipo de local de seguimento ValueSet",
  "status" : "active",
  "experimental" : false,
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
  "description" : "Tipo de local de seguimento (revisão do puerpério e vigilância de saúde infantil). Mapeamento dos valores do formulário da norma: USF/UCSP → 45131006; No Hospital → 224885007 (consulta externa hospitalar). 'Privado' não tem correspondência adequada (o setor público/privado é uma característica do prestador e não um tipo de local); 'Outro' regista-se em type.text; 'Não sabe' representa ausência de informação e regista-se com a extensão data-absent-reason, não como código deste value set.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "45131006",
        "display" : "Primary care hospital",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Cuidados de saúde primários"
        }]
      },
      {
        "code" : "224885007",
        "display" : "Hospital consulting room",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Consulta hospitalar"
        }]
      },
      {
        "code" : "1367626006",
        "display" : "Follow-up abroad",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Seguimento no estrangeiro"
        }]
      }]
    }]
  }
}

```
