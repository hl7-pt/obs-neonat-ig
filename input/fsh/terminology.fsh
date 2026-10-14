ValueSet: TipoPartoVS
Id: tipo-parto-vs
Title:  "Tipos de parto ValueSet"
Description:  "Tipos de parto ValueSet"
* ^experimental = false

/*
* $sct#384729004 "Delivery of vertex presentation (procedure)" // "Eutócico Cefálico"
* $sct#302383004 "Forceps delivery (procedure)" //    "Distócico-Forceps"
* $sct#61586001 "Delivery by vacuum extraction (procedure)" //    "Distócico-Ventosa"
* $sct#11466000 "Cesarean section (procedure)" //    "Distócico-Cesariana"
* $sct#177157003 "Spontaneous breech delivery (procedure)" //    "Eutócico-Pélvico"
* $sct#417121007 "Breech extraction (procedure)" //        "Distócico- Pélvico"
* $sct#69466000 "Unknown procedure (finding)" // "Desconhecido"

// * $sct#151441000119105 "Twin live born in hospital by vaginal delivery (finding)" //    "Eutócico-Gemelar"
//    "Distócico Gemelar"
// "Distócico-Espátulas de Thierry"
*/
* $sct#48782003 "Delivery normal (finding)" // - Parto eutócico
* $sct#271373005 "Deliveries by spontaneous breech delivery (finding)" //- Pélvico"
* $sct#309469004 "Spontaneous vertex delivery (finding)" //-  Cefálico
* $sct#200130005 "Forceps delivery - delivered (finding)" //- Fórceps
* $sct#200130005 "Forceps delivery - delivered (finding)" //- Cesareana
* $sct#10761101000119105 "Vacuum assisted vaginal delivery (finding)" // - Ventosa
* $sct#271370008 "Deliveries by breech extraction (finding)" //- Extração pélvica


ValueSet: RiscoGravidezVS
Id: risco-gravidez-vs
Title:  "Risco de gravidez ValueSet"
Description:  "Risco de gravidez ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#237239003  "Low risk pregnancy (finding)"
* $sct#1303255001  "Medium risk pregnancy (finding)"
* $sct#47200007  "High risk pregnancy (finding)"
* ^experimental = false



ValueSet: TipoGravidezVS
Id: tipo-gravidez-vs
Title:  "Tipo de gravidez ValueSet"
Description:  "Tipo de gravidez ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#169826009  "Single live birth (finding)"
* $sct#45384004  "Multiple birth (finding)"
* ^experimental = false

ValueSet: VacinasinfanciaVS
Id: vacinas-infancia-vs
Title:  "Vacinas e imunoglobulinas do recém-nascido ValueSet"
Description:  "Vacinas e imunoglobulinas registadas na notícia de nascimento (Immunization.vaccineCode)."

* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

* $sct#836374004 "Vaccine product containing only Hepatitis B virus antigen (medicinal product)"
* $sct#836374004 ^designation[0].language = #pt-PT
* $sct#836374004 ^designation[0].value = "Vacina contra a hepatite B"

* $sct#836402002 "Vaccine product containing only live attenuated Mycobacterium bovis antigen (medicinal product)"
* $sct#836402002 ^designation[0].language = #pt-PT
* $sct#836402002 ^designation[0].value = "Vacina BCG"

* $sct#786224004 "Product containing only human anti-D immunoglobulin (medicinal product)"
* $sct#786224004 ^designation[0].language = #pt-PT
* $sct#786224004 ^designation[0].value = "Imunoglobulina anti-D humana"
* ^experimental = false






ValueSet: PuerperiumVS
Id: puerperium-vs
Title:  "Tipos de outcome de puerpério ValueSet"
Description:  "Tipos de outcome de puerpério ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#597961000005105  "Normal puerperium (finding)"
* $sct#362973001  "Maternal disorder during postpartum period (disorder)"
* ^experimental = false


ValueSet: NewbornriskassessmentVS
Id: newbornriskassessment-vs
Title:  "Tipos de risco para avaliação de recém-nascidos ValueSet"
Description:  "Tipos de risco para avaliação de recém-nascidos ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false


* $sct#102486008 "Familial risk factor (observable entity)"
* $sct#102485007 "Personal risk factor (observable entity)"
* $sct#102487004 "Environmental risk factor (observable entity)"


CodeSystem: TipoepisodioCS
Id:         tipo-episodio-cs
Title:     "Tipos de episódio CodeSystem"
Description: "Tipos de episódio CodeSystem"
* ^experimental = true
* ^caseSensitive = false

