# Classficação de documentos CodeSystem - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Classficação de documentos CodeSystem**

## CodeSystem: Classficação de documentos CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/CodeSystem/documentclassificationCS | *Version*:0.0.1 |
| Active as of 2026-05-25 | *Computable Name*:DocumentclassificationCS |

 
Classficação de documentos CodeSystem 

 This Code system is referenced in the content logical definition of the following value sets: 

* [BulletindeliveryVS](ValueSet-bulletin-delivery-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "documentclassificationCS",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/CodeSystem/documentclassificationCS",
  "version" : "0.0.1",
  "name" : "DocumentclassificationCS",
  "title" : "Classficação de documentos CodeSystem",
  "status" : "active",
  "experimental" : true,
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
  "description" : "Classficação de documentos CodeSystem",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "BISC",
    "display" : "Boletim Individual de saúde da criança",
    "definition" : "Boletim Individual de saúde da criança"
  },
  {
    "code" : "BSIJ",
    "display" : "Boletim de saúde infantil e juvenil",
    "definition" : "Boletim de saúde infantil e juvenil"
  }]
}

```
