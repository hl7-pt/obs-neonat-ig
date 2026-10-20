# Artifacts Summary - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Documento: Notícia de Nascimento 

Composition que estrutura o documento e as suas secções.

| | |
| :--- | :--- |
| [Perfil do recurso Composition que cria as secções da noticia nascimento](StructureDefinition-CompositionNoticia.md) | Perfil do recurso Composition que cria as secções da noticia nascimento |

### Mãe e gravidez 

Dados demográficos da mãe, da gravidez e do puerpério.

| | |
| :--- | :--- |
| [Perfil da mãe](StructureDefinition-Mother.md) | Perfil da mãe |
| [Perfil de Idade gestacional](StructureDefinition-GestationalAge.md) | Idade gestacional estimada, registada como quantidade em UCUM. Uma idade gestacional em semanas e dias (ex.: 38 semanas e 4 dias) deve ser convertida para dias (270 d). |
| [Perfil de Informação de gravidez](StructureDefinition-Pregnancy.md) | Perfil de Informação de gravidez |
| [Perfil para registar dados do puerpério até à alta](StructureDefinition-Puerperium.md) | Perfil para registar dados do puerpério até à alta |

### Parto e episódios 

Informação do parto e episódio(s) de internamento.

| | |
| :--- | :--- |
| [Perfil de Informação do Parto](StructureDefinition-Birth.md) | Perfil de Informação do Parto |
| [Perfil sobre episódio da notícia de nascimento](StructureDefinition-Contact.md) | Perfil sobre episódio da notícia de nascimento |

### Recém-nascido: identificação, medidas e observações 

Perfil do recém-nascido, medidas ao nascer, avaliações e rastreios neonatais.

| | |
| :--- | :--- |
| [Perfil de Comprimento ao nascer](StructureDefinition-BirthLength.md) | Comprimento do recém-nascido ao nascer, em centímetros. Mantém o código LOINC 8302-2 do perfil de sinais vitais e acrescenta o código específico 89269-5 (Body height Measured –at birth). |
| [Perfil de informação clinicas - apgarScore](StructureDefinition-ApgarScore.md) | Perfil de informação clinicas - apgarScore |
| [Perfil de informação clinicas - Dados de malformações](StructureDefinition-Malformation.md) | Perfil de informação clinicas - Dados de malformações |
| [Perfil de informação clinicas - Fototerapia](StructureDefinition-Phototherapy.md) | Perfil de informação clinicas - Fototerapia |
| [Perfil de informação clinicas - Marcação de rastreio neonatal](StructureDefinition-ScreeningRequest.md) | Perfil de informação clinicas - Marcação de rastreio neonatal (auditivo ou de doenças metabólicas) ainda não realizado e marcado para data futura |
| [Perfil de informação clinicas - Rastreio auditivo neonatal universal](StructureDefinition-Hearingscreen.md) | Perfil de informação clinicas - Rastreio auditivo neonatal universal |
| [Perfil de informação clinicas - Rastreio Cardiopatias Congénitas](StructureDefinition-Congenital.md) | Perfil de informação clinicas - Rastreio Cardiopatias Congénitas |
| [Perfil de informação clinicas - Rastreio de doenças metabólicas](StructureDefinition-Metabolic.md) | Perfil de informação clinicas - Rastreio de doenças metabólicas |
| [Perfil de informação clinicas - Teste Reflexo pupilar](StructureDefinition-Pupillary.md) | Perfil de informação clinicas - Teste Reflexo pupilar |
| [Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR](StructureDefinition-Newbornriskassessment.md) | Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR |
| [Perfil de Perímetro cefálico ao nascer](StructureDefinition-BirthHeadCircumference.md) | Perímetro cefálico do recém-nascido ao nascer, em centímetros. Mantém o código LOINC 9843-4 do perfil de sinais vitais e acrescenta o código específico 8290-9 (Head Occipital-frontal circumference –at birth- by Tape measure). |
| [Perfil de Peso ao nascer](StructureDefinition-BirthWeight.md) | Peso do recém-nascido ao nascer, em gramas. Mantém o código LOINC 29463-7 do perfil de sinais vitais e acrescenta o código específico 8339-4 (Birth weight Measured). |
| [Perfil do recém-nascido](StructureDefinition-Child.md) | Perfil do recém-nascido |
| [Rastreios neonatais marcáveis ValueSet](ValueSet-neonatal-screening-vs.md) | Rastreios neonatais que podem ser marcados para data futura na notícia de nascimento (ServiceRequest.code). |

