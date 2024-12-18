Instance: mother
InstanceOf: Mother
Description: "Exemplo Mãe"
Usage: #example

* identifier.system = "http://example"
* identifier.value = "1234567"
* name.text = "NOME DE TESTE"
* birthDate = "1989-07-30"
* address.line = "MORADA DE TESTE"
* extension[nationality].extension[code].valueCodeableConcept.text = "Portugal"


Instance: inst
InstanceOf: Organization
Description: "Exemplo Instituição"
Usage: #example
* name = "CH ENTRE DOURO E VOUGA"

Instance: destino
InstanceOf: Organization
Description: "Exemplo destino"
Usage: #example

* identifier.value = "2010491"
* name = "USF ESCARIZ"

Instance: episodio
InstanceOf: Contact
Description: "Exemplo episódio contacto"
Usage: #example

* identifier.value = "18001555"

* class = tipo-episodio-cs#INT

* serviceProvider = Reference(inst)

* serviceType.text = "Obstetricia"

Instance: episodioInt
InstanceOf: Encounter
Description: "Exemplo internamento"
Usage: #example

* class = tipo-episodio-cs#INT
* status = #finished

Instance: BirthNN
InstanceOf: Birth
Description: "Exemplo nascimento"
Usage: #example

* performedDateTime = "2024-08-01T10:00:00.000Z"
* subject = Reference(mother)
* code = $sct#384729004 "Delivery of vertex presentation (procedure)"
* encounter = Reference(episodioInt)
* status = #completed
* performer.actor = Reference(ObsRole)



Instance: ObsRole
InstanceOf: PractitionerRole
Usage: #example

* code = $sct#11935004 "Obstetrician"

Instance: cephalic-perimeter-example
InstanceOf: http://hl7.org/fhir/StructureDefinition/headcircum
Description: "Exemplo perimetro cefálico"
Usage: #example

* status = #final
* effectiveDateTime = "2024-08-01T10:00:00.000Z"
* subject = Reference(newBornNN)
* valueQuantity.value = 50.1
* valueQuantity.unit = "cm(s)"
* valueQuantity.code = #cm


Instance: pregnancyNN
InstanceOf: Pregnancy
Description: "Exemplo gravidez"
Usage: #example

* effectiveDateTime = "2024-08-01T10:00:00.000Z"
* subject = Reference(newBornNN)


Instance: newBornNN
InstanceOf: Child
Description: "Exemplo recém-nascido"
Usage: #example

* gender = #female



Instance: vaccNN-bcg
InstanceOf: Bcg
Description: "Exemplo vacina BCG"
Usage: #example

* status = #completed
* patient = Reference(newBornNN)
* occurrenceDateTime = "2024-08-01T10:00:00.000Z"
* lotNumber = "ghy-123/2024"

Instance: vaccNN-hepb
InstanceOf: Hepb
Description: "Exemplo vacina HEPB"
Usage: #example

* status = #completed
* patient = Reference(newBornNN)
* occurrenceDateTime = "2024-08-01T10:00:00.000Z"
* lotNumber = "abc-9878"


Instance: vaccNN-antid
InstanceOf: Antid
Description: "Exemplo vacina ANTI-D"
Usage: #example

* status = #completed
* patient = Reference(newBornNN)
* occurrenceDateTime = "2024-08-01T10:00:00.000Z"
* lotNumber = "xyz-123"

Instance: length-example
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyheight
Description: "Exemplo altura recem-nascido"
Usage: #example

* subject = Reference(newBornNN)
* effectiveDateTime = "2024-08-01T10:00:00.000Z"
* status = #final
* valueQuantity.value = 50
* valueQuantity.code = #cm
* valueQuantity.unit = "cm(s)"


Instance: body-weigth-example
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
Description: "Exemplo peso recem-nascido"
Usage: #example


* subject = Reference(newBornNN)
* effectiveDateTime = "2024-08-01T10:00:00.000Z"
* status = #final
* valueQuantity.value = 3250
* valueQuantity.code = #g
* valueQuantity.unit = "gram(s)"


Instance: compNN
InstanceOf: CompositionNoticia
Description: "Exemplo Composition"
Usage: #example

* date = "2021-09-01"

* author.display = "HCP"
* title = "Noticia de Nascimento de recém-nascido"

* encounter = Reference(episodio)
* section[mother].entry = Reference(mother)

* section[pregnancy].entry = Reference(pregnancyNN)

* section[birth].entry[birthInfo]  = Reference(BirthNN)

* section[birth].entry[episode]  = Reference(episodioInt)

* section[newborn].entry = Reference(newBornNN)

