# vaccNN-bcg - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **vaccNN-bcg**

## Example Immunization: vaccNN-bcg

Perfil: [Perfil sobre Informação sobre vacinação](StructureDefinition-Vaccination.md)

**status**: Completed

**vaccineCode**: Vaccine product containing only live attenuated Mycobacterium bovis antigen (medicinal product)

**patient**: [Doente anónimo Female, DoB: 2024-08-01](Patient-newBornNN.md)

**occurrence**: 2024-08-01 10:00:00+0000

**lotNumber**: ghy-123/2024



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "vaccNN-bcg",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Vaccination"]
  },
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "836402002",
      "display" : "Vaccine product containing only live attenuated Mycobacterium bovis antigen (medicinal product)"
    }]
  },
  "patient" : {
    "reference" : "Patient/newBornNN"
  },
  "occurrenceDateTime" : "2024-08-01T10:00:00.000Z",
  "lotNumber" : "ghy-123/2024"
}

```
