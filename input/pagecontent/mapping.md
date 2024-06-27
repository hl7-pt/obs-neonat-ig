## MAPEAMENTO DAS VARIAVEIS “NOTICIA NASCIMENTO” VS. RECURSOS FHIR

O recurso disponibilizado tem por objetivo a integração das notícias de nascimento (NN) na Plataforma de Dados de Saúde (PDS).
O envio das NN tem como principal vantagem a criação automática do eBoletim Infantil/Juvenil recorrendo à informação introduzida na NN assim como o envio à respetiva unidade de saúde de uma notificação do nascimento em questão.
Após o envio da NN, esta poderá ser consultada através da PDS-Portal Profissional, no perfil da mãe ou no do recém-nascido (caso a NN seja enviada com o respetivo nº de SNS).


| Campo        | Tipo   de dados | Obrigatório | Descrição                                                        |
|--------------|-----------------|-------------|------------------------------------------------------------------|
| contact      | Contact         | Sim         | Estrutura   do episódio da notícia de nascimento                 |
| professional | Professional    | Sim         | Estrutura do profissional   envolvido na submissão da informação |
| birthNotice  | BirthNotice     | Sim         | Estrutura   da notícia de nascimento                             |



| Campo  | Tipo   de dados | Obrigatório | Descrição                                        |
|--------|-----------------|-------------|--------------------------------------------------|
| id     | texto           | Sim         | Identificador   do episódio                      |
| module | texto           | Sim         | Tipo de episódio   (CON/INT/URG/BLO/HDI/RAD/LAB) |


| Description      | FHIR resource |             | Attributes correspondent to each resource | Values associated with each attribute |
|------------------|---------------|-------------|-------------------------------------------|---------------------------------------|
| contact – id     |               | Observation | code                                      | undefined   – no codes found          |
|                  |               |             |                                           |                                       |
| contact – module |               | Observation | status                                    | CON/INT/URG/BLO/HDI/RAD/LAB           |



| Campo           | Tipo   de dados | Obrigatório | Descrição                                                      |
|-----------------|-----------------|-------------|----------------------------------------------------------------|
| Functionalgroup | Numerico        | Sim         | Grupo   funcional do profissional (5 – Medico, 4 – Enfermeiro) |
| license         | Numerico        | Sim         | Nº de ordem do profissional                                    |
| name            | Texto           | Sim         | Nome   do Clínico                                              |



| Description                    | FHIR   resource   | Attributes correspondent to each resource | Values associated with each attribute |
|--------------------------------|-------------------|-------------------------------------------|---------------------------------------|
| Professional – Functionalgroup | PractictionerRole | identifier                                | 5   – Medico, 4 – Enfermeiro          |
|                                |                   |                                           |                                       |


| Description            | FHIR resource |               | Attributes correspondent to each resource | Values associated with each attribute |
|------------------------|---------------|---------------|-------------------------------------------|---------------------------------------|
| Professional - license |               | Practictioner | identifier                                | Nº de   ordem do Profissional         |
|                        |               |               |                                           |                                       |
| Professional - name    |               | Practictioner | name                                      | Nome do clínico                       |



| Campo                         | Tipo   de dados               | Obrigatório | Descrição                                                                                                                                        |
|-------------------------------|-------------------------------|-------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| owner                         | Texto                         | Sim         | Identifica   se a notícia de nascimento é associada ao bebé ou à mãe (“descendant” – caso   bébé tenha SNS; “self” – caso só possuir SNS da mãe) |
| code                          | Numérico                      | Sim         | Identificador da Instituição na   PDS                                                                                                            |
| maternity                     | Maternity                     | Sim         | Dados   da maternidade                                                                                                                           |
| destination                   | Destination                   | Sim         | Dados da inscrição nos cuidados de   saúde primários                                                                                             |
| motherDemographics            | MotherDemographics            | Sim         | Dados   demográficos da mãe                                                                                                                      |
| pregnancy                     | Pregnancy                     | Não         | Dados da gravidez e cumprimento do   esquema de vigilância pré-natal                                                                             |
| birth                         | Birth                         | Sim         | Dados   do parto                                                                                                                                 |
| puerperium                    | Puerperium                    | Sim         | Dados do puerpério até à alta                                                                                                                    |
| newborn                       | Newborn                       | Sim         | Dados   do recém-nascido                                                                                                                         |
| puerperiumReview              | PuerperiumReview              | Não         | Dados da revisão do puerpério                                                                                                                    |
| childHealthSurveillance       | ChildHealthSurveillance       | Não         | Dados   da vigilância em saúde infantil                                                                                                          |
| letterWithClinicalInformation | LetterWithClinicalInformation | Não         | Dados da informação clínica   suplementar                                                                                                        |
| professionals                 | Lista&lt;Professional&gt;     | Não         | Lista   de profissionais envolvidos no registo da NN                                                                                             |



