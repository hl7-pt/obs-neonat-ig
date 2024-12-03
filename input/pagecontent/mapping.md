O mapeamento não foi feito de forma direta, sendo que a estrutura foi alterada de forma a corresponder a um documento em FHIR. No entanto, tentou-se que a alteração fosse o menos profunda possível, de forma a facilitar a implementação
Tentámos usar terminologias internacionais sempre que possíveis, criando CodeSystem quando não foi possível. Tentámos também vincular campos codificados a estas terminologias. De igual forma, criámos constraints adicionais para facilitar a transformação.


Aqui deixamos uma visão geral do modelo lógico e de como este se transforma na especificação FHIR:  



| Origem | Descrição |          Modelo Lógico      | FHIR  |
|--|--|----------------------------------------------------------------------------|---|
|  |  | contact.id                                                                 | Encounter\[Contact].identifier  |
|  |  | contact.module                                                             | Encounter\[Contact].class  |
|  |  | professional.functionalgroup                                               | Patient\[Mother\].generalPractitioner |
|  |  | professional.licence                                                       | Patient\[Mother\].generalPractitioner  |
|  |  | professional.name                                                          | Patient\[Mother\].generalPractitioner |
|  |  | birthNotice.owner                                                          |  - |
|  |  | birthNotice.code                                                           |  - |
|  |  | birthNotice.maternity.institution                                          | Encounter\[Contact].serviceProvider |
|  |  | birthNotice.maternity.service                                              | Encounter\[Contact].serviceProvider  |
|  |  | birthNotice.destination.headquarters                                       | Organization  |
|  |  | birthNotice.destination.ACES                                               | Organization   |
|  |  | birthNotice.destination.healthcardNumber                                   | Organization   |
|  |  | birthNotice.destination.healthextension                                    | Organization   |
|  |  | birthNotice.destination.familyDoctor                                       | Patient\[Mother\].generalPractitioner   |
|  |  | birthNotice.destination.familyNurse                                        | Patient\[Mother\].generalPractitioner  |
|  |  | birthNotice.motherDemographics.healthcardNumber                            | Patient.identifier  |
|  |  | birthNotice.motherDemographics.name                                        | Patient.name |
|  |  | birthNotice.motherDemographics.birthdate                                   | Patient.birthDate |
|  |  | birthNotice.motherDemographics.Age                                         | Patient.birthDate  |
|  |  | birthNotice.motherDemographics.address                                     | Patient.address  |
|  |  | birthNotice.motherDemographics.placeOfBirth                                | Patient.extension.birthPlace  |
|  |  | birthNotice.motherDemographics.nationality                                 | Patient.extension.nationality   |
|  |  | birthNotice.motherDemographics.phone                                       | Patient.contact  |
|  |  | birthNotice.motherDemographics.postalCode                                  | Patient.address |
|  |  | birthNotice.motherDemographics.countryOfBirth                              | Patient.extension.birthPlace   |
|  |  | birthNotice.motherDemographics.districtOfBirth                             | Patient.extension.birthPlace    |
|  |  | birthNotice.motherDemographics.countyOfBirth                               | Patient.extension.birthPlace   |
|  |  | birthNotice.motherDemographics.parishOfBirth                               | Patient.extension.birthPlace   |
|  |  | birthNotice.motherDemographics.districtAddress                             | Patient.address |
|  |  | birthNotice.motherDemographics.countyAddress                               | Patient.address |
|  |  | birthNotice.motherDemographics.parishAddress                               | Patient.address |
|  |  | birthNotice.pregnancy.days                                                 | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.weeks                                                | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.risk                                                 | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.riskReason                                           | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.immunoglobulinAdministration                         | Vaccination.status  |
|  |  | birthNotice.pregnancy.immunoglobulinAdministrationDate                     | Vaccination.effectiveDateTime   |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.firstQuarterEco    | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.firstQuarterBio    | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.secondQuarterEco   | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.secondQuarterBio   | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.thirdQuarterEco    | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.thirdQuarterBio    | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.visits             | Observation\[Pregancy\].component |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.intercurrences     | Observation\[Pregancy\].component |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.locals.type        |  - |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.locals.value       |  - |
|  |  | birthNotice.pregnancy.prenatalMonitorizationFulfillment.locals.reason      |  - |
|  |  | birthNotice.pregnancy.PregnancyType                                        | Observation\[Pregancy\].component  |
|  |  | birthNotice.pregnancy.twinNumber                                           | Observation\[Pregancy\].component  |
|  |  | birthNotice.birth.date                                                     | Observation\[Birth\].effectiveDatetime  |
|  |  | birthNotice.birth.type                                                     | Observation\[Birth\].component  |
|  |  | birthNotice.birth.participation                                            | Observation\[Birth\].component  |
|  |  | birthNotice.birth.reason                                                   | Observation\[Birth\].component  |
|  |  | birthNotice.birth.assist                                                   | Observation\[Birth\].component  |
|  |  | birthNotice.birth.assistDescription                                        | Observation\[Birth\].component  |
|  |  | birthNotice.puerperium.type                                                | Observation\[puerperium\]  |
|  |  | birthNotice.puerperium.observations                                        | Observation\[puerperium\] |
|  |  | birthNotice.newborn.liveBirth                                              | Patient\[Child\].deceased  |
|  |  | birthNotice.newborn.gender                                                 | Patient\[Child\].gender |
|  |  | birthNotice.newborn.length                                                 | Observation\[length\]   |
|  |  | birthNotice.newborn.deceased                                               | Patient\[Child\].deceased  |
|  |  | birthNotice.newborn.deathBirth                                             | Patient\[Child\].deceased  |
|  |  | birthNotice.newborn.deathBirthDate                                         | Patient\[Child\].deceased  |
|  |  | birthNotice.newborn.reanimated                                             |  - |
|  |  | birthNotice.newborn.cephalicPerimeter                                      | Observation\[cephalicPerimeter\]  |
|  |  | birthNotice.newborn.weight                                                 | Observation\[weight\]  |
|  |  | birthNotice.newborn.apgarIndexFirstMinute                                  | Observation\[apgarScore\] |
|  |  | birthNotice.newborn.apgarIndexFifthMinute                                  | Observation\[apgarScore\]  |
|  |  | birthNotice.newborn.apgarIndexTenthMinute                                  | Observation\[apgarScore\]  |
|  |  | birthNotice.newborn.phototherapy                                           | Observation\[phototherapy\]  |
|  |  | birthNotice.newborn.malformations.code                                     | Observation\[malformation\]  |
|  |  | birthNotice.newborn.malformations.description                              | Observation\[malformation\]  |
|  |  | birthNotice.newborn.AdmissionNeonatology                                   | Encounter.class |
|  |  | birthNotice.newborn.AdmissionNeonatologyReason                             | Encounter.reasonCode |
|  |  | birthNotice.newborn.AdmissionNeonatologyLocal                              | Encounter.location |
|  |  | birthNotice.newborn.transport.Neonatal                                     | Basic  |
|  |  | birthNotice.newborn.transport.NeonatalDestination                          | Basic  |
|  |  | birthNotice.newborn.transport.NeonatalReason                               | Basic  |
|  |  | birthNotice.newborn.transport.InUtero                                      | Basic  |
|  |  | birthNotice.newborn.transport.InUteroProvanance                            | Basic  |
|  |  | birthNotice.newborn.transport.InUteroReason                                | Basic |
|  |  | birthNotice.newborn.screeningMetabolicDiseasesTaken                        | Observation\[metabolic\]  |
|  |  | birthNotice.newborn.screeningMetabolicReason                               | Observation\[metabolic\]  |
|  |  | birthNotice.newborn.screeningMetabolicDiseasesDate                         | Observation\[metabolic\]  |
|  |  | birthNotice.newborn.screeningCongenitalDiseases                            | Observation\[congenital\]  |
|  |  | birthNotice.newborn.screeningCongenitalDiseasesChange                      | Observation\[congenital\]  |
|  |  | birthNotice.newborn.screeningCongenitalDiseasesObservations                | Observation\[congenital\]  |
|  |  | birthNotice.newborn.screeningpupillaryReflection                           | Observation\[pupillary\] |
|  |  | birthNotice.newborn.screeningpupillaryReflectionChange                     | Observation\[pupillary\] |
|  |  | birthNotice.newborn.screeningpupillaryReflectionObservations               | Observation\[pupillary\] |
|  |  | birthNotice.newborn.screeningHearing.type                                  | Observation\[hearingscreen\]  |
|  |  | birthNotice.newborn.screeningHearing.date                                  | Observation\[hearingscreen\]  |
|  |  | birthNotice.newborn.screeningHearing.rightEar                              | Observation\[hearingscreen\]  |
|  |  | birthNotice.newborn.screeningHearing.leftEar                               | Observation\[hearingscreen\]  |
|  |  | birthNotice.newborn.screeningHearing.repeatDate                            |  - |
|  |  | birthNotice.newborn.VHB.taken                                              | Vaccination.status  |
|  |  | birthNotice.newborn.VHB.date                                               | Vaccination.occurrenceDateTime  |
|  |  | birthNotice.newborn.VHB.lot                                                | Vaccination.lotNumber  |
|  |  | birthNotice.newborn.VHB.reason                                             | Vaccination.statusReason |
|  |  | birthNotice.newborn.BCG.taken                                              | Vaccination.status  |
|  |  | birthNotice.newborn.BCG.date                                               | Vaccination.occurrenceDateTime |
|  |  | birthNotice.newborn.BCG.lot                                                | Vaccination.lotNumber |
|  |  | birthNotice.newborn.BCG.reason                                             | Vaccination.statusReason |
|  |  | birthNotice.newborn.immunoglobulin.taken                                   | Vaccination.status  |
|  |  | birthNotice.newborn.immunoglobulin.date                                    | Vaccination.occurrenceDateTime  |
|  |  | birthNotice.newborn.immunoglobulin.lot                                     | Vaccination.lotNumber  |
|  |  | birthNotice.newborn.immunoglobulin.reason                                  | Vaccination.statusReason  |
|  |  | birthNotice.newborn.feedingUntilDischarge                                  | Observation\[Birth\].component |
|  |  | birthNotice.newborn.feedingFirstHour                                       | Observation\[Birth\].component  |
|  |  | birthNotice.newborn.individualHealthBulletinDelivered                      | bulletindelivery  |
|  |  | birthNotice.newborn.childYoungHealthBulletinDelivered                      | bulletindelivery  |
|  |  | birthNotice.newborn.bulletinDeliveryType                                   | bulletindelivery |
|  |  | birthNotice.newborn.riskAssessment.riskFactorsIdentified                   | Observation\[newbornriskassessment\].code |
|  |  | birthNotice.newborn.riskAssessment.reference                               | Observation\[newbornriskassessment\].extension |
|  |  | birthNotice.newborn.riskAssessment.observations                            | Observation\[newbornriskassessment\].note |
|  |  | birthNotice.newborn.Outpatient.institution                                 | Encounter |
|  |  | birthNotice.newborn.Outpatient.date                                        | Encounter |
|  |  | birthNotice.newborn.confirmedDeceased                                      | Patient\[child\]  |
|  |  | birthNotice.puerperiumReview                                               | Observation\[puerperium\].performer  |
|  |  | birthNotice.childHealthSurveillance                                        | Organization  |
|  |  | birthNotice.letterWithClinicalInformation.hasLetterWithClinicalInformation | Observation\[letter\]  |
|  |  | birthNotice.letterWithClinicalInformation.date                             | Observation\[letter\]  |
|  |  | birthNotice.professionals                                                  | Practitioner |

### Estrutura FHIR

Sendo um documento, os recursos estão organizados de maneira a tentar estar agrupados de maneira lógica.
O recurso Bundle atua como o envelope do documento todo. O recurso Composition é o principal ponte para conseguir entender a organização lógica.
O perfil está aqui e visualmente poderá ser entendido como:


<div>{% include composition.svg %}</div>
<br clear="all"/>