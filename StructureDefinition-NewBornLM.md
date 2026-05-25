# Recem-nascido (modelo) - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Recem-nascido (modelo)**

## Logical Model: Recem-nascido (modelo) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/NewBornLM | *Version*:0.0.1 |
| Active as of 2026-05-25 | *Computable Name*:NewBornLM |

 
Modelo Lógico - Recem-nascido 

**Usos:**

* Usa este Modelo lógico: [Informações Core da Noticia (modelo)](StructureDefinition-CoredaNoticiaLM.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.fhir.pt.obs-neonat|current/StructureDefinition/StructureDefinition-NewBornLM.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-NewBornLM.csv), [Excel](StructureDefinition-NewBornLM.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "NewBornLM",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/NewBornLM",
  "version" : "0.0.1",
  "name" : "NewBornLM",
  "title" : "Recem-nascido (modelo)",
  "status" : "active",
  "date" : "2026-05-25T11:22:18+00:00",
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
  "description" : "Modelo Lógico - Recem-nascido",
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
  "type" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/NewBornLM",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "NewBornLM",
      "path" : "NewBornLM",
      "short" : "Recem-nascido (modelo)",
      "definition" : "Modelo Lógico - Recem-nascido"
    },
    {
      "id" : "NewBornLM.liveBirth",
      "path" : "NewBornLM.liveBirth",
      "short" : "Identificação de nado vivo",
      "definition" : "Identificação de nado vivo",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.gender",
      "path" : "NewBornLM.gender",
      "short" : "Sexo do recém- nascido (0 - Masculino; 1 - Feminino; 2 - Indeterminado)",
      "definition" : "Sexo do recém- nascido (0 - Masculino; 1 - Feminino; 2 - Indeterminado)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "NewBornLM.length",
      "path" : "NewBornLM.length",
      "short" : "Comprimento (cm)",
      "definition" : "Comprimento (cm)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "NewBornLM.deceased",
      "path" : "NewBornLM.deceased",
      "short" : "Data de falecimento (YYYY-MM-DD HH:MI:SS)",
      "definition" : "Data de falecimento (YYYY-MM-DD HH:MI:SS)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "NewBornLM.deathBirth",
      "path" : "NewBornLM.deathBirth",
      "short" : "Identificação de nado morto",
      "definition" : "Identificação de nado morto",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.deathBirthDate",
      "path" : "NewBornLM.deathBirthDate",
      "short" : "Data da consulta de Alto Risco/Medicina Materno-Fetal (YYYY- MM-DD HH:MI:SS)",
      "definition" : "Data da consulta de Alto Risco/Medicina Materno-Fetal (YYYY- MM-DD HH:MI:SS)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "NewBornLM.reanimated",
      "path" : "NewBornLM.reanimated",
      "short" : "Reanimação",
      "definition" : "Reanimação",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.cephalicPerimeter",
      "path" : "NewBornLM.cephalicPerimeter",
      "short" : "Perímetro cefálico (cm)",
      "definition" : "Perímetro cefálico (cm)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "NewBornLM.weight",
      "path" : "NewBornLM.weight",
      "short" : "Peso (gr)",
      "definition" : "Peso (gr)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "NewBornLM.apgarIndexFirstMinute",
      "path" : "NewBornLM.apgarIndexFirstMinute",
      "short" : "Índice apgar ao 1º minuto",
      "definition" : "Índice apgar ao 1º minuto",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "NewBornLM.apgarIndexFifthMinute",
      "path" : "NewBornLM.apgarIndexFifthMinute",
      "short" : "Índice apgar ao 5º minuto",
      "definition" : "Índice apgar ao 5º minuto",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "NewBornLM.apgarIndexTenthMinute",
      "path" : "NewBornLM.apgarIndexTenthMinute",
      "short" : "Índice apgar ao 10º minuto",
      "definition" : "Índice apgar ao 10º minuto",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "NewBornLM.phototherapy",
      "path" : "NewBornLM.phototherapy",
      "short" : "Fototerapia",
      "definition" : "Fototerapia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.malformations",
      "path" : "NewBornLM.malformations",
      "short" : "Dados de malformações",
      "definition" : "Dados de malformações",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NewBornLM.malformations.code",
      "path" : "NewBornLM.malformations.code",
      "short" : "Codificação ICD9 da malformação",
      "definition" : "Codificação ICD9 da malformação",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "NewBornLM.malformations.description",
      "path" : "NewBornLM.malformations.description",
      "short" : "Descrição da malformação",
      "definition" : "Descrição da malformação",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.AdmissionNeonatology",
      "path" : "NewBornLM.AdmissionNeonatology",
      "short" : "Internamento em neonatologia",
      "definition" : "Internamento em neonatologia",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.AdmissionNeonatologyReason",
      "path" : "NewBornLM.AdmissionNeonatologyReason",
      "short" : "Motivo do internamento",
      "definition" : "Motivo do internamento",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.AdmissionNeonatologyLocal",
      "path" : "NewBornLM.AdmissionNeonatologyLocal",
      "short" : "Local de internamento",
      "definition" : "Local de internamento",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.transport",
      "path" : "NewBornLM.transport",
      "short" : "Dados de transporte",
      "definition" : "Dados de transporte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NewBornLM.transport.Neonatal",
      "path" : "NewBornLM.transport.Neonatal",
      "short" : "Transporte neonatal",
      "definition" : "Transporte neonatal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.transport.NeonatalDestination",
      "path" : "NewBornLM.transport.NeonatalDestination",
      "short" : "Destino do transporte neonatal",
      "definition" : "Destino do transporte neonatal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.transport.NeonatalReason",
      "path" : "NewBornLM.transport.NeonatalReason",
      "short" : "Motivo do não transporte neonatal",
      "definition" : "Motivo do não transporte neonatal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.transport.InUtero",
      "path" : "NewBornLM.transport.InUtero",
      "short" : "Transporte in útero",
      "definition" : "Transporte in útero",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.transport.InUteroProvanance",
      "path" : "NewBornLM.transport.InUteroProvanance",
      "short" : "Proveniência do transporte",
      "definition" : "Proveniência do transporte",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.transport.InUteroReason",
      "path" : "NewBornLM.transport.InUteroReason",
      "short" : "Motivo de não transporte in útero",
      "definition" : "Motivo de não transporte in útero",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.screeningMetabolicDiseasesTaken",
      "path" : "NewBornLM.screeningMetabolicDiseasesTaken",
      "short" : "Rastreio de doenças metabólicas (0- Realizado; 1- Não realizado; 2- Marcado)",
      "definition" : "Rastreio de doenças metabólicas (0- Realizado; 1- Não realizado; 2- Marcado)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "NewBornLM.screeningMetabolicReason",
      "path" : "NewBornLM.screeningMetabolicReason",
      "short" : "Motivo para não realização do rastreio",
      "definition" : "Motivo para não realização do rastreio",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.screeningMetabolicDiseasesDate",
      "path" : "NewBornLM.screeningMetabolicDiseasesDate",
      "short" : "Data da marcação do rastreio",
      "definition" : "Data da marcação do rastreio",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "NewBornLM.screeningCongenitalDiseases",
      "path" : "NewBornLM.screeningCongenitalDiseases",
      "short" : "Rastreio Cardiopatias Congénitas (0- Realizado; 1- Não realizado)",
      "definition" : "Rastreio Cardiopatias Congénitas (0- Realizado; 1- Não realizado)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.screeningCongenitalDiseasesChange",
      "path" : "NewBornLM.screeningCongenitalDiseasesChange",
      "short" : "Se foi realizado rastreio cardiopatias congénitas, então: (0 – Sem alteração; 1 – Com alteração)",
      "definition" : "Se foi realizado rastreio cardiopatias congénitas, então: (0 – Sem alteração; 1 – Com alteração)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.screeningCongenitalDiseasesObservations",
      "path" : "NewBornLM.screeningCongenitalDiseasesObservations",
      "short" : "Observações do rastreio de cardiopatias congénitas com alteração.",
      "definition" : "Observações do rastreio de cardiopatias congénitas com alteração.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.screeningpupillaryReflection",
      "path" : "NewBornLM.screeningpupillaryReflection",
      "short" : "Teste Reflexo pupilar (0- Realizado; 1- Não realizado)",
      "definition" : "Teste Reflexo pupilar (0- Realizado; 1- Não realizado)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.screeningpupillaryReflectionChange",
      "path" : "NewBornLM.screeningpupillaryReflectionChange",
      "short" : "Se foi realizado rastreio Teste Reflexo pupilar, então: (0 – Sem alteração; 1 – Com alteração)",
      "definition" : "Se foi realizado rastreio Teste Reflexo pupilar, então: (0 – Sem alteração; 1 – Com alteração)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.screeningpupillaryReflectionObservations",
      "path" : "NewBornLM.screeningpupillaryReflectionObservations",
      "short" : "Observações do rastreio de Teste Reflexo pupilar com alteração.",
      "definition" : "Observações do rastreio de Teste Reflexo pupilar com alteração.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.screeningHearing",
      "path" : "NewBornLM.screeningHearing",
      "short" : "Rastreio auditivo neonatal universal",
      "definition" : "Rastreio auditivo neonatal universal",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NewBornLM.screeningHearing.type",
      "path" : "NewBornLM.screeningHearing.type",
      "short" : "Tipo de rastreio (0- Potenciais evocados auditivos de tronco cerebral; 1- Otoemissões acústicas; 2- Não realizado; 3- Potenciais evocados auditivos automáticos; 4-Marcado para)",
      "definition" : "Tipo de rastreio (0- Potenciais evocados auditivos de tronco cerebral; 1- Otoemissões acústicas; 2- Não realizado; 3- Potenciais evocados auditivos automáticos; 4-Marcado para)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "NewBornLM.screeningHearing.date",
      "path" : "NewBornLM.screeningHearing.date",
      "short" : "Data de realização/marcação (YYYY-MM-DD)",
      "definition" : "Data de realização/marcação (YYYY-MM-DD)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "NewBornLM.screeningHearing.rightEar",
      "path" : "NewBornLM.screeningHearing.rightEar",
      "short" : "Ouvido esquerdo examinado (0 – Com Alteração; 1 – Sem Alteração)",
      "definition" : "Ouvido esquerdo examinado (0 – Com Alteração; 1 – Sem Alteração)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.screeningHearing.leftEar",
      "path" : "NewBornLM.screeningHearing.leftEar",
      "short" : "Ouvido esquerdo examinado (0 – Com Alteração; 1 – Sem Alteração)",
      "definition" : "Ouvido esquerdo examinado (0 – Com Alteração; 1 – Sem Alteração)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.screeningHearing.repeatDate",
      "path" : "NewBornLM.screeningHearing.repeatDate",
      "short" : "Data de repetição (YYYY-MM-DD)",
      "definition" : "Data de repetição (YYYY-MM-DD)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "NewBornLM.VHB",
      "path" : "NewBornLM.VHB",
      "short" : "Administração da vacina VHB",
      "definition" : "Administração da vacina VHB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/VaccineLM"
      }]
    },
    {
      "id" : "NewBornLM.BCG",
      "path" : "NewBornLM.BCG",
      "short" : "Administração da vacina BCG",
      "definition" : "Administração da vacina BCG",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/VaccineLM"
      }]
    },
    {
      "id" : "NewBornLM.immunoglobulin",
      "path" : "NewBornLM.immunoglobulin",
      "short" : "Administração de imunoglubina",
      "definition" : "Administração de imunoglubina",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/VaccineLM"
      }]
    },
    {
      "id" : "NewBornLM.feedingUntilDischarge",
      "path" : "NewBornLM.feedingUntilDischarge",
      "short" : "Aleitamento até a alta hospitalar (0 - Materno; 1 - Misto; 2 - Artificial)",
      "definition" : "Aleitamento até a alta hospitalar (0 - Materno; 1 - Misto; 2 - Artificial)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "NewBornLM.feedingFirstHour",
      "path" : "NewBornLM.feedingFirstHour",
      "short" : "Aleitamento materno na primeira hora de vida",
      "definition" : "Aleitamento materno na primeira hora de vida",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.individualHealthBulletinDelivered",
      "path" : "NewBornLM.individualHealthBulletinDelivered",
      "short" : "Data de entrega do boletim individual de saúde",
      "definition" : "Data de entrega do boletim individual de saúde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "NewBornLM.childYoungHealthBulletinDelivered",
      "path" : "NewBornLM.childYoungHealthBulletinDelivered",
      "short" : "Data de entrega do boletim de saúde infantil e juvenil",
      "definition" : "Data de entrega do boletim de saúde infantil e juvenil",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "NewBornLM.bulletinDeliveryType",
      "path" : "NewBornLM.bulletinDeliveryType",
      "short" : "Tipo de boletim entregue (0- Papel; 1- Digital; 2- Transferido sem BSIJ; 3 - Não entregue devido a Nado Morto ou Falecido)",
      "definition" : "Tipo de boletim entregue (0- Papel; 1- Digital; 2- Transferido sem BSIJ; 3 - Não entregue devido a Nado Morto ou Falecido)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "NewBornLM.riskAssessment",
      "path" : "NewBornLM.riskAssessment",
      "short" : "Avaliação de risco e referenciação ao NHACJR",
      "definition" : "Avaliação de risco e referenciação ao NHACJR",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NewBornLM.riskAssessment.riskFactorsIdentified",
      "path" : "NewBornLM.riskAssessment.riskFactorsIdentified",
      "short" : "Fatores de risco (0- Individual; 1- Familiar; 2- Contexto social; 3- Inexistente)",
      "definition" : "Fatores de risco (0- Individual; 1- Familiar; 2- Contexto social; 3- Inexistente)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Coding"
      }]
    },
    {
      "id" : "NewBornLM.riskAssessment.reference",
      "path" : "NewBornLM.riskAssessment.reference",
      "short" : "Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR)",
      "definition" : "Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "NewBornLM.riskAssessment.observations",
      "path" : "NewBornLM.riskAssessment.observations",
      "short" : "Observações",
      "definition" : "Observações",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.Outpatient",
      "path" : "NewBornLM.Outpatient",
      "short" : "Consultas",
      "definition" : "Consultas",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "NewBornLM.Outpatient.institution",
      "path" : "NewBornLM.Outpatient.institution",
      "short" : "Unidade de saúde da consulta",
      "definition" : "Unidade de saúde da consulta",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "NewBornLM.Outpatient.date",
      "path" : "NewBornLM.Outpatient.date",
      "short" : "Data da consulta (YYYY-MM-DD HH:MI:SS)",
      "definition" : "Data da consulta (YYYY-MM-DD HH:MI:SS)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "NewBornLM.confirmedDeceased",
      "path" : "NewBornLM.confirmedDeceased",
      "short" : "Identificação de falecimento",
      "definition" : "Identificação de falecimento",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
