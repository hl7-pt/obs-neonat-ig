# Notícia de Nascimento - informação core (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Notícia de Nascimento - informação core (modelo)**

## Logical Model: Notícia de Nascimento - informação core (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthNoticeLM | *Version*:1.0.0 |
| Active as of 2026-10-15 | *Computable Name*:BirthNoticeLM |

 
Modelo Lógico - Informações Core da Noticia 

**Usos:**

* Usa este Modelo lógico: [Notícia de Nascimento (modelo)](StructureDefinition-NoticiaLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-BirthNoticeLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BirthNoticeLM.csv), [Excel](StructureDefinition-BirthNoticeLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BirthNoticeLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthNoticeLM",
  "version" : "1.0.0",
  "name" : "BirthNoticeLM",
  "title" : "Notícia de Nascimento - informação core (modelo)",
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
  "type" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthNoticeLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "BirthNoticeLM",
      "path" : "BirthNoticeLM",
      "short" : "Notícia de Nascimento - informação core (modelo)",
      "definition" : "Modelo Lógico - Informações Core da Noticia"
    },
    {
      "id" : "BirthNoticeLM.owner",
      "path" : "BirthNoticeLM.owner",
      "short" : "Identifica se a notícia de nascimento é associada ao bebé ou à mãe (“descendant” – Caso o SNS do bébé seja enviado; “self” – No caso de só possuir SNS da mãe)",
      "definition" : "Identifica se a notícia de nascimento é associada ao bebé ou à mãe (“descendant” – Caso o SNS do bébé seja enviado; “self” – No caso de só possuir SNS da mãe)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "BirthNoticeLM.code",
      "path" : "BirthNoticeLM.code",
      "short" : "Identificador único da instituição na PDS",
      "definition" : "Identificador único da instituição na PDS",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "BirthNoticeLM.maternity",
      "path" : "BirthNoticeLM.maternity",
      "short" : "Dados da maternidade",
      "definition" : "Dados da maternidade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BirthNoticeLM.maternity.institution",
      "path" : "BirthNoticeLM.maternity.institution",
      "short" : "Nome da instituição/maternidade",
      "definition" : "Nome da instituição/maternidade",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BirthNoticeLM.maternity.service",
      "path" : "BirthNoticeLM.maternity.service",
      "short" : "Serviço da instituição",
      "definition" : "Serviço da instituição",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BirthNoticeLM.destination",
      "path" : "BirthNoticeLM.destination",
      "short" : "Dados da inscrição nos cuidados de saúde primários",
      "definition" : "Dados da inscrição nos cuidados de saúde primários",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/DestinationLM"
      }]
    },
    {
      "id" : "BirthNoticeLM.motherDemographics",
      "path" : "BirthNoticeLM.motherDemographics",
      "short" : "Dados demográficos da mãe",
      "definition" : "Dados demográficos da mãe",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/MotherDemographicsLM"
      }]
    },
    {
      "id" : "BirthNoticeLM.pregnancy",
      "path" : "BirthNoticeLM.pregnancy",
      "short" : "Dados da gravidez e cumprimento do esquema de vigilância pré-natal",
      "definition" : "Dados da gravidez e cumprimento do esquema de vigilância pré-natal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/PregnancyLM"
      }]
    },
    {
      "id" : "BirthNoticeLM.birth",
      "path" : "BirthNoticeLM.birth",
      "short" : "Dados do parto",
      "definition" : "Dados do parto",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BirthNoticeLM.birth.date",
      "path" : "BirthNoticeLM.birth.date",
      "short" : "Data e hora do nascimento (YYYY-MM-DD HH:MI:SS)",
      "definition" : "Data e hora do nascimento (YYYY-MM-DD HH:MI:SS)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BirthNoticeLM.birth.type",
      "path" : "BirthNoticeLM.birth.type",
      "short" : "Tipo de parto (1 - Eutócico Cefálico; 2 - Distócico-Forceps; 3 - Distócico- Ventosa; 4 - Distócico-Cesariana; 5 - Eutócico-Gemelar; 6 – Eutócico-Pélvico; 7 - Distócico Gemelar; 8 – Distócico- Pélvico; 9 - Desconhecido; 10 - Distócico-Espátulas de Thierry)",
      "definition" : "Tipo de parto (1 - Eutócico Cefálico; 2 - Distócico-Forceps; 3 - Distócico- Ventosa; 4 - Distócico-Cesariana; 5 - Eutócico-Gemelar; 6 – Eutócico-Pélvico; 7 - Distócico Gemelar; 8 – Distócico- Pélvico; 9 - Desconhecido; 10 - Distócico-Espátulas de Thierry)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "BirthNoticeLM.birth.participation",
      "path" : "BirthNoticeLM.birth.participation",
      "short" : "Identifica se é Notícia ou Participação (0 – Notícia de Nascimento; 1 – Participação de Nascimento)",
      "definition" : "Identifica se é Notícia ou Participação (0 – Notícia de Nascimento; 1 – Participação de Nascimento)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "BirthNoticeLM.birth.reason",
      "path" : "BirthNoticeLM.birth.reason",
      "short" : "Motivo em caso de distocia",
      "definition" : "Motivo em caso de distocia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BirthNoticeLM.birth.assist",
      "path" : "BirthNoticeLM.birth.assist",
      "short" : "Assistido por (0- Médico(a) obstetra; 1- Enfermeiro(a) ESMO; 2 - Outro)",
      "definition" : "Assistido por (0- Médico(a) obstetra; 1- Enfermeiro(a) ESMO; 2 - Outro)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "BirthNoticeLM.birth.assistDescription",
      "path" : "BirthNoticeLM.birth.assistDescription",
      "short" : "Descrever o assistido por.",
      "definition" : "Descrever o assistido por.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BirthNoticeLM.puerperium",
      "path" : "BirthNoticeLM.puerperium",
      "short" : "Dados do puerpério até à alta",
      "definition" : "Dados do puerpério até à alta",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BirthNoticeLM.puerperium.type",
      "path" : "BirthNoticeLM.puerperium.type",
      "short" : "Tipo de puerpério (0- Normal; 1- Patológico)",
      "definition" : "Tipo de puerpério (0- Normal; 1- Patológico)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "BirthNoticeLM.puerperium.observations",
      "path" : "BirthNoticeLM.puerperium.observations",
      "short" : "Observações",
      "definition" : "Observações",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BirthNoticeLM.newborn",
      "path" : "BirthNoticeLM.newborn",
      "short" : "Dados do recém-nascido",
      "definition" : "Dados do recém-nascido",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/NewBornLM"
      }]
    },
    {
      "id" : "BirthNoticeLM.puerperiumReview",
      "path" : "BirthNoticeLM.puerperiumReview",
      "short" : "Dados da revisão do puerpério",
      "definition" : "Dados da revisão do puerpério",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BirthNoticeLM.puerperiumReview.local",
      "path" : "BirthNoticeLM.puerperiumReview.local",
      "short" : "Tipo de local (0- USF; 1- Hospital; 2- Privado; 3- Desconhecido)",
      "definition" : "Tipo de local (0- USF; 1- Hospital; 2- Privado; 3- Desconhecido)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "BirthNoticeLM.puerperiumReview.description",
      "path" : "BirthNoticeLM.puerperiumReview.description",
      "short" : "Descrição do local selecionado",
      "definition" : "Descrição do local selecionado",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BirthNoticeLM.childHealthSurveillance",
      "path" : "BirthNoticeLM.childHealthSurveillance",
      "short" : "Dados da vigilância de saúde infantil",
      "definition" : "Dados da vigilância de saúde infantil",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BirthNoticeLM.childHealthSurveillance.local",
      "path" : "BirthNoticeLM.childHealthSurveillance.local",
      "short" : "Tipo de local (0- USF; 1- Hospital; 2- Privado; 3- Desconhecido)",
      "definition" : "Tipo de local (0- USF; 1- Hospital; 2- Privado; 3- Desconhecido)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "BirthNoticeLM.childHealthSurveillance.description",
      "path" : "BirthNoticeLM.childHealthSurveillance.description",
      "short" : "Descrição do local selecionado",
      "definition" : "Descrição do local selecionado",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "BirthNoticeLM.letterWithClinicalInformation",
      "path" : "BirthNoticeLM.letterWithClinicalInformation",
      "short" : "Dados da informação clinica suplementar",
      "definition" : "Dados da informação clinica suplementar",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "BirthNoticeLM.letterWithClinicalInformation.hasLetterWithClinicalInformation",
      "path" : "BirthNoticeLM.letterWithClinicalInformation.hasLetterWithClinicalInformation",
      "short" : "Elaboração de carta com informação clínica suplementar",
      "definition" : "Elaboração de carta com informação clínica suplementar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "BirthNoticeLM.letterWithClinicalInformation.date",
      "path" : "BirthNoticeLM.letterWithClinicalInformation.date",
      "short" : "Data da elaboração (YYYY-MM-DD)",
      "definition" : "Data da elaboração (YYYY-MM-DD)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "BirthNoticeLM.professionals",
      "path" : "BirthNoticeLM.professionals",
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