* section[exams].entry[length] = Reference(length-example)
* section[exams].entry[bodyweigth] = Reference(body-weigth-example)
* section[exams].entry[apgar] = Reference(apgar-example)
* section[exams].entry[Congenital] = Reference(congenital-example)
* section[exams].entry[Pupillary] = Reference(pupillary-example)
* section[exams].entry[cephalicPerimeter] = Reference(cephalic-perimeter-example)

* section[vaccination].entry[immuno] = Reference(vaccNN-antid)
* section[vaccination].entry[bcg] = Reference(vaccNN-bcg)
* section[vaccination].entry[vhb] = Reference(vaccNN-hepb)

//* section[followup].entry[destination]  = Reference(destino)
* section[followup].entry[childhealthsurveilance]  = Reference(childhealthsurveilance-ex)
* section[followup].entry[puerperium]  = Reference(puerperium-ex)

* section[destination].entry = Reference(destino)


Instance: apgar-example
InstanceOf: ApgarScore
Description: "Exemplo de Apgar"
Usage: #example

* component[first].valueInteger = 7
* component[fifth].valueInteger = 9
* component[tenth].valueInteger = 10

Instance: congenital-example
InstanceOf: Congenital
Description: "Exemplo de registo de doença congénita"
Usage: #example

* valueCodeableConcept = $sct#282332003 "No abnormality detected - examination result"


Instance: pupillary-example
InstanceOf: Pupillary
Description: "Exemplo de análise pupilar"
Usage: #example


* component[right].valueCodeableConcept = $sct#282332003 "No abnormality detected - examination result"
* component[left].valueCodeableConcept = $sct#282332003 "No abnormality detected - examination result"

Instance: puerperium-ex
InstanceOf: Puerperium
Description: "Exemplo de puerpério"
Usage: #example

* identifier.system = "http:/example.org"
* identifier.value = "4"

* valueCodeableConcept = $sct#597961000005105 "Normal puerperium (finding)"

Instance: childhealthsurveilance-ex
InstanceOf: Childhealthsurveilance
Description: "Exemplo da vigilância de saúde infantil"
Usage: #example

* identifier.system = "http:/example.org"
* identifier.value = "4"


Instance: exemploNN
InstanceOf: Bundle
Description: "Exemplo Noticia Nascimento"
Usage: #example

* identifier.system = "http:/example.org"
* identifier.value = "2"


* timestamp = "2024-11-28T22:00:00Z"
* type = #document
* entry[0].resource = compNN
* entry[0].fullUrl = "http://example.org/Composition/compNN"

* entry[+].resource = BirthNN
* entry[=].fullUrl = "http://example.org/Procedure/BirthNN"

* entry[+].resource = episodioInt
* entry[=].fullUrl = "http://example.org/Encounter/episodioInt"

* entry[+].resource = destino
* entry[=].fullUrl = "http://example.org/Organization/destino"

* entry[+].resource = mother
* entry[=].fullUrl = "http://example.org/Patient/mother"

* entry[+].resource = episodio
* entry[=].fullUrl = "http://example.org/Encounter/episodio"

* entry[+].resource = inst
* entry[=].fullUrl = "http://example.org/Organization/inst"


* entry[+].fullUrl = "http://example.org/Observation/pregnancyNN"
* entry[=].resource = pregnancyNN

* entry[+].fullUrl = "http://example.org/Patient/newBornNN"
* entry[=].resource = newBornNN



* entry[+].fullUrl = "http://example.org/Observation/body-weigth-example"
* entry[=].resource = body-weigth-example

* entry[+].fullUrl = "http://example.org/Observation/length-example"
* entry[=].resource = length-example


* entry[+].fullUrl = "http://example.org/Organization/childhealthsurveilance-ex"
* entry[=].resource = childhealthsurveilance-ex


* entry[+].fullUrl = "http://example.org/Observation/puerperium-ex"
* entry[=].resource = puerperium-ex

* entry[+].fullUrl = "http://example.org/Immunization/vaccNN-antid"
* entry[=].resource = vaccNN-antid

* entry[+].fullUrl = "http://example.org/Immunization/vaccNN-hepb"
* entry[=].resource = vaccNN-hepb

* entry[+].fullUrl = "http://example.org/Immunization/vaccNN-bcg"
* entry[=].resource = vaccNN-bcg

* entry[+].fullUrl = "http://example.org/Observation/apgar-example"
* entry[=].resource = apgar-example

* entry[+].fullUrl = "http://example.org/Observation/congenital-example"
* entry[=].resource = congenital-example

* entry[+].fullUrl = "http://example.org/Observation/pupillary-example"
* entry[=].resource = pupillary-example

* entry[+].fullUrl = "http://example.org/Observation/cephalic-perimeter-example"
* entry[=].resource = cephalic-perimeter-example


* entry[+].fullUrl = "http://example.org/PractitionerRole/ObsRole"
* entry[=].resource = ObsRole




