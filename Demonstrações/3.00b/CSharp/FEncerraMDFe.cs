using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ExemploMDFe
{
    public partial class FEncerraMDFe : Form
    {
        public FEncerraMDFe()
        {
            InitializeComponent();
        }

        private void btnOk_Click(object sender, EventArgs e)
        {
            string _Chave = edtChave.Text.Trim();
            string _Protocolo = edtNumeroProtocolo.Text.Trim();
            string _UFEncerramento = edtUFEncerramento.Text.Trim();
            string _MunEncerramento = edtMunEncerramento.Text.Trim();

            bool _valid = true;

            if (_Chave.Length <= 0)
            {
                MessageBox.Show("É obrigatório o preenchimento da chave");
                _valid = false;
            }

            if (_Protocolo.Length <= 0)
            {
                MessageBox.Show("É obrigatório o preenchimento do protocolo");
                _valid = false;
            }

            if (_UFEncerramento.Length < 2)
            {
                MessageBox.Show("O Código da UF de Encerramento deve conter 2 dígitos");
                _valid = false;
            }
            if (_MunEncerramento.Length < 7)
            {
                MessageBox.Show("O Código do município de Encerramento deve contter 7 dígitos");
                _valid = false;
            }
            if (_valid)
            {
                DialogResult = DialogResult.OK;
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            DialogResult = DialogResult.Cancel;
        }
    }
}
