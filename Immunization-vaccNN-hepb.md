# vaccNN-hepb - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **vaccNN-hepb**

## Example Immunization: vaccNN-hepb

Perfil: [Perfil de Informação sobre vacinação - hepb](StructureDefinition-Hepb.md)

**status**: Completed

**vaccineCode**: Vaccine product containing only Hepatitis B virus antigen (medicinal product)

**patient**: [Doente anónimo Female, DN Desconhecida](Patient-newBornNN.md)

**occurrence**: 2024-08-01 10:00:00+0000

**lotNumber**: abc-9878



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "vaccNN-hepb",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Hepb"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "871822003",
      "display" : "Vaccine product containing only Hepatitis B virus antigen (medicinal product)"
    }]
  },
  "patient" : {
    "reference" : "Patient/newBornNN"
  },
  "occurrenceDateTime" : "2024-08-01T10:00:00.000Z",
  "lotNumber" : "abc-9878"
}

```
