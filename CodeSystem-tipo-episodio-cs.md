# Tipos de episódio CodeSystem - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Tipos de episódio CodeSystem**

## CodeSystem: Tipos de episódio CodeSystem (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/CodeSystem/tipo-episodio-cs | *Version*:0.0.1 |
| Active as of 2026-05-25 | *Computable Name*:TipoepisodioCS |

 
Tipos de episódio CodeSystem 

 This Code system is referenced in the content logical definition of the following value sets: 

* [TipoepisodioVS](ValueSet-episode-type-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "tipo-episodio-cs",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/CodeSystem/tipo-episodio-cs",
  "version" : "0.0.1",
  "name" : "TipoepisodioCS",
  "title" : "Tipos de episódio CodeSystem",
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
  "description" : "Tipos de episódio CodeSystem",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "CON",
    "display" : "Consulta",
    "definition" : "Consulta"
  },
  {
    "code" : "INT",
    "display" : "Internamento",
    "definition" : "Internamento"
  },
  {
    "code" : "URG",
    "display" : "Urgência",
    "definition" : "Urgência"
  },
  {
    "code" : "BLO",
    "display" : "Bloco",
    "definition" : "Bloco"
  },
  {
    "code" : "HDI",
    "display" : "Hospital de Dia",
    "definition" : "Hospital de Dia"
  },
  {
    "code" : "RAD",
    "display" : "RAD",
    "definition" : "RAD"
  },
  {
    "code" : "LAB",
    "display" : "LAB",
    "definition" : "LAB"
  }]
}

```
