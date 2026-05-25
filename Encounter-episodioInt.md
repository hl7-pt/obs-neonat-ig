# episodioInt - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **episodioInt**

## Example Encounter: episodioInt

**status**: Finished

**class**: [Tipos de episódio CodeSystem: INT](CodeSystem-tipo-episodio-cs.md#tipo-episodio-cs-INT) (Internamento)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "episodioInt",
  "status" : "finished",
  "class" : {
    "system" : "https://hl7.pt/fhir/NoticiaNascimento/CodeSystem/tipo-episodio-cs",
    "code" : "INT"
  }
}

```
