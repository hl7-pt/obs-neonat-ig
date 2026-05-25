# vaccNN-antid - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **vaccNN-antid**

## Example Immunization: vaccNN-antid

Perfil: [Perfil de Informação sobre vacinação - antid](StructureDefinition-Antid.md)

**status**: Completed

**vaccineCode**: Product containing only human anti-D immunoglobulin (medicinal product)

**patient**: [Doente anónimo Female, DN Desconhecida](Patient-newBornNN.md)

**occurrence**: 2024-08-01 10:00:00+0000

**lotNumber**: xyz-123



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "vaccNN-antid",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/noticia-nascimento/StructureDefinition/Antid"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "786768001",
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
