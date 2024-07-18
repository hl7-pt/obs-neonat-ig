  <blockquote class="stu-note">
    <p>The specification herewith documented is for the time being a proof of concept specification, and may not be used for any implementation purposes. 
    No liability can be inferred from the use or misuse of this specification, or its consequences.</p>
  </blockquote>


### Visão Geral
Guias de Implementação FHIR - HL7 Portugal será um centro de referência para a padronização e interoperabilidade de dados de
saúde em Portugal. Este portal centralizará todos os guias de implementação FHIR, oferecendo orientação e suporte aos diferentes
sistemas de saúde no país. A iniciativa visa promover a adoção de padrões internacionais, garantindo a troca eficiente e segura de
informações de saúde.

**Objetivos do Portal?**
1. Centralização da Informação: Reunir todos os guias de implementação FHIR utilizados em Portugal num único local,
facilitando o acesso e consulta por profissionais de saúde, desenvolvedores e instituições.
2. Promoção de Padrões: Incentivar a adoção dos padrões FHIR em Portugal, promovendo a interoperabilidade e a
comunicação eficiente entre diferentes sistemas de saúde.
3. Suporte e Orientação: Oferecer orientação técnica e suporte prático para a implementação dos guias FHIR, ajudando as
instituições a adaptar-se aos padrões.
4. Atualização Contínua: Manter os guias atualizados conforme as evoluções do padrão FHIR e as necessidades do sistema
de saúde português


  
**Funcionalidades do Portal**
1. Biblioteca de Guias de Implementação: Acesso organizado e fácil aos diversos guias de implementação FHIR,
categorizados por área e tipo de dado clínico.
2. Documentação Técnica: Informações detalhadas sobre cada guia, incluindo perfis de recursos, extensões, exemplos de
uso e cenários de implementação.
3. Recursos Educativos: Tutoriais, webinars e materiais de formação para capacitar profissionais e desenvolvedores na
utilização dos guias FHIR.
4. Fórum de Suporte: Espaço para discussão e troca de experiências entre utilizadores, com moderação de especialistas em
FHIR.
5. Notícias e Atualizações: Informações sobre novas versões dos guias, eventos, e outras novidades relevantes para a
comunidade de saúde e TI em Portugal.
6. Área de Downloads: Disponibilização de arquivos e ferramentas que facilitam a implementação dos guias, como exemplos
de código e esquemas de dados.
7. Conformidade Perfis: Capacidade de validar a conformidade dos desenvolvimentos de acordo com os Perfis FHIR.

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
| **Primary Editor** | André Oliveira | ProChild CoLAB | andre.oliveira __at__ prochildcolab.pt |
| **Primary Editor** | Samuel Frade | Virtual Care | samuel.frade __at__ virtualcare.pt |
| **Primary Editor** | Tiago Costa | Virtual Care | tcosta __at__ virtualcare.pt 
| **Contributor** | João Almeida |  HL7 Portugal | joaofilipe90 __at__ gmail.com |

### Acknowledgements & Agradecimentos

Aviso 2022-C05i0101-02 Agendas/Alianças mobilizadoras para a reindustrialização,  Projeto nº C630926586-00465198. 

This work was financed by the project Health from Portugal (“Aviso 2022-C05i0101-02 Agendas/Alianças mobilizadoras para a reindustrialização,  Projeto nº C630926586-00465198”). 

<img src="funding.png" alt="An overview of access to resources"/>
<br clear="all"/>