//* ^url =  "http://terminology.hl7.pt/CodeSystem/tipoepisodio"
* #CON
    "Consulta"
    "Consulta"
* #INT
    "Internamento"
    "Internamento"
* #URG
    "Urgência"
    "Urgência"
* #BLO
    "Bloco"
    "Bloco"
* #HDI
    "Hospital de Dia"
    "Hospital de Dia"
* #RAD
    "Radiologia" 
    "Radiologia"
* #LAB
    "Laboratório"  
    "Laboratório"
* #AMB
    "Ambulatório"
    "Ambulatório"

* #HOSPDOM
    "Hospitalização Domiciliária"
    "Hospitalização Domiciliária"

* #TELE
    "Teleconsulta"
    "Teleconsulta"

* #BLOCOPARTO
    "Bloco de Parto"
    "Bloco de Parto"



ValueSet: TipoepisodioVS
Id: episode-type-vs
Title:  "Tipos de episódio ValueSet"
Description:  "Tipos de episódio ValueSet"
* ^experimental = true


* include codes from system tipo-episodio-cs


CodeSystem: DocumentclassificationCS
Id:         documentclassificationCS
Title:     "Classficação de documentos CodeSystem"
Description: "Classficação de documentos CodeSystem"

* ^experimental = true
* ^caseSensitive = false
//* ^url =  "http://terminology.hl7.pt/CodeSystem/documentClassificaiton"
* #BISC
    "Boletim Individual de saúde da criança"
    "Boletim Individual de saúde da criança"
* #BSIJ
    "Boletim de saúde infantil e juvenil"
    "Boletim de saúde infantil e juvenil"




ValueSet: BulletindeliveryVS
Id: bulletin-delivery-vs
Title:  "Envio de boletim ValueSet"
Description:  "Envio de boletim ValueSet"

* ^experimental = false


* documentclassificationCS#BISC  "Boletim Individual de saúde da criança"
* documentclassificationCS#BSIJ "Boletim de saúde infantil e juvenil"


ValueSet: DocumenttypeVS
Id: document-type-vs
Title:  "Tipo de documento ValueSet"
Description:  "Tipo de documento ValueSet"
* ^experimental = false

* $sct#22131000087102 "Electronic report (record artifact)"
* $sct#22151000087106 "Paper report (record artifact)"



ValueSet: TransportTypeVS
Id: transport-type-vs
Title:  "Tipos de transporte de recém-nascido ValueSet"
Description:  "Tipos de transporte de recém-nascido ValueSet"
* ^experimental = false

* $sct#255407002 "Neonatal (qualifier value)"
* $sct#1156684004 "Fetal antepartum and/or intrapartum and/or early neonatal period (qualifier value)"




CodeSystem: InfosGravidezCS
Id:         InfosGravidezCS
Title:     "Elementos adicionais de informação gravidez CodeSystem"
Description:   "Elementos adicionais de informação gravidez CodeSystem - Criado por falta de um código internacional ideal"

* ^experimental = true
* ^caseSensitive = false
//* ^url =  "http://terminology.hl7.pt/CodeSystem/documentClassificaiton"
* #BIO1T
    "Analítico 1º Trimestre"
    "Analítico 1º Trimestre"

* #BIO2T
    "Analítico 2º Trimestre"
    "Analítico 2º Trimestre"

* #BIO3T
    "Analítico 3º Trimestre"
    "Analítico 3º Trimestre"

* #PREGRISKREASON
    "Motivo do risco"
    "Motivo do risco"

* #INTEROC
    "Intercorrências"
    "Intercorrências"

    
ValueSet: NewbornCongenitalAnomaliesVS
Id: newborn-congenital-anomalies-vs
Title:  "Tipos de doença congénita ValueSet"
Description:  "Tipos de doença congénita ValueSet"
* ^experimental = false

//http://hl7.org/fhir/us/bfdr/ValueSet/ValueSet-newborn-congenital-anomalies 

* $sct#89369001	"Anencephalus"
* $sct#67531005	"Meningomyelocele/Spina bifida"
* $sct#12770006	"Cyanotic congenital heart disease"
* $sct#17190001	"Congenital diaphragmatic hernia"
* $sct#18735004	"Congenital omphalocele"
* $sct#72951007	"Gastroschisis"
* $sct#67341007	"Longitudinal deficiency of limb - Limb reduction defect (excluding congenital amputation and dwarfing syndromes)"
* $sct#80281008	"Cleft Lip with or without Cleft Palate"
* $sct#87979003	"Cleft palate"
* $sct#70156005	"Anomaly of chromosome pair 21"
* $sct#409709004 "Chromosomal disorder"
* $sct#416010008 "Hypospadias"
* $sct#282332003 "No abnormality detected - examination result"


