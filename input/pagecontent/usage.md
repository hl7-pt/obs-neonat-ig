### FHIR e IG: Uma introdução

FHIR (Fast Healthcare Interoperability Resources) é um padrão criado pela HL7 para facilitar a troca de
informações em saúde de forma eletrónica. O objetivo do FHIR é permitir que diferentes sistemas de saúde se
comuniquem de maneira mais eficiente e segura.
O que é um Guia de Implementação FHIR?
Um Guia de Implementação (IG) FHIR é um conjunto de regras sobre como os recursos FHIR são usados (ou devem ser
usados) para resolver um problema específico, com documentação associadas para apoiar e esclarecer o uso. Um IG
ajuda desenvolvedores e profissionais de TI a entender como aplicar os recursos FHIR para resolver problemas
específicos de interoperabilidade em saúde.

Componentes de um Guia de Implementação FHIR:
1. Descrição do Contexto: Explicação do problema ou do cenário clínico que o guia aborda.
2. Perfis FHIR: Definições personalizadas dos recursos FHIR para atender às necessidades específicas do contexto.
3. Extensões FHIR: Adições aos recursos padrões para cobrir informações que não estão incluídas nos recursos
básicos.
4. Valores Permitidos: Conjuntos de valores específicos para atributos de recursos.
5. Exemplos: Exemplos práticos de mensagens FHIR que ilustram como os recursos devem ser usados.


**O que é um Recurso?**

Os recursos são blocos de construção do FHIR, ou seja, é a unidade fundamental de informação. Cada recurso representa
um conceito distinto e autossuficiente em saúde, como pacientes, medicamentos, diagnósticos, observações, etc.
O padrão FHIR fornece um conjunto central de perfis para coisas comuns, descrevendo um conjunto de recursos básicos
que são usados em muitos contextos diferentes na área da saúde. No entanto, há uma grande variabilidade em todo o
ecossistema de saúde em torno de práticas, requisitos, regulamentos entre outros.
Por esse motivo, a especificação FHIR é algo genérico que requer uma adaptação a contextos específicos e consoante os
casos de uso. Para permitir essa adaptação de maneira “controlada”, os recursos FHIR devem ser personalizados e
especializados por meio de perfis.
Um recurso pode estar em conformidade com vários Guias de Implementação, desde que os IG sejam compatíveis.

**Exemplos de Recursos:**
* Patient: Contém informações sobre um paciente.
* Observation: Contém resultados de observações clínicas, como resultados de testes laboratoriais.
* Medication: Contém informações sobre medicamentos.

**O que é um Perfil de Recurso?**
Um perfil de recurso é uma versão personalizada de um recurso FHIR padrão. Ele define restrições adicionais e
especifica como o recurso deve ser usado em um contexto específico. Um perfil pode restringir, estender ou adicionar
regras ao recurso padrão.

**Componentes de um Perfil de Recurso:**
1. Restrições: Limitações adicionais nos elementos de dados (por exemplo, um campo que deve ser obrigatório).
2. Extensões: Adições que permitem incluir informações adicionais não cobertas pelo recurso básico.
3. Exemplos de Uso: Casos de uso específicos que mostram como o perfil deve ser implementado.

### Criação de um IG: Dicas

**Dicas de um Guia de Implementação FHIR para Iniciantes**

1. Identifique o Contexto e o Problema  
Comece por identificar o problema que pretende resolver e o contexto em que isso ocorre. Por exemplo, pode ser a troca
de informações sobre pacientes entre diferentes hospitais.
2. Selecione os Recursos FHIR  
Escolha os recursos FHIR que serão relevantes para o contexto. Por exemplo:
Patient: Para informações sobre pacientes.
Encounter: Para detalhes sobre episódios / visitas clínicas.
Observation: Para resultados de exames.
3. Defina Perfis de Recursos  
Personalize os recursos escolhidos criando perfis. Defina as restrições e extensões necessárias. Por exemplo:
O perfil do Patient pode exigir que o campo "nome" seja obrigatório.
O perfil do Observation pode adicionar uma extensão para incluir um novo tipo de observação.
4. Crie Extensões  
Se houver informações adicionais que não são cobertas pelos recursos padrão, crie extensões. Por exemplo, uma extensão
para incluir o número do processo clínico num recurso Patient.
5. Defina Valores Permitidos  
Especifique valores permitidos para certos atributos. Por exemplo, uma lista de códigos de diagnóstico permitidos para
um recurso Observation.
6. Forneça Exemplos  
Inclua exemplos de como os recursos e perfis devem ser usados na prática. Mostre mensagens FHIR exemplares que
ilustram o uso correto.
7. Documente as Interações  
Descreva como os diferentes sistemas devem interagir usando os recursos definidos. Inclua diagramas de fluxo de dados
e cenários de uso.


### Usar um IG
Ler os FHIR Implementation Guides (IGs) é fundamental para entender como implementar stantdards de interoperabilidade, nomeadamente Fast Healthcare Interoperability Resources (FHIR) em contextos específicos. Estes fornecem orientações detalhadas, exemplos de uso que definem como os recursos FHIR devem ser usados para cumprir determinados requisitos clínicos ou administrativos. Para começar, é essencial familiarizar-se com a estrutura geral dos IGs, que geralmente incluem uma introdução, perfis de recursos, extensões, valores de referência e exemplos. Navegar pelas secções de ["Artefactos"](artifacts.html) ajuda a identificar os recursos e suas respectivas restrições, enquanto a documentação [funcional](background.html) oferece uma visão geral dos requisitos funcionais e como estes são impactados por esta implementação. 

Os FHIR Implementation Guides são igualmente úteis na validação de documentos e recursos FHIR. Ferramentas como o FHIR Validator, disponíveis através do HL7 e outras plataformas, permitem validar instâncias de recursos contra os perfis definidos nos IGs. Esse processo de validação assegura que os documentos e recursos estejam em conformidade com as especificações e restrições definidas, garantindo interoperabilidade e consistência de dados entre diferentes sistemas. Além disso, a validação pode identificar erros e discrepâncias que precisam ser corrigidos para atender aos requisitos de conformidade. Usando os IGs como referência, desenvolvedores e implementadores podem assegurar que suas implementações FHIR não apenas atendam aos padrões técnicos, mas também cumpram os objetivos clínicos e administrativos para os quais foram projetadas.

Exemplo de validação de recursos FHIR em função deste IG:
1. ir a [https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar](https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar) e fazer download do validator.
2. ter os recursos ou pastas com recursos a validar num sistema local (exemplo para um recurso patient.xml)
3. correr o seguinte comando ``` java -jar validator_cli.jar c:\temp\patient.xml -version 5.0 -ig -ig hl7.fhir.pt.adr#current -html-output report.html -output-style compact```
   1. este comando irá validar um recurso face a este IG e devolve uma página HTML com o resultado da validação.
   
Mais informações e opções do validador, ver [aqui](https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator)