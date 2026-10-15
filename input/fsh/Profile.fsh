Profile: CompositionNoticia
Parent: $clinicaldocument
Title: "Perfil do recurso Composition que cria as secções da noticia nascimento"
Description: "Perfil do recurso Composition que cria as secções da noticia nascimento"

* identifier 1..1 MS
* status = #final
* type = http://loinc.org/#71230-7 "Birth certificate"
* encounter 1..1 MS
* date 1..1 MS
* author 1..1 MS

* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the IPS"
* section ^definition = "The root of the sections that make up the IPS composition."
* section.code 1.. MS
* section.section ..0
* section contains
    mother 1..1 MS and
    pregnancy 1..1 MS and
    birth 1..1 MS and
    newborn 1..1 MS and
    exams 1..1 MS and
    vaccination 1..1 and 
    followup 1..1 and
    destination 1..1

* section[mother].code = $loinc#92014-0 "Mother's administrative information"
* section[mother].entry only Reference(Mother)
* section[mother].entry MS
* section[mother].entry ^slicing.discriminator[0].type = #profile
* section[mother].entry ^slicing.discriminator[=].path = "resolve()"
* section[mother].entry ^slicing.rules = #open


* section[pregnancy].code = $loinc#56833-7 "Pregnancy related history Narrative"
* section[pregnancy].entry only Reference(Pregnancy)
* section[pregnancy].entry MS
* section[pregnancy].entry ^slicing.discriminator[0].type = #profile
* section[pregnancy].entry ^slicing.discriminator[=].path = "resolve()"
* section[pregnancy].entry ^slicing.rules = #open

* section[birth].code = $loinc#57074-7 "Labor and delivery process Narrative"
* section[birth].entry MS
* section[birth].entry ^slicing.discriminator[0].type = #profile
* section[birth].entry ^slicing.discriminator[=].path = "resolve()"
* section[birth].entry ^slicing.rules = #open
* section[birth].entry contains
    birthInfo 1..1 and
    episode 1..* 


* section[birth].entry[birthInfo] only Reference(Birth)
* section[birth].entry[episode] only Reference(Encounter or Contact)

* section[vaccination].code = $loinc#11369-6 "History of Immunization Narrative"
* section[vaccination].entry MS
* section[vaccination].entry 3..3
* section[vaccination].entry only Reference(Vaccination)
* section[vaccination] obeys vacc-hepb and vacc-bcg and vacc-antid


* section[newborn].code = $loinc#57075-4 "Newborn delivery information"
* section[newborn].entry only Reference(Child)
* section[newborn].entry MS
* section[newborn].entry ^slicing.discriminator[0].type = #profile
* section[newborn].entry ^slicing.discriminator[=].path = "resolve()"
* section[newborn].entry ^slicing.rules = #open

* section[exams].code = $loinc#73738-7 "Newborn screening test results panel - Point of Care"
* section[exams].entry MS
* section[exams].entry ^slicing.discriminator[0].type = #profile
* section[exams].entry ^slicing.discriminator[=].path = "resolve()"
* section[exams].entry ^slicing.rules = #open
* section[exams].entry contains
    length 0..1 and
    bodyweigth 1..1 and
    cephalicPerimeter 1..1 and
    apgar 1..1 and
    malformation 0..1 and
    Phototherapy 0..1 and 
    hearingscreen 0..1 and 
    Congenital 1..1 and 
    Metabolic 0..1 and 
    Pupillary 1..1 and
    newbornriskassessment 0..1 and
    screeningRequest 0..2

