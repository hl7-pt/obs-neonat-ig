Logical: noticia
Title: "Notícia de Nascimento (model)"
Description: "Logical model - Notícia de Nascimento"
Characteristics: #can-be-target

* contact 1..1 contactLM "Estrutura do episódio da notícia de nascimento"
* professional 1..1 ProfessionalLM "Estrutura do profissional envolvido na submissão da informação"
* birthNotice 1..1 birthNoticeLM "Estrutura da notícia de nascimento"




Logical: contactLM
Title: "Contact (model)"
Description: "Logical model - Contact"
Characteristics: #can-be-target

* id 1..1 string "Identificador do episódio"
* module 1..1 CodeableConcept "Tipo de episódio (CON/INT/URG/BLO/HDI/RAD/LAB)"


Logical: ProfessionalLM
Title: "Professional (model)"
Description: "Logical model - Professional"
Characteristics: #can-be-target

* functionalgroup 1..1 CodeableConcept "Grupo funcional do profissional (5 – Médico; 4 -Enfermeiro)"
* licence 1..1 integer "Nº de ordem do profissional"
* name 1..1 string "Nome clínico"


Logical: VaccineLM
Title: "Vaccine (model)"
Description: "Logical model - Vaccine"
Characteristics: #can-be-target

* taken 1..1 boolean "Confirmação de toma da vacina"
* date 1..1 dateTime "Data da toma (YYYY-MM-DD)"
* lot 1..1 string "Lote da vacina"
* reason 1..1 string "Motivo de não toma da vacina"

Logical: birthNoticeLM
Title: "BirthNotice (model)"
Description: "Logical model - BirthNotice"
Characteristics: #can-be-target

* owner 1..1 CodeableConcept "Identifica se a notícia de nascimento é associada ao bebé ou à mãe (“descendant” – Caso o SNS do bébé seja enviado; “self” – No caso de só possuir SNS da mãe)"
* code  1..1 integer "Identificador único da instituição na PDS"
* maternity  1..1 BackboneElement "Dados da maternidade"
  * institution 1..1 string "Nome da instituição/maternidade" 
  * service 1..1 string "Serviço da instituição"
* destination 1..1 BackboneElement "Dados da inscrição nos cuidados de saúde primários"
  * headquarters 1..1 Identifier "Dados da unidade de saúde de inscrição"
  * ACES 0..1 string "Agrupamento do centro de saúde"
  * healthcardNumber 0..1 integer "Nº de SNS do recém-nascido"
  * healthextension 0..1 string "Extensão de saúde"
  * familyDoctor 0..1 string "Nome clinico do médico de família"
  * familyNurse 0..1 string "Nome clinico do enfermeiro de família"
* motherDemographics 1..1 motherDemographicsLM "Dados demográficos da mãe"
* pregnancy 1..1 PregnancyLM "Dados da gravidez e cumprimento do esquema de vigilância pré-natal"
* birth 1..1 BackboneElement "Dados do parto"
  * date 1..1 dateTime "Data e hora do nascimento (YYYY-MM-DD HH:MI:SS)"
  * type 1..1 Coding "Tipo de parto (1 - Eutócico Cefálico; 2 - Distócico-Forceps; 3 - Distócico- Ventosa; 4 - Distócico-Cesariana; 5 - Eutócico-Gemelar; 6 – Eutócico-Pélvico; 7 - Distócico Gemelar; 8 – Distócico- Pélvico; 9 - Desconhecido; 10 - Distócico-Espátulas de Thierry)"
  * participation 1..1 Coding "Identifica se é Notícia ou Participação (0 – Notícia de Nascimento; 1 – Participação de Nascimento)"
  * reason 0..1 string "Motivo em caso de distocia"
  * assist 0..1 Coding "Assistido por (0- Médico(a) obstetra; 1- Enfermeiro(a) ESMO; 2 - Outro)"
  * assistDescription 0..1 string "Descrever o assistido por."
* puerperium 1..1 BackboneElement "Dados do puerpério até à alta"
  * type 1..1 string "Tipo de puerpério (0- Normal; 1- Patológico)"
  * observations  0..1 string "Observações"
* newborn 1..1 NewBornLM "Dados do recém-nascido"
* puerperiumReview 1..1 Identifier "Dados da revisão do puerpério"
* childHealthSurveillance 1..1 Identifier "Dados da vigilância de saúde infantil"
* letterWithClinicalInformation 1..1 BackboneElement "Dados da informação clinica suplementar"
  * hasLetterWithClinicalInformation 0..1 boolean "Elaboração de carta com informação clínica suplementar"
  * date 0..1 dateTime "Data da elaboração (YYYY-MM-DD)"
