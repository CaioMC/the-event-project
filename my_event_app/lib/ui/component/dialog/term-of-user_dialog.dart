import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_event_app/main.dart';

class TermOfUseDialog extends StatefulWidget {
  const TermOfUseDialog();

  @override
  _TermOfUseDialogState createState() => _TermOfUseDialogState();
}

class _TermOfUseDialogState extends State<TermOfUseDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Theme.of(context).primaryColor),
                    child: Text("Termo de Uso",
                        style: TextStyle(
                          fontSize: 16.toScale,
                          color: Colors.white,
                          fontFamily: GoogleFonts.bungee().fontFamily,
                          shadows: <Shadow>[
                            Shadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(2, 1),
                            ),
                          ],
                        )),
                  ),
                )
              ],
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 30, 8, 0),
                child: RawScrollbar(
                  thumbColor: Theme.of(context).primaryColor,
                  isAlwaysShown: true,
                  child: ListView(
                    children: [
                      Html(
                        data:
                            "<h4>1. INTRODU????O.</h4><p>1.1. Em cumprimento ao disposto no C??digo de Defesa do Consumidor, o MyEvent estabelece os termos e condi????es de uso dos seus servi??os disponibilizados no meio virtual atrav??s do presente termo (???Termo(s) de Uso??? ou ???Termo???).</p><p>1.2. Os servi??os do presente Termo consiste na disponibiliza????o, pelo MyEvent aos Usu??rios, a possibilidade do uso de sistema de pagamento digital para os tickets de eventos. Os servi??os compreendem a distribui????o de TICKETS do evento selecionado, atrav??s de uma compra realizada atrav??s do aplicativo ou site, bem como a presta????o de demais informa????es relativas ??s utiliza????es dos servi??o</p><h4>2. TERMOS IMPORTANTES</h4><p>2.1. APLICATIVO: Aplicativo a ser disponibilizado e operado pela EVENTOS para instala????o em APARELHOS M??VEIS, visando permitir que o usu??rio adquira e ative o CAD, consulte saldos, extratos de movimenta????o e receba os devidos comprovantes de pagamento.</p><p>2.2. USU??RIO: Pessoa que adquire e/ou utiliza o CAD nos tickets do app My Event efetuando o cadastro e informando seus dados pessoais atrav??s das lojas de aplicativo Apple Store ou Google play.</p><p>2.3. AUTO-ATENDIMENTO: Sistema em que o servi??o oferecido pode ser realizado pelo pr??prio cliente</p><p>2.4. CENTRAL DE ATENDIMENTO: fun????o disponibilizada no aplicativo e no site, pela qual o USU??RIO poder?? manter contato, tirar d??vidas, obter informa????es e registrar reclama????es direto pelo aplicativo ou site;</p><p>2.5.COMPROVANTE DE PAGAMENTO: Recibo de pagamento que ser?? fornecido ao usu??rio, por meio eletr??nico, comprovando a AQUISI????O e/ou ATIVA????O, contendo no m??nimo as seguintes informa????es: Local, data, hor??rio, nome da empresa, nome de quem obteve o ticket, codigo de seguran??a, QRCode. </p><p>2.6. AQUISI????O: Transa????o que registra, mediante autentica????o, a opera????o de aquisi????o do CAD, realizada pelo evento ao usu??rio. </p><p>2.7. TERMO DE ADES??O E USO: o presente instrumento;</p><h4>3. RELA????O COM O USU??RIO</h4><p>3.1. O presente Termo rege a rela????o entre o My Event e qualquer pessoa capaz, que acesse o APLICATIVO prevalece em rela????o a qualquer outro termo celebrado anteriormente.</p><p>3.2. O Usu??rio de produtos, softwares, servi??os disponibilizados pelo My Event est?? sujeito ??s condi????es previstas neste Termo.</p><p>3.3. Data da ??ltima revis??o: 30 de janeiro de 2022.</p><h4>4. ACEITA????O DOS TERMOS</h4><p>4.1. Para utilizar os servi??os do My Event, o Usu??rio dever?? ler, ter certeza de haver entendido e concordar com os termos aqui descritos, bem como aos demais documentos incorporados ao presente Termo, mesmo que por refer??ncia.</p><p>4.2. A utiliza????o dos servi??os por completo implicar?? na aceita????o dos termos de uso, clicando no bot??o ??? Li e concordo com os Termos de ades??o e uso???.</p><p>4.3. O My Event poder?? revisar este Termo e alter??-lo de acordo com as necessidades que se apresentarem, ficando a cargo do Usu??rio verific??-lo sempre que acessar o aplicativo.</p><p>4.4. Ao aceitar este Termo, o Usu??rio concorda automaticamente com a Pol??tica de privacidade do My Event.</p><h4>5. IDIOMA</h4><p>5.1. Em caso de tradu????o deste Termo para outros idiomas, prevalecer??, para fins de interpreta????o, a l??ngua portuguesa.</p><h4>6. CONDI????ES DE USO DO SERVI??O.</h4><p>6.1. O Usu??rio tem conhecimento e aceita que a forma e natureza dos servi??os prestados pelo My Event podem mudar ocasionalmente, por for??a contratual ou ainda sem aviso pr??vio ao Usu??rio.</p><p>6.2. O Usu??rio tem conhecimento e concorda desde logo que o My Event pode, a seu pr??prio crit??rio, deixar (permanente ou temporariamente) de fornecer ou limitar o fornecimento dos servi??os prestados (ou qualquer funcionalidade dos servi??os) aos Usu??rios em geral, sem aviso pr??vio, sem que haja qualquer dever de indenizar ou ressarcir.</p><p>6.3. Atrav??s do aplicativo o USU??RIO poder?? realizar as seguintes opera????es:I - Cadastramento e atualiza????o de dados pessoais;II - Consultas de saldos, extratos de movimenta????es;</p><p>6.4. O USU??RIO autoriza os EVENTOS de efetuar os lan??amentos de d??bitos em seu cart??o de cr??dito indicado neste TERMO DE ADES??O E USO, para pagamento das TRANSA????ES decorrentes do uso do SERVI??O.</p><p>6.5. O USU??RIO cadastrado, e ap??s adquirir seus CADs poder?? ativ??-los atrav??s do aplicativo.</p><p>6.6. N??o caber?? aos EVENTOS, em nenhuma hip??tese, responsabilidade indenizat??ria por acidentes, danos e furtos em decorr??ncia dos servi??os ora disponibilizados.</p><p>6.7. Alguns SERVI??OS descritos neste acordo devem ser acessados atrav??s de telefone celular na modalidade de comunica????o de dados tipo GPRS ou superior (EDGE ou 3G). O USU??RIO concorda e est?? ciente de que a utiliza????o desta modalidade de comunica????o depende exclusivamente de seu plano de telefonia m??vel, contratado de uma operadora de celular. Sendo assim, este SERVI??O n??o se responsabiliza por quaisquer impedimentos, custos, tarifas, bloqueios ou demais circunst??ncias que possam afetar ou estar relacionada com o acesso aos SERVI??OS providos nesta modalidade de comunica????o.</p><h4>7. SEU CADASTRO</h4><p>7.1. Para ter acesso aos servi??os disponibilizados pelo My Event, o Usu??rio deve criar um cadastro e fornecer seu nome e sobrenome, CPF/CNPJ, endere??o de e-mail e senha. Essas informa????es ser??o gerenciadas de acordo com nossa pol??tica de privacidade.</p><p>7.2. O Usu??rio concorda em fornecer sempre informa????es exatas, precisas e verdadeiras, comprometendo-se, ainda, a atualiz??-las sempre que alteradas.</p><p>7.3. O Usu??rio ?? respons??vel ??nico e exclusivo por toda e qualquer atividade ocorrida, bem como todo e qualquer o conte??do gerado a partir de seu CADASTRO.</p><p>7.4. O Usu??rio concorda em usar os servi??os somente para os fins permitidos: 7.4.1. pelos termos do presente Termo; e 7.4.2. de acordo com as leis, regulamentos ou pr??ticas e diretrizes geralmente aceitas no local onde os servi??os s??o utilizados.</p><p>7.5. ao My Event ?? dado, a t??tulo gratuito, o direito de utilizar todas as informa????es constantes no cadastro do usu??rio, de acordo com a nossa pol??tica de privacidade, visando a comunica????o com o usu??rio, otimizar usabilidade, fazer pesquisas e estat??sticas, realizar campanhas orientativas e informa????es a respeito de novos servi??os.</p><p>7.6. O Usu??rio ?? respons??vel por manter a confidencialidade de sua senha. O My Event n??o se responsabiliza por perdas de senhas ou qualquer dano que venha a ser causado por tal extravio.</p><p>7.7. Se o Usu??rio tiver conhecimento de qualquer utiliza????o n??o autorizada da sua senha ou do seu cadastro, fica obrigado a notificar imediatamente o My Event, atrav??s de e-mail de contato, dispon??vel na p??gina principal pelo aplicativo.</p><p>7.8. O Usu??rio concorda em receber comunicados relevantes da sua conta, tais como alertas, comprovantes, informa????es e hist??rico de utiliza????o por e-mail. Outras mensagens publicit??rias poder??o ser enviadas por??m podendo ser suspensas a crit??rio do usu??rio.</p><p>7.9 A EVENTOS DE SERVI??O TER?? O DIREITO DE SUSPENDER A UTILIZA????O DOS SERVI??OS PARA O USU??RIO CASO VERIFIQUE, POR QUAISQUER MEIOS, QUE AS INFORMA????ES PRESTADAS PELO USU??RIO S??O FALSAS OU IRREAIS, INDEPENDENTEMENTE DE NOTIFICA????O PR??VIA AO USU??RIO .</p><h4>8. VIG??NCIA E RESCIS??O</h4><p>8.1. O Servi??o ter?? in??cio na data de sua ades??o pelo USU??RIO, e vigorar?? por um per??odo indeterminado.</p><h4>9. PROPRIEDADE</h4><p>9.1. O uso da express??o ???My Event??? como marca, nomes empresarial ou nome de dom??nio, bem como os conte??dos das telas relativas aos servi??os do My Event assim como os softwares, bancos de dados, redes e arquivos, que permitem que o Usu??rio acesse e use o sistema s??o propriedade ??nica e exclusiva do My Event e est??o protegidos pelas leis e tratados internacionais de direito autoral, marcas, patentes, modelos e desenhos industriais. O uso indevido e a reprodu????o total ou parcial dos referidos conte??dos s??o proibidos, sem a autoriza????o expressa e por escrito do My Event.</p><p>9.2. O My Event concede ao Usu??rio uma licen??a pessoal, internacional, isenta de royalties, n??o exclusiva, para utilizar os servi??os. Essa licen??a tem como ??nico objetivo permitir o uso dos servi??os tal como s??o fornecidos pelo My Event, da forma permitida no Termos de Uso. O Usu??rio n??o poder?? (nem poder?? permitir a mais ningu??m) copiar, modificar, criar uma obra derivada, realizar engenharia inversa, descompilar ou, de qualquer outro modo, tentar extrair o c??digo-fonte dos softwares criados pelo My Event ou de qualquer parte que o componha.</p><h4>10. PROIBI????ES AO USU??RIO</h4><p>10.1. Os servi??os do My Event somente poder??o ser utilizados por pessoas com capacidade legal para contrat??-los, sendo vedada a utiliza????o por incapazes, dentre eles os menores de idade, ou pessoas que tenham sido inabilitadas pelo My Event tempor??ria ou definitivamente.</p><p>10.2. Os cadastros s??o pessoais e intransfer??veis, sendo terminantemente proibido: criar cadastros em nome de outros Usu??rios ou com dados pessoais falsos; acessar contas de outros Usu??rios; ceder de forma onerosa ou gratuita, vender, alugar ou de qualquer outra forma transferir o cadastro; criar novos cadastros por pessoas cujos cadastros originais tenham sido cancelados por infra????es ao presente Termo de Uso, bem como aos demais regramentos estipulados pelo My Event.</p><p>10.3. A responsabilidade pelas informa????es fornecidas pelo Usu??rio ?? exclusiva dele pr??prio, respondendo civil e criminalmente, pela veracidade, exatid??o e autenticidade dos dados pessoais cadastrados, podendo o My Event utilizar todos os meios legais para identificar seus Usu??rios, bem como de solicitar dados adicionais e documentos que entenda necess??rios ?? confirma????o dos dados pessoais informados.</p><p>10.4. O Usu??rio concorda em usar os servi??os somente para os fins permitidos e tem conhecimento que, sem preju??zo de outras medidas, o My Event poder?? advertir, suspender ou cancelar, tempor??ria ou definitivamente, os servi??os ao Usu??rio a qualquer tempo, e tomar as medidas cab??veis se: o Usu??rio descumprir qualquer dispositivo deste Termo de Uso e aos demais documentos incorporados ao presente Termo, mesmo que por refer??ncia; praticar atos fraudulentos ou dolosos; n??o puder ser verificada a identidade do Usu??rio ou qualquer informa????o fornecida por ele esteja incorreta; acessar os servi??os por qualquer meio que n??o atrav??s da interface fornecida pelo My Event (a menos que seja autorizado pelo My Event por escrito); utilizar um TCP/IP falso, interferir no acesso de qualquer outro Usu??rio, hospedeiro ou rede; acessar a rede atrav??s de meios automatizados como rob??s, bots, etc; participar de alguma atividade que interfira ou interrompa o funcionamento dos servi??os; reproduzir, duplicar, copiar, vender, comercializar ou revender os servi??os para qualquer efeito; copiar, modificar, criar uma obra derivada, realizar engenharia reversa, descompilar ou, de qualquer outro modo, tentar extrair o c??digo fonte do software fornecido pelo My Event como parte dos servi??os ou de qualquer parte que o componha; praticar qualquer ato que viole ou interfira nas atividades e opera????es do My Event; utilizar qualquer uma das marcas registradas, marcas comerciais, marcas de servi??os, logotipos, nomes de dom??nios ou outras caracter??sticas de marcas especiais do My Event, a menos que possua uma autoriza????o por escrito para determinado fim.</p><p>10.5. Havendo a aplica????o de qualquer san????o, ser??o automaticamente cancelados os servi??os, bem como o(s) bloqueio de eventuais cr??ditos virtuais(s) remanescentes e ainda n??o utilizado(s), n??o assistindo ao Usu??rio, por essa raz??o, qualquer indeniza????o ou ressarcimento.</p><p>10.6. O Usu??rio est?? ciente de que o conte??do que lhe est?? sendo apresentado pode estar protegido por direitos de propriedade intelectual. Assim sendo, o Usu??rio n??o poder?? efetuar nenhum tipo de modifica????o, aluguel, arrendamento, empr??stimo, venda, distribui????o, ou cria????o de obras derivadas baseadas neste conte??do.</p><h4>11. SOBRE ESTE TERMO DE USO</h4><p>11.1. Qualquer cl??usula adicional a este Termo deve conter a concord??ncia expressa e firmada, sempre de forma escrita, por um representante legal do My Event.</p><p>11.2. Se, por algum motivo, o My Event n??o exercer ou utilizar qualquer direito legal ou direito reconhecido contido neste Termo ou em qualquer instrumento acess??rio, isso n??o ser?? considerado como uma ren??ncia formal aos direitos do My Event, mantendo-se tais direitos preservados para todos os devidos efeitos.</p><p>11.3. Se qualquer item deste Termo for declarado inv??lido por qualquer motivo, tal invalida????o n??o anular?? o Termo como um todo, permanecendo v??lidas as demais disposi????es.</p><p>11.4. O presente Termo ?? regido exclusivamente pelas leis brasileiras.</p><h4>12. LIMITA????O DE RESPONSABILIDADE</h4><p>12.1. O My Event n??o se responsabiliza por nenhum dano que venha a ser causado ao Usu??rio que n??o seja oriundo de sua conduta.</p><p>12.2. o usu??rio concorda expressamente que o My Event n??o ser?? respons??vel: por quaisquer danos diretos, indiretos, incidentais, lucros cessantes causados ao usu??rio pela utiliza????o dos servi??os prestados pelo My Event, bem com os prestados pelos parceiros comerciais; por qualquer publicidade ofensiva n??o atribu??vel ao My Event; quaisquer altera????es que o My Event possa fazer aos servi??os, por qualquer cessa????o permanente ou tempor??ria do fornecimento dos servi??os (ou quaisquer funcionalidades nos pr??prios servi??os), tendo em vista a imprevisibilidade dos sistemas de inform??tica e de toda a rede de suporte (provedores, hospedeiros, etc); pela elimina????o, corrup????o ou incapacidade de armazenamento de qualquer conte??do ou outros dados de comunica????es mantidos ou transmitidos pelo My Event; pela n??o manuten????o, por parte do usu??rio, da seguran??a e da confidencialidade de seus dados; por qualquer v??rus que possa atacar o equipamento do usu??rio pelo navega????o na internet; ou como consequ??ncia da transfer??ncia de dados, arquivos, imagens, textos ou ??udio.</p>",
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              width: 100.toScale,
              height: 45.toScale,
              // ignore: deprecated_member_use
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  Navigator.of(context).pop(this.widget);
                },
                child: Text(
                  "Fechar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
