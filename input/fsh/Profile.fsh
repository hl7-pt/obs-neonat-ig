Profile:     NoticiaNascimento
Parent:      Bundle
Title:       "Documento Para noticia de Nascimento"
Description: "Documento Para noticia de Nascimento"


* type = #document (exactly)
* timestamp 1.. MS

* entry MS
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^short = "Entry resource in the patient summary bundle"
* entry ^definition = "An entry resource included in the patient summary document bundle resource."
* entry ^comment = "Must contain the IPS Composition as the first entry (only a single Composition resource instance may be included) and a Patient resource.  Additional constraints are specified in the IPS Composition profile."
* entry.fullUrl 1.. MS
* entry.search ..0
* entry.request ..0
* entry.response ..0
* entry contains
    composition 1..1 and
    patient 1..1 and
    children 1..* and
    professional 1..1 and
    contact 1..1
* entry[composition].resource 1..
* entry[composition].resource only CompositionNoticia


Profile: CompositionNoticia
Parent: $clinicaldocument
Title: "Composition que cria as secções da noticia nascimento"
Description: "Composition que cria as secções da noticia nascimento"

* status = #final
* type = http://loinc.org/#71230-7 "Birth certificate"
* encounter 1..1 MS

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
    destination 1..1 MS and
    pregnancy 1..1 MS and
    birth 1..1 MS and
    newborn 0..1 MS and
    exams 0..1 MS and
    vaccination 0..1

* section[mother].code = $loinc#10160-0
* section[mother].entry only Reference(Mother)
* section[mother].entry MS
* section[mother].entry ^slicing.discriminator[0].type = #profile
* section[mother].entry ^slicing.discriminator[=].path = "resolve()"
* section[mother].entry ^slicing.rules = #open


* section[destination].code = $loinc#10160-0
* section[destination].entry only Reference(Organization )
* section[destination].entry MS
* section[destination].entry ^slicing.discriminator[0].type = #profile
* section[destination].entry ^slicing.discriminator[=].path = "resolve()"
* section[destination].entry ^slicing.rules = #open



* section[pregnancy].code = $loinc#56833-7 "Pregnancy related history Narrative"
* section[pregnancy].entry only Reference(Pregnancy)
* section[pregnancy].entry MS
* section[pregnancy].entry ^slicing.discriminator[0].type = #profile
* section[pregnancy].entry ^slicing.discriminator[=].path = "resolve()"
* section[pregnancy].entry ^slicing.rules = #open

* section[birth].code = $loinc#57074-7 "Labor and delivery process Narrative"
* section[birth].entry only Reference(Birth)
* section[birth].entry MS
* section[birth].entry ^slicing.discriminator[0].type = #profile
* section[birth].entry ^slicing.discriminator[=].path = "resolve()"
* section[birth].entry ^slicing.rules = #open

* section[vaccination].code = $loinc#10160-0
* section[vaccination].entry only Reference(Vaccination)
* section[vaccination].entry MS
* section[vaccination].entry ^slicing.discriminator[0].type = #profile
* section[vaccination].entry ^slicing.discriminator[=].path = "resolve()"
* section[vaccination].entry ^slicing.rules = #open

* section[newborn].code = $loinc#57075-4 "Newborn delivery information from newborn Narrative"
* section[newborn].entry only Reference(Child)
* section[newborn].entry MS
* section[newborn].entry ^slicing.discriminator[0].type = #profile
* section[newborn].entry ^slicing.discriminator[=].path = "resolve()"
* section[newborn].entry ^slicing.rules = #open

* section[exams].code = $loinc#10160-0
* section[exams].entry MS
* section[exams].entry ^slicing.discriminator[0].type = #profile
* section[exams].entry ^slicing.discriminator[=].path = "resolve()"
* section[exams].entry ^slicing.rules = #open
* section[exams].entry contains
        length 0..1 and
        bodyweigth 0..1 and
        cephalicPerimeter 0..1 and
        apgar 0..1 and
        puerperium 0..1 and 
        puerperiumreview 0..1 and
        childhealthsurveilance 0..1 and 
        letter 0..1 and
        malformation 0..1 and
        Phototherapy 0..1 and 
        hearingscreen 0..1 and 
        Congenital 0..1 and 
        Metabolic 0..1 and 
        Pupillary 0..1