| Description                   | FHIR   resource   | Attributes correspondent to each resource | Values associated with each attribute                                                            |
|-------------------------------|-------------------|-------------------------------------------|--------------------------------------------------------------------------------------------------|
| BirthNotice - owner           | Observation       | Subject                                   | Identifica   se a noticia de nascimento é associada à mãe ou ao bébé ( “descendant” ou   “self”) |
| code                          | HealthcareService | Identifier                                | Identificador da instituição na   PDS                                                            |
| maternity                     | Patient           |                                           | Dados   da maternidade                                                                           |
| destination                   | Patient           | managingOrganization                      | Dados da inscrição nos cuidados de   saúde primáios                                              |
| motherDemographics            | Patient           |                                           | Dados   demográficos da mãe                                                                      |
| pregnancy                     | Observation       |                                           | Dados da gravidez e do cumprimento   do esquema de vigilância pré-natal                          |
| birth                         | Observation       |                                           | Dados   do parto                                                                                 |
| puerperium                    | Observation       |                                           | Dados do puerpério atá alta                                                                      |
| newborn                       | Patient           |                                           | Dados   do recém-nascido                                                                         |
| puerperiumReview              | Observation       |                                           | Dados da revisão do puerperium                                                                   |
| childHealthSurveillance       | Patient           |                                           | Dados   da vigilância de saúde infantil                                                          |
| letterWithClinicalInformation | Observation       |                                           | Dados de informação clinica   suplementar                                                        |
| professionals                 | Group             | member                                    | Lista   de profissionais envolvidos no registo da NN                                             |


| Campo       | Tipo   de dados | Obrigatório | Descrição                         |
|-------------|-----------------|-------------|-----------------------------------|
| institution | texto   (100)   | Sim         | Nome   da instituição/maternidade |
| service     | texto (50)      | Sim         | Serviço da instituição            |


| Description               | FHIR resource |          | Attributes correspondent to each resource | Values associated with each attribute |
|---------------------------|---------------|----------|-------------------------------------------|---------------------------------------|
| Maternity –   institution |               | Location | name                                      | Nome   da instituição/maternidade     |
| Maternity – service       |               | Location | description                               | Serviço da instituição                |



| Campo            | Tipo   de dados | Obrigatório | Descrição                                |
|------------------|-----------------|-------------|------------------------------------------|
| headquarters     | Headquarters    | Sim         | Dados   da unidade de saúde de inscrição |
| ACES             | Texto (50)      | Não         | Agrupamento do centro de saúde           |
| healthcardNumber | Numérico        | Não         | Nº   de SNS do recém-nascido             |
| extensão         | Texto (50)      | Não         | Extensão de Saúde                        |
| familyDoctor     | Texto   (50)    | Não         | Nome   Clínico do Médico de Família      |
| familyNurse      | Texto (50)      | Não         | Nome Clínico do Enfermeiro de   Família  |


| Description                    | FHIR resource |               | Attributes correspondent to each resource | Values associated with each attribute    |
|--------------------------------|---------------|---------------|-------------------------------------------|------------------------------------------|
| maternity -   headquarters     |               | Organization  |                                           | Dados   da unidade de saúde de inscrição |
| Maternity - ACES               |               | Organization  |                                           | Agrupamento do Centro de Saúde           |
| Maternity -   healthcardNumber |               | RelatedPerson | identifier                                | Nº   SNS do Recém-Nascido                |
| Maternity - extensão           |               | ?             | ?                                         | Extensão de Saúde?                       |
| Maternity -   familyDoctor     |               | Practictioner | name                                      | Nome   do medico de familia              |
| Maternity - familyNurse        |               | Practictioner | name                                      | Nome do Enfermeiro de Familia            |