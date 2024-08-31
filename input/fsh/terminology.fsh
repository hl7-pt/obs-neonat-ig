ValueSet: TipoPartoVS
Id: tipo-parto-vs
Title:  "Tipos de parto ValueSet"
Description:  "Tipos de parto ValueSet"

* $sct#384729004 "Delivery of vertex presentation (procedure)" // "Eutócico Cefálico"
* $sct#302383004 "Forceps delivery (procedure)" //    "Distócico-Forceps"
* $sct#61586001 "Delivery by vacuum extraction (procedure)" //    "Distócico-Ventosa"
* $sct#11466000 "Cesarean section (procedure)" //    "Distócico-Cesariana"
* $sct#177157003 "Spontaneous breech delivery (procedure)" //    "Eutócico-Pélvico"
* $sct#417121007 "Breech extraction (procedure)" //        "Distócico- Pélvico"

// * $sct#151441000119105 "Twin live born in hospital by vaginal delivery (finding)" //    "Eutócico-Gemelar"
//    "Distócico Gemelar"
// "Desconhecido"
// "Distócico-Espátulas de Thierry"



ValueSet: RiscoGravidezVS
Id: risco-gravidez-vs
Title:  "Risco de gravidez ValueSet"
Description:  "Risco de gravidez ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#237239003  "Low risk pregnancy (finding)"
* $sct#1303255001  "Medium risk pregnancy (finding)"
* $sct#47200007  "High risk pregnancy (finding)"



ValueSet: TipoGravidezVS
Id: tipo-gravidez-vs
Title:  "Tipo de gravidez ValueSet"
Description:  "Tipo de gravidez ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#169826009  "Single live birth (finding)"
* $sct#45384004  "Multiple birth (finding)"

ValueSet: VacinasinfanciaVS
Id: vacinas-infancia-vs
Title:  "Vacinas ValueSet"
Description:  "Vacinas ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#1861000221106  "Vaccine product containing only live attenuated Mycobacterium bovis antigen (medicinal product)"
* $sct#871822003  "Vaccine product containing only Hepatitis B virus antigen (medicinal product)"
* $sct#786768001 "Product containing only human anti-D immunoglobulin (medicinal product)"


ValueSet: PuerperiumVS
Id: puerperium-vs
Title:  "puerpério ValueSet"
Description:  "puerpério ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#597961000005105  "Normal puerperium (finding)"
* $sct#362973001  "Disorder of puerperium (disorder)"


ValueSet: NewbornriskassessmentVS
Id: newbornriskassessment-vs
Title:  "newbornriskassessment ValueSet"
Description:  "newbornriskassessment ValueSet"
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"


* $sct#102486008 "Familial risk factor (observable entity)"
* $sct#102485007 "Personal risk factor (observable entity)"
* $sct#102487004 "Environmental risk factor (observable entity)"


CodeSystem: TipoepisodioCS
Id:         tipo-episodio-cs
Title:     "Tipos de episodio code system"
Description: "Tipos de episodio code system"

* ^url =  "http://terminology.hl7.pt/CodeSystem/tipoepisodio"
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
    "RAD" //faz sentido aqui?
    "RAD"
* #LAB
    "LAB"  //faz sentido aqui?
    "LAB"
 
//neonatalogia?



ValueSet: TipoepisodioVS
Id: episode-type-vs
Title:  "Tipos de episódio ValueSet"
Description:  "Tipos de episódio ValueSet"


* include codes from system tipo-episodio-cs


CodeSystem: DocumentclassificationCS
Id:         documentclassificationCS
Title:     "Document Classification code system"
Description: "Document Classification code system"

* ^url =  "http://terminology.hl7.pt/CodeSystem/documentClassificaiton"
* #BISC
    "Boletim Individual de saúde da criança"
    "Boletim Individual de saúde da criança"
* #BSIJ
    "Boletim de saúde infantil e juvenil"
    "Boletim de saúde infantil e juvenil"




ValueSet: BulletindeliveryVS
Id: bulletin-delivery-vs
Title:  "bulletindeliveryVS ValueSet"
Description:  "bulletindeliveryVSValueSet"



* documentclassificationCS#BISC  "Boletim Individual de saúde da criança"
* documentclassificationCS#BSIJ "Boletim de saúde infantil e juvenil"


ValueSet: DocumenttypeVS
Id: document-type-vs
Title:  "documenttypeVS ValueSet"
Description:  "documenttypeVS"

* $sct#22131000087102 "Electronic report (record artifact)"
* $sct#22151000087106 "Paper report (record artifact)"



ValueSet: TransportTypeVS
Id: transport-type-vs
Title:  "Tipos de transporte de recem-nascido ValueSet"
Description:  "Tipos de transporte de recem-nascido ValueSet"

* $sct#255407002 "Neonatal (qualifier value)"
* $sct#1156684004 "Fetal antepartum and/or intrapartum and/or early neonatal period (qualifier value)"

