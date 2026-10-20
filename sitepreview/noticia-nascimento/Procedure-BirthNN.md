# BirthNN - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BirthNN**

## Example Procedure: BirthNN

Perfil: [Perfil de Informação do Parto](StructureDefinition-Birth.md)

**status**: Completed

**code**: Delivery of vertex presentation (procedure)

**subject**: [NOME DE TESTE (sem género declarado), DoB: 1989-07-30 ( http://example#1234567)](Patient-mother.md)

**encounter**: [Encounter: status = finished; class = Internamento (Tipos de episódio CodeSystem#INT)](Encounter-episodioInt.md)

**performed**: 2024-08-01 10:00:00+0000

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Obstetrician](PractitionerRole-ObsRole.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "BirthNN",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Birth"]
  },
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "384729004",
      "display" : "Delivery of vertex presentation (procedure)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mother"
  },
  "encounter" : {
    "reference" : "Encounter/episodioInt"
  },
  "performedDateTime" : "2024-08-01T10:00:00.000Z",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/ObsRole"
    }
  }]
}

```
