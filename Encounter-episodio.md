# episodio - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **episodio**

## Example Encounter: episodio

Perfil: [Perfil sobre episódio da notícia de nascimento](StructureDefinition-Contact.md)

**identifier**: 18001555

**status**: Finished

**class**: [Tipos de episódio CodeSystem: INT](CodeSystem-tipo-episodio-cs.md#tipo-episodio-cs-INT) (Internamento)

**serviceType**: Obstetricia

**serviceProvider**: [Organization CH ENTRE DOURO E VOUGA](Organization-inst.md)



## Resource Content

```json
{
  "resourceType" : "Encounter",
  "id" : "episodio",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Contact"]
  },
  "identifier" : [{
    "value" : "18001555"
  }],
  "status" : "finished",
  "class" : {
    "system" : "https://hl7.pt/fhir/NoticiaNascimento/CodeSystem/tipo-episodio-cs",
    "code" : "INT"
  },
  "serviceType" : {
    "text" : "Obstetricia"
  },
  "serviceProvider" : {
    "reference" : "Organization/inst"
  }
}

```
