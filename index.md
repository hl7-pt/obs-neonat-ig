# Home Page - HL7 PT FHIR Implementation Guide: Noticia de Nascimento v0.0.1

* [**Table of Contents**](toc.md)
* **Home Page**

## Home Page

| | |
| :--- | :--- |
| *Official URL*:https://hl7.pt/fhir/NoticiaNascimento/ImplementationGuide/hl7.fhir.pt.obs-neonat | *Version*:0.0.1 |
| Active as of 2020-02-26 | *Computable Name*:NoticiaNascimentoIG |

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
  "version" : "0.0.1",
  "name" : "NoticiaNascimentoIG",
  "title" : "HL7 PT FHIR Implementation Guide: Noticia de Nascimento",
  "status" : "active",
  "date" : "2020-02-26",
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
    "version" : "7.1.0"
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
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
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
        "valueString" : "produce-jekyll-data"
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
        "valueString" : "autoload-resources"
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
        "valueString" : "path-liquid"
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
        "valueString" : "path-liquid"
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
        "valueString" : "path-qa"
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
        "valueString" : "path-temp"
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
        "valueString" : "path-output"
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
        "valueString" : "path-suppressed-warnings"
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
        "valueString" : "path-history"
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
        "valueString" : "template-html"
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
        "valueString" : "template-md"
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
        "valueString" : "apply-contact"
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
        "valueString" : "apply-context"
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
        "valueString" : "apply-copyright"
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
        "valueString" : "apply-jurisdiction"
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
        "valueString" : "apply-license"
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
        "valueString" : "apply-publisher"
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
        "valueString" : "apply-version"
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
        "valueString" : "apply-wg"
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
        "valueString" : "active-tables"
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
        "valueString" : "fmm-definition"
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
        "valueString" : "propagate-status"
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
        "valueString" : "excludelogbinaryformat"
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
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
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
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/apgar-example"
      },
      "name" : "apgar-example",
      "description" : "Exemplo de Apgar",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/ApgarScore"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Procedure"
      }],
      "reference" : {
        "reference" : "Procedure/BirthNN"
      },
      "name" : "BirthNN",
      "description" : "Exemplo nascimento",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Birth"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/body-weigth-example"
      },
      "name" : "body-weigth-example",
      "description" : "Exemplo peso recem-nascido",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/cephalic-perimeter-example"
      },
      "name" : "cephalic-perimeter-example",
      "description" : "Exemplo perimetro cefálico",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/childhealthsurveilance-ex"
      },
      "name" : "childhealthsurveilance-ex",
      "description" : "Exemplo da vigilância de saúde infantil",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Childhealthsurveilance"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/documentclassificationCS"
      },
      "name" : "Classficação de documentos CodeSystem",
      "description" : "Classficação de documentos CodeSystem",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/congenital-example"
      },
      "name" : "congenital-example",
      "description" : "Exemplo de registo de doença congénita",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Congenital"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ContactLM"
      },
      "name" : "Contacto (modelo)",
      "description" : "Modelo Lógico - Contacto",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DestinationLN"
      },
      "name" : "Dados da inscrição nos cuidados de saúde primários (modelo)",
      "description" : "Modelo Lógico - Dados da inscrição nos cuidados de saúde primários",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MotherDemographicsLM"
      },
      "name" : "Dados demográficos da mãe (modelo)",
      "description" : "Modelo Lógico - Dados demográficos da mãe",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/destino"
      },
      "name" : "destino",
      "description" : "Exemplo destino",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/InfosGravidezCS"
      },
      "name" : "Elementos adicionais de informação gravidez CodeSystem",
      "description" : "Elementos adicionais de informação gravidez CodeSystem - Criado por falta de um código internacional ideal",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/bulletin-delivery-vs"
      },
      "name" : "Envio de boletim ValueSet",
      "description" : "Envio de boletim ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/episodio"
      },
      "name" : "episodio",
      "description" : "Exemplo episódio contacto",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Contact"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Encounter"
      }],
      "reference" : {
        "reference" : "Encounter/episodioInt"
      },
      "name" : "episodioInt",
      "description" : "Exemplo internamento",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Bundle"
      }],
      "reference" : {
        "reference" : "Bundle/exemploNN"
      },
      "name" : "exemploNN",
      "description" : "Exemplo Noticia Nascimento",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/transport-information"
      },
      "name" : "Extensão sobre informação sobre Transportes",
      "description" : "Extensão sobre informação sobre Transportes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PregnancyLM"
      },
      "name" : "Gravidez (modelo)",
      "description" : "Modelo Lógico - Gravidez",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/CoredaNoticiaLM"
      },
      "name" : "Informações Core da Noticia (modelo)",
      "description" : "Modelo Lógico - Informações Core da Noticia",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Organization"
      }],
      "reference" : {
        "reference" : "Organization/inst"
      },
      "name" : "inst",
      "description" : "Exemplo Instituição",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/length-example"
      },
      "name" : "length-example",
      "description" : "Exemplo altura recem-nascido",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/mother"
      },
      "name" : "mother",
      "description" : "Exemplo Mãe",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Mother"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/newBornNN"
      },
      "name" : "newBornNN",
      "description" : "Exemplo recém-nascido",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Child"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Composition"
      }],
      "reference" : {
        "reference" : "Composition/compNN"
      },
      "name" : "Noticia de Nascimento de recém-nascido",
      "description" : "Exemplo Composition",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/CompositionNoticia"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NoticiaLM"
      },
      "name" : "Notícia de Nascimento (modelo)",
      "description" : "Modelo Lógico - Notícia de Nascimento",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "PractitionerRole"
      }],
      "reference" : {
        "reference" : "PractitionerRole/ObsRole"
      },
      "name" : "ObsRole",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Mother"
      },
      "name" : "Perfil da mãe",
      "description" : "Perfil da mãe",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Childhealthsurveilance"
      },
      "name" : "Perfil da vigilância de saúde infantil",
      "description" : "Perfil da vigilância de saúde infantil",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ApgarScore"
      },
      "name" : "Perfil de informação clinicas - apgarScore",
      "description" : "Perfil de informação clinicas - apgarScore",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Malformation"
      },
      "name" : "Perfil de informação clinicas - Dados de malformações",
      "description" : "Perfil de informação clinicas - Dados de malformações",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Phototherapy"
      },
      "name" : "Perfil de informação clinicas - Fototerapia",
      "description" : "Perfil de informação clinicas - Fototerapia",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Hearingscreen"
      },
      "name" : "Perfil de informação clinicas - Rastreio auditivo neonatal universal",
      "description" : "Perfil de informação clinicas - Rastreio auditivo neonatal universal",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Congenital"
      },
      "name" : "Perfil de informação clinicas - Rastreio Cardiopatias Congénitas",
      "description" : "Perfil de informação clinicas - Rastreio Cardiopatias Congénitas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Metabolic"
      },
      "name" : "Perfil de informação clinicas - Rastreio de doenças metabólicas",
      "description" : "Perfil de informação clinicas - Rastreio de doenças metabólicas",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Pupillary"
      },
      "name" : "Perfil de informação clinicas - Teste Reflexo pupilar",
      "description" : "Perfil de informação clinicas - Teste Reflexo pupilar",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Pregnancy"
      },
      "name" : "Perfil de Informação de gravidez",
      "description" : "Perfil de Informação de gravidez",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Birth"
      },
      "name" : "Perfil de Informação do Parto",
      "description" : "Perfil de Informação do Parto",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Newbornriskassessment"
      },
      "name" : "Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR",
      "description" : "Perfil de Informação sobre Avaliação de risco e referenciação ao NHACJR",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Bulletindelivery"
      },
      "name" : "Perfil de Informação sobre entrega de boletim",
      "description" : "Perfil de Informação sobre entrega de boletim",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Transport"
      },
      "name" : "Perfil de informação sobre Transportes",
      "description" : "Perfil de informação sobre Transportes",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Antid"
      },
      "name" : "Perfil de Informação sobre vacinação - antid",
      "description" : "Perfil de Informação sobre vacinação - antid",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Bcg"
      },
      "name" : "Perfil de Informação sobre vacinação - BCG",
      "description" : "Perfil de Informação sobre vacinação - BCG",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Hepb"
      },
      "name" : "Perfil de Informação sobre vacinação - hepb",
      "description" : "Perfil de Informação sobre vacinação - hepb",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/CompositionNoticia"
      },
      "name" : "Perfil do recurso Composition que cria as secções da noticia nascimento",
      "description" : "Perfil do recurso Composition que cria as secções da noticia nascimento",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Child"
      },
      "name" : "Perfil do recém-nascido",
      "description" : "Perfil do recém-nascido",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Professional"
      },
      "name" : "Perfil para o profissional de saúde",
      "description" : "Perfil para o profissional de saúde",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Puerperium"
      },
      "name" : "Perfil para registar dados do puerpério até à alta",
      "description" : "Perfil para registar dados do puerpério até à alta",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Letter"
      },
      "name" : "Perfil sobre Elaboração de carta com informação clínica suplementar",
      "description" : "Perfil sobre Elaboração de carta com informação clínica suplementar",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Contact"
      },
      "name" : "Perfil sobre episódio da notícia de nascimento",
      "description" : "Perfil sobre episódio da notícia de nascimento",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/Vaccination"
      },
      "name" : "Perfil sobre Informação sobre vacinação - genérico",
      "description" : "Perfil sobre Informação sobre vacinação - genérico",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/pregnancyNN"
      },
      "name" : "pregnancyNN",
      "description" : "Exemplo gravidez",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Pregnancy"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ProfessionalLM"
      },
      "name" : "Professional (Modelo)",
      "description" : "Modelo Lógico - Professional",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/puerperium-ex"
      },
      "name" : "puerperium-ex",
      "description" : "Exemplo de puerpério",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Puerperium"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/pupillary-example"
      },
      "name" : "pupillary-example",
      "description" : "Exemplo de análise pupilar",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Pupillary"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/NewBornLM"
      },
      "name" : "Recem-nascido (modelo)",
      "description" : "Modelo Lógico - Recem-nascido",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:extension"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ReferenciaNHACJR"
      },
      "name" : "ReferenciaNHACJR",
      "description" : "Referenciação ao Núcleo Hospitalar de Apoio Criança e Jovens em risco (NHACJR)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/risco-gravidez-vs"
      },
      "name" : "Risco de gravidez ValueSet",
      "description" : "Risco de gravidez ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/document-type-vs"
      },
      "name" : "Tipo de documento ValueSet",
      "description" : "Tipo de documento ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/tipo-gravidez-vs"
      },
      "name" : "Tipo de gravidez ValueSet",
      "description" : "Tipo de gravidez ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/newborn-congenital-anomalies-vs"
      },
      "name" : "Tipos de doença congénita ValueSet",
      "description" : "Tipos de doença congénita ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/tipo-episodio-cs"
      },
      "name" : "Tipos de episódio CodeSystem",
      "description" : "Tipos de episódio CodeSystem",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/episode-type-vs"
      },
      "name" : "Tipos de episódio ValueSet",
      "description" : "Tipos de episódio ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/puerperium-vs"
      },
      "name" : "Tipos de outcome de puerpério ValueSet",
      "description" : "Tipos de outcome de puerpério ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/tipo-parto-vs"
      },
      "name" : "Tipos de parto ValueSet",
      "description" : "Tipos de parto ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/newbornriskassessment-vs"
      },
      "name" : "Tipos de risco para avaliação de recém-nascidos ValueSet",
      "description" : "Tipos de risco para avaliação de recém-nascidos ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/transport-type-vs"
      },
      "name" : "Tipos de transporte de recém-nascido ValueSet",
      "description" : "Tipos de transporte de recém-nascido ValueSet",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      }],
      "reference" : {
        "reference" : "Immunization/vaccNN-antid"
      },
      "name" : "vaccNN-antid",
      "description" : "Exemplo vacina ANTI-D",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Antid"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      }],
      "reference" : {
        "reference" : "Immunization/vaccNN-bcg"
      },
      "name" : "vaccNN-bcg",
      "description" : "Exemplo vacina BCG",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Bcg"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Immunization"
      }],
      "reference" : {
        "reference" : "Immunization/vaccNN-hepb"
      },
      "name" : "vaccNN-hepb",
      "description" : "Exemplo vacina HEPB",
      "exampleCanonical" : "https://hl7.pt/fhir/NoticiaNascimento/StructureDefinition/Hepb"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      }],
      "reference" : {
        "reference" : "StructureDefinition/VaccineLM"
      },
      "name" : "Vacina (modelo)",
      "description" : "Modelo Lógico - Vacina",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/vacinas-infancia-vs"
      },
      "name" : "Vacinas ValueSet",
      "description" : "Vacinas ValueSet",
      "exampleBoolean" : false
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
