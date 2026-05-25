# ObsRole - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ObsRole**

## Example PractitionerRole: ObsRole

**code**: Obstetrician



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "ObsRole",
  "code" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "11935004",
      "display" : "Obstetrician"
    }]
  }]
}

```