### Vacinação 

Vacinas e imunoglobulina administradas.

| | |
| :--- | :--- |
| [Motivos de não vacinação ValueSet](ValueSet-immunization-status-reason-vs.md) | Motivos para a não administração de uma vacina (Immunization.statusReason), de acordo com o Catálogo Português de Vacinas (CPV). |
| [Perfil sobre Informação sobre vacinação](StructureDefinition-Vaccination.md) | Perfil sobre Informação sobre vacinação |

### Seguimento e alta 

Boletins, carta de informação clínica, vigilância de saúde infantil e transporte.

| | |
| :--- | :--- |
| [Perfil de Informação sobre entrega de boletim](StructureDefinition-Bulletindelivery.md) | Perfil de Informação sobre entrega de boletim |
| [Perfil de informação sobre Transportes](StructureDefinition-Transport.md) | Perfil de informação sobre Transportes |
| [Perfil sobre Elaboração de carta com informação clínica suplementar](StructureDefinition-Letter.md) | Perfil sobre Elaboração de carta com informação clínica suplementar |

### Organizações e profissionais 

Instituições de saúde e profissionais envolvidos no registo.

| | |
| :--- | :--- |
| [Grupo funcional do profissional ValueSet](ValueSet-professional-role-vs.md) | Grupo funcional do profissional de saúde envolvido na notícia de nascimento |
| [Perfil da organização de saúde](StructureDefinition-HealthcareOrganization.md) | Organização de saúde (hospital/maternidade, unidade de cuidados de saúde primários, etc.) referenciada na notícia de nascimento |
| [Perfil para a função do profissional de saúde](StructureDefinition-ProfessionalRole.md) | Função desempenhada pelo profissional de saúde (ex.: médico, enfermeiro) no registo da notícia de nascimento |
| [Perfil para o profissional de saúde](StructureDefinition-Professional.md) | Perfil para o profissional de saúde |

### Extensões 

| | |
| :--- | :--- |
| [Extensão sobre informação sobre Transportes](StructureDefinition-transport-information.md) | Extensão sobre informação sobre Transportes |
| [ReferenciaNHACJR](StructureDefinition-ReferenciaNHACJR.md) | Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR) |

### Modelos lógicos 

Modelo de dados da Notícia de Nascimento (API SPMS) usado nos mapeamentos.

| | |
| :--- | :--- |
| [Contacto (modelo)](StructureDefinition-ContactLM.md) | Modelo Lógico - Contacto |
| [Dados da inscrição nos cuidados de saúde primários (modelo)](StructureDefinition-DestinationLM.md) | Modelo Lógico - Dados da inscrição nos cuidados de saúde primários |
| [Dados demográficos da mãe (modelo)](StructureDefinition-MotherDemographicsLM.md) | Modelo Lógico - Dados demográficos da mãe |
| [Gravidez (modelo)](StructureDefinition-PregnancyLM.md) | Modelo Lógico - Gravidez |
| [Notícia de Nascimento (modelo)](StructureDefinition-NoticiaLM.md) | Modelo Lógico - Notícia de Nascimento |
| [Notícia de Nascimento - informação core (modelo)](StructureDefinition-BirthNoticeLM.md) | Modelo Lógico - Informações Core da Noticia |
| [Professional (Modelo)](StructureDefinition-ProfessionalLM.md) | Modelo Lógico - Professional |
| [Recem-nascido (modelo)](StructureDefinition-NewBornLM.md) | Modelo Lógico - Recem-nascido |
| [Vacina (modelo)](StructureDefinition-VaccineLM.md) | Modelo Lógico - Vacina |

### Terminologia 

CodeSystems e ValueSets definidos neste guia.

