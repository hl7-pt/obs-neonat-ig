# puerperium-ex - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **puerperium-ex**

## Example Observation: puerperium-ex

Perfil: [Perfil para registar dados do puerpério até à alta](StructureDefinition-Puerperium.md)

**identifier**: `http:/example.org`/4

**status**: Final

**code**: Puerperium observable (observable entity)

**value**: Normal puerperium (finding)



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "puerperium-ex",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Puerperium"]
  },
  "identifier" : [{
    "system" : "http:/example.org",
    "value" : "4"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "597951000005108",
      "display" : "Puerperium observable (observable entity)"
    }]
  },
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "597961000005105",
      "display" : "Normal puerperium (finding)"
    }]
  }
}

```
