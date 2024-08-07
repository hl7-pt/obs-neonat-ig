

Profile: apgarScore
Parent: Observation
Title: "Perfil de informação clinicas - apgarScore"
Description: "Perfil de informação clinicas - apgarScore"


* status = #final
* code = $sct#1287344004 "Apgar score (assessment scale)"

* component MS
* component ^slicing.discriminator.type = #type
* component ^slicing.discriminator.path = "value"
* component ^slicing.description = "Slicing based on value[x] type."
* component ^slicing.rules = #closed
* component ^requirements = "Required if not(exists(Observation.valueString))"
* component ^min = 0
* component contains
    first 1..1 and
    fifth 1..1 and
    tenth 1..1 


* component[first].value[x] only integer
* component[first].code  = $sct#169895004 "Apgar score at 1 minute (observable entity)"
* component[fifth].value[x] only integer
* component[fifth].code  = $sct#169909004 "Apgar score at 5 minutes (observable entity)"
* component[tenth].value[x] only integer
* component[tenth].code  = $sct#169922007 "Apgar score at 10 minutes (observable entity)"


Profile: hearingscreen
Parent: Observation
Title: "Perfil de informação clinicas - apgarScore"
Description: "Perfil de informação clinicas - apgarScore"


* code = $sct#417491009 "Neonatal hearing test"

* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"

* component ^slicing.rules = #closed
* component ^min = 0
* component contains
    right 1..1 and
    left 1..1 


* component[right].value[x] only integer
* component[right].code  = $sct#25577004 "Right ear structure (body structure)"
* component[left].value[x] only integer
* component[left].code  = $sct#89644007 "Left ear structure (body structure)"


Profile: malformation
Parent: Observation
Title: "Perfil de malformation"
Description: "Perfil de malformation"
* status = #final
* code = $sct#21390004 "Malformation"


Profile: Phototherapy
Parent: Observation
Title: "Perfil de Phototherapy"
Description: "Perfil de Phototherapy"
* status = #final
* code = $sct#35683002 "Phototherapy of newborn"



Profile: Congenital
Parent: Observation
Title: "Perfil de Congenital"
Description: "Perfil de Congenital"
* status = #final
* code = $loinc#73780-9 "Congenital anomalies of the newborn"

* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/us/bfdr/ValueSet/ValueSet-newborn-congenital-anomalies (required)


Profile: Metabolic
Parent: Observation
Title: "Perfil de Metabolic"
Description: "Perfil de Metabolic"
* status = #final
* code = $sct#275977009 "Guthrie test"


Profile: Pupillary
Parent: Observation
Title: "Perfil de informação clinicas - Pupillary"
Description: "Perfil de informação clinicas - Pupillary"
* status = #final


* code = $sct#271733001 "Pupil reaction"

* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"

* component ^slicing.rules = #closed
* component ^min = 0
* component contains
    right 1..1 and
    left 1..1 


* component[right].value[x] only CodeableConcept
* component[right].code  = $loinc#79815-7 "Pupillary response Right pupil"
* component[right].valueCodeableConcept  from https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL3762-3 (example)


* component[left].value[x] only CodeableConcept
* component[left].code  = $loinc#79899-1 "Pupillary response Left pupil"
* component[left].valueCodeableConcept  from https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL3762-3 (example)


Profile: puerperium
Parent: Observation
Title: "Perfil de puerperium"
Description: "Perfil de puerperium"
* status = #final

* code = $sct#597951000005108  "Puerperium observable (observable entity)"
* value[x] only CodeableConcept
* valueCodeableConcept from puerperiumVS (required)
* note MS


Profile: letter
Parent: Observation
Title: "Perfil de letter"
Description: "Perfil de letter"
* status = #final

* code = $sct#699842004  "Provision of written information about maternity care (procedure)"
* value[x] only boolean
* effective[x] only dateTime


