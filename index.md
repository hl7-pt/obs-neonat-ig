# Home Page - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v1.0.0

* [**Table of Contents**](toc.md)
* **Home Page**

## Home Page

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/ImplementationGuide/hl7.fhir.pt.obs-neonat | *Version*:1.0.0 |
| Active as of 2026-10-12 | *Computable Name*:NoticiaNascimentoIG |

> A especificação aqui documentada é, por enquanto, uma especificação de prova de conceito e não pode ser usada para fins de implementação. Nenhuma responsabilidade pode ser inferida do uso ou mau uso desta especificação, ou de suas consequências.

### Âmbito

O objetivo deste Guia de Implementação é especificar para todos os utilizadores a representação concretamente a "Notícia de Nascimento" em HL7 FHIR. Respetivamente, este Guia de Implementação tem como foco a representação das comunicações em rede, estabelecidas entre unidades de saúde hospitalar e unidades de saúde dedicadas a cuidados primários nomeadamente na partilha de informações adjacente à "Notícia de Nascimento". Especialmente, incide sobre a passagem de informações através do canal de comunicação web desenvolvido pela SPMS, e aplicado através da sua WebAPI em unidades hospitalares sem rede de comunicação direta com os sistemas de informação centrais das unidades de cuidados de saúde, em Portugal.

No dia 1 de Setembro de 2016, foi lançado pelo Governo de Portugal o projeto "Notícia de Nascimento". Este projeto tem como objetivo agilizar de forma eficiente e eficaz o registo eletrónico de recém-nascidos nas unidades de cuidados hospitalares, através do preenchimento dos dados relativos ao recém-nascido e ao parto realizado, em formulário eletrónico adequado, melhorando a comunicação e partilha desses dados entre unidades hospitalares centrais e unidades locais de cuidados de saúde. Este projeto visa também permitir que qualquer recém-nascido tenha rapidamente um médico de família associado ao seu processo e registo clinico eletrónico. O registo do recém-nascido no Registo Nacional de Utentes do Serviço Nacional de Saúde (SNS) é após este processo, realizado de forma automática associando imediatamente um número nacional de utente do SNS.

A Legislação referente a este projeto pode ser consultada em:

