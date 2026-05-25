# childhealthsurveilance-ex - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **childhealthsurveilance-ex**

## Example Organization: childhealthsurveilance-ex

Perfil: [Perfil da vigilância de saúde infantil](StructureDefinition-Childhealthsurveilance.md)

**identifier**: `http:/example.org`/4



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "childhealthsurveilance-ex",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Childhealthsurveilance"]
  },
  "identifier" : [{
    "system" : "http:/example.org",
    "value" : "4"
  }]
}

```
