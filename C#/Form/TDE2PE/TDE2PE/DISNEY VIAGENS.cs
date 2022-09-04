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
    public partial class DISNEY_VIAGENS : Form
    {
        public DISNEY_VIAGENS()
        {
            InitializeComponent();
        }

        private void DISNEY_VIAGENS_Load(object sender, EventArgs e)
        {

        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            Boolean validou = false;
            Boolean vt = true;

            if (txtUsuario.Text == "" && validou == false)
            {
                validou = true;
                vt = false;
                //MessageBox.Show("Nome ou e-mail obrigatório");
                errorProvider.SetError(txtUsuario, "Nome ou e-mail obrigatório");
                txtUsuario.Focus();
            }
            else
            {
                errorProvider.SetError(txtUsuario, "");
            }
            if (txtSenha.Text == "" && validou == false)
            {
                validou = true;
                vt = false;
                errorProvider.SetError(txtSenha, "Senha obrigatória");
                txtSenha.Focus();
            }
            else
            {
                errorProvider.SetError(txtSenha, "");
            }

            if (vt == true)
            {
                Passagem Passagem = new Passagem();
                this.Hide();
                Passagem.ShowDialog();
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnCadas_Click(object sender, EventArgs e)
        {
            Cadastro Cadastro = new Cadastro();
            this.Hide();
            Cadastro.ShowDialog();
        }
    }
}