* professionals 0..* string "Lista de profissionais envolvidos no registo da NN"



Logical: PregnancyLM
Title: "Gravidez (model)"
Description: "Logical model - Gravidez"
Characteristics: #can-be-target

* days 0..1 integer "Dias de gravidez"
* weeks 0..1 integer "Semanas de gravidez"
* risk 0..1 Coding "Risco da gravidez (0- Baixo; 1- Médio; 2- Alto)"
* riskReason 0..1 string "Motivo do risco"
* immunoglobulinAdministration 0..1 boolean "Administração da Imunoglobulina anti-D"
* immunoglobulinAdministrationDate 0..1 dateTime "Data da administração da Imunoglobulina anti-D (YYYY-MM-DD)"
* prenatalMonitorizationFulfillment 1..1 BackboneElement "Dados do cumprimento do esquema vigilância pré-natal"
  * firstQuarterEco 0..1 boolean "Ecografia 1º Trimestre"
  * firstQuarterBio 0..1 boolean "Analítico 1º Trimestre"
  * secondQuarterEco 0..1 boolean "Ecografia 2º Trimestre"
  * secondQuarterBio 0..1 boolean "Analítico 2º Trimestre"
  * thirdQuarterEco 0..1 boolean "Ecografia 3º Trimestre"
  * thirdQuarterBio 0..1 boolean "Analítico 3º Trimestre"
  * visits 0..1 integer "Nº de consultas"
  * intercurrences 0..1 string "Intercorrências"
  * locals 0..* BackboneElement "Dados acerca dos locais de seguimento"
    * type  0..1 Coding "Local do seguimento (0- Centro de saúde; 1- Hospital; 2- Obstetra privado; 3- Vigilância partilhado; 4-Outro)"
    * value  0..1 boolean "Indicação de seguimento"
    * reason 0..1 string "Motivo do seguimento"
* PregnancyType 1..1 Coding "Tipo de gravidez (“Simple”- Gravidez de um bebé; “Multiple”- Gravidez de gémeos)"
* twinNumber 1..1 string "Corresponde ao Número da criança / total de crianças. Exemplo: “1/2”"

Logical: NewBornLM
Title: "Recem-nascido (model)"
Description: "Logical model - Recem-nascido"
Characteristics: #can-be-target


* liveBirth 1..1 boolean "Identificação de nado vivo"
* gender 1..1 Coding "Sexo do recém- nascido (0 - Masculino; 1 - Feminino; 2 - Indeterminado)"
* length 1..1 decimal "Comprimento (cm) "
* deceased 0..1 dateTime "Data de falecimento (YYYY-MM-DD HH:MI:SS)"
* deathBirth 1..1 boolean "Identificação de nado morto"
* deathBirthDate 0..1 dateTime "Data da consulta de Alto Risco/Medicina Materno-Fetal (YYYY- MM-DD HH:MI:SS)"
* reanimated 1..1 boolean "Reanimação"
* cephalicPerimeter 1..1 decimal "Perímetro cefálico (cm)"
* weight 1..1 integer "Peso (gr)"
* apgarIndexFirstMinute 1..1 integer "Índice apgar ao 1º minuto"
* apgarIndexFifthMinute 1..1 integer "Índice apgar ao 5º minuto"
* apgarIndexTenthMinute 1..1 integer "Índice apgar ao 10º minuto"
* phototherapy 0..1 boolean "Fototerapia"
* malformations 0..* BackboneElement "Dados de malformações"
  * code 1..1 Coding "Codificação ICD9 da malformação"
  * description  0..1 string "Descrição da malformação"
* AdmissionNeonatology 0..1 boolean "Internamento em neonatologia"
* AdmissionNeonatologyReason 0..1 string "Motivo do internamento"
* AdmissionNeonatologyLocal 0..1 string "Local de internamento"
* transport 0..1 BackboneElement "Dados de transporte"
  * Neonatal  0..1 boolean "Transporte neonatal"
  * NeonatalDestination  0..1 string "Destino do transporte neonatal"
  * NeonatalReason  0..1 string "Motivo do não transporte neonatal"
  * InUtero  0..1 boolean "Transporte in útero"
  * InUteroProvanance  0..1 string "Proveniência do transporte"
  * InUteroReason  0..1 string "Motivo de não transporte in útero"
