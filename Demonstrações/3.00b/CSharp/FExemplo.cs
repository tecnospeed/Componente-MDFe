using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;

namespace ExemploMDFe
{
    public partial class FrmExemplo : Form
    {
        //******************************************************************************************************
        //
        //          Importação de funções externas
        //
        //******************************************************************************************************        

        //Carga de Dlls
        [System.Runtime.InteropServices.DllImport("kernel32.dll", EntryPoint = "GetPrivateProfileString")]
        private static extern int GetPrivateProfileString(string lpAppName, string lpKeyName, string lpDefault, StringBuilder lpReturnedString, int nSize, string lpFileName);
        [System.Runtime.InteropServices.DllImport("kernel32.dll", EntryPoint = "WritePrivateProfileString")]
        private static extern bool WritePrivateProfileString(string lpAppName, string lpKeyName, string lpString, string lpFileName);

        //******************************************************************************************************
        //
        //          Declaração de variáveis
        //
        //******************************************************************************************************     

        //Declaração de variáveis do componente spdMDFeX
        MDFeX.spdMDFeX MDFe;
        spdMdfeDatasetX.spdMdfeDatasetX MDFeDataSet;

        //Arquivo INI a ser manipulado com parametrizações
        string ArqIni = Application.StartupPath + "\\mdfeConfig.ini";

        //Certificado configurado
        string CertificadoSelecionado;

        //Guarda o número do lote a ser enviado
        string FIdLote = "1";

        //******************************************************************************************************
        //
        //          Funções utilitárias
        //
        //******************************************************************************************************

        //Grava valor no arquivo .ini
        public static bool WriteIniValue(string section, string key, string value, string filename)
        {
            return WritePrivateProfileString(section, key, value, filename);
        }

