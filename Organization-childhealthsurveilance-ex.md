# childhealthsurveilance-ex - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **childhealthsurveilance-ex**

## Example Organization: childhealthsurveilance-ex

Perfil: [Perfil da organização de saúde](StructureDefinition-HealthcareOrganization.md)

Vigilância de Saúde Infantil (Primary care hospital) (http:/example.org#4)

-------

| | |
| :--- | :--- |
| Type: | Primary care hospital |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "childhealthsurveilance-ex",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/HealthcareOrganization"]
  },
  "identifier" : [{
    "system" : "http:/example.org",
    "value" : "4"
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "45131006",
      "display" : "Primary care hospital"
    }]
  }],
  "name" : "Vigilância de Saúde Infantil"
}

```
