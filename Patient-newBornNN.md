# newBornNN - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **newBornNN**

## Example Patient: newBornNN

Perfil: [Perfil do recém-nascido](StructureDefinition-Child.md)

Doente anónimo Female, DN Desconhecida

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "newBornNN",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Child"]
  },
  "gender" : "female"
}

```
