# Noticia de Nascimento de recém-nascido - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Noticia de Nascimento de recém-nascido**

## Example Composition: Noticia de Nascimento de recém-nascido

Perfil: [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md)

**status**: Final

**type**: Birth certificate

**encounter**: [Encounter: identifier = 18001555; status = finished; class = Internamento (Tipos de episódio CodeSystem#INT); serviceType = ](Encounter-episodio.md)

**date**: 2021-09-01

**author**: HCP

**title**: Noticia de Nascimento de recém-nascido



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "compNN",
  "meta" : {
    "profile" : ["https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia"]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org/",
      "code" : "71230-7",
      "display" : "Birth certificate"
    }]
  },
  "encounter" : {
    "reference" : "Encounter/episodio"
  },
  "date" : "2021-09-01",
  "author" : [{
    "display" : "HCP"
  }],
  "title" : "Noticia de Nascimento de recém-nascido",
  "section" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "10160-0"
      }]
    },
    "entry" : [{
      "reference" : "Patient/mother"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "56833-7",
        "display" : "Pregnancy related history Narrative"
      }]
    },
    "entry" : [{
      "reference" : "Observation/pregnancyNN"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57074-7",
        "display" : "Labor and delivery process Narrative"
      }]
    },
    "entry" : [{
      "reference" : "Procedure/BirthNN"
    },
    {
      "reference" : "Encounter/episodioInt"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "57075-4",
        "display" : "Newborn delivery information"
      }]
    },
    "entry" : [{
      "reference" : "Patient/newBornNN"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "73738-7",
        "display" : "Newborn screening test results panel - Point of Care"
      }]
    },
    "entry" : [{
      "reference" : "Observation/length-example"
    },
    {
      "reference" : "Observation/body-weigth-example"
    },
    {
      "reference" : "Observation/apgar-example"
    },
    {
      "reference" : "Observation/congenital-example"
    },
    {
      "reference" : "Observation/pupillary-example"
    },
    {
      "reference" : "Observation/cephalic-perimeter-example"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "11369-6",
        "display" : "History of Immunization Narrative"
      }]
    },
    "entry" : [{
      "reference" : "Immunization/vaccNN-antid"
    },
    {
      "reference" : "Immunization/vaccNN-bcg"
    },
    {
      "reference" : "Immunization/vaccNN-hepb"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "11544-4",
        "display" : "Hospital discharge follow-up Narrative"
      }]
    },
    "entry" : [{
      "reference" : "Organization/childhealthsurveilance-ex"
    },
    {
      "reference" : "Observation/puerperium-ex"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "45131006",
        "display" : "Primary care hospital (environment)"
      }]
    },
    "entry" : [{
      "reference" : "Organization/destino"
    }]
  }]
}

```
