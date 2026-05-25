# Elementos adicionais de informação gravidez CodeSystem - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Elementos adicionais de informação gravidez CodeSystem**

## CodeSystem: Elementos adicionais de informação gravidez CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/noticia-nascimento/CodeSystem/InfosGravidezCS | *Version*:1.0.0 |
| Active as of 2026-05-25 | *Computable Name*:InfosGravidezCS |

 
Elementos adicionais de informação gravidez CodeSystem - Criado por falta de um código internacional ideal 

 This Code system is referenced in the content logical definition of the following value sets: 

* Este CodeSystem não é utilizado aqui; pode ser utilizado noutro local (por exemplo, em especificações e/ou implementações que utilizem este conteúdo)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "InfosGravidezCS",
  "url" : "https://hl7.pt/fhir/noticia-nascimento/CodeSystem/InfosGravidezCS",
  "version" : "1.0.0",
  "name" : "InfosGravidezCS",
  "title" : "Elementos adicionais de informação gravidez CodeSystem",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Elementos adicionais de informação gravidez CodeSystem - Criado por falta de um código internacional ideal",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "BIO1T",
    "display" : "Analítico 1º Trimestre",
    "definition" : "Analítico 1º Trimestre"
  },
  {
    "code" : "BIO2T",
    "display" : "Analítico 2º Trimestre",
    "definition" : "Analítico 2º Trimestre"
  },
  {
    "code" : "BIO3T",
    "display" : "Analítico 3º Trimestre",
    "definition" : "Analítico 3º Trimestre"
  },
  {
    "code" : "PREGRISKREASON",
    "display" : "Motivo do risco",
    "definition" : "Motivo do risco"
  },
  {
    "code" : "INTEROC",
    "display" : "Intercorrências",
    "definition" : "Intercorrências"
  }]
}

```