| | |
| :--- | :--- |
| [Classficação de documentos CodeSystem](CodeSystem-documentclassificationCS.md) | Classficação de documentos CodeSystem |
| [Elementos adicionais de informação gravidez CodeSystem](CodeSystem-InfosGravidezCS.md) | Elementos adicionais de informação gravidez CodeSystem - Criado por falta de um código internacional ideal |
| [Envio de boletim ValueSet](ValueSet-bulletin-delivery-vs.md) | Envio de boletim ValueSet |
| [Risco de gravidez ValueSet](ValueSet-risco-gravidez-vs.md) | Risco de gravidez ValueSet |
| [Tipo de documento ValueSet](ValueSet-document-type-vs.md) | Tipo de documento ValueSet |
| [Tipo de gravidez ValueSet](ValueSet-tipo-gravidez-vs.md) | Tipo de gravidez ValueSet |
| [Tipo de local de seguimento ValueSet](ValueSet-tipo-local-seguimento-vs.md) | Tipo de local de seguimento (revisão do puerpério e vigilância de saúde infantil). Mapeamento dos valores do formulário da norma: USF/UCSP → 45131006; No Hospital → 224885007 (consulta externa hospitalar). 'Privado' não tem correspondência adequada (o setor público/privado é uma característica do prestador e não um tipo de local); 'Outro' regista-se em type.text; 'Não sabe' representa ausência de informação e regista-se com a extensão data-absent-reason, não como código deste value set. |
| [Tipos de doença congénita ValueSet](ValueSet-newborn-congenital-anomalies-vs.md) | Tipos de doença congénita ValueSet |
| [Tipos de episódio CodeSystem](CodeSystem-tipo-episodio-cs.md) | Tipos de episódio CodeSystem |
| [Tipos de episódio ValueSet](ValueSet-episode-type-vs.md) | Tipos de episódio ValueSet |
| [Tipos de outcome de puerpério ValueSet](ValueSet-puerperium-vs.md) | Tipos de outcome de puerpério ValueSet |
| [Tipos de parto ValueSet](ValueSet-tipo-parto-vs.md) | Tipos de parto ValueSet |
| [Tipos de risco para avaliação de recém-nascidos ValueSet](ValueSet-newbornriskassessment-vs.md) | Tipos de risco para avaliação de recém-nascidos ValueSet |
| [Tipos de transporte de recém-nascido ValueSet](ValueSet-transport-type-vs.md) | Tipos de transporte de recém-nascido ValueSet |
| [Unidades da idade gestacional](ValueSet-idade-gestacional-unidades-vs.md) | Unidades UCUM permitidas para a idade gestacional (semanas ou dias) |
| [Vacinas e imunoglobulinas do recém-nascido ValueSet](ValueSet-vacinas-infancia-vs.md) | Vacinas e imunoglobulinas registadas na notícia de nascimento (Immunization.vaccineCode). |

### Exemplos 

Exemplo completo (Bundle documento) e recursos que o compõem.

| | |
| :--- | :--- |
| [apgar-example](Observation-apgar-example.md) | Exemplo de Apgar |
| [BirthNN](Procedure-BirthNN.md) | Exemplo nascimento |
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
| [Noticia de Nascimento de recém-nascido](Composition-compNN.md) | Exemplo Composition |
| [ObsRole](PractitionerRole-ObsRole.md) |  |
| [pregnancyNN](Observation-pregnancyNN.md) | Exemplo gravidez |
| [puerperium-ex](Observation-puerperium-ex.md) | Exemplo de puerpério |
| [pupillary-example](Observation-pupillary-example.md) | Exemplo de análise pupilar |
| [vaccNN-antid](Immunization-vaccNN-antid.md) | Exemplo vacina ANTI-D |
| [vaccNN-bcg](Immunization-vaccNN-bcg.md) | Exemplo vacina BCG |
| [vaccNN-hepb](Immunization-vaccNN-hepb.md) | Exemplo vacina HEPB |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [gestational-age-example](Observation-gestational-age-example.md) | Exemplo idade gestacional (38 semanas e 4 dias) |