        // Templaate de Aviso
        private void Aviso(string aMensagem)
        {
            MessageBox.Show(aMensagem, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        //Atualiza o status na tela
        private void AtualizaStatusNaTela(string Valor)
        {
            lblStatus.Text = Valor;
        }

        // Tratamento de Exceptions
        private void TratarExcecao(Exception ex)
        {
            MessageBox.Show(ex.Message, "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        // Verifica se o componente está configurado
        private void CheckConfig(bool ClearOutput = true)
        {
            bool bConfig;
            if (ClearOutput)
            {
                mmXML.Clear();
            }

            bConfig = true;

            if (MDFe.UF == null)
            {
                bConfig = false;
            }
            if (MDFe.CNPJ == null)
            {
                bConfig = false;
            }
            if (MDFe.NomeCertificado == null)
            {
                if (MDFe.CaminhoCertificado == null || MDFe.SenhaCertificado == null)
                {
                    bConfig = false;
                }
            }
            if (!bConfig)
            {
                throw new Exception("Favor configurar o componente antes de prosseguir (via ini ou via propriedades).");
            }
        }

        //Atualiza o valor de retorno de um método na tela
        private void AtualizaRetornoNaTela(string Valor)
        {
            mmXML.Text = Valor;
        }

        // Configura MDFeDataSet
        private void ConfiguraMDFeDataSet()
        {
            string _VersaoManual = "3.00b";
            MDFeDataSet.Versao = _VersaoManual;
            MDFeDataSet.ConfigSection = "XMLENVIO";
            MDFeDataSet.MappingFileName = MDFe.DiretorioEsquemas + _VersaoManual + "\\Mapping.txt";
            MDFeDataSet.CreateDatasets();
            MDFeDataSet.IdLote = "1";
        }

        //Dados MDFe (DataSet)
        private void DadosDoMDFe()
        {
            MDFeDataSet.SetFieldAsString("idLote", "1");
            MDFeDataSet.SetFieldAsString("Versao_2", "3.00b");
            MDFeDataSet.SetFieldAsString("cUF_5", "41");
            MDFeDataSet.SetFieldAsString("tpAmb_6", "2");
            MDFeDataSet.SetFieldAsString("tpEmit_7", "1");
            MDFeDataSet.SetFieldAsString("mod_8", "58");
            MDFeDataSet.SetFieldAsString("serie_9", "597");
            MDFeDataSet.SetFieldAsString("nMDF_10", "3");
            MDFeDataSet.SetFieldAsString("cMDF_11", "00000816");
            MDFeDataSet.SetFieldAsString("cDV_12", "");
            MDFeDataSet.SetFieldAsString("modal_13", "1");
            MDFeDataSet.SetFieldAsString("dhEmi_14", "2018-05-09T09:11:00-03:00");
            MDFeDataSet.SetFieldAsString("tpEmis_15", "1");
            MDFeDataSet.SetFieldAsString("procEmi_16", "0");
            MDFeDataSet.SetFieldAsString("verProc_17", "5.0");
            MDFeDataSet.SetFieldAsString("UFIni_18", "PR");
            MDFeDataSet.SetFieldAsString("UFFim_19", "SP");
            MDFeDataSet.SetFieldAsString("versaoModal_42", "3.00");
        }

        //Dados de Carregamento (DataSet)
        private void DadosCarregamento()
        {
            MDFeDataSet.IncludePart("infMunCarrega");
            MDFeDataSet.SetFieldAsString("cMunCarrega_21", "4111803");
            MDFeDataSet.SetFieldAsString("xMunCarrega_22", "JACAREZINHO");
            MDFeDataSet.SavePart("infMunCarrega");
        }

        //Dados do Emitente (DataSet)
        private void DadosDoEmitente()
        {
            MDFeDataSet.SetFieldAsString("CNPJ_26", "99999999999999");
            MDFeDataSet.SetFieldAsString("IE_27", "999999999");
            MDFeDataSet.SetFieldAsString("xNome_28", "TecnospeedTi");
            MDFeDataSet.SetFieldAsString("xFant_29", "TecnospeedTi");
            MDFeDataSet.SetFieldAsString("xLgr_31", "RUA VEREADOR ANACLETO DO CARMO");
            MDFeDataSet.SetFieldAsString("nro_32", "720");
            MDFeDataSet.SetFieldAsString("xCpl_33", "");
            MDFeDataSet.SetFieldAsString("xBairro_34", "VILA RONDON");
            MDFeDataSet.SetFieldAsString("cMun_35", "4111803");
            MDFeDataSet.SetFieldAsString("xMun_36", "JACAREZINHO");
            MDFeDataSet.SetFieldAsString("CEP_37", "86400000");
            MDFeDataSet.SetFieldAsString("UF_38", "PR");
            MDFeDataSet.SetFieldAsString("fone_39", "4335271323");
            MDFeDataSet.SetFieldAsString("email_40", "suporte@teste.com.br");
        }

        //Dados do Modal (DataSet)
        private void DadosDoModal()
        {
            MDFeDataSet.IncludePart("rodo");
            MDFeDataSet.SetFieldAsString("RNTRC_rodo_2", "48695023");
            MDFeDataSet.SetFieldAsString("cInt_rodo_5", "014-1");
            MDFeDataSet.SetFieldAsString("placa_rodo_6", "HQV0325");
            MDFeDataSet.SetFieldAsString("tara_rodo_7", "15100");
            MDFeDataSet.SetFieldAsString("capKG_rodo_8", "48500");
            MDFeDataSet.SetFieldAsString("capM3_rodo_9", "500");
            MDFeDataSet.SetFieldAsString("tpRod_rodo_34", "03");
            MDFeDataSet.SetFieldAsString("tpCar_rodo_35", "02");
            MDFeDataSet.SetFieldAsString("UF_rodo_36", "PR");
            MDFeDataSet.SavePart("rodo");
        }

        //Dados do Contratante (DataSet)
        private void DadosContratante()
        {
            MDFeDataSet.IncludePart("infContratante");
            MDFeDataSet.SetFieldAsString("CNPJ_rodo_173", "99999999999999");
            MDFeDataSet.SavePart("infContratante");
        }

        //Dados do Condutor (DataSet)
        private void DadosCondutor()
        {
            MDFeDataSet.IncludePart("condutor");
            MDFeDataSet.SetFieldAsString("xNome_rodo_13", "LUCAS");
            MDFeDataSet.SetFieldAsString("CPF_rodo_14", "99999999999");
            MDFeDataSet.SavePart("condutor");
        }

        //Dados de Descarregamento da Carga (DataSet)
        private void DadosDescarga()
        {
            MDFeDataSet.IncludePart("infMunDescarga");
            MDFeDataSet.SetFieldAsString("cMunDescarga_46", "3552205");
            MDFeDataSet.SetFieldAsString("xMunDescarga_47", "SOROCABA");
            MDFeDataSet.IncludePart("infNFe");
            MDFeDataSet.SetFieldAsString("chNFe_58", "99999999999999999999999999999999999999999999");
            MDFeDataSet.SavePart("infNFe");
            MDFeDataSet.SavePart("infMunDescarga");
        }

        //Dados da Seguradora (DataSet)
        private void DadosSeguradora()
        {
            MDFeDataSet.IncludePart("seg");
            MDFeDataSet.SetFieldAsString("respSeg_153", "1");
            MDFeDataSet.SetFieldAsString("CNPJ_154", "99999999999999");
            MDFeDataSet.SetFieldAsString("CPF_155", "");
            MDFeDataSet.SetFieldAsString("xSeg_156", "PORTO SEGURO - CIA DE SEGUROS");
            MDFeDataSet.SetFieldAsString("CNPJ_157", "99999999999999");
            MDFeDataSet.SetFieldAsString("nApol_158", "06540713572");
            MDFeDataSet.SavePart("seg");

            MDFeDataSet.IncludePart("naver");
            MDFeDataSet.SetFieldAsString("nAver_159", "73652309182");
            MDFeDataSet.SavePart("naver");
        }

        //Dados Totalizadores (DataSet)
        private void DadosTotalizadores()
        {
            MDFeDataSet.SetFieldAsString("qCTe_69", "1");
            MDFeDataSet.SetFieldAsString("qNFe_71", "0");
            MDFeDataSet.SetFieldAsString("vCarga_73", "54743.52");
            MDFeDataSet.SetFieldAsString("cUnid_74", "01");
            MDFeDataSet.SetFieldAsString("qCarga_75", "32240.0000");
        }

        //Dados Adicionais (DataSet)
        private void DadosAdicionais()
        {
            MDFeDataSet.SetFieldAsString("infAdFisco_79", "");
            MDFeDataSet.SetFieldAsString("infCpl_80", "");
        }

        //Obter o valor de uma tag do XML
        private static string GetValueTag(string xml, string tag)
        {
            XmlDocument xmldoc = new XmlDocument();
            xmldoc.LoadXml(xml);
            XmlNodeList elemList = xmldoc.GetElementsByTagName(tag);
            if (elemList.Count != 0)
            {
                return elemList[0].InnerXml;
            }
            else return "";
        }

        //Obter o Código da UF
        private static string GetCodigoUF(string UF)
        {
            switch (UF)
            {
                case "RO":
                    return "11";
                case "AC":
                    return "12";
                case "AM":
                    return "13";
                case "RR":
                    return "14";
                case "PA":
                    return "15";
                case "AP":
                    return "16";
                case "TO":
                    return "17";
                case "MA":
                    return "21";
                case "PI":
                    return "22";
                case "CE":
                    return "23";
                case "RN":
                    return "24";
                case "PB":
                    return "25";
                case "PE":
                    return "26";
                case "AL":
                    return "27";
                case "SE":
                    return "28";
                case "BA":
                    return "29";
                case "MG":
                    return "31";
                case "ES":
                    return "32";
                case "RJ":
                    return "33";
                case "SP":
                    return "35";
                case "PR":
                    return "41";
                case "SC":
                    return "42";
                case "RS":
                    return "43";
                case "MS":
                    return "50";
                case "MT":
                    return "51";
                case "GO":
                    return "52";
                case "DF":
                    return "53";
                default:
                    return "";
            }
        }
        //Obter o XML Destinatário do MDFe
        public static string GetXMLDestinatario(string diretorio, string chave, string xml)
        {
            string PathXMLDestinatario = diretorio + "\\" + chave + "-mdfe.xml";
            if (File.Exists(PathXMLDestinatario))
            {
                return LoadFromFile(PathXMLDestinatario);
            }
            else if (xml != "")
            {
                return xml;
            }
            else
            {
                throw new Exception("Informe a chave de um MDF-e Autorizado ou preencha o memo com o valor do XML Destinatário");
            }
        }

        //Obter o valor de um arquivo
        private static string LoadFromFile(string diretorio)
        {
            try
            {
                using (StreamReader sr = new StreamReader(diretorio))
                {
                    String XMLDestinatario = sr.ReadToEnd();
                    return XMLDestinatario;
                }
            }
            catch (IOException e)
            {
                throw new Exception(e.Message);
            }
        }

        //Inicialização
        public FrmExemplo()
        {
            InitializeComponent();

            //Instancia o Objeto responsável pelaT interação com servidores da Receita
            MDFe = new MDFeX.spdMDFeX();
            MDFeDataSet = new spdMdfeDatasetX.spdMdfeDatasetX();

            //Utiliza Método do Componente para Listar Certificados instalado no SO            
            string Certificados;
            string[] vetor;

            Certificados = MDFe.ListarCertificados("|");
            vetor = Certificados.Split('|');

            cbCertificados.Items.Clear();

            foreach (string _cert in vetor)
            {
                cbCertificados.Items.Add(_cert);
            }
        }

        // 1.1 Configurar o CNPJ da Software House
        private void btnConfiguraSH_Click(object sender, EventArgs e)
        {
            MDFe.ConfigurarSoftwareHouse(edtCNPJSH.Text, "");
        }

        // 1.2 Configurar Arquivo .ini
        private void btnConfiguraIni_Click(object sender, EventArgs e)
        {
            if (cbCertificados.SelectedIndex != -1)
            {
                CertificadoSelecionado = cbCertificados.Items[cbCertificados.SelectedIndex].ToString();
                MDFe.NomeCertificado = CertificadoSelecionado;

                //Grava o nome do certificado selecionado no arquivo .ini
                WriteIniValue("MDFe", "NomeCertificado", CertificadoSelecionado, ArqIni);
                System.Diagnostics.Process.Start(ArqIni);
            }
            else
            {
                Aviso("Favor selecionar um certificado");
            }
        }

        // 2.Executando LoadConfig
        private void btnLoadConfig_Click(object sender, EventArgs e)
        {
            try
            {
                MDFe.LoadConfig(ArqIni);
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("LoadConfig MDFe: Erro");
                TratarExcecao(ex);
            }
            edtUF.Text = MDFe.UF;
            edtCNPJEmit.Text = MDFe.CNPJ;
            cbCertificados.Text = MDFe.NomeCertificado;
            AtualizaStatusNaTela("Configurações carregadas via arquivo ini.");
        }

        // 3.Verificar Status do Serviço
        private void btnStatus_Click(object sender, EventArgs e)
        {
            CheckConfig(false);
            try
            {
                string _ValorDeRetorno = MDFe.StatusDoServicoMDFe();

                AtualizaRetornoNaTela(_ValorDeRetorno);

                AtualizaStatusNaTela("Status do Serviço: OK");
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Status do Serviço: Erro");
                TratarExcecao(ex);
            }
        }

        // 4.1.Gerar XML via TX2
        private void btnTx2_Click(object sender, EventArgs e)
        {
            CheckConfig();
            try
            {
                OpenFileDialog openFileDialog1 = new OpenFileDialog();
                openFileDialog1.Filter = "Tx2 files (*.tx2)|*.tx2";
                openFileDialog1.InitialDirectory = Application.StartupPath;
                if (openFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    ConfiguraMDFeDataSet();
                    MDFeDataSet.LoadFromTx2(openFileDialog1.FileName);
                    string _ValorDeRetorno = MDFeDataSet.LoteMdfe();
                    AtualizaRetornoNaTela(_ValorDeRetorno);
                    edtChave.Text = MDFeDataSet.GetFieldAsString("Id_3").Substring(4, 44);
                    AtualizaStatusNaTela("Gerar XML por TX2: OK");
                }
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Gerar XML por TX2: Erro");
                TratarExcecao(ex);
            }
        }

        // 4.2.Gerar XML via DataSet
        private void btnDataSet_Click(object sender, EventArgs e)
        {
            CheckConfig();
            ConfiguraMDFeDataSet();
            MDFeDataSet.Include();
            DadosDoMDFe();
            DadosCarregamento();
            DadosDoEmitente();
            DadosDoModal();
            DadosContratante();
            DadosCondutor();
            DadosDescarga();
            DadosSeguradora();
            DadosTotalizadores();
            DadosAdicionais();
            MDFeDataSet.Save();
            GetCodigoUF(MDFe.UF);

            string CodigoUF = GetCodigoUF(MDFe.UF);

            string Data = DateTime.Now.ToString("yyyy-MM-dd");

            string Hora = DateTime.Now.ToString("hh:mm:ss");

            string DataFull = Data + "T" + Hora + "-03:00";

            string Modelo = "67";

            string Codigo = "06021956";

            string Serie = "1";

            string Numero = "1";

            string tpEmis = "1";

            string Chave = MDFe.CalculaChave(CodigoUF, Data, MDFe.CNPJ, Modelo, Serie, Numero, Codigo, tpEmis);

            edtChave.Text = Chave;

            string _XML = MDFeDataSet.LoteMdfe();
            AtualizaRetornoNaTela(_XML);
            AtualizaStatusNaTela("XML via DataSets gerado com sucesso.");
        }

        // 5.1. Assinar MDFe
        private void btnAssinar_Click(object sender, EventArgs e)
        {
            string _XML = MDFe.AssinarMDFe(mmXML.Text);
            AtualizaRetornoNaTela(_XML);
            AtualizaStatusNaTela("Assinar MDFe: OK");
        }

        // 5.2. Preve DAMDFE
        private void btnPreverDamdfe_Click(object sender, EventArgs e)
        {
            CheckConfig(false);
            try
            {
                string _XML = mmXML.Text;
                if (_XML.Trim() != "")
                {
                    MDFe.VisualizarMDFe(_XML, "");
                }
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Prever DAMDFE: Erro");
                TratarExcecao(ex);
            }
        }

        // 6.Enviar MDFe
        private void btnEnviarMDFe_Click(object sender, EventArgs e)
        {
            CheckConfig(false);
            try
            {

                string _XMLDeEnvio;
                string _ValorDeRetorno;

                _XMLDeEnvio = mmXML.Text;
                _XMLDeEnvio = MDFe.AssinarMDFe(_XMLDeEnvio);
                _ValorDeRetorno = MDFe.EnviarMDFe(FIdLote, _XMLDeEnvio);
                edtRecibo.Text = GetValueTag(_ValorDeRetorno, "nRec");
                AtualizaRetornoNaTela(_ValorDeRetorno);
                AtualizaStatusNaTela("Enviar MDFe: OK");
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Enviar MDFe: Erro");
                TratarExcecao(ex);
            }
        }

        // 7. Consultar Recibo MDFe
        private void btnConsultaRecibo_Click(object sender, EventArgs e)
        {
            CheckConfig();
            try
            {
                if (edtRecibo.Text != "")
                {
                    string _ValorDeRetorno = MDFe.ConsultarReciboMDFe(edtRecibo.Text);
                    AtualizaRetornoNaTela(_ValorDeRetorno);
                    edtProtocolo.Text = GetValueTag(_ValorDeRetorno, "nProt");
                    AtualizaStatusNaTela("Consultar Recibo MDFe: OK");
                }
                else
                {
                    Aviso("Favor informar um recibo antes de prosseguir");
                }
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Consultar Recibo MDFe: Erro");
                TratarExcecao(ex);
            }
        }

        // 8.Consultar MDFe
        private void btnConsultaMDFe_Click(object sender, EventArgs e)
        {
            CheckConfig();
            try
            {
                if (edtChave.Text != "")
                {
                    string _ValorDeRetorno = MDFe.ConsultarMDFe(edtChave.Text);

                    AtualizaRetornoNaTela(_ValorDeRetorno);

                    AtualizaStatusNaTela("Consultar MDFe: OK");
                }
                else
                {
                    Aviso("Favor informar uma chave antes de prosseguir");
                }
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Consultar MDFe: Erro");
                TratarExcecao(ex);
            }
        }

        // 9.Encerrar MDFe
        private void btnEncerrar_Click(object sender, EventArgs e)
        {
            CheckConfig();
            try
            {
                ExemploMDFe.FEncerraMDFe frmEncerra = new ExemploMDFe.FEncerraMDFe();
                DialogResult Result;

                frmEncerra.edtChave.Text = edtChave.Text;
                frmEncerra.edtNumeroProtocolo.Text = edtProtocolo.Text;
                string _DataHora = String.Format("{0:yyyy-MM-dd'T'HH:mm:sszzz}", DateTime.Now);
                string _Data = String.Format("{0:yyyy-MM-dd}", DateTime.Now);
                Result = frmEncerra.ShowDialog();

                if (Result == DialogResult.OK)
                {
                    string _ValorDeRetorno = MDFe.EncerrarMDFe(frmEncerra.edtChave.Text,
                                         frmEncerra.edtNumeroProtocolo.Text,
                                         _DataHora,
                                         "1",
                                         _Data,
                                         frmEncerra.edtUFEncerramento.Text,
                                         frmEncerra.edtMunEncerramento.Text,
                                         "-03:00");

                    AtualizaRetornoNaTela(_ValorDeRetorno);

                    AtualizaStatusNaTela("Encerrar MDFe: OK");
                }
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Encerrar MDFe: Erro");
                TratarExcecao(ex);
            }
        }

        // 10.Cancelar MDFe
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            CheckConfig();
            try
            {
                ExemploMDFe.FCancelaMDFe frmCancela = new ExemploMDFe.FCancelaMDFe();
                DialogResult Result;

                frmCancela.edtChave.Text = edtChave.Text;
                frmCancela.edtNumeroProtocolo.Text = edtProtocolo.Text;
                string _Data = String.Format("{0:yyyy-MM-dd'T'HH:mm:sszzz}", DateTime.Now);

                Result = frmCancela.ShowDialog();

                if (Result == DialogResult.OK)
                {
                    string _ValorDeRetorno = MDFe.CancelarMDFe(frmCancela.edtChave.Text,
                                         frmCancela.edtNumeroProtocolo.Text,
                                         frmCancela.mmJustificativa.Text,
                                         _Data,
                                         "1",
                                         "-03:00");

                    AtualizaRetornoNaTela(_ValorDeRetorno);

                    AtualizaStatusNaTela("Cancelar MDFe: OK");
                }
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Cancelar MDFe: Erro");
                TratarExcecao(ex);
            }
        }

        // 11.Visualizar
        private void btnVisualizar_Click(object sender, EventArgs e)
        {
            CheckConfig(false);
            try
            {
                string XML = GetXMLDestinatario(MDFe.DiretorioXmlDestinatario, edtChave.Text, mmXML.Text);
                MDFe.VisualizarMDFe(XML, "");
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Visualizar: Erro");
                TratarExcecao(ex);
            }
        }

        // 12.Exportar para PDF
        private void btnExporta_Click(object sender, EventArgs e)
        {
            CheckConfig(false);
            try
            {
                if (saveFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    string XML = GetXMLDestinatario(MDFe.DiretorioXmlDestinatario, edtChave.Text, mmXML.Text);
                    MDFe.ExportarMDFe(XML, "", MDFeX.FormatoExportacaoMDFe.fePDF, saveFileDialog1.FileName);
                }
            }
            catch (Exception ex)
            {
                AtualizaStatusNaTela("Exportar para PDF: Erro");
                TratarExcecao(ex);
            }
        }

    }
}