* section[exams].entry[length] only Reference(http://hl7.org/fhir/StructureDefinition/bodyheight)
* section[exams].entry[bodyweigth] only Reference(http://hl7.org/fhir/StructureDefinition/bodyweight)
* section[exams].entry[cephalicPerimeter] only Reference(http://hl7.org/fhir/StructureDefinition/headcircum)
* section[exams].entry[malformation] only Reference(malformation)
* section[exams].entry[hearingscreen] only Reference(hearingscreen)

* section[exams].entry[Phototherapy] only Reference(Phototherapy)
* section[exams].entry[Congenital] only Reference(Congenital)
* section[exams].entry[Metabolic] only Reference(Metabolic)
* section[exams].entry[Pupillary] only Reference(Pupillary)
* section[exams].entry[apgar] only Reference(apgarScore)


* section[exams].entry[puerperium] only Reference(Observation)
* section[exams].entry[puerperiumreview] only Reference(Observation)
* section[exams].entry[childhealthsurveilance] only Reference(Observation)
* section[exams].entry[letter] only Reference(Observation)






Profile: Mother
Parent: Patient
Title: "Perfil da mãe"
Description: "Perfil da mãe"

* identifier 1..1 MS
* name 1..1 MS
* birthDate 1..1 MS
* address 0..1 MS
* contact 0..1 MS

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


Profile: Professional
Parent: Practitioner
Title: "Perfil para o profissional de saúde"
Description: "Perfil para o profissional de saúde"

Profile: Contact
Parent: Encounter
Title: "Contacto "
Description: "Perfil de contacto"

* identifier 1..1 MS
* status = #completed
* class from episode-type-vs (required)
* serviceProvider 1..1
* serviceType 1..1

Profile: Pregnancy
Parent: Observation
Title: "Perfil de Informação de gravidez"
Description: "Perfil de Informação de gravidez"


* status = #registered
* code = $sct#77386006 "Pregnancy (finding)"

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
    pregancyType 0..1 and
    twinNumber 0..1


* component[days].value[x] only integer
* component[days].code = http://loinc.org/#11449-6 "Pregnancy status [Interpretation] - Reported"


* component[weeks].value[x] only integer
* component[weeks].code = http://loinc.org/#11449-6 "Pregnancy status [Interpretation] - Reported"

* component[risk].value[x] only CodeableConcept
* component[risk].valueCodeableConcept from RiscoGravidezVS (required)


* component[riskreason].value[x] only string
//* component[immunoglobulinAdministration].value[x] only boolean
//* component[immunoglobulinAdministrationDate].value[x] only dateTime
* component[firstQuarterEco].value[x] only boolean
* component[firstQuarterBio].value[x] only boolean
* component[secondQuarterEco].value[x] only boolean
* component[secondQuarterBio].value[x] only boolean
* component[thirdQuarterEco].value[x] only boolean
* component[thirdQuarterBio].value[x] only boolean
* component[visits].value[x] only integer
* component[intercurrences].value[x] only string
* component[pregancyType].value[x] only CodeableConcept
* component[pregancyType].valueCodeableConcept from TipoGravidezVS (required)
* component[twinNumber].value[x] only integer




Profile: Birth
Parent: Observation
Title: "Perfil de Informação do Parto"
Description: "Perfil de Informação do Parto"


* status = #registered
* code = $loinc#10160-0 //change
* effective[x] 1..1
* effective[x] only dateTime
* component MS
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "value"
* component ^slicing.description = "Slicing based on value[x] type."
* component ^slicing.rules = #closed
* component ^requirements = "Required if not(exists(Observation.valueString))"
* component ^min = 0
* component contains
    type 0..1 and
    participation 0..1 and
    reason 0..1 and 
    assist 0..1
  //  assistDescription 0..1

* component[type].value[x] only CodeableConcept
* component[type].valueCodeableConcept from TipoPartoVS (required)

* component[participation].value[x] only CodeableConcept
* component[reason].value[x] only string
* component[assist].value[x] only CodeableConcept
//* component[assistDescription].value[x] only string //colocar no CS de assist


Profile: Vaccination
Parent: Immunization
Title: "Informação sobre vacinação"
Description: "Informação sobre vacinação"

* status MS
* patient MS  
* patient only Reference(Child or Mother) 
* occurrence[x]  only dateTime 
* occurrence[x] MS
* lotNumber MS
* vaccineCode from vacinas-infancia-vs (required)
//add constraint




Profile: newBornExams
Parent: Observation
Title: "Perfil de informação clinicas recem-nascido"
Description: "Perfil de informação clinicas recem-nascido"


* status = #registered
* code = $loinc#10160-0 //change
* effective[x] 1..1
* effective[x] only dateTime
* component MS
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "value"
* component ^slicing.description = "Slicing based on value[x] type."
* component ^slicing.rules = #closed
* component ^requirements = "Required if not(exists(Observation.valueString))"
* component ^min = 0
* component contains
    reanimated 0..1 and
    AdmissionNeonatology 0..1 and
    AdmissionNeonatologyReason 0..1 and
    AdmissionNeonatologyLocal 0..1 and
    feedingUntilDischarge 0..1 and
    feedingFirstHour 0..1 and
    individualHealthBulletinDelivered 0..1 and
    childYoungHealthBulletinDelivered 0..1 and
    bulletinDeliveryType 0..1 

* component[reanimated].value[x] only boolean

* component[AdmissionNeonatology].value[x] only boolean
* component[AdmissionNeonatologyReason].value[x] only string
* component[AdmissionNeonatologyLocal].value[x] only string
* component[feedingUntilDischarge].value[x] only CodeableConcept
* component[feedingFirstHour].value[x] only boolean
* component[individualHealthBulletinDelivered].value[x] only dateTime
* component[childYoungHealthBulletinDelivered].value[x] only dateTime
* component[bulletinDeliveryType].value[x] only integer