* section[exams].entry[length] only Reference(http://hl7.org/fhir/StructureDefinition/bodyheight)
* section[exams].entry[length] ^short = "Comprimento (cm)"
* section[exams].entry[bodyweigth] only Reference(http://hl7.org/fhir/StructureDefinition/bodyweight)
* section[exams].entry[bodyweigth] ^short = "Peso (gr)"

* section[exams].entry[cephalicPerimeter] only Reference(http://hl7.org/fhir/StructureDefinition/headcircum)
* section[exams].entry[cephalicPerimeter] ^short = "Perímetro cefálico (cm)"

* section[exams].entry[malformation] only Reference(Malformation)
//* section[exams].entry[malformation] ^short = "Perímetro cefálico (cm)"

* section[exams].entry[hearingscreen] only Reference(Hearingscreen)
* section[exams].entry[hearingscreen] ^short = "Rastreio auditivo neonatal universal (realizado)"

* section[exams].entry[Phototherapy] only Reference(Phototherapy)
* section[exams].entry[Congenital] only Reference(Congenital)
* section[exams].entry[Metabolic] only Reference(Metabolic)
* section[exams].entry[Metabolic] ^short = "Rastreio de doenças metabólicas (realizado/não realizado)"
* section[exams].entry[screeningRequest] only Reference(ScreeningRequest)
* section[exams].entry[screeningRequest] ^short = "Rastreio auditivo e/ou de doenças metabólicas marcado para data futura"
* section[exams] obeys screening-hearing-single and screening-metabolic-single
* section[exams].entry[Pupillary] only Reference(Pupillary)
* section[exams].entry[Pupillary] ^short = "Teste Reflexo pupilar"

* section[exams].entry[apgar] only Reference(ApgarScore)
* section[exams].entry[apgar] ^short = "Índice(s) apgar"

* section[exams].entry[newbornriskassessment] only Reference(Newbornriskassessment)
* section[exams].entry[newbornriskassessment] ^short = "Avaliação de risco e referenciação ao NHACJR"




* section[followup].code = $loinc#11544-4 "Hospital discharge follow-up Narrative"
* section[followup].entry MS

* section[followup].entry ^slicing.discriminator[0].type = #profile
* section[followup].entry ^slicing.discriminator[=].path = "resolve()"
* section[followup].entry ^slicing.rules = #open
* section[followup].entry contains
    puerperium 1..1 and 
   // puerperiumreview 0..1 and
    childhealthsurveilance 0..1 and 
    bulletindelivery 0..1 and
    letter 0..1 and
    //destination 0..1 and
    nextappointment 0..1 and
    transport 0..1


* section[followup].entry[puerperium] only Reference(Puerperium)
//* section[followup].entry[puerperiumreview] only Reference(Organization)
* section[followup].entry[childhealthsurveilance] only Reference(HealthcareOrganization)
* section[followup].entry[letter] only Reference(Letter)
* section[followup].entry[bulletindelivery] only Reference(Bulletindelivery)
* section[followup].entry[nextappointment] only Reference(Encounter)
* section[followup].entry[transport] only Reference(Transport)


* section[destination].code = $sct#45131006 "Primary care hospital (environment)"
* section[destination].entry only Reference(Organization)
* section[destination].entry MS



Profile: HealthcareOrganization
Parent: Organization
Title: "Perfil da organização de saúde"
Description: "Organização de saúde (hospital/maternidade, unidade de cuidados de saúde primários, etc.) referenciada na notícia de nascimento"

* identifier 1..* MS
* identifier ^short = "Identificador da instituição/unidade de saúde"
* name 1..1 MS
* alias MS
* alias ^short = "Outros nomes ou siglas da instituição"
* type 1..1 MS
* type from TipoLocalSeguimentoVS (extensible)
* type ^short = "Tipo de local de seguimento (cuidados de saúde primários, consulta hospitalar, estrangeiro)"
* type ^comment = "'Outro' regista-se em type.text. 'Não sabe' não é um tipo de local: regista-se com a extensão data-absent-reason (http://hl7.org/fhir/StructureDefinition/data-absent-reason) em type, com o código 'unknown'. O seguimento privado não tem código adequado neste value set, uma vez que a distinção público/privado corresponde ao setor do prestador e não ao tipo de local."


Profile: Mother
Parent: Patient
Title: "Perfil da mãe"
Description: "Perfil da mãe"

* identifier 1..1 MS
* name 1..1 MS
* birthDate 1..1 MS
* address 0..1 MS
* contact 0..1 MS
* deceased[x] MS


* extension contains 
http://hl7.org/fhir/StructureDefinition/patient-birthPlace  named birthPlace 0..1 and
http://hl7.org/fhir/StructureDefinition/patient-nationality named nationality 0..1


Profile: Child
Parent: Patient
Title: "Perfil do recém-nascido"
Description: "Perfil do recém-nascido"

* identifier MS
* deceased[x] only dateTime
* gender 1..1
* birthDate 1..1 MS
* multipleBirth[x] 1..1 MS
* multipleBirth[x] only integer

Profile: Professional
Parent: Practitioner
Title: "Perfil para o profissional de saúde"
Description: "Perfil para o profissional de saúde"

* name 1..1 MS
* identifier 1..1 MS


Profile: Contact
Parent: Encounter
Title: "Perfil sobre episódio da notícia de nascimento"
Description: "Perfil sobre episódio da notícia de nascimento"

* identifier 1..1 MS
* status = #finished
* class from episode-type-vs (required)
* serviceProvider 1..1
* serviceProvider only Reference(HealthcareOrganization)
* serviceType 1..1

Profile: Pregnancy
Parent: Observation
Title: "Perfil de Informação de gravidez"
Description: "Perfil de Informação de gravidez"


* status = #final
* code = $sct#77386006 "Pregnancy (finding)"
* subject 1..1

* component MS
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "value"
* component ^slicing.description = "Slicing based on value[x] type."
* component ^slicing.rules = #closed
* component ^requirements = "Required if not(exists(Observation.valueString))"
* component ^min = 0
* component contains
    days 0..1 and
    weeks 0..1 and
    risk 0..1 and
    riskreason 0..1 and
   // immunoglobulinAdministration 0..1 and
   //  immunoglobulinAdministrationDate	 0..1 and 
    firstQuarterEco		0..1	and
    firstQuarterBio		0..1	and 
    secondQuarterEco		0..1	and
    secondQuarterBio		0..1	and
    thirdQuarterEco		0..1 and 
    thirdQuarterBio		0..1	and
    visits		0..1	and 
    intercurrences 0..1  and
    pregancyType 0..1
   // twinNumber 0..1


* component[days].value[x] only integer
* component[days].code = $sct#258703001 "day (qualifier value)"


* component[weeks].value[x] only integer
* component[weeks].code = $sct#258705008 "week (qualifier value)"

* component[risk].value[x] only CodeableConcept
* component[risk].valueCodeableConcept from RiscoGravidezVS (required)
* component[risk].code = $sct#1303221004 "Pregnancy risk level (observable entity)"

* component[riskreason].value[x] only string
* component[riskreason].code = InfosGravidezCS#PREGRISKREASON "Motivo do risco"

* component[firstQuarterEco].value[x] only boolean
* component[firstQuarterEco].code = $sct#446522006 "Ultrasonography in first trimester (procedure)"


* component[firstQuarterBio].value[x] only boolean
* component[firstQuarterBio].code = InfosGravidezCS#BIO1T "Analítico 1º Trimestre"

* component[secondQuarterEco].value[x] only boolean
* component[secondQuarterEco].code = $sct#446208007 "Ultrasonography in second trimester (procedure)"

* component[secondQuarterBio].value[x] only boolean
* component[secondQuarterBio].code = InfosGravidezCS#BIO2T "Analítico 2º Trimestre"

* component[thirdQuarterEco].value[x] only boolean
* component[thirdQuarterEco].code = $sct#446353007 "Ultrasonography in third trimester (procedure)"

* component[thirdQuarterBio].value[x] only boolean
* component[thirdQuarterBio].code = InfosGravidezCS#BIO3T "Analítico 3º Trimestre"

* component[visits].value[x] only integer
* component[visits].code = $sct#3401000175105  "Total number of prenatal care visits (observable entity)"

* component[intercurrences].value[x] only string
* component[intercurrences].code = InfosGravidezCS#BIO3T "Analítico 3º Trimestre"

* component[pregancyType].value[x] only CodeableConcept
* component[pregancyType].valueCodeableConcept from TipoGravidezVS (required)
* component[pregancyType].code = $sct#3950001 "Birth (finding)"





Profile: Birth
Parent: Procedure
Title: "Perfil de Informação do Parto"
Description: "Perfil de Informação do Parto"


* category = $sct#386216000 "Human parturition, function (observable entity)"
* performed[x] 1..1
* performed[x] only dateTime
* subject 1..1
* subject MS
* encounter MS
* encounter 1..1
* performer 1..*
* performer MS
* performer.function ^short = "Assistido por (médico obstetra, enfermeiro EESMO, outro)"
* performer.actor MS
* performer.actor ^short = "Profissional que esteve envolvido no parto"
* performer.actor only Reference(Professional or ProfessionalRole)


* code from TipoPartoVS (required)
* note MS



Profile: Vaccination
Parent: Immunization
Title: "Perfil sobre Informação sobre vacinação"
Description: "Perfil sobre Informação sobre vacinação"

* status MS
* patient MS  
* patient only Reference(Child) 
* patient 1..1
* occurrence[x]  only dateTime 
* occurrenceDateTime MS
* lotNumber MS
* vaccineCode MS
* vaccineCode from VacinasinfanciaVS (required)
* statusReason from ImmunizationStatusReasonVS (extensible)
* obeys reason-required-not-completed

Invariant:  reason-required-not-completed
Description: "Either status is completed with date or a reason for the status is required"
Expression: "(status = 'completed' and occurrence.exists() and lotNumber.exists()) or (status!='completed' and statusReason.exists())"
Severity:   #error

Invariant:  screening-hearing-single
Description: "O rastreio auditivo é registado como realizado (Observation) ou marcado (ServiceRequest), nunca ambos"
Expression: "entry.resolve().where(code.coding.where(system = 'http://snomed.info/sct' and code = '417491009').exists()).count() <= 1"
Severity:   #error

Invariant:  screening-metabolic-single
Description: "O rastreio de doenças metabólicas é registado como realizado/não realizado (Observation) ou marcado (ServiceRequest), nunca ambos"
Expression: "entry.resolve().where(code.coding.where(system = 'http://snomed.info/sct' and code = '275977009').exists()).count() <= 1"
Severity:   #error

Invariant:  vacc-hepb
Description: "A secção de vacinação tem de incluir exatamente um registo da vacina contra a Hepatite B (SNOMED CT 836374004)"
Expression: "entry.resolve().ofType(Immunization).where(vaccineCode.coding.where(system = 'http://snomed.info/sct' and code = '836374004').exists()).count() = 1"
Severity:   #error

Invariant:  vacc-bcg
Description: "A secção de vacinação tem de incluir exatamente um registo da vacina BCG (SNOMED CT 836402002)"
Expression: "entry.resolve().ofType(Immunization).where(vaccineCode.coding.where(system = 'http://snomed.info/sct' and code = '836402002').exists()).count() = 1"
Severity:   #error

Invariant:  vacc-antid
Description: "A secção de vacinação tem de incluir exatamente um registo da imunoglobulina anti-D (SNOMED CT 786224004)"
Expression: "entry.resolve().ofType(Immunization).where(vaccineCode.coding.where(system = 'http://snomed.info/sct' and code = '786224004').exists()).count() = 1"
Severity:   #error


Profile: Newbornriskassessment
Parent: Observation
Title: "Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR"
Description: "Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR"

* extension contains ReferenciaNHACJR named nhacjr 0..1
* status = #final
* subject only Reference(Mother)
* subject 1..1
* note MS
* code from NewbornriskassessmentVS
* category = $sct#407647007 "Risk assessment status (finding)"



Extension: ReferenciaNHACJR
Description: "Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR)"
* value[x] only boolean


Profile: Bulletindelivery
Parent: Procedure
Title: "Perfil de Informação sobre entrega de boletim"
Description: "Perfil de Informação sobre entrega de boletim"


* code from BulletindeliveryVS (required)
* subject only Reference(Mother)
* subject 1..1
* performed[x] only dateTime
* performedDateTime 1..1 
* category  from document-type-vs (required)





Extension: TransportInformation
Id:    transport-information
Title: "Extensão sobre informação sobre Transportes"
Description: "Extensão sobre informação sobre Transportes"

* extension contains
    transporttype 1..1 MS ?! and
    reason 0..1 MS and
    location 0..1 MS
* extension[transporttype].value[x] only CodeableConcept
* extension[transporttype] ^isModifierReason = "Changes concept: If InUtero, provenance, if Neonatal, destination"


* extension[transporttype].valueCodeableConcept from transport-type-vs

* extension[reason].value[x] only string
* extension[location].value[x] only string

* extension[location] ^short = "If InUtero, provenance, if Neonatal, destination"
* extension[location] ^definition = "Location is dependent on transporttype"



Profile: Transport
Parent: Basic
Title: "Perfil de informação sobre Transportes"
Description: "Perfil de informação sobre Transportes"

* extension contains transport-information  named transport-information 1..2 
* code = $sct#424483007 "Transportation details (observable entity)"
* subject only Reference(Mother)
* subject 1..1



Profile: ProfessionalRole
Parent: PractitionerRole
Title: "Perfil para a função do profissional de saúde"
Description: "Função desempenhada pelo profissional de saúde (ex.: médico, enfermeiro) no registo da notícia de nascimento"

* practitioner 1..1 MS
* practitioner only Reference(Professional)
* code 1..* MS
* code from ProfessionalRoleVS (extensible)
* code ^short = "Grupo funcional do profissional (médico, enfermeiro, ...)"