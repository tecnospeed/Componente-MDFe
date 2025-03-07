﻿## [10.1.67.20]

**Novidades**

* 25.02.27 |DSP4G-1725 - Adicionado novo método de validação OAuth

**Correções**

* 25.02.27 |DSML-1592 - Ajuste classe spdINI.pas componentes oAuth

## [10.1.66.6416]

* Corre&ccedil;&otilde;es e melhorias diversos.

## [10.0.66.6415]

**Novidades**

* [DSML-1243](https://tecnospeed.atlassian.net/browse/DSML-1243) - Implementação da NT 2024.002: adição de campos para prestação parcial.

## [10.1.65.6413]

**Novidades**

* DSML-1144 - Desativação dos serviços de `Recepção Lote (assíncrono)` e de `Consulta Retorno Recepção` [Nota Técnica 2024.001](https://blog.tecnospeed.com.br/mdf-e-manual-de-orientacoes-ao-contribuinte-versao-3-00b);

**Correções**

* DSP4G-1507 - Melhoria na validação de license para executar apenas quando for comunicar com sefaz

## [10.1.64.6410]

**Novidades**

* DSML-1114 - Compatibilizado o componente com a [Nota Técnica 2024.001](https://blog.tecnospeed.com.br/mdf-e-nota-tecnica-2024-001-altera-regras-de-validacao-do-mdf-e);

* DSML-1016 - Compatibilizado o componente com Delphi 12 Athenas;

## [10.1.63.6406]

**Novidade**

DSP4G-776 - integração por arquivo no formato JSON pelo novos metodos:
[ConverterJsonParaXml](https://tecnospeed.zendesk.com/hc/pt-br/articles/20973871084951) e [ConverterJonParaTx2](https://tecnospeed.zendesk.com/hc/pt-br/articles/20973754738839)

**Correções**

DSML-1098 - Resolução do erro ao configurar o valor da propriedade VersaoManual utilizando OCX. O valor configurado era alterado para 'vm30a' quando informado 'vm30b'.


## [10.1.62.6402]

**Correções**

DSML-1066 - Foi alterado o RTM da versão 3.00a para mostrar as `Informações da Composição de Carga`

## [10.1.62.6400]

**Novidade**

- DSML-883 - Atualizado pacotes de esquemas referente a NT 2023.002, contendo as alterações no XML de retorno. Mais detalhes em : https://blog.tecnospeed.com.br/manifesto-documento-fiscal/


## [9.1.61.6396]

**Novidades**
* DSML-749 - Versão Componente MDFe MOC 3.00b

## [9.1.60.6395]
**Novidades**
* DSML-749 - Versão Componente MDFe MOC 3.00b

## [9.1.60.6389]
**Correções**
* DSML-532 - Personalização .rtm - Criação da nova propriedade "ImprimirUFsPercurso"

## [9.1.60.6388]
 **Novidades**
* [DSP4G-606](#) - Disponibilizado método ExportarPreverDanfe. Mais Detalhes em:[ExportarPreverDanfe](https://atendimento.tecnospeed.com.br/hc/pt-br/articles/9980489147799-M%C3%A9todo-Exportar-pr%C3%A9-visualiza%C3%A7%C3%A3o-da-nota-DAMDFE-MDF-e)
* [DSP4G-790](#) - Compatibilizado com atualizações do componente indy

**Correções**

* DSML-372 - Ajuste no campo Type no arquivo mdfe_tecnoaccount.iss
* DSML-444 - Erro de arquivo mdfeServidoresProd.ini ao emitir MDFe na UF AP
* DSML-483 - Corrigido o nome do executável do Dependêncies Tecnoaccount.



## [9.1.60.6380]
**Novidades**
* DSP4G-67  - Adicionado método TestarEmailConfig para validar as configurações de email, para mais informações acesse: https://tecnospeed.zendesk.com/knowledge/articles/8235194906263/pt-br?brand_id=360000386474
* DSP4G-398 - Adicionado ao pacote de instalação do componente o arquivo "IDs_LIBs_MDFe.ini" contendo os ID´s das OCXs.

## [9.1.60.6379]
**Correções:**
* DSML-255 - Geração incorreta versão com TencoAccount

## [9.1.60.6375]
**Correções:**
* DICT-775 - Ajuste layout retrato.rtm cortando valores na impressão de condutores.

**Novidades:**

* DCIT-891 - Adicionadas as propriedades CnpjSoftwareHouse, TokenSoftwareHouse e a propriedade DiagnosticMode no arquivo ini.
* DSP4G-222 - Migrando os arquivos de templates para implementação "hardcoded".
* DSP4G-143 - Adicionado no menu do Windows a opção de desinstalação do pacote de dependências.

* DCIT-1058 - Nova propriedade UseSecureBlackBox para envio de e-mail com SBB.
* DCIT-1033 - Ajustes no componente para que possa ser utilizado em Windows com formato de moeda diferente de PT-BR.
* DCIT-1078 - Implementada a NT 2022.001 v.001. 
   Para mais informações da NT: https://blog.tecnospeed.com.br/mdf-e-nota-tecnica-2022-001
* DCIT-1063 - Foram adicionadas as propriedades QtdeTentativasEmail e UseTLS nas configurações de E-mail, podendo ser configurado via propriedade ou por ini.
* DCIT-1104 - Ajustado validação de esquemas dos eventos para usar o xsd especifico de cada evento quando usar a propriedade ValidarEsquemaAntesEnvio

## [9.1.60.6365]
**Correções:**
* DSML-165 - LICENCE TECNOACCOUNT COM PROBLEMA
* DSP4G-222 - Remover arquivos de templates da instalação



## [9.1.60.6351]

**Novidades:**  
* DCIT-1117 - Componente - MDFe - Licença Tecnoaccount "A licença do produto expirou para o emitente"
* DCIT-1063 - Componente - MDFe - Revisar, Testar e Criar propriedades de E-mail
* DCIT-1115 - Componente - MDFe - Atualizar documentações referente a NT 2022.001 v1.00
* DCIT-1125 - Componentes - MDFe - Revisar/Atualizar dicionário de dados


## [9.1.60.6345]

**Novidades:**  
* DCIT-1078 - Componente - MDFe - NT 2022.001 v1.00
* DCIT-891 - Componente MDFe: Implementar propriedades usadas na Telemetria e Tecnoaccount
* DCIT-1051 - Componente - MDFe - Disponibilizar apenas versões com TecnoAccount
* DCIT-1058 - Componente - MDFe - Implementar envio de e-mail com SBB

## [9.1.60.6325]

**Correções:**
* DC-3264 - Correção da assinatura do QR Code da emissão em contingência.

## [9.1.59.6324]

**Novidades:**
* DC-2789 - Compatibilizada a Nota técnica 2021.002 v1.00. Para maiores informações, acesse a documentação:
[https://blog.tecnospeed.com.br/nota-tecnica-2021-002-do-mdf-e-ajustes-de-layout-e-evento-de-pagamento/](https://blog.tecnospeed.com.br/nota-tecnica-2021-002-do-mdf-e-ajustes-de-layout-e-evento-de-pagamento/)

## [9.1.58.6322]

**Novidades:**
* DC-2173 - Compatibilizada a Nota técnica 2021.001 v1.00. Para maiores informações, acesse a documentação:
            [https://blog.tecnospeed.com.br/nota-tecnica-2021-001-do-mdfe/](https://blog.tecnospeed.com.br/nota-tecnica-2021-001-do-mdfe/)
* DC-504 - Correção no exportar PDF de xml cancelado e encerrado. 
* DC-507 - Alteração no DAMDFE para imprimir a unidade de medida conforme o tipo da tag cUnid do xml.

## [8.1.57.6318]

**Correções:**

- DC-1925 - Correção ao gerar QrCode de MDFe em modo Contingência. 
- DC-1931 - Correção na impressão de Carga do modelo paisagem.

## [8.1.56.6311]

**Correções:**

- Alteração de funções que estavam sem retorno padrão.