ValueSet: ImmunizationStatusReasonVS
Id: immunization-status-reason-vs
Title:  "Motivos de não vacinação ValueSet"
Description:  "Motivos para a não administração de uma vacina (Immunization.statusReason), de acordo com o Catálogo Português de Vacinas (CPV)."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

* $sct#62479008 "Acquired immune deficiency syndrome (disorder)"
* $sct#62479008 ^designation[0].language = #pt-PT
* $sct#62479008 ^designation[0].value = "Síndrome de imunodeficiência adquirida"

* $sct#427099000 "Active tuberculosis (disorder)"
* $sct#427099000 ^designation[0].language = #pt-PT
* $sct#427099000 ^designation[0].value = "Tuberculose ativa"

* $sct#699618001 "Administration of prophylactic antituberculosis agent (procedure)"
* $sct#699618001 ^designation[0].language = #pt-PT
* $sct#699618001 ^designation[0].value = "Administração de agente antituberculoso profilático"

* $sct#293104008 "Adverse reaction to component of vaccine product (disorder)"
* $sct#293104008 ^designation[0].language = #pt-PT
* $sct#293104008 ^designation[0].value = "Reação adversa a componente de produto de vacinação"

* $sct#131145007 "Altered immunity (finding)"
* $sct#131145007 ^designation[0].language = #pt-PT
* $sct#131145007 ^designation[0].value = "Imunidade alterada"

* $sct#1217476001 "Anaphylaxis caused by component of vaccine product (disorder)"
* $sct#1217476001 ^designation[0].language = #pt-PT
* $sct#1217476001 ^designation[0].value = "Anafilaxia causada por componente de produto de vacinação"

* $sct#126764002 "Congenital anomaly of intestinal tract (disorder)"
* $sct#126764002 ^designation[0].language = #pt-PT
* $sct#126764002 ^designation[0].value = "Anomalia congénita do trato intestinal"

* $sct#36138009 "Congenital immunodeficiency disease (disorder)"
* $sct#36138009 ^designation[0].language = #pt-PT
* $sct#36138009 ^designation[0].value = "Imunodeficiência congénita"

* $sct#1340037004 "Disorder of nervous system due to and following vaccination (disorder)"
* $sct#1340037004 ^designation[0].language = #pt-PT
* $sct#1340037004 ^designation[0].value = "Patologia neurológica devido e após a vacinação"

* $sct#271511000 "Hepatitis B immune (finding)"
* $sct#271511000 ^designation[0].language = #pt-PT
* $sct#271511000 ^designation[0].value = "Imune a Hepatite B"

* $sct#1340016007 "History of intussusception of intestine (situation)"
* $sct#1340016007 ^designation[0].language = #pt-PT
* $sct#1340016007 ^designation[0].value = "História de intussuscepção intestinal"

* $sct#161421005 "History of rubella (situation)"
* $sct#161421005 ^designation[0].language = #pt-PT
* $sct#161421005 ^designation[0].value = "História de rubéola"

* $sct#1340019000 "History of thrombosis with thrombocytopenia syndrome following vaccination with non-replicating adenovirus vector vaccine for severe acute respiratory syndrome coronavirus 2 (situation)"
* $sct#1340019000 ^designation[0].language = #pt-PT
* $sct#1340019000 ^designation[0].value = "História de síndrome de trombose com trombocitopenia após vacinação com vacina de vetor de adenovírus não-replicante para coronavírus do síndrome respiratório agudo grave 2"

* $sct#86406008 "Human immunodeficiency virus infection (disorder)"
* $sct#86406008 ^designation[0].language = #pt-PT
* $sct#86406008 ^designation[0].value = "Infeção pelo vírus de imunodeficiência humana"

* $sct#421961002 "Hypersensitivity reaction (disorder)"
* $sct#421961002 ^designation[0].language = #pt-PT
* $sct#421961002 ^designation[0].value = "Reação de hipersensibilidade"

* $sct#255386009 "Immune (qualifier value)"
* $sct#255386009 ^designation[0].language = #pt-PT
* $sct#255386009 ^designation[0].value = "Imune"

* $sct#310376006 "Immunization consent not given (finding)"
* $sct#310376006 ^designation[0].language = #pt-PT
* $sct#310376006 ^designation[0].value = "Consentimento de imunização não dado"

* $sct#86553008 "Immunosuppressive therapy (procedure)"
* $sct#86553008 ^designation[0].language = #pt-PT
* $sct#86553008 ^designation[0].value = "Terapia imunosupressiva"

