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
                            "<h4>1. INTRODUÇÃO.</h4><p>1.1. Em cumprimento ao disposto no Código de Defesa do Consumidor, o MyEvent estabelece os termos e condições de uso dos seus serviços disponibilizados no meio virtual através do presente termo (“Termo(s) de Uso” ou “Termo”).</p><p>1.2. Os serviços do presente Termo consiste na disponibilização, pelo MyEvent aos Usuários, a possibilidade do uso de sistema de pagamento digital para os tickets de eventos. Os serviços compreendem a distribuição de TICKETS do evento selecionado, através de uma compra realizada através do aplicativo ou site, bem como a prestação de demais informações relativas às utilizações dos serviço</p><h4>2. TERMOS IMPORTANTES</h4><p>2.1. APLICATIVO: Aplicativo a ser disponibilizado e operado pela EVENTOS para instalação em APARELHOS MÓVEIS, visando permitir que o usuário adquira e ative o CAD, consulte saldos, extratos de movimentação e receba os devidos comprovantes de pagamento.</p><p>2.2. USUÁRIO: Pessoa que adquire e/ou utiliza o CAD nos tickets do app My Event efetuando o cadastro e informando seus dados pessoais através das lojas de aplicativo Apple Store ou Google play.</p><p>2.3. AUTO-ATENDIMENTO: Sistema em que o serviço oferecido pode ser realizado pelo próprio cliente</p><p>2.4. CENTRAL DE ATENDIMENTO: função disponibilizada no aplicativo e no site, pela qual o USUÁRIO poderá manter contato, tirar dúvidas, obter informações e registrar reclamações direto pelo aplicativo ou site;</p><p>2.5.COMPROVANTE DE PAGAMENTO: Recibo de pagamento que será fornecido ao usuário, por meio eletrônico, comprovando a AQUISIÇÃO e/ou ATIVAÇÃO, contendo no mínimo as seguintes informações: Local, data, horário, nome da empresa, nome de quem obteve o ticket, codigo de segurança, QRCode. </p><p>2.6. AQUISIÇÃO: Transação que registra, mediante autenticação, a operação de aquisição do CAD, realizada pelo evento ao usuário. </p><p>2.7. TERMO DE ADESÃO E USO: o presente instrumento;</p><h4>3. RELAÇÃO COM O USUÁRIO</h4><p>3.1. O presente Termo rege a relação entre o My Event e qualquer pessoa capaz, que acesse o APLICATIVO prevalece em relação a qualquer outro termo celebrado anteriormente.</p><p>3.2. O Usuário de produtos, softwares, serviços disponibilizados pelo My Event está sujeito às condições previstas neste Termo.</p><p>3.3. Data da última revisão: 30 de janeiro de 2022.</p><h4>4. ACEITAÇÃO DOS TERMOS</h4><p>4.1. Para utilizar os serviços do My Event, o Usuário deverá ler, ter certeza de haver entendido e concordar com os termos aqui descritos, bem como aos demais documentos incorporados ao presente Termo, mesmo que por referência.</p><p>4.2. A utilização dos serviços por completo implicará na aceitação dos termos de uso, clicando no botão “ Li e concordo com os Termos de adesão e uso”.</p><p>4.3. O My Event poderá revisar este Termo e alterá-lo de acordo com as necessidades que se apresentarem, ficando a cargo do Usuário verificá-lo sempre que acessar o aplicativo.</p><p>4.4. Ao aceitar este Termo, o Usuário concorda automaticamente com a Política de privacidade do My Event.</p><h4>5. IDIOMA</h4><p>5.1. Em caso de tradução deste Termo para outros idiomas, prevalecerá, para fins de interpretação, a língua portuguesa.</p><h4>6. CONDIÇÕES DE USO DO SERVIÇO.</h4><p>6.1. O Usuário tem conhecimento e aceita que a forma e natureza dos serviços prestados pelo My Event podem mudar ocasionalmente, por força contratual ou ainda sem aviso prévio ao Usuário.</p><p>6.2. O Usuário tem conhecimento e concorda desde logo que o My Event pode, a seu próprio critério, deixar (permanente ou temporariamente) de fornecer ou limitar o fornecimento dos serviços prestados (ou qualquer funcionalidade dos serviços) aos Usuários em geral, sem aviso prévio, sem que haja qualquer dever de indenizar ou ressarcir.</p><p>6.3. Através do aplicativo o USUÁRIO poderá realizar as seguintes operações:I - Cadastramento e atualização de dados pessoais;II - Consultas de saldos, extratos de movimentações;</p><p>6.4. O USUÁRIO autoriza os EVENTOS de efetuar os lançamentos de débitos em seu cartão de crédito indicado neste TERMO DE ADESÃO E USO, para pagamento das TRANSAÇÕES decorrentes do uso do SERVIÇO.</p><p>6.5. O USUÁRIO cadastrado, e após adquirir seus CADs poderá ativá-los através do aplicativo.</p><p>6.6. Não caberá aos EVENTOS, em nenhuma hipótese, responsabilidade indenizatória por acidentes, danos e furtos em decorrência dos serviços ora disponibilizados.</p><p>6.7. Alguns SERVIÇOS descritos neste acordo devem ser acessados através de telefone celular na modalidade de comunicação de dados tipo GPRS ou superior (EDGE ou 3G). O USUÁRIO concorda e está ciente de que a utilização desta modalidade de comunicação depende exclusivamente de seu plano de telefonia móvel, contratado de uma operadora de celular. Sendo assim, este SERVIÇO não se responsabiliza por quaisquer impedimentos, custos, tarifas, bloqueios ou demais circunstâncias que possam afetar ou estar relacionada com o acesso aos SERVIÇOS providos nesta modalidade de comunicação.</p><h4>7. SEU CADASTRO</h4><p>7.1. Para ter acesso aos serviços disponibilizados pelo My Event, o Usuário deve criar um cadastro e fornecer seu nome e sobrenome, CPF/CNPJ, endereço de e-mail e senha. Essas informações serão gerenciadas de acordo com nossa política de privacidade.</p><p>7.2. O Usuário concorda em fornecer sempre informações exatas, precisas e verdadeiras, comprometendo-se, ainda, a atualizá-las sempre que alteradas.</p><p>7.3. O Usuário é responsável único e exclusivo por toda e qualquer atividade ocorrida, bem como todo e qualquer o conteúdo gerado a partir de seu CADASTRO.</p><p>7.4. O Usuário concorda em usar os serviços somente para os fins permitidos: 7.4.1. pelos termos do presente Termo; e 7.4.2. de acordo com as leis, regulamentos ou práticas e diretrizes geralmente aceitas no local onde os serviços são utilizados.</p><p>7.5. ao My Event é dado, a título gratuito, o direito de utilizar todas as informações constantes no cadastro do usuário, de acordo com a nossa política de privacidade, visando a comunicação com o usuário, otimizar usabilidade, fazer pesquisas e estatísticas, realizar campanhas orientativas e informações a respeito de novos serviços.</p><p>7.6. O Usuário é responsável por manter a confidencialidade de sua senha. O My Event não se responsabiliza por perdas de senhas ou qualquer dano que venha a ser causado por tal extravio.</p><p>7.7. Se o Usuário tiver conhecimento de qualquer utilização não autorizada da sua senha ou do seu cadastro, fica obrigado a notificar imediatamente o My Event, através de e-mail de contato, disponível na página principal pelo aplicativo.</p><p>7.8. O Usuário concorda em receber comunicados relevantes da sua conta, tais como alertas, comprovantes, informações e histórico de utilização por e-mail. Outras mensagens publicitárias poderão ser enviadas porém podendo ser suspensas a critério do usuário.</p><p>7.9 A EVENTOS DE SERVIÇO TERÁ O DIREITO DE SUSPENDER A UTILIZAÇÃO DOS SERVIÇOS PARA O USUÁRIO CASO VERIFIQUE, POR QUAISQUER MEIOS, QUE AS INFORMAÇÕES PRESTADAS PELO USUÁRIO SÃO FALSAS OU IRREAIS, INDEPENDENTEMENTE DE NOTIFICAÇÃO PRÉVIA AO USUÁRIO .</p><h4>8. VIGÊNCIA E RESCISÃO</h4><p>8.1. O Serviço terá início na data de sua adesão pelo USUÁRIO, e vigorará por um período indeterminado.</p><h4>9. PROPRIEDADE</h4><p>9.1. O uso da expressão “My Event“ como marca, nomes empresarial ou nome de domínio, bem como os conteúdos das telas relativas aos serviços do My Event assim como os softwares, bancos de dados, redes e arquivos, que permitem que o Usuário acesse e use o sistema são propriedade única e exclusiva do My Event e estão protegidos pelas leis e tratados internacionais de direito autoral, marcas, patentes, modelos e desenhos industriais. O uso indevido e a reprodução total ou parcial dos referidos conteúdos são proibidos, sem a autorização expressa e por escrito do My Event.</p><p>9.2. O My Event concede ao Usuário uma licença pessoal, internacional, isenta de royalties, não exclusiva, para utilizar os serviços. Essa licença tem como único objetivo permitir o uso dos serviços tal como são fornecidos pelo My Event, da forma permitida no Termos de Uso. O Usuário não poderá (nem poderá permitir a mais ninguém) copiar, modificar, criar uma obra derivada, realizar engenharia inversa, descompilar ou, de qualquer outro modo, tentar extrair o código-fonte dos softwares criados pelo My Event ou de qualquer parte que o componha.</p><h4>10. PROIBIÇÕES AO USUÁRIO</h4><p>10.1. Os serviços do My Event somente poderão ser utilizados por pessoas com capacidade legal para contratá-los, sendo vedada a utilização por incapazes, dentre eles os menores de idade, ou pessoas que tenham sido inabilitadas pelo My Event temporária ou definitivamente.</p><p>10.2. Os cadastros são pessoais e intransferíveis, sendo terminantemente proibido: criar cadastros em nome de outros Usuários ou com dados pessoais falsos; acessar contas de outros Usuários; ceder de forma onerosa ou gratuita, vender, alugar ou de qualquer outra forma transferir o cadastro; criar novos cadastros por pessoas cujos cadastros originais tenham sido cancelados por infrações ao presente Termo de Uso, bem como aos demais regramentos estipulados pelo My Event.</p><p>10.3. A responsabilidade pelas informações fornecidas pelo Usuário é exclusiva dele próprio, respondendo civil e criminalmente, pela veracidade, exatidão e autenticidade dos dados pessoais cadastrados, podendo o My Event utilizar todos os meios legais para identificar seus Usuários, bem como de solicitar dados adicionais e documentos que entenda necessários à confirmação dos dados pessoais informados.</p><p>10.4. O Usuário concorda em usar os serviços somente para os fins permitidos e tem conhecimento que, sem prejuízo de outras medidas, o My Event poderá advertir, suspender ou cancelar, temporária ou definitivamente, os serviços ao Usuário a qualquer tempo, e tomar as medidas cabíveis se: o Usuário descumprir qualquer dispositivo deste Termo de Uso e aos demais documentos incorporados ao presente Termo, mesmo que por referência; praticar atos fraudulentos ou dolosos; não puder ser verificada a identidade do Usuário ou qualquer informação fornecida por ele esteja incorreta; acessar os serviços por qualquer meio que não através da interface fornecida pelo My Event (a menos que seja autorizado pelo My Event por escrito); utilizar um TCP/IP falso, interferir no acesso de qualquer outro Usuário, hospedeiro ou rede; acessar a rede através de meios automatizados como robôs, bots, etc; participar de alguma atividade que interfira ou interrompa o funcionamento dos serviços; reproduzir, duplicar, copiar, vender, comercializar ou revender os serviços para qualquer efeito; copiar, modificar, criar uma obra derivada, realizar engenharia reversa, descompilar ou, de qualquer outro modo, tentar extrair o código fonte do software fornecido pelo My Event como parte dos serviços ou de qualquer parte que o componha; praticar qualquer ato que viole ou interfira nas atividades e operações do My Event; utilizar qualquer uma das marcas registradas, marcas comerciais, marcas de serviços, logotipos, nomes de domínios ou outras características de marcas especiais do My Event, a menos que possua uma autorização por escrito para determinado fim.</p><p>10.5. Havendo a aplicação de qualquer sanção, serão automaticamente cancelados os serviços, bem como o(s) bloqueio de eventuais créditos virtuais(s) remanescentes e ainda não utilizado(s), não assistindo ao Usuário, por essa razão, qualquer indenização ou ressarcimento.</p><p>10.6. O Usuário está ciente de que o conteúdo que lhe está sendo apresentado pode estar protegido por direitos de propriedade intelectual. Assim sendo, o Usuário não poderá efetuar nenhum tipo de modificação, aluguel, arrendamento, empréstimo, venda, distribuição, ou criação de obras derivadas baseadas neste conteúdo.</p><h4>11. SOBRE ESTE TERMO DE USO</h4><p>11.1. Qualquer cláusula adicional a este Termo deve conter a concordância expressa e firmada, sempre de forma escrita, por um representante legal do My Event.</p><p>11.2. Se, por algum motivo, o My Event não exercer ou utilizar qualquer direito legal ou direito reconhecido contido neste Termo ou em qualquer instrumento acessório, isso não será considerado como uma renúncia formal aos direitos do My Event, mantendo-se tais direitos preservados para todos os devidos efeitos.</p><p>11.3. Se qualquer item deste Termo for declarado inválido por qualquer motivo, tal invalidação não anulará o Termo como um todo, permanecendo válidas as demais disposições.</p><p>11.4. O presente Termo é regido exclusivamente pelas leis brasileiras.</p><h4>12. LIMITAÇÃO DE RESPONSABILIDADE</h4><p>12.1. O My Event não se responsabiliza por nenhum dano que venha a ser causado ao Usuário que não seja oriundo de sua conduta.</p><p>12.2. o usuário concorda expressamente que o My Event não será responsável: por quaisquer danos diretos, indiretos, incidentais, lucros cessantes causados ao usuário pela utilização dos serviços prestados pelo My Event, bem com os prestados pelos parceiros comerciais; por qualquer publicidade ofensiva não atribuível ao My Event; quaisquer alterações que o My Event possa fazer aos serviços, por qualquer cessação permanente ou temporária do fornecimento dos serviços (ou quaisquer funcionalidades nos próprios serviços), tendo em vista a imprevisibilidade dos sistemas de informática e de toda a rede de suporte (provedores, hospedeiros, etc); pela eliminação, corrupção ou incapacidade de armazenamento de qualquer conteúdo ou outros dados de comunicações mantidos ou transmitidos pelo My Event; pela não manutenção, por parte do usuário, da segurança e da confidencialidade de seus dados; por qualquer vírus que possa atacar o equipamento do usuário pelo navegação na internet; ou como consequência da transferência de dados, arquivos, imagens, textos ou áudio.</p>",
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
