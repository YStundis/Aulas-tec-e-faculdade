using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TDE2PE
{
    public partial class Cadastro : Form
    {
        public Cadastro()
        {
            InitializeComponent();
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            DISNEY_VIAGENS DISNEY_VIAGENS = new DISNEY_VIAGENS();
            this.Hide();
            DISNEY_VIAGENS.ShowDialog();
        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            Boolean validou = false;
            Boolean vt = true;

            if (txtNome.Text == "" && validou == false)
            {
                validou = true;
                vt = false;
                errorProvider.SetError(txtNome, "Nome obrigatório");
                txtNome.Focus();
            }
            else
            {
                errorProvider.SetError(txtNome, "");
            }

            if (txtEmail.Text == "" && validou == false)
            {
                validou = true;
                vt = false;
                errorProvider.SetError(txtEmail, "E-mail obrigatório");
                txtEmail.Focus();
            }
            else
            {
                errorProvider.SetError(txtEmail, "");
            }

            if (txtSenha.Text == "" && validou == false)
            {
                validou = true;
                vt = false;
                errorProvider.SetError(txtSenha, "Senha obrigatório");
                txtSenha.Focus();
            }
            else
            {
                errorProvider.SetError(txtSenha, "");
            }

            if (vt == true) {

                DISNEY_VIAGENS DISNEY_VIAGENS = new DISNEY_VIAGENS();
                this.Hide();
                DISNEY_VIAGENS.ShowDialog();

            }

        }

        private void Cadastro_Load(object sender, EventArgs e)
        {

        }
    }
}
