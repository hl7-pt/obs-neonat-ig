Profile: ApgarScore
Parent: Observation
Title: "Perfil de informação clinicas - apgarScore"
Description: "Perfil de informação clinicas - apgarScore"

* status = #final
* code = $sct#1287344004 "Apgar score (assessment scale)"
* obeys should-be-between-0-and-10

* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^min = 1
* component contains
    first 1..1 and
    fifth 1..1 and
    tenth 1..1 


* component[first].value[x] only integer



* component[first].value[x] 1..1
* component[first].code  = $sct#169895004 "Apgar score at 1 minute (observable entity)"


* component[fifth].value[x] 1..1
* component[fifth].value[x] only integer
* component[fifth].code  = $sct#169909004 "Apgar score at 5 minutes (observable entity)"

* component[tenth].value[x] 1..1
* component[tenth].value[x] only integer
* component[tenth].code  = $sct#169922007 "Apgar score at 10 minutes (observable entity)"


// @Name: String Length Invariant
// @Description: Limit string length invariant
Invariant:   should-be-between-0-and-10
Description: "Integer SHOULD be between 0 and 10"
Expression:  "Observation.component.all($this.value >=7 and $this.value <=10 )"
Severity:    #error


Profile: Hearingscreen
Parent: Observation
Title: "Perfil de informação clinicas - Rastreio auditivo neonatal universal"
Description: "Perfil de informação clinicas - Rastreio auditivo neonatal universal"

* code = $sct#417491009 "Neonatal hearing test"

* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"

* component ^slicing.rules = #closed
* component ^min = 1
* component contains
    right 1..1 and
    left 1..1 


* component[right].value[x] only integer
* component[right].value[x] 1..1

* component[right].code  = $sct#1268789008 "Structure of right auditory system"
* component[left].value[x] only integer
* component[left].code  = $sct#1268788000 "Structure of left auditory system (body structure)"
* component[left].value[x] 1..1


Profile: Malformation
Parent: Observation
Title: "Perfil de informação clinicas - Dados de malformações"
Description: "Perfil de informação clinicas - Dados de malformações"


* status = #final
* code = $sct#276654001 "Congenital malformation (disorder)"
* value[x] 1..1

* value[x] only CodeableConcept
* valueCodeableConcept ^short = "Código para a malformação"

Profile: Phototherapy
Parent: Observation
Title: "Perfil de informação clinicas - Fototerapia"
Description: "Perfil de informação clinicas - Fototerapia"
* status = #final
* code = $sct#35683002 "Phototherapy of newborn"

* value[x] only boolean
* valueBoolean ^short = "Se existiu fototerapia"
* value[x] 1..1
* note MS
* note ^short = "Observações"

Profile: Congenital
Parent: Observation
Title: "Perfil de informação clinicas - Rastreio Cardiopatias Congénitas"
Description: "Perfil de informação clinicas - Rastreio Cardiopatias Congénitas"

* status = #final
* code = $loinc#73780-9 "Congenital anomalies of the newborn [US Standard Certificate of Live Birth]"

* value[x] only CodeableConcept
* valueCodeableConcept from NewbornCongenitalAnomaliesVS (required)
* valueCodeableConcept ^short = "Código da anomalia congénita"
* value[x] 1..1
* note MS
* note ^short = "Observações"

Profile: Metabolic
Parent: Observation
Title: "Perfil de informação clinicas - Rastreio de doenças metabólicas"
Description: "Perfil de informação clinicas - Rastreio de doenças metabólicas"
* status = #final
* code = $sct#275977009 "Guthrie test"

* note MS
* note ^short = "Observações"
* value[x] 1..1

* effective[x] only dateTime
* effectiveDateTime ^short = "Data do rastreio"
* dataAbsentReason MS

Profile: Pupillary
Parent: Observation
Title: "Perfil de informação clinicas - Teste Reflexo pupilar"
Description: "Perfil de informação clinicas - Teste Reflexo pupilar"

* status = #final
* code = $sct#271733001 "Pupil reaction"

* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"

* component ^slicing.rules = #closed
* component ^min = 1
* component contains
    right 1..1 and
    left 1..1 


* component[right].value[x] only CodeableConcept
* component[right].code  = $loinc#79815-7 "Right pupil Pupillary response"
* component[right].value[x] 1..1

* component[right].valueCodeableConcept  from https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL3762-3 (example)
* component[right] ^short = "Ouvido direito examinado"


* component[left].value[x] only CodeableConcept
* component[left].code  = $loinc#79899-1 "Left pupil Pupillary response"
* component[left].valueCodeableConcept  from https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL3762-3 (example)
* component[left] ^short = "Ouvido esquerdo examinado"
* component[left].value[x] 1..1


Profile: Puerperium
Parent: Observation
Title: "Perfil para registar dados do puerpério até à alta"
Description: "Perfil para registar dados do puerpério até à alta"
* status = #final

* code = $sct#597951000005108  "Puerperium observable (observable entity)"
* value[x] only CodeableConcept
* value[x] 1..1

* valueCodeableConcept from PuerperiumVS (required)
* valueCodeableConcept ^short = "Tipo de puerpério"
* note MS
* note ^short = "Observações"
* performer MS
* performer ^short = "Local onde foi feito a revisão e/ou profissional que o fez"


Profile: Letter
Parent: Observation
Title: "Perfil sobre Elaboração de carta com informação clínica suplementar"
Description: "Perfil sobre Elaboração de carta com informação clínica suplementar"
* status = #final

* code = $sct#699842004  "Provision of written information about maternity care (procedure)"
* value[x] only boolean
* value[x] 1..1

* valueBoolean ^short = "Se for elaborada a carta com informação clinica suplementar"
* effective[x] only dateTime
* effectiveDateTime ^short = "Data da elaboração"