* screeningMetabolicDiseasesTaken 0..1 Coding "Rastreio de doenças metabólicas (0- Realizado; 1- Não realizado; 2- Marcado)"
* screeningMetabolicReason 0..1 string "Motivo para não realização do rastreio"
* screeningMetabolicDiseasesDate 0..1 dateTime "Data da marcação do rastreio"
* screeningCongenitalDiseases 0..1 boolean "Rastreio Cardiopatias Congénitas (0- Realizado; 1- Não realizado)"
* screeningCongenitalDiseasesChange 0..1 boolean "Se foi realizado rastreio cardiopatias congénitas, então: (0 – Sem alteração; 1 – Com alteração)"
* screeningCongenitalDiseasesObservations 0..1 string "Observações do rastreio de cardiopatias congénitas com alteração."
* screeningpupillaryReflection 0..1 boolean "Teste Reflexo pupilar (0- Realizado; 1- Não realizado)"
* screeningpupillaryReflectionChange 0..1 boolean "Se foi realizado rastreio Teste Reflexo pupilar, então: (0 – Sem alteração; 1 – Com alteração)"
* screeningpupillaryReflectionObservations 0..1 string "Observações do rastreio de Teste Reflexo pupilar com alteração."
* screeningHearing 1..1 BackboneElement "Rastreio auditivo neonatal universal"
  * type 0..1 Coding "Tipo de rastreio (0- Potenciais evocados auditivos de tronco cerebral; 1- Otoemissões acústicas; 2- Não realizado; 3- Potenciais evocados auditivos automáticos; 4-Marcado para)"
  * date 0..1 dateTime "Data de realização/marcação (YYYY-MM-DD)"
  * rightEar 0..1 boolean "Ouvido esquerdo examinado (0 – Com Alteração; 1 – Sem Alteração)"
  * leftEar 0..1 boolean "Ouvido esquerdo examinado (0 – Com Alteração; 1 – Sem Alteração)"
  * repeatDate 1..1 dateTime "Data de repetição (YYYY-MM-DD)"
* VHB 1..1 VaccineLM "Administração da vacina VHB"
* BCG 1..1 VaccineLM "Administração da vacina BCG"
* immunoglobulin 1..1 VaccineLM "Administração de imunoglubina"
* feedingUntilDischarge 0..1 Coding "Aleitamento até a alta hospitalar (0 - Materno; 1 - Misto; 2 - Artificial)"
* feedingFirstHour 0..1 boolean "Aleitamento materno na primeira hora de vida"
* individualHealthBulletinDelivered 0..1 dateTime "Data de entrega do boletim individual de saúde"
* childYoungHealthBulletinDelivered 0..1 dateTime "Data de entrega do boletim de saúde infantil e juvenil"
* bulletinDeliveryType 1..1 integer "Tipo de boletim entregue (0- Papel; 1- Digital; 2- Transferido sem BSIJ; 3 - Não entregue devido a Nado Morto ou Falecido)"
* riskAssessment 0..1 BackboneElement "Avaliação de risco e referenciação ao N(H)ACJR"
  * riskFactorsIdentified 0..1 integer "Fatores de risco (0- Individual; 1- Familiar; 2- Contexto social; 3- Inexistente)"
  * reference 0..1 boolean "Referenciação ao N(H)ACJR"
  * observations  0..1 string "Observações"
* Outpatient 0..1 BackboneElement "Consultas"
  * institution 0..1 string "Unidade de saúde da consulta"
  * date 0..1 dateTime "Data da consulta (YYYY-MM-DD HH:MI:SS)"
* confirmedDeceased 1..1 boolean "Identificação de falecimento"



Logical: motherDemographicsLM
Title: "Dados demográficos da mãe (model)"
Description: "Logical model - Dados demográficos da mãe"
Characteristics: #can-be-target



* healthcardNumber 1..1 integer "Nº de SNS da mãe"
* name 1..1 string "Nome da mãe"
* birthdate 1..1 dateTime "Data de nascimento (YYYY-MM-DD)"
* Age 1..1 integer "Idade da mãe"
* address 0..1 string "Morada"
* placeOfBirth 0..1 string "Local de nascimento"
* nationality 0..1 string "Nacionalidade"
* phone 0..1 string "Contacto(s) telefónico(s)"
* postalCode 0..1 string "Código postal da morada"
* countryOfBirth 0..1 string "País da naturalidade do utente"
* districtOfBirth 0..1 string "Distrito da naturalidade"
* countyOfBirth 0..1 string "Código concelho da naturalidade"
* parishOfBirth 0..1 string "Freguesia da naturalidade"
* districtAddress 0..1 string "Distrito da morada"
* countyAddress 0..1 string "Código concelho da morada"
* parishAddress 0..1 string "Freguesia da morada"