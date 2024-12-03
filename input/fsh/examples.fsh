Instance: mother
InstanceOf: Mother
Description: "Exemplo NN"
Usage: #inline

* identifier.system = "http://example"
* identifier.value = "1234567"
* name.text = "NOME DE TESTE"
* birthDate = "1989-07-30"
* address.line = "MORADA DE TESTE"
* extension[nationality].extension[code].valueCodeableConcept.text = "Portugal"


Instance: inst
InstanceOf: Organization
Description: "Exemplo NN"
Usage: #inline
* name = "CH ENTRE DOURO E VOUGA"

Instance: destino
InstanceOf: Organization
Description: "Exemplo NN"
Usage: #inline
* identifier.value = "2010491"
* name = "USF ESCARIZ"

Instance: episodio
InstanceOf: Contact
Description: "Exemplo NN"
Usage: #inline

* identifier.value = "18001555"

* class = tipo-episodio-cs#INT

* serviceProvider = Reference(inst)

* serviceType.text = "Obstetricia"

Instance: episodioInt
InstanceOf: Encounter
Description: "Exemplo NN"
Usage: #inline

* class = tipo-episodio-cs#INT
* status = #finished

Instance: BirthNN
InstanceOf: Birth
Description: "Exemplo NN"
Usage: #inline

* effectiveDateTime = "2024-08-01T10:00:00.000Z"
* subject = Reference(newBornNN)

Instance: pregnancyNN
InstanceOf: Pregnancy
Description: "Exemplo Pregnancy"
Usage: #inline

* effectiveDateTime = "2024-08-01T10:00:00.000Z"
* subject = Reference(newBornNN)


Instance: newBornNN
InstanceOf: Child
Description: "Exemplo New born"
Usage: #inline

* gender = #female



Instance: vaccNN
InstanceOf: Vaccination
Description: "Exemplo vaccinaction NN"
Usage: #inline

* status = #completed
* vaccineCode = http://example#1 "xx"
* patient = Reference(newBornNN)
* occurrenceDateTime = "2024-08-01T10:00:00.000Z"


Instance: length-example
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyheight
Description: "Exemplo altura recem-nascido"
Usage: #inline

* subject = Reference(newBornNN)
* effectiveDateTime = "2024-08-01T10:00:00.000Z"
* status = #final
* valueQuantity.value = 50
* valueQuantity.code = #cm
* valueQuantity.unit = "cm(s)"


Instance: body-weigth-example
InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
Description: "Exemplo peso recem-nascido"
Usage: #inline


* subject = Reference(newBornNN)
* effectiveDateTime = "2024-08-01T10:00:00.000Z"
* status = #final
* valueQuantity.value = 3250
* valueQuantity.code = #g
* valueQuantity.unit = "gram(s)"


Instance: compNN
InstanceOf: CompositionNoticia
Description: "Exemplo NN"
Usage: #inline

* date = "2021-09-01"

* author.display = "ee"
* title = "ssss"

* encounter = Reference(episodio)
* section[mother].entry = Reference(mother)


* section[pregnancy].entry = Reference(pregnancyNN)
* section[birth].entry[birthInfo]  = Reference(BirthNN)
* section[birth].entry[episode]  = Reference(episodioInt)

* section[newborn].entry = Reference(newBornNN)
* section[exams].entry[length] = Reference(length-example)
* section[exams].entry[bodyweigth] = Reference(body-weigth-example)


* section[vaccination].entry = Reference(vaccNN)
* section[followup].entry[destination]  = Reference(destino)
* section[followup].entry[childhealthsurveilance]  = Reference(childhealthsurveilance-ex)
* section[followup].entry[puerperium]  = Reference(puerperium-ex)



Instance: puerperium-ex
InstanceOf: Puerperium
Description: "Exemplo de puerpério (NN)"
Usage: #example

* identifier.system = "http:/example.org"
* identifier.value = "4"


Instance: childhealthsurveilance-ex
InstanceOf: childhealthsurveilance
Description: "Exemplo da vigilância de saúde infantil (NN)"
Usage: #example

* identifier.system = "http:/example.org"
* identifier.value = "4"


Instance: exemploNN
InstanceOf: Bundle
Description: "Exemplo Noticia Nascimento (NN)"
Usage: #example

* identifier.system = "http:/example.org"
* identifier.value = "2"


* timestamp = "2024-11-28T22:00:00Z"
* type = #document
* entry[0].resource = compNN
* entry[0].fullUrl = "http://example.org/Composition/compNN"

* entry[+].resource = BirthNN
* entry[=].fullUrl = "http://example.org/Observation/BirthNN"

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

* entry[+].fullUrl = "http://example.org/Immunization/vaccNN"
* entry[=].resource = vaccNN

* entry[+].fullUrl = "http://example.org/Observation/body-weigth-example"
* entry[=].resource = body-weigth-example

* entry[+].fullUrl = "http://example.org/Observation/length-example"
* entry[=].resource = length-example