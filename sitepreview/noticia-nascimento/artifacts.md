# Artifacts Summary - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Logical Models 

These define data models that represent the domain covered by this implementation guide in more business-friendly terms than the underlying FHIR resources.

| | |
| :--- | :--- |
| [Contacto (modelo)](StructureDefinition-ContactLM.md) | Modelo Lógico - Contacto |
| [Dados da inscrição nos cuidados de saúde primários (modelo)](StructureDefinition-DestinationLN.md) | Modelo Lógico - Dados da inscrição nos cuidados de saúde primários |
| [Dados demográficos da mãe (modelo)](StructureDefinition-MotherDemographicsLM.md) | Modelo Lógico - Dados demográficos da mãe |
| [Gravidez (modelo)](StructureDefinition-PregnancyLM.md) | Modelo Lógico - Gravidez |
| [Informações Core da Noticia (modelo)](StructureDefinition-CoredaNoticiaLM.md) | Modelo Lógico - Informações Core da Noticia |
| [Notícia de Nascimento (modelo)](StructureDefinition-NoticiaLM.md) | Modelo Lógico - Notícia de Nascimento |
| [Professional (Modelo)](StructureDefinition-ProfessionalLM.md) | Modelo Lógico - Professional |
| [Recem-nascido (modelo)](StructureDefinition-NewBornLM.md) | Modelo Lógico - Recem-nascido |
| [Vacina (modelo)](StructureDefinition-VaccineLM.md) | Modelo Lógico - Vacina |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Perfil da mãe](StructureDefinition-Mother.md) | Perfil da mãe |
| [Perfil da vigilância de saúde infantil](StructureDefinition-Childhealthsurveilance.md) | Perfil da vigilância de saúde infantil |
| [Perfil de Informação de gravidez](StructureDefinition-Pregnancy.md) | Perfil de Informação de gravidez |
| [Perfil de Informação do Parto](StructureDefinition-Birth.md) | Perfil de Informação do Parto |
| [Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR](StructureDefinition-Newbornriskassessment.md) | Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR |
| [Perfil de Informação sobre entrega de boletim](StructureDefinition-Bulletindelivery.md) | Perfil de Informação sobre entrega de boletim |
| [Perfil de Informação sobre vacinação - BCG](StructureDefinition-Bcg.md) | Perfil de Informação sobre vacinação - BCG |
| [Perfil de Informação sobre vacinação - antid](StructureDefinition-Antid.md) | Perfil de Informação sobre vacinação - antid |
| [Perfil de Informação sobre vacinação - hepb](StructureDefinition-Hepb.md) | Perfil de Informação sobre vacinação - hepb |
| [Perfil de informação clinicas - Dados de malformações](StructureDefinition-Malformation.md) | Perfil de informação clinicas - Dados de malformações |
| [Perfil de informação clinicas - Fototerapia](StructureDefinition-Phototherapy.md) | Perfil de informação clinicas - Fototerapia |
| [Perfil de informação clinicas - Rastreio Cardiopatias Congénitas](StructureDefinition-Congenital.md) | Perfil de informação clinicas - Rastreio Cardiopatias Congénitas |
| [Perfil de informação clinicas - Rastreio auditivo neonatal universal](StructureDefinition-Hearingscreen.md) | Perfil de informação clinicas - Rastreio auditivo neonatal universal |
| [Perfil de informação clinicas - Rastreio de doenças metabólicas](StructureDefinition-Metabolic.md) | Perfil de informação clinicas - Rastreio de doenças metabólicas |
| [Perfil de informação clinicas - Teste Reflexo pupilar](StructureDefinition-Pupillary.md) | Perfil de informação clinicas - Teste Reflexo pupilar |
| [Perfil de informação clinicas - apgarScore](StructureDefinition-ApgarScore.md) | Perfil de informação clinicas - apgarScore |
| [Perfil de informação sobre Transportes](StructureDefinition-Transport.md) | Perfil de informação sobre Transportes |
| [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md) | Perfil do recurso Composition que cria as secções da noticia nascimento |
| [Perfil do recém-nascido](StructureDefinition-Child.md) | Perfil do recém-nascido |
| [Perfil para o profissional de saúde](StructureDefinition-Professional.md) | Perfil para o profissional de saúde |
| [Perfil para registar dados do puerpério até à alta](StructureDefinition-Puerperium.md) | Perfil para registar dados do puerpério até à alta |
| [Perfil sobre Elaboração de carta com informação clínica suplementar](StructureDefinition-Letter.md) | Perfil sobre Elaboração de carta com informação clínica suplementar |
| [Perfil sobre Informação sobre vacinação - genérico](StructureDefinition-Vaccination.md) | Perfil sobre Informação sobre vacinação - genérico |
| [Perfil sobre episódio da notícia de nascimento](StructureDefinition-Contact.md) | Perfil sobre episódio da notícia de nascimento |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Extensão sobre informação sobre Transportes](StructureDefinition-transport-information.md) | Extensão sobre informação sobre Transportes |
| [ReferenciaNHACJR](StructureDefinition-ReferenciaNHACJR.md) | Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR) |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Envio de boletim ValueSet](ValueSet-bulletin-delivery-vs.md) | Envio de boletim ValueSet |
| [Risco de gravidez ValueSet](ValueSet-risco-gravidez-vs.md) | Risco de gravidez ValueSet |
| [Tipo de documento ValueSet](ValueSet-document-type-vs.md) | Tipo de documento ValueSet |
| [Tipo de gravidez ValueSet](ValueSet-tipo-gravidez-vs.md) | Tipo de gravidez ValueSet |
| [Tipos de doença congénita ValueSet](ValueSet-newborn-congenital-anomalies-vs.md) | Tipos de doença congénita ValueSet |
| [Tipos de episódio ValueSet](ValueSet-episode-type-vs.md) | Tipos de episódio ValueSet |
| [Tipos de outcome de puerpério ValueSet](ValueSet-puerperium-vs.md) | Tipos de outcome de puerpério ValueSet |
| [Tipos de parto ValueSet](ValueSet-tipo-parto-vs.md) | Tipos de parto ValueSet |
| [Tipos de risco para avaliação de recém-nascidos ValueSet](ValueSet-newbornriskassessment-vs.md) | Tipos de risco para avaliação de recém-nascidos ValueSet |
| [Tipos de transporte de recém-nascido ValueSet](ValueSet-transport-type-vs.md) | Tipos de transporte de recém-nascido ValueSet |
| [Vacinas ValueSet](ValueSet-vacinas-infancia-vs.md) | Vacinas ValueSet |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Classficação de documentos CodeSystem](CodeSystem-documentclassificationCS.md) | Classficação de documentos CodeSystem |
| [Elementos adicionais de informação gravidez CodeSystem](CodeSystem-InfosGravidezCS.md) | Elementos adicionais de informação gravidez CodeSystem - Criado por falta de um código internacional ideal |
| [Tipos de episódio CodeSystem](CodeSystem-tipo-episodio-cs.md) | Tipos de episódio CodeSystem |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [BirthNN](Procedure-BirthNN.md) | Exemplo nascimento |
| [Noticia de Nascimento de recém-nascido](Composition-compNN.md) | Exemplo Composition |
| [ObsRole](PractitionerRole-ObsRole.md) |  |
| [apgar-example](Observation-apgar-example.md) | Exemplo de Apgar |
| [body-weigth-example](Observation-body-weigth-example.md) | Exemplo peso recem-nascido |
| [cephalic-perimeter-example](Observation-cephalic-perimeter-example.md) | Exemplo perimetro cefálico |
| [childhealthsurveilance-ex](Organization-childhealthsurveilance-ex.md) | Exemplo da vigilância de saúde infantil |
| [congenital-example](Observation-congenital-example.md) | Exemplo de registo de doença congénita |
| [destino](Organization-destino.md) | Exemplo destino |
| [episodio](Encounter-episodio.md) | Exemplo episódio contacto |
| [episodioInt](Encounter-episodioInt.md) | Exemplo internamento |
| [exemploNN](Bundle-exemploNN.md) | Exemplo Noticia Nascimento |
| [inst](Organization-inst.md) | Exemplo Instituição |
| [length-example](Observation-length-example.md) | Exemplo altura recem-nascido |
| [mother](Patient-mother.md) | Exemplo Mãe |
| [newBornNN](Patient-newBornNN.md) | Exemplo recém-nascido |
| [pregnancyNN](Observation-pregnancyNN.md) | Exemplo gravidez |
| [puerperium-ex](Observation-puerperium-ex.md) | Exemplo de puerpério |
| [pupillary-example](Observation-pupillary-example.md) | Exemplo de análise pupilar |
| [vaccNN-antid](Immunization-vaccNN-antid.md) | Exemplo vacina ANTI-D |
| [vaccNN-bcg](Immunization-vaccNN-bcg.md) | Exemplo vacina BCG |
| [vaccNN-hepb](Immunization-vaccNN-hepb.md) | Exemplo vacina HEPB |

