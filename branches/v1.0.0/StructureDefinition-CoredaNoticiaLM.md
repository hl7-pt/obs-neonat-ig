# Informações Core da Noticia (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Informações Core da Noticia (modelo)**

## Logical Model: Informações Core da Noticia (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/CoredaNoticiaLM | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:CoredaNoticiaLM |

 
Modelo Lógico - Informações Core da Noticia 

**Usos:**

* Usa este Modelo lógico: [Notícia de Nascimento (modelo)](StructureDefinition-NoticiaLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.noticia-nascimento|current/StructureDefinition/StructureDefinition-CoredaNoticiaLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-CoredaNoticiaLM.csv), [Excel](StructureDefinition-CoredaNoticiaLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "CoredaNoticiaLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/CoredaNoticiaLM",
  "version" : "1.0.0",
  "name" : "CoredaNoticiaLM",
  "title" : "Informações Core da Noticia (modelo)",
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
  "description" : "Modelo Lógico - Informações Core da Noticia",
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
  "type" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/CoredaNoticiaLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "CoredaNoticiaLM",
      "path" : "CoredaNoticiaLM",
      "short" : "Informações Core da Noticia (modelo)",
      "definition" : "Modelo Lógico - Informações Core da Noticia"
    },
    {
      "id" : "CoredaNoticiaLM.owner",
      "path" : "CoredaNoticiaLM.owner",
      "short" : "Identifica se a notícia de nascimento é associada ao bebé ou à mãe (“descendant” – Caso o SNS do bébé seja enviado; “self” – No caso de só possuir SNS da mãe)",
      "definition" : "Identifica se a notícia de nascimento é associada ao bebé ou à mãe (“descendant” – Caso o SNS do bébé seja enviado; “self” – No caso de só possuir SNS da mãe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.code",
      "path" : "CoredaNoticiaLM.code",
      "short" : "Identificador único da instituição na PDS",
      "definition" : "Identificador único da instituição na PDS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.maternity",
      "path" : "CoredaNoticiaLM.maternity",
      "short" : "Dados da maternidade",
      "definition" : "Dados da maternidade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.maternity.institution",
      "path" : "CoredaNoticiaLM.maternity.institution",
      "short" : "Nome da instituição/maternidade",
      "definition" : "Nome da instituição/maternidade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.maternity.service",
      "path" : "CoredaNoticiaLM.maternity.service",
      "short" : "Serviço da instituição",
      "definition" : "Serviço da instituição",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.destination",
      "path" : "CoredaNoticiaLM.destination",
      "short" : "Dados da inscrição nos cuidados de saúde primários",
      "definition" : "Dados da inscrição nos cuidados de saúde primários",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/DestinationLN"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.motherDemographics",
      "path" : "CoredaNoticiaLM.motherDemographics",
      "short" : "Dados demográficos da mãe",
      "definition" : "Dados demográficos da mãe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/MotherDemographicsLM"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.pregnancy",
      "path" : "CoredaNoticiaLM.pregnancy",
      "short" : "Dados da gravidez e cumprimento do esquema de vigilância pré-natal",
      "definition" : "Dados da gravidez e cumprimento do esquema de vigilância pré-natal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/PregnancyLM"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.birth",
      "path" : "CoredaNoticiaLM.birth",
      "short" : "Dados do parto",
      "definition" : "Dados do parto",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.birth.date",
      "path" : "CoredaNoticiaLM.birth.date",
      "short" : "Data e hora do nascimento (YYYY-MM-DD HH:MI:SS)",
      "definition" : "Data e hora do nascimento (YYYY-MM-DD HH:MI:SS)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.birth.type",
      "path" : "CoredaNoticiaLM.birth.type",
      "short" : "Tipo de parto (1 - Eutócico Cefálico; 2 - Distócico-Forceps; 3 - Distócico- Ventosa; 4 - Distócico-Cesariana; 5 - Eutócico-Gemelar; 6 – Eutócico-Pélvico; 7 - Distócico Gemelar; 8 – Distócico- Pélvico; 9 - Desconhecido; 10 - Distócico-Espátulas de Thierry)",
      "definition" : "Tipo de parto (1 - Eutócico Cefálico; 2 - Distócico-Forceps; 3 - Distócico- Ventosa; 4 - Distócico-Cesariana; 5 - Eutócico-Gemelar; 6 – Eutócico-Pélvico; 7 - Distócico Gemelar; 8 – Distócico- Pélvico; 9 - Desconhecido; 10 - Distócico-Espátulas de Thierry)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.birth.participation",
      "path" : "CoredaNoticiaLM.birth.participation",
      "short" : "Identifica se é Notícia ou Participação (0 – Notícia de Nascimento; 1 – Participação de Nascimento)",
      "definition" : "Identifica se é Notícia ou Participação (0 – Notícia de Nascimento; 1 – Participação de Nascimento)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.birth.reason",
      "path" : "CoredaNoticiaLM.birth.reason",
      "short" : "Motivo em caso de distocia",
      "definition" : "Motivo em caso de distocia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.birth.assist",
      "path" : "CoredaNoticiaLM.birth.assist",
      "short" : "Assistido por (0- Médico(a) obstetra; 1- Enfermeiro(a) ESMO; 2 - Outro)",
      "definition" : "Assistido por (0- Médico(a) obstetra; 1- Enfermeiro(a) ESMO; 2 - Outro)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.birth.assistDescription",
      "path" : "CoredaNoticiaLM.birth.assistDescription",
      "short" : "Descrever o assistido por.",
      "definition" : "Descrever o assistido por.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.puerperium",
      "path" : "CoredaNoticiaLM.puerperium",
      "short" : "Dados do puerpério até à alta",
      "definition" : "Dados do puerpério até à alta",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.puerperium.type",
      "path" : "CoredaNoticiaLM.puerperium.type",
      "short" : "Tipo de puerpério (0- Normal; 1- Patológico)",
      "definition" : "Tipo de puerpério (0- Normal; 1- Patológico)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.puerperium.observations",
      "path" : "CoredaNoticiaLM.puerperium.observations",
      "short" : "Observações",
      "definition" : "Observações",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.newborn",
      "path" : "CoredaNoticiaLM.newborn",
      "short" : "Dados do recém-nascido",
      "definition" : "Dados do recém-nascido",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/NewBornLM"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.puerperiumReview",
      "path" : "CoredaNoticiaLM.puerperiumReview",
      "short" : "Dados da revisão do puerpério",
      "definition" : "Dados da revisão do puerpério",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.puerperiumReview.local",
      "path" : "CoredaNoticiaLM.puerperiumReview.local",
      "short" : "Tipo de local (0- USF; 1- Hospital; 2- Privado; 3- Desconhecido)",
      "definition" : "Tipo de local (0- USF; 1- Hospital; 2- Privado; 3- Desconhecido)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.puerperiumReview.description",
      "path" : "CoredaNoticiaLM.puerperiumReview.description",
      "short" : "Descrição do local selecionado",
      "definition" : "Descrição do local selecionado",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.childHealthSurveillance",
      "path" : "CoredaNoticiaLM.childHealthSurveillance",
      "short" : "Dados da vigilância de saúde infantil",
      "definition" : "Dados da vigilância de saúde infantil",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.childHealthSurveillance.local",
      "path" : "CoredaNoticiaLM.childHealthSurveillance.local",
      "short" : "Tipo de local (0- USF; 1- Hospital; 2- Privado; 3- Desconhecido)",
      "definition" : "Tipo de local (0- USF; 1- Hospital; 2- Privado; 3- Desconhecido)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.childHealthSurveillance.description",
      "path" : "CoredaNoticiaLM.childHealthSurveillance.description",
      "short" : "Descrição do local selecionado",
      "definition" : "Descrição do local selecionado",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.letterWithClinicalInformation",
      "path" : "CoredaNoticiaLM.letterWithClinicalInformation",
      "short" : "Dados da informação clinica suplementar",
      "definition" : "Dados da informação clinica suplementar",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.letterWithClinicalInformation.hasLetterWithClinicalInformation",
      "path" : "CoredaNoticiaLM.letterWithClinicalInformation.hasLetterWithClinicalInformation",
      "short" : "Elaboração de carta com informação clínica suplementar",
      "definition" : "Elaboração de carta com informação clínica suplementar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.letterWithClinicalInformation.date",
      "path" : "CoredaNoticiaLM.letterWithClinicalInformation.date",
      "short" : "Data da elaboração (YYYY-MM-DD)",
      "definition" : "Data da elaboração (YYYY-MM-DD)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "CoredaNoticiaLM.professionals",
      "path" : "CoredaNoticiaLM.professionals",
      "short" : "Lista de profissionais envolvidos no registo da NN",
      "definition" : "Lista de profissionais envolvidos no registo da NN",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