* $sct#268376005 "Mantoux: positive (finding)"
* $sct#268376005 ^designation[0].language = #pt-PT
* $sct#268376005 ^designation[0].value = "Prova de tuberculina: positiva"

* $sct#1260078007 "Maternal breastfeeding (finding)"
* $sct#1260078007 ^designation[0].language = #pt-PT
* $sct#1260078007 ^designation[0].value = "Aleitamento materno"

* $sct#42565008 "No reason for (contextual qualifier) (qualifier value)"
* $sct#42565008 ^designation[0].language = #pt-PT
* $sct#42565008 ^designation[0].value = "Sem motivo para"

* $sct#29740003 "Nutritional marasmus (disorder)"
* $sct#29740003 ^designation[0].language = #pt-PT
* $sct#29740003 ^designation[0].value = "Marasmo nutricional"

* $sct#77386006 "Pregnancy (finding)"
* $sct#77386006 ^designation[0].language = #pt-PT
* $sct#77386006 ^designation[0].value = "Gravidez"

* $sct#183945002 "Procedure declined for religious reason (situation)"
* $sct#183945002 ^designation[0].language = #pt-PT
* $sct#183945002 ^designation[0].value = "Procedimento recusado por motivo religioso"

* $sct#278968001 "Rubella immune (finding)"
* $sct#278968001 ^designation[0].language = #pt-PT
* $sct#278968001 ^designation[0].value = "Imune a rubéola"

* $sct#1340080008 "Scar of skin following first vaccination (disorder)"
* $sct#1340080008 ^designation[0].language = #pt-PT
* $sct#1340080008 ^designation[0].value = "Cicatriz na pele após primeira vacinação"

* $sct#31323000 "Severe combined immunodeficiency disease (disorder)"
* $sct#31323000 ^designation[0].language = #pt-PT
* $sct#31323000 ^designation[0].value = "Imunodeficiência combinada grave"

* $sct#1290619001 "Vaccine product out of stock (finding)"
* $sct#1290619001 ^designation[0].language = #pt-PT
* $sct#1290619001 ^designation[0].value = "Vacina fora de stock"

* $sct#371113008 "Varicella immune (finding)"
* $sct#371113008 ^designation[0].language = #pt-PT
* $sct#371113008 ^designation[0].value = "Imune a varicela"



ValueSet: ProfessionalRoleVS
Id: professional-role-vs
Title:  "Grupo funcional do profissional ValueSet"
Description:  "Grupo funcional do profissional de saúde envolvido na notícia de nascimento"
* ^experimental = false
* ^copyright = "This value set includes content from SNOMED CT, ..."
* $sct#158965000 "Medical practitioner (occupation)"
* $sct#11935004 "Obstetrician (occupation)"
* $sct#106292003 "Professional nurse (occupation)"
* $sct#309453006 "Registered midwife (occupation)"




ValueSet: NeonatalScreeningVS
Id: neonatal-screening-vs
Title:  "Rastreios neonatais marcáveis ValueSet"
Description:  "Rastreios neonatais que podem ser marcados para data futura na notícia de nascimento (ServiceRequest.code)."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = false

* $sct#417491009 "Neonatal hearing test"
* $sct#417491009 ^designation[0].language = #pt-PT
* $sct#417491009 ^designation[0].value = "Rastreio auditivo neonatal universal"

* $sct#275977009 "Guthrie test"
* $sct#275977009 ^designation[0].language = #pt-PT
* $sct#275977009 ^designation[0].value = "Rastreio de doenças metabólicas (teste do pezinho)"



CodeSystem: TipoLocalSeguimentoCS
Id:         tipo-local-seguimento-cs
Title:     "Tipo de local de seguimento CodeSystem"
Description:   "Tipo de organização/local de prestação de cuidados (USF, hospital, privado, desconhecido), a partir dos valores do modelo lógico da notícia de nascimento"
* ^experimental = true
* ^caseSensitive = true
* #USF "USF" "Unidade de Saúde Familiar / cuidados de saúde primários"
* #HOSP "Hospital" "Hospital"
* #PRIV "Privado" "Prestador privado"
* #DESC "Desconhecido" "Local desconhecido"

ValueSet: TipoLocalSeguimentoVS
Id: tipo-local-seguimento-vs
Title:  "Tipo de local de seguimento ValueSet"
Description:  "Tipo de organização/local de prestação de cuidados (USF, hospital, privado, desconhecido)"
* ^experimental = false
* include codes from system TipoLocalSeguimentoCS