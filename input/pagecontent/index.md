  <blockquote class="stu-note">
    <p>The specification herewith documented is for the time being a proof of concept specification, and may not be used for any implementation purposes. 
    No liability can be inferred from the use or misuse of this specification, or its consequences.</p>
  </blockquote>


### Âmbito

O objetivo deste Guia de Implementação é especificar para todos os utilizadores a representação concretamente a "Notícia de Nascimento" em HL7 FHIR.
Respetivamente, este Guia de Implementação tem como foco a representação das comunicações em rede, estabelecidas entre unidades de saúde hospitalar e unidades de saúde dedicadas a cuidados primários nomeadamente na partilha de informações adjacente à "Notícia de Nascimento". Especialmente, incide sobre a passagem de informações através do canal de comunicação web desenvolvido pela SPMS, e aplicado através da sua WebAPI em unidades hospitalares sem rede de comunicação direta com os sistemas de informação centrais das unidades de cuidados de saúde, em Portugal.

No dia 1 de Setembro de 2016, foi lançado pelo Governo de Portugal o projeto "Notícia de Nascimento". Este projeto tem como objetivo agilizar de forma eficiente e eficaz o registo eletrónico de recém-nascidos nas unidades de cuidados hospitalares, através do preenchimento dos dados relativos ao recém-nascido e ao parto realizado, em formulário eletrónico adequado, melhorando a comunicação e partilha desses dados entre unidades hospitalares centrais e unidades locais de cuidados de saúde. Este projeto visa também permitir que qualquer recém-nascido tenha rapidamente um médico de família associado ao seu processo e registo clinico eletrónico. O registo do recém-nascido no Registo Nacional de Utentes do Serviço Nacional de Saúde (SNS) é após este processo, realizado de forma automática associando imediatamente um número nacional de utente do SNS.

A Legislação referente a este projeto pode ser consultada em:

* <a href="https://www.acss.min-saude.pt//wp-content/uploads/2016/12/Desp_10440_2016.pdf">Projeto Notícia Nascimento - Despacho n.º 10440/2016, de 19 de agosto</a>.

* <a href="https://www.acss.min-saude.pt//wp-content/uploads/2016/12/despacho_6744_2016.pdf">Registo de Recém-Nascido no Sistema Nacional de Saúde - Despacho n.º 6744/2016, de 23 de Maio</a>.

* <a href="https://www.acss.min-saude.pt//wp-content/uploads/2016/12/Lei_79_2015.pdf">Legislação sobre associação de médico de família a todos os Recém-Nascidos, nascidos em Portugal - Despacho n.º 79/2015, de 29 de Julho</a>.

### Descrição

O projeto "Notícia Nascimento" oferece a possibilidade de registar imediatamente todos os recém-nascidos e as informações referentes ao parto dos mesmos, comunicando e partilhando estas informações através de um formulário digital. Esta comunicação apresenta-se como uma ferramenta essencial na partilha de informações deste cariz, entre unidades de saúde hospitalar e unidades locais de cuidados de saúde. Esta ferramenta permite a maior e mais rápida prestação de cuidados de saúde ao recém-nascido, assim como comunicar alertas sobre o mesmo.
Este projeto foi desenvolvido e empregue pelo XXI Governo Constitucional de Portugal, no seu programa de cuidados de saúde tendo como objetivo desenvolver e melhorar a capacidade da sua rede de cuidados de saúde primários.
Este recurso permite a integração dos dados relativos ao recém-nascido e ao parto realizado na Plataforma de Dados de Saúde (PDS).
O desenvolvimento deste projeto e da "Notícia de Nascimento" tem como principal vantagem a criação automática de um Registo Eletrónico de Saúde da criança/bebé, através dos dados incluídos no formulário da "Notícia de Nascimento", assim como notificar o nascimento e o novo utente às unidades locais de cuidados de saúde. 
Após a partilha da notícia de nascimento, o registo pode ser consultado na área restrita a profissionais de saúde na Plataforma de Dados de Saúde (PDS), através do perfil da mãe ou através do perfil do recém-nascido (no caso de o recém-nascido já ter associado ao seu perfil um número de utente do Serviço Nacional de Saúde).


### WebAPI Manual

Detalhes sobre o desenvolvimento da WebAPI poderão ser consultados em <a href="https://spms.min-saude.pt/wp-content/uploads/2017/01/ET-PDS-WebAPI_v1.3.pdf">SPMS Website</a>.

### Authors and Contributors

| Role  | Name | Organization | Contact |
| --- | --- | --- | --- |
| **Primary Editor** | André Oliveira | ProChild CoLAB | andre.oliveira@prochildcolab.pt |
| **Primary Editor** | Samuel Frade | Virtual Care | samuel.frade@virtualcare.pt |
| **Primary Editor** | Tiago Costa | Virtual Care | tcosta@virtualcare.pt 
| **Contributor** | João Almeida | President, HL7 Portugal | joaofilipe90@gmail.com |

### Acknowledgements & Agradecimentos

Aviso 2022-C05i0101-02 Agendas/Alianças mobilizadoras para a reindustrialização,  Projeto nº C630926586-00465198. 

This work was financed by the project Health from Portugal (“Aviso 2022-C05i0101-02 Agendas/Alianças mobilizadoras para a reindustrialização,  Projeto nº C630926586-00465198”). 

<img src="funding.png" alt="An overview of access to resources"/>
<br clear="all"/>