* [Projeto Notícia Nascimento - Despacho n.º 10440/2016, de 19 de agosto](https://www.acss.min-saude.pt//wp-content/uploads/2016/12/Desp_10440_2016.pdf).
* [Registo de Recém-Nascido no Sistema Nacional de Saúde - Despacho n.º 6744/2016, de 23 de Maio](https://www.acss.min-saude.pt//wp-content/uploads/2016/12/despacho_6744_2016.pdf).
* [Legislação sobre associação de médico de família a todos os Recém-Nascidos, nascidos em Portugal - Despacho n.º 79/2015, de 29 de Julho](https://www.acss.min-saude.pt//wp-content/uploads/2016/12/Lei_79_2015.pdf).
* [Noticia de Nascimento Digital](https://www.spp.pt/UserFiles/file/EVIDENCIAS%20EM%20PEDIATRIA/013_2015_JULHO2015.pdf)
* [Despacho n.º 1774-A/2017, de 24 de fevereiro [Define regras de organização e mecanismos de gestão referentes ao Registo Nacional de Utentes (RNU), bem como estabelece os critérios e os procedimentos de organização e atualização das listas de utentes nos Agrupamentos de Centros de Saúde (ACeS) e nas suas unidades funcionais]](https://diariodarepublica.pt/dr/detalhe/despacho/1774-a-2017-106531278)

### Descrição

O projeto "Notícia Nascimento" oferece a possibilidade de registar imediatamente todos os recém-nascidos e as informações referentes ao parto dos mesmos, comunicando e partilhando estas informações através de um formulário digital. Esta comunicação apresenta-se como uma ferramenta essencial na partilha de informações deste cariz, entre unidades de saúde hospitalar e unidades locais de cuidados de saúde. Esta ferramenta permite a maior e mais rápida prestação de cuidados de saúde ao recém-nascido, assim como comunicar alertas sobre o mesmo. Este projeto foi desenvolvido e empregue pelo XXI Governo Constitucional de Portugal, no seu programa de cuidados de saúde tendo como objetivo desenvolver e melhorar a capacidade da sua rede de cuidados de saúde primários. Este recurso permite a integração dos dados relativos ao recém-nascido e ao parto realizado na Plataforma de Dados de Saúde (PDS). O desenvolvimento deste projeto e da "Notícia de Nascimento" tem como principal vantagem a criação automática de um Registo Eletrónico de Saúde da criança/bebé, através dos dados incluídos no formulário da "Notícia de Nascimento", assim como notificar o nascimento e o novo utente às unidades locais de cuidados de saúde. Após a partilha da notícia de nascimento, o registo pode ser consultado na área restrita a profissionais de saúde na Plataforma de Dados de Saúde (PDS), através do perfil da mãe ou através do perfil do recém-nascido (no caso de o recém-nascido já ter associado ao seu perfil um número de utente do Serviço Nacional de Saúde).

### Authors and Contributors

| | | | |
| :--- | :--- | :--- | :--- |
| **Primary Editor** | André Oliveira | ProChild CoLAB | andre.oliveira**at**prochildcolab.pt |
| **Primary Editor** | Samuel Frade | Virtual Care | samuel.frade**at**virtualcare.pt |
| **Primary Editor** | Tiago Costa | Virtual Care | tcosta**at**virtualcare.pt |
| **Primary Editor** | João Almeida | HL7 Portugal | joaofilipe90**at**gmail.com |
| **Primary Editor** | Joana Cunha | HL7 Portugal | [joana](https://chat.fhir.org/#user/664024) |
| **Primary Editor** | Daniel Rodrigues | Virtual Care | daniel**at**virtualcare.pt |

### Acknowledgements & Agradecimentos

Aviso 2022-C05i0101-02 Agendas/Alianças mobilizadoras para a reindustrialização, Projeto nº C630926586-00465198.

This work was financed by the project Health from Portugal (“Aviso 2022-C05i0101-02 Agendas/Alianças mobilizadoras para a reindustrialização, Projeto nº C630926586-00465198”).

![](funding.png) 



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.fhir.pt.obs-neonat",
  "url" : "https://hl7.pt/fhir/NoticiaNascimento/ImplementationGuide/hl7.fhir.pt.obs-neonat",
  "version" : "1.0.0",
  "name" : "NoticiaNascimentoIG",
  "title" : "HL7 PT FHIR Implementation Guide: Noticia de Nascimento",
  "status" : "active",
  "date" : "2026-10-12",
  "publisher" : "HL7 Portugal",
  "contact" : [{
    "name" : "HL7 Portugal",
    "telecom" : [{
      "system" : "url",
      "value" : "http://hl7.pt"
    },
    {
      "system" : "email",
      "value" : "info@hl7.pt"
    }]
  },
  {
    "name" : "HL7 Portugal",
    "telecom" : [{
      "system" : "email",
      "value" : "geral@hl7.pt",
      "use" : "work"
    }]
  }],
  "description" : "Example IG exercises many of the fields in a SUSHI configuration.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "PT",
      "display" : "Portugal"
    }]
  }],
  "packageId" : "hl7.fhir.pt.obs-neonat",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.4.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.3.0"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "STU1"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "produce-jekyll-data"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://hl7.pt/fhir/NoticiaNascimento/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "grouping" : [{
      "id" : "documento",
      "name" : "Documento: Notícia de Nascimento",
      "description" : "Composition que estrutura o documento e as suas secções."
    },
    {
      "id" : "mae-gravidez",
      "name" : "Mãe e gravidez",
      "description" : "Dados demográficos da mãe, da gravidez e do puerpério."
    },
    {
      "id" : "parto",
      "name" : "Parto e episódios",
      "description" : "Informação do parto e episódio(s) de internamento."
    },
    {
      "id" : "recem-nascido",
      "name" : "Recém-nascido: identificação, medidas e observações",
      "description" : "Perfil do recém-nascido, medidas ao nascer, avaliações e rastreios neonatais."
    },
    {
      "id" : "vacinacao",
      "name" : "Vacinação",
      "description" : "Vacinas e imunoglobulina administradas."
    },
    {
      "id" : "seguimento",
      "name" : "Seguimento e alta",
      "description" : "Boletins, carta de informação clínica, vigilância de saúde infantil e transporte."
    },
    {
      "id" : "organizacoes-profissionais",
      "name" : "Organizações e profissionais",
      "description" : "Instituições de saúde e profissionais envolvidos no registo."
    },
    {
      "id" : "extensoes",
      "name" : "Extensões"
    },
    {
      "id" : "modelos-logicos",
      "name" : "Modelos lógicos",
      "description" : "Modelo de dados da Notícia de Nascimento (API SPMS) usado nos mapeamentos."
    },
    {
      "id" : "terminologia",
      "name" : "Terminologia",
      "description" : "CodeSystems e ValueSets definidos neste guia."
    },
    {
      "id" : "exemplos",
      "name" : "Exemplos",
      "description" : "Exemplo completo (Bundle documento) e recursos que o compõem."
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-apgar-example.html"
      }],
      "reference" : {
        "reference" : "Observation/apgar-example"
      },
      "name" : "apgar-example",
      "description" : "Exemplo de Apgar",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ApgarScore",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Procedure-BirthNN.html"
      }],
      "reference" : {
        "reference" : "Procedure/BirthNN"
      },
      "name" : "BirthNN",
      "description" : "Exemplo nascimento",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Birth",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-body-weigth-example.html"
      }],
      "reference" : {
        "reference" : "Observation/body-weigth-example"
      },
      "name" : "body-weigth-example",
      "description" : "Exemplo peso recem-nascido",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthWeight",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-cephalic-perimeter-example.html"
      }],
      "reference" : {
        "reference" : "Observation/cephalic-perimeter-example"
      },
      "name" : "cephalic-perimeter-example",
      "description" : "Exemplo perimetro cefálico",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthHeadCircumference",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-childhealthsurveilance-ex.html"
      }],
      "reference" : {
        "reference" : "Organization/childhealthsurveilance-ex"
      },
      "name" : "childhealthsurveilance-ex",
      "description" : "Exemplo da vigilância de saúde infantil",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/HealthcareOrganization",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-documentclassificationCS.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/documentclassificationCS"
      },
      "name" : "Classficação de documentos CodeSystem",
      "description" : "Classficação de documentos CodeSystem",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-congenital-example.html"
      }],
      "reference" : {
        "reference" : "Observation/congenital-example"
      },
      "name" : "congenital-example",
      "description" : "Exemplo de registo de doença congénita",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Congenital",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ContactLM.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ContactLM"
      },
      "name" : "Contacto (modelo)",
      "description" : "Modelo Lógico - Contacto",
      "exampleBoolean" : false,
      "groupingId" : "modelos-logicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DestinationLM.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DestinationLM"
      },
      "name" : "Dados da inscrição nos cuidados de saúde primários (modelo)",
      "description" : "Modelo Lógico - Dados da inscrição nos cuidados de saúde primários",
      "exampleBoolean" : false,
      "groupingId" : "modelos-logicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MotherDemographicsLM.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MotherDemographicsLM"
      },
      "name" : "Dados demográficos da mãe (modelo)",
      "description" : "Modelo Lógico - Dados demográficos da mãe",
      "exampleBoolean" : false,
      "groupingId" : "modelos-logicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-destino.html"
      }],
      "reference" : {
        "reference" : "Organization/destino"
      },
      "name" : "destino",
      "description" : "Exemplo destino",
      "exampleBoolean" : true,
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-InfosGravidezCS.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/InfosGravidezCS"
      },
      "name" : "Elementos adicionais de informação gravidez CodeSystem",
      "description" : "Elementos adicionais de informação gravidez CodeSystem - Criado por falta de um código internacional ideal",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-bulletin-delivery-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/bulletin-delivery-vs"
      },
      "name" : "Envio de boletim ValueSet",
      "description" : "Envio de boletim ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-episodio.html"
      }],
      "reference" : {
        "reference" : "Encounter/episodio"
      },
      "name" : "episodio",
      "description" : "Exemplo episódio contacto",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Contact",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Encounter-episodioInt.html"
      }],
      "reference" : {
        "reference" : "Encounter/episodioInt"
      },
      "name" : "episodioInt",
      "description" : "Exemplo internamento",
      "exampleBoolean" : true,
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Bundle-exemploNN.html"
      }],
      "reference" : {
        "reference" : "Bundle/exemploNN"
      },
      "name" : "exemploNN",
      "description" : "Exemplo Noticia Nascimento",
      "exampleBoolean" : true,
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-transport-information.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/transport-information"
      },
      "name" : "Extensão sobre informação sobre Transportes",
      "description" : "Extensão sobre informação sobre Transportes",
      "exampleBoolean" : false,
      "groupingId" : "extensoes"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-gestational-age-example.html"
      }],
      "reference" : {
        "reference" : "Observation/gestational-age-example"
      },
      "name" : "gestational-age-example",
      "description" : "Exemplo idade gestacional (38 semanas e 4 dias)",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/GestationalAge"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PregnancyLM.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PregnancyLM"
      },
      "name" : "Gravidez (modelo)",
      "description" : "Modelo Lógico - Gravidez",
      "exampleBoolean" : false,
      "groupingId" : "modelos-logicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-professional-role-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/professional-role-vs"
      },
      "name" : "Grupo funcional do profissional ValueSet",
      "description" : "Grupo funcional do profissional de saúde envolvido na notícia de nascimento",
      "exampleBoolean" : false,
      "groupingId" : "organizacoes-profissionais"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Organization-inst.html"
      }],
      "reference" : {
        "reference" : "Organization/inst"
      },
      "name" : "inst",
      "description" : "Exemplo Instituição",
      "exampleBoolean" : true,
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-length-example.html"
      }],
      "reference" : {
        "reference" : "Observation/length-example"
      },
      "name" : "length-example",
      "description" : "Exemplo altura recem-nascido",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/BirthLength",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-mother.html"
      }],
      "reference" : {
        "reference" : "Patient/mother"
      },
      "name" : "mother",
      "description" : "Exemplo Mãe",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Mother",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-immunization-status-reason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/immunization-status-reason-vs"
      },
      "name" : "Motivos de não vacinação ValueSet",
      "description" : "Motivos para a não administração de uma vacina (Immunization.statusReason), de acordo com o Catálogo Português de Vacinas (CPV).",
      "exampleBoolean" : false,
      "groupingId" : "vacinacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Patient-newBornNN.html"
      }],
      "reference" : {
        "reference" : "Patient/newBornNN"
      },
      "name" : "newBornNN",
      "description" : "Exemplo recém-nascido",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Child",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Composition-compNN.html"
      }],
      "reference" : {
        "reference" : "Composition/compNN"
      },
      "name" : "Noticia de Nascimento de recém-nascido",
      "description" : "Exemplo Composition",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NoticiaLM.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoticiaLM"
      },
      "name" : "Notícia de Nascimento (modelo)",
      "description" : "Modelo Lógico - Notícia de Nascimento",
      "exampleBoolean" : false,
      "groupingId" : "modelos-logicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-BirthNoticeLM.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BirthNoticeLM"
      },
      "name" : "Notícia de Nascimento - informação core (modelo)",
      "description" : "Modelo Lógico - Informações Core da Noticia",
      "exampleBoolean" : false,
      "groupingId" : "modelos-logicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "PractitionerRole-ObsRole.html"
      }],
      "reference" : {
        "reference" : "PractitionerRole/ObsRole"
      },
      "name" : "ObsRole",
      "exampleBoolean" : true,
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Mother.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Mother"
      },
      "name" : "Perfil da mãe",
      "description" : "Perfil da mãe",
      "exampleBoolean" : false,
      "groupingId" : "mae-gravidez"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HealthcareOrganization.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HealthcareOrganization"
      },
      "name" : "Perfil da organização de saúde",
      "description" : "Organização de saúde (hospital/maternidade, unidade de cuidados de saúde primários, etc.) referenciada na notícia de nascimento",
      "exampleBoolean" : false,
      "groupingId" : "organizacoes-profissionais"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-BirthLength.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BirthLength"
      },
      "name" : "Perfil de Comprimento ao nascer",
      "description" : "Comprimento do recém-nascido ao nascer, em centímetros. Mantém o código LOINC 8302-2 do perfil de sinais vitais e acrescenta o código específico 89269-5 (Body height Measured --at birth).",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-GestationalAge.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/GestationalAge"
      },
      "name" : "Perfil de Idade gestacional",
      "description" : "Idade gestacional estimada, registada como quantidade em UCUM. Uma idade gestacional em semanas e dias (ex.: 38 semanas e 4 dias) deve ser convertida para dias (270 d).",
      "exampleBoolean" : false,
      "groupingId" : "mae-gravidez"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ApgarScore.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ApgarScore"
      },
      "name" : "Perfil de informação clinicas - apgarScore",
      "description" : "Perfil de informação clinicas - apgarScore",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Malformation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Malformation"
      },
      "name" : "Perfil de informação clinicas - Dados de malformações",
      "description" : "Perfil de informação clinicas - Dados de malformações",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Phototherapy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Phototherapy"
      },
      "name" : "Perfil de informação clinicas - Fototerapia",
      "description" : "Perfil de informação clinicas - Fototerapia",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ScreeningRequest.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ScreeningRequest"
      },
      "name" : "Perfil de informação clinicas - Marcação de rastreio neonatal",
      "description" : "Perfil de informação clinicas - Marcação de rastreio neonatal (auditivo ou de doenças metabólicas) ainda não realizado e marcado para data futura",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Hearingscreen.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Hearingscreen"
      },
      "name" : "Perfil de informação clinicas - Rastreio auditivo neonatal universal",
      "description" : "Perfil de informação clinicas - Rastreio auditivo neonatal universal",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Congenital.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Congenital"
      },
      "name" : "Perfil de informação clinicas - Rastreio Cardiopatias Congénitas",
      "description" : "Perfil de informação clinicas - Rastreio Cardiopatias Congénitas",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Metabolic.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Metabolic"
      },
      "name" : "Perfil de informação clinicas - Rastreio de doenças metabólicas",
      "description" : "Perfil de informação clinicas - Rastreio de doenças metabólicas",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Pupillary.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Pupillary"
      },
      "name" : "Perfil de informação clinicas - Teste Reflexo pupilar",
      "description" : "Perfil de informação clinicas - Teste Reflexo pupilar",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Pregnancy.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Pregnancy"
      },
      "name" : "Perfil de Informação de gravidez",
      "description" : "Perfil de Informação de gravidez",
      "exampleBoolean" : false,
      "groupingId" : "mae-gravidez"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Birth.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Birth"
      },
      "name" : "Perfil de Informação do Parto",
      "description" : "Perfil de Informação do Parto",
      "exampleBoolean" : false,
      "groupingId" : "parto"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Newbornriskassessment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Newbornriskassessment"
      },
      "name" : "Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR",
      "description" : "Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Bulletindelivery.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Bulletindelivery"
      },
      "name" : "Perfil de Informação sobre entrega de boletim",
      "description" : "Perfil de Informação sobre entrega de boletim",
      "exampleBoolean" : false,
      "groupingId" : "seguimento"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Transport.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Transport"
      },
      "name" : "Perfil de informação sobre Transportes",
      "description" : "Perfil de informação sobre Transportes",
      "exampleBoolean" : false,
      "groupingId" : "seguimento"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-BirthHeadCircumference.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BirthHeadCircumference"
      },
      "name" : "Perfil de Perímetro cefálico ao nascer",
      "description" : "Perímetro cefálico do recém-nascido ao nascer, em centímetros. Mantém o código LOINC 9843-4 do perfil de sinais vitais e acrescenta o código específico 8290-9 (Head Occipital-frontal circumference --at birth- by Tape measure).",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-BirthWeight.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/BirthWeight"
      },
      "name" : "Perfil de Peso ao nascer",
      "description" : "Peso do recém-nascido ao nascer, em gramas. Mantém o código LOINC 29463-7 do perfil de sinais vitais e acrescenta o código específico 8339-4 (Birth weight Measured).",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-CompositionNoticia.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/CompositionNoticia"
      },
      "name" : "Perfil do recurso Composition que cria as secções da noticia nascimento",
      "description" : "Perfil do recurso Composition que cria as secções da noticia nascimento",
      "exampleBoolean" : false,
      "groupingId" : "documento"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Child.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Child"
      },
      "name" : "Perfil do recém-nascido",
      "description" : "Perfil do recém-nascido",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ProfessionalRole.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ProfessionalRole"
      },
      "name" : "Perfil para a função do profissional de saúde",
      "description" : "Função desempenhada pelo profissional de saúde (ex.: médico, enfermeiro) no registo da notícia de nascimento",
      "exampleBoolean" : false,
      "groupingId" : "organizacoes-profissionais"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Professional.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Professional"
      },
      "name" : "Perfil para o profissional de saúde",
      "description" : "Perfil para o profissional de saúde",
      "exampleBoolean" : false,
      "groupingId" : "organizacoes-profissionais"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Puerperium.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Puerperium"
      },
      "name" : "Perfil para registar dados do puerpério até à alta",
      "description" : "Perfil para registar dados do puerpério até à alta",
      "exampleBoolean" : false,
      "groupingId" : "mae-gravidez"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Letter.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Letter"
      },
      "name" : "Perfil sobre Elaboração de carta com informação clínica suplementar",
      "description" : "Perfil sobre Elaboração de carta com informação clínica suplementar",
      "exampleBoolean" : false,
      "groupingId" : "seguimento"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Contact.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Contact"
      },
      "name" : "Perfil sobre episódio da notícia de nascimento",
      "description" : "Perfil sobre episódio da notícia de nascimento",
      "exampleBoolean" : false,
      "groupingId" : "parto"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-Vaccination.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Vaccination"
      },
      "name" : "Perfil sobre Informação sobre vacinação",
      "description" : "Perfil sobre Informação sobre vacinação",
      "exampleBoolean" : false,
      "groupingId" : "vacinacao"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pregnancyNN.html"
      }],
      "reference" : {
        "reference" : "Observation/pregnancyNN"
      },
      "name" : "pregnancyNN",
      "description" : "Exemplo gravidez",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Pregnancy",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ProfessionalLM.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ProfessionalLM"
      },
      "name" : "Professional (Modelo)",
      "description" : "Modelo Lógico - Professional",
      "exampleBoolean" : false,
      "groupingId" : "modelos-logicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-puerperium-ex.html"
      }],
      "reference" : {
        "reference" : "Observation/puerperium-ex"
      },
      "name" : "puerperium-ex",
      "description" : "Exemplo de puerpério",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Puerperium",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Observation-pupillary-example.html"
      }],
      "reference" : {
        "reference" : "Observation/pupillary-example"
      },
      "name" : "pupillary-example",
      "description" : "Exemplo de análise pupilar",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Pupillary",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-neonatal-screening-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/neonatal-screening-vs"
      },
      "name" : "Rastreios neonatais marcáveis ValueSet",
      "description" : "Rastreios neonatais que podem ser marcados para data futura na notícia de nascimento (ServiceRequest.code).",
      "exampleBoolean" : false,
      "groupingId" : "recem-nascido"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-NewBornLM.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NewBornLM"
      },
      "name" : "Recem-nascido (modelo)",
      "description" : "Modelo Lógico - Recem-nascido",
      "exampleBoolean" : false,
      "groupingId" : "modelos-logicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ReferenciaNHACJR.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ReferenciaNHACJR"
      },
      "name" : "ReferenciaNHACJR",
      "description" : "Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR)",
      "exampleBoolean" : false,
      "groupingId" : "extensoes"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-risco-gravidez-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/risco-gravidez-vs"
      },
      "name" : "Risco de gravidez ValueSet",
      "description" : "Risco de gravidez ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-document-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/document-type-vs"
      },
      "name" : "Tipo de documento ValueSet",
      "description" : "Tipo de documento ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-tipo-gravidez-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/tipo-gravidez-vs"
      },
      "name" : "Tipo de gravidez ValueSet",
      "description" : "Tipo de gravidez ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-tipo-local-seguimento-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/tipo-local-seguimento-vs"
      },
      "name" : "Tipo de local de seguimento ValueSet",
      "description" : "Tipo de local de seguimento (revisão do puerpério e vigilância de saúde infantil). Mapeamento dos valores do formulário da norma: USF/UCSP → 45131006; No Hospital → 224885007 (consulta externa hospitalar). 'Privado' não tem correspondência adequada (o setor público/privado é uma característica do prestador e não um tipo de local); 'Outro' regista-se em type.text; 'Não sabe' representa ausência de informação e regista-se com a extensão data-absent-reason, não como código deste value set.",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-newborn-congenital-anomalies-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/newborn-congenital-anomalies-vs"
      },
      "name" : "Tipos de doença congénita ValueSet",
      "description" : "Tipos de doença congénita ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-tipo-episodio-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/tipo-episodio-cs"
      },
      "name" : "Tipos de episódio CodeSystem",
      "description" : "Tipos de episódio CodeSystem",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-episode-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/episode-type-vs"
      },
      "name" : "Tipos de episódio ValueSet",
      "description" : "Tipos de episódio ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-puerperium-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/puerperium-vs"
      },
      "name" : "Tipos de outcome de puerpério ValueSet",
      "description" : "Tipos de outcome de puerpério ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-tipo-parto-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/tipo-parto-vs"
      },
      "name" : "Tipos de parto ValueSet",
      "description" : "Tipos de parto ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-newbornriskassessment-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/newbornriskassessment-vs"
      },
      "name" : "Tipos de risco para avaliação de recém-nascidos ValueSet",
      "description" : "Tipos de risco para avaliação de recém-nascidos ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-transport-type-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/transport-type-vs"
      },
      "name" : "Tipos de transporte de recém-nascido ValueSet",
      "description" : "Tipos de transporte de recém-nascido ValueSet",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-idade-gestacional-unidades-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/idade-gestacional-unidades-vs"
      },
      "name" : "Unidades da idade gestacional",
      "description" : "Unidades UCUM permitidas para a idade gestacional (semanas ou dias)",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-vaccNN-antid.html"
      }],
      "reference" : {
        "reference" : "Immunization/vaccNN-antid"
      },
      "name" : "vaccNN-antid",
      "description" : "Exemplo vacina ANTI-D",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Vaccination",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-vaccNN-bcg.html"
      }],
      "reference" : {
        "reference" : "Immunization/vaccNN-bcg"
      },
      "name" : "vaccNN-bcg",
      "description" : "Exemplo vacina BCG",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Vaccination",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "Immunization-vaccNN-hepb.html"
      }],
      "reference" : {
        "reference" : "Immunization/vaccNN-hepb"
      },
      "name" : "vaccNN-hepb",
      "description" : "Exemplo vacina HEPB",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Vaccination",
      "groupingId" : "exemplos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-VaccineLM.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/VaccineLM"
      },
      "name" : "Vacina (modelo)",
      "description" : "Modelo Lógico - Vacina",
      "exampleBoolean" : false,
      "groupingId" : "modelos-logicos"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vacinas-infancia-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vacinas-infancia-vs"
      },
      "name" : "Vacinas e imunoglobulinas do recém-nascido ValueSet",
      "description" : "Vacinas e imunoglobulinas registadas na notícia de nascimento (Immunization.vaccineCode).",
      "exampleBoolean" : false,
      "groupingId" : "terminologia"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home Page",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "background.html"
        }],
        "nameUrl" : "background.html",
        "title" : "Análise Funcional",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "mapping.html"
        }],
        "nameUrl" : "mapping.html",
        "title" : "Mapeamentos",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "usage.html"
        }],
        "nameUrl" : "usage.html",
        "title" : "Usar Este IG",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "html"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "changes.html"
        }],
        "nameUrl" : "changes.html",
        "title" : "IG Change History",
        "generation" : "html"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
