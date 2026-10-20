# Motivos de não vacinação ValueSet - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Motivos de não vacinação ValueSet**

## ValueSet: Motivos de não vacinação ValueSet 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/ValueSet/immunization-status-reason-vs | *Version*:1.0.0 |
| Active as of 2026-10-20 | *Computable Name*:ImmunizationStatusReasonVS |
| **Copyright/Legal**: This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement | |

 
Motivos para a não administração de uma vacina (Immunization.statusReason), de acordo com o Catálogo Português de Vacinas (CPV). 

 **References** 

* [Perfil sobre Informação sobre vacinação](StructureDefinition-Vaccination.md)

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
  "id" : "immunization-status-reason-vs",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/ValueSet/immunization-status-reason-vs",
  "version" : "1.0.0",
  "name" : "ImmunizationStatusReasonVS",
  "title" : "Motivos de não vacinação ValueSet",
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
  "description" : "Motivos para a não administração de uma vacina (Immunization.statusReason), de acordo com o Catálogo Português de Vacinas (CPV).",
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
        "code" : "62479008",
        "display" : "Acquired immune deficiency syndrome (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Síndrome de imunodeficiência adquirida"
        }]
      },
      {
        "code" : "427099000",
        "display" : "Active tuberculosis (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Tuberculose ativa"
        }]
      },
      {
        "code" : "699618001",
        "display" : "Administration of prophylactic antituberculosis agent (procedure)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Administração de agente antituberculoso profilático"
        }]
      },
      {
        "code" : "293104008",
        "display" : "Adverse reaction to component of vaccine product (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Reação adversa a componente de produto de vacinação"
        }]
      },
      {
        "code" : "131145007",
        "display" : "Altered immunity (finding)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Imunidade alterada"
        }]
      },
      {
        "code" : "1217476001",
        "display" : "Anaphylaxis caused by component of vaccine product (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Anafilaxia causada por componente de produto de vacinação"
        }]
      },
      {
        "code" : "126764002",
        "display" : "Congenital anomaly of intestinal tract (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Anomalia congénita do trato intestinal"
        }]
      },
      {
        "code" : "36138009",
        "display" : "Congenital immunodeficiency disease (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Imunodeficiência congénita"
        }]
      },
      {
        "code" : "1340037004",
        "display" : "Disorder of nervous system due to and following vaccination (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Patologia neurológica devido e após a vacinação"
        }]
      },
      {
        "code" : "271511000",
        "display" : "Hepatitis B immune (finding)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Imune a Hepatite B"
        }]
      },
      {
        "code" : "1340016007",
        "display" : "History of intussusception of intestine (situation)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "História de intussuscepção intestinal"
        }]
      },
      {
        "code" : "161421005",
        "display" : "History of rubella (situation)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "História de rubéola"
        }]
      },
      {
        "code" : "1340019000",
        "display" : "History of thrombosis with thrombocytopenia syndrome following vaccination with non-replicating adenovirus vector vaccine for severe acute respiratory syndrome coronavirus 2 (situation)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "História de síndrome de trombose com trombocitopenia após vacinação com vacina de vetor de adenovírus não-replicante para coronavírus do síndrome respiratório agudo grave 2"
        }]
      },
      {
        "code" : "86406008",
        "display" : "Human immunodeficiency virus infection (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Infeção pelo vírus de imunodeficiência humana"
        }]
      },
      {
        "code" : "421961002",
        "display" : "Hypersensitivity reaction (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Reação de hipersensibilidade"
        }]
      },
      {
        "code" : "255386009",
        "display" : "Immune (qualifier value)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Imune"
        }]
      },
      {
        "code" : "310376006",
        "display" : "Immunization consent not given (finding)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Consentimento de imunização não dado"
        }]
      },
      {
        "code" : "86553008",
        "display" : "Immunosuppressive therapy (procedure)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Terapia imunosupressiva"
        }]
      },
      {
        "code" : "268376005",
        "display" : "Mantoux: positive (finding)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Prova de tuberculina: positiva"
        }]
      },
      {
        "code" : "1260078007",
        "display" : "Maternal breastfeeding (finding)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Aleitamento materno"
        }]
      },
      {
        "code" : "42565008",
        "display" : "No reason for (contextual qualifier) (qualifier value)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Sem motivo para"
        }]
      },
      {
        "code" : "29740003",
        "display" : "Nutritional marasmus (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Marasmo nutricional"
        }]
      },
      {
        "code" : "77386006",
        "display" : "Pregnancy (finding)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Gravidez"
        }]
      },
      {
        "code" : "183945002",
        "display" : "Procedure declined for religious reason (situation)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Procedimento recusado por motivo religioso"
        }]
      },
      {
        "code" : "278968001",
        "display" : "Rubella immune (finding)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Imune a rubéola"
        }]
      },
      {
        "code" : "1340080008",
        "display" : "Scar of skin following first vaccination (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Cicatriz na pele após primeira vacinação"
        }]
      },
      {
        "code" : "31323000",
        "display" : "Severe combined immunodeficiency disease (disorder)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Imunodeficiência combinada grave"
        }]
      },
      {
        "code" : "1290619001",
        "display" : "Vaccine product out of stock (finding)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Vacina fora de stock"
        }]
      },
      {
        "code" : "371113008",
        "display" : "Varicella immune (finding)",
        "designation" : [{
          "language" : "pt-PT",
          "value" : "Imune a varicela"
        }]
      }]
    }]
  }
}

```
