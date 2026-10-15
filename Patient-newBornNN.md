# newBornNN - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **newBornNN**

## Example Patient: newBornNN

Perfil: [Perfil do recém-nascido](StructureDefinition-Child.md)

Doente anónimo Female, DoB: 2024-08-01

-------

| | |
| :--- | :--- |
| Nascimento múltiplo: | 1 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "newBornNN",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Child"]
  },
  "gender" : "female",
  "birthDate" : "2024-08-01",
  "multipleBirthInteger" : 1
}

```
