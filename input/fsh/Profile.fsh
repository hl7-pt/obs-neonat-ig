Profile:     NoticiaNascimento
Parent:      Bundle
Title:       ""
Description: ""


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
Title: "birth Notice"
Description: "birth Notice"


* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open
* section ^short = "Sections composing the IPS"
* section ^definition = "The root of the sections that make up the IPS composition."
* section.code 1.. MS
* section.text 1.. MS
* section.section ..0
* section contains
    destination 1..1 MS and
    pregnancy 1..1 MS and
    birth 1..1 MS and
    newborn 0..1 MS and
    otherInfo 0..1 MS 
* section[destination].title 1.. MS
* section[destination].code = $loinc#10160-0
* section[destination].entry only Reference(Organization or Practitioner)
* section[destination].entry MS
* section[destination].entry ^slicing.discriminator[0].type = #profile
* section[destination].entry ^slicing.discriminator[=].path = "resolve()"
* section[destination].entry ^slicing.rules = #open
* section[destination].entry contains
    organization 1..* and
    familyHCP 0..*
* section[destination].entry[organization] only Reference(Organization)
* section[destination].entry[familyHCP] only Reference(Practitioner)


* section[pregnancy].title 1.. MS
* section[pregnancy].code = $loinc#10160-0
* section[pregnancy].entry only Reference(Pregnancy)
* section[pregnancy].entry MS
* section[pregnancy].entry ^slicing.discriminator[0].type = #profile
* section[pregnancy].entry ^slicing.discriminator[=].path = "resolve()"
* section[pregnancy].entry ^slicing.rules = #open

* section[birth].title 1.. MS
* section[birth].code = $loinc#10160-0
* section[birth].entry only Reference(Birth)
* section[birth].entry MS
* section[birth].entry ^slicing.discriminator[0].type = #profile
* section[birth].entry ^slicing.discriminator[=].path = "resolve()"
* section[birth].entry ^slicing.rules = #open

Profile: Mother
Parent: Patient
Title: "Mother"
Description: ""

* identifier MS
* name 1..* MS

* telecom MS
* gender MS
* birthDate 1.. MS
* address MS
* generalPractitioner MS


Profile: Child
Parent: Patient
Title: "Child"
Description: ""

* identifier MS
* name 1..* MS

* telecom MS
* gender MS
* birthDate 1.. MS
* address MS
* generalPractitioner MS
Profile: Professional
Parent: Practitioner
Title: "Professional"
Description: ""

Profile: Contact
Parent: Encounter
Title: "Contact "
Description: ""


Profile: Pregnancy
Parent: Observation
Title: "Pregnancy"
Description: ""


* status = #registered
* code = $loinc#10160-0 //change

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
    immunoglobulinAdministration 0..1 and
     immunoglobulinAdministrationDate	 0..1 and 
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
* component[weeks].value[x] only integer
* component[risk].value[x] only CodeableConcept
* component[riskreason].value[x] only string
* component[immunoglobulinAdministration].value[x] only boolean
* component[immunoglobulinAdministrationDate].value[x] only dateTime
* component[firstQuarterEco].value[x] only boolean
* component[firstQuarterBio].value[x] only boolean
* component[secondQuarterEco].value[x] only boolean
* component[secondQuarterBio].value[x] only boolean
* component[thirdQuarterEco].value[x] only boolean
* component[thirdQuarterBio].value[x] only boolean
* component[visits].value[x] only integer
* component[intercurrences].value[x] only string
* component[pregancyType].value[x] only CodeableConcept
* component[twinNumber].value[x] only integer




Profile: Birth
Parent: Observation
Title: "Birth"
Description: ""


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
    assist 0..1 and 
    assistDescription 0..1

* component[type].value[x] only CodeableConcept
* component[participation].value[x] only CodeableConcept
* component[reason].value[x] only string
* component[assist].value[x] only CodeableConcept
* component[assistDescription].value[x] only string
