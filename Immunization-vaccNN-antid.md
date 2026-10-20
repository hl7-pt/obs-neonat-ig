# vaccNN-antid - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **vaccNN-antid**

## Example Immunization: vaccNN-antid

Perfil: [Perfil sobre Informação sobre vacinação](StructureDefinition-Vaccination.md)

**status**: Completed

**vaccineCode**: Product containing only human anti-D immunoglobulin (medicinal product)

**patient**: [Doente anónimo Female, DoB: 2024-08-01](Patient-newBornNN.md)

**occurrence**: 2024-08-01 10:00:00+0000

**lotNumber**: xyz-123



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "vaccNN-antid",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Vaccination"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "786224004",
      "display" : "Product containing only human anti-D immunoglobulin (medicinal product)"
    }]
  },
  "patient" : {
    "reference" : "Patient/newBornNN"
  },
  "occurrenceDateTime" : "2024-08-01T10:00:00.000Z",
  "lotNumber" : "xyz-123"
}

```
