O mapeamento não foi feito de forma direta, sendo que a estrutura foi alterada de forma a corresponder a um documento em FHIR. No entanto, tentou-se que a alteração fosse o menos profunda possivel, de forma a facilitar a implementação
Tentámos usar terminologias internacionais sempre que possiveis, criando CodeSystem quando não foi possivel. Tentámos também vincular campos codificados a estas terminologias. De igual forma, criámos constraints adicionais para facilitar a transformação

Aqui deixamos uma visão geral do modelo lógico e de como este se transforma na especificação FHIR:  



|          Modelo Lógico                                                    | FHIR  |
|----------------------------------------------------------------------------|---|
| contact.id                                                                  |   |
| contact.module                                                             |   |
| professional.functionalgroup                                               |   |
| professional.licence                                                       |   |
| professional.name                                                          |   |
| birthNotice.owner                                                          |   |
| birthNotice.code                                                           |   |
| birthNotice.maternity.institution                                          |   |
| birthNotice.maternity.service                                              |   |
| birthNotice.destination.headquarters                                       | Organization.  |
| birthNotice.destination.ACES                                               | Organization.   |
| birthNotice.destination.healthcardNumber                                   | Organization.   |
| birthNotice.destination.healthextension                                    | Organization.   |
| birthNotice.destination.familyDoctor                                       | Practitioner.   |
| birthNotice.destination.familyNurse                                        | Practitioner.   |
| birthNotice.motherDemographics.healthcardNumber                            | Patient.identifier  |
| birthNotice.motherDemographics.name                                        | Patient.name |
| birthNotice.motherDemographics.birthdate                                   | Patient.birthDate |
| birthNotice.motherDemographics.Age                                         | Patient.birthDate  |
| birthNotice.motherDemographics.address                                     | Patient.address  |
| birthNotice.motherDemographics.placeOfBirth                                | Patient.extension.birthPlace  |
| birthNotice.motherDemographics.nationality                                 | Patient.extension.nationality   |
| birthNotice.motherDemographics.phone                                       | Patient.contact  |
| birthNotice.motherDemographics.postalCode                                  | Patient.address |
| birthNotice.motherDemographics.countryOfBirth                              | Patient.extension.birthPlace  | |
| birthNotice.motherDemographics.districtOfBirth                             | Patient.extension.birthPlace  |  |
| birthNotice.motherDemographics.countyOfBirth                               | Patient.extension.birthPlace  | |
| birthNotice.motherDemographics.parishOfBirth                               | Patient.extension.birthPlace  | |
| birthNotice.motherDemographics.districtAddress                             | Patient.address |
| birthNotice.motherDemographics.countyAddress                               | Patient.address |
| birthNotice.motherDemographics.parishAddress                               | Patient.address |
| birthNotice.pregnancy.days                                                 | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.weeks                                                | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.risk                                                 | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.riskReason                                           | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.immunoglobulinAdministration                         |  Vaccination.status  |
| birthNotice.pregnancy.immunoglobulinAdministrationDate                     | Vaccination.effectiveDateTime   |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.firstQuarterEco    | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.firstQuarterBio    | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.secondQuarterEco   | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.secondQuarterBio   | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.thirdQuarterEco    | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.thirdQuarterBio    | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.visits             |  Observation\[Pregancy\].component |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.intercurrences     |  Observation\[Pregancy\].component |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.locals.type        |   |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.locals.value       |   |
| birthNotice.pregnancy.prenatalMonitorizationFulfillment.locals.reason      |   |
| birthNotice.pregnancy.PregnancyType                                        | Observation\[Pregancy\].component  |
| birthNotice.pregnancy.twinNumber                                           | Observation\[Pregancy\].component  |
| birthNotice.birth.date                                                     | Observation\[Birth\].effectiveDatetime  |
| birthNotice.birth.type                                                     | Observation\[Birth\].component  |
| birthNotice.birth.participation                                            | Observation\[Birth\].component  |
| birthNotice.birth.reason                                                   | Observation\[Birth\].component  |
| birthNotice.birth.assist                                                   | Observation\[Birth\].component  |
| birthNotice.birth.assistDescription                                        | Observation\[Birth\].component  |
| birthNotice.puerperium.type                                                | Observation.  |
| birthNotice.puerperium.observations                                        | Observation. |
| birthNotice.newborn.liveBirth                                              | Patient\[Child\].deceased  |
| birthNotice.newborn.gender                                                 | Patient\[Child\].gender |
| birthNotice.newborn.length                                                 | Observation\[newBornExams\].component   |
| birthNotice.newborn.deceased                                               | Patient\[Child\].deceased  |
| birthNotice.newborn.deathBirth                                             | Patient\[Child\].deceased  |
| birthNotice.newborn.deathBirthDate                                         | Patient\[Child\].deceased  |
| birthNotice.newborn.reanimated                                             | Observation\[newBornExams\].component  |
| birthNotice.newborn.cephalicPerimeter                                      | Observation\[newBornExams\].component  |
| birthNotice.newborn.weight                                                 | Observation\[newBornExams\].component  |
| birthNotice.newborn.apgarIndexFirstMinute                                  | Observation\[newBornExams\].component |
| birthNotice.newborn.apgarIndexFifthMinute                                  | Observation\[newBornExams\].component  |
| birthNotice.newborn.apgarIndexTenthMinute                                  | Observation\[newBornExams\].component  |
| birthNotice.newborn.phototherapy                                           | Observation\[newBornExams\].component  |
| birthNotice.newborn.malformations.code                                     | Observation\[newBornExams\].component  |
| birthNotice.newborn.malformations.description                              | Observation\[newBornExams\].component  |
| birthNotice.newborn.AdmissionNeonatology                                   | Observation\[newBornExams\].component  |
| birthNotice.newborn.AdmissionNeonatologyReason                             | Observation\[newBornExams\].component  |
| birthNotice.newborn.AdmissionNeonatologyLocal                              | Observation\[newBornExams\].component  |
| birthNotice.newborn.transport.Neonatal                                     |   |
| birthNotice.newborn.transport.NeonatalDestination                          |   |
| birthNotice.newborn.transport.NeonatalReason                               |   |
| birthNotice.newborn.transport.InUtero                                      |   |
| birthNotice.newborn.transport.InUteroProvanance                            |   |
| birthNotice.newborn.transport.InUteroReason                                |   |
| birthNotice.newborn.screeningMetabolicDiseasesTaken                        | Observation.  |
| birthNotice.newborn.screeningMetabolicReason                               | Observation.  |
| birthNotice.newborn.screeningMetabolicDiseasesDate                         | Observation.  |
| birthNotice.newborn.screeningCongenitalDiseases                            | Observation.  |
| birthNotice.newborn.screeningCongenitalDiseasesChange                      | Observation.  |
| birthNotice.newborn.screeningCongenitalDiseasesObservations                | Observation.  |
| birthNotice.newborn.screeningpupillaryReflection                           | Observation.  |
| birthNotice.newborn.screeningpupillaryReflectionChange                     | Observation.  |
| birthNotice.newborn.screeningpupillaryReflectionObservations               | Observation.  |
| birthNotice.newborn.screeningHearing.type                                  | Observation.  |
| birthNotice.newborn.screeningHearing.date                                  | Observation.  |
| birthNotice.newborn.screeningHearing.rightEar                              | Observation.  |
| birthNotice.newborn.screeningHearing.leftEar                               | Observation.  |
| birthNotice.newborn.screeningHearing.repeatDate                            | Observation.  |
| birthNotice.newborn.VHB.taken                                              | Vaccination.status  |
| birthNotice.newborn.VHB.date                                               | Vaccination.occurrenceDateTime  |
| birthNotice.newborn.VHB.lot                                                | Vaccination.lotNumber  |
| birthNotice.newborn.VHB.reason                                             |   |
| birthNotice.newborn.BCG.taken                                              | Vaccination.status  |
| birthNotice.newborn.BCG.date                                               |  Vaccination.occurrenceDateTime |
| birthNotice.newborn.BCG.lot                                                |  Vaccination.lotNumber |
| birthNotice.newborn.BCG.reason                                             |   |
| birthNotice.newborn.immunoglobulin.taken                                   | Vaccination.status  |
| birthNotice.newborn.immunoglobulin.date                                    | Vaccination.occurrenceDateTime  |
| birthNotice.newborn.immunoglobulin.lot                                     | Vaccination.lotNumber  |
| birthNotice.newborn.immunoglobulin.reason                                  |   |
| birthNotice.newborn.feedingUntilDischarge                                  | Observation\[newBornExams\].component  |
| birthNotice.newborn.feedingFirstHour                                       | Observation\[newBornExams\].component  |
| birthNotice.newborn.individualHealthBulletinDelivered                      | Observation\[newBornExams\].component  |
| birthNotice.newborn.childYoungHealthBulletinDelivered                      | Observation\[newBornExams\].component  |
| birthNotice.newborn.bulletinDeliveryType                                   | Observation\[newBornExams\].component  |
| birthNotice.newborn.riskAssessment.riskFactorsIdentified                   |   |
| birthNotice.newborn.riskAssessment.reference                               |   |
| birthNotice.newborn.riskAssessment.observations                            |   |
| birthNotice.newborn.Outpatient.institution                                 |   |
| birthNotice.newborn.Outpatient.date                                        |   |
| birthNotice.newborn.confirmedDeceased                                      |   |
| birthNotice.puerperiumReview                                               | Observation.  |
| birthNotice.childHealthSurveillance                                        | Observation.  |
| birthNotice.letterWithClinicalInformation.hasLetterWithClinicalInformation | Observation. |
| birthNotice.letterWithClinicalInformation.date                             | Observation.  |
| birthNotice.professionals                                                  |   |
