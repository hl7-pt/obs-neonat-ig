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


Instance: compNN
InstanceOf: CompositionNoticia
Description: "Exemplo NN"
Usage: #inline
* date = "2021-09-01"

* author.display = "ee"
* title = "ssss"

* encounter = Reference(episodio)
* section[mother].entry = Reference(mother)



* section[destination].entry  = Reference(destino)
//* section[destination][=].entry[familyHCP] = Reference(mother)


* section[pregnancy] 
* section[birth] 
* section[newborn] 
* section[newborn] 
* section[exams]
* section[vaccination]


Instance: exemploNN
InstanceOf: Bundle
Description: "Exemplo NN"

* entry[0].resource = compNN
* type = #document

