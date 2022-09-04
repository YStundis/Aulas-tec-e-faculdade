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
    public partial class Passagem : Form
    {
        public Passagem()
        {
            InitializeComponent();
        }

        private void label13_Click(object sender, EventArgs e)
        {

        }

        private void tabPage4_Click(object sender, EventArgs e)
        {

        }

        private void maskedTextBox3_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            DISNEY_VIAGENS DISNEY_VIAGENS = new DISNEY_VIAGENS();
            this.Hide();
            DISNEY_VIAGENS.ShowDialog();
        }

        private void txtIdade_TextChanged(object sender, EventArgs e)
        {

        }

        private void tabPage5_Click(object sender, EventArgs e)
        {

        }

        private void btnConfirmar_Click(object sender, EventArgs e)
        {
            Boolean v = false;
            Boolean vt = true;

            if (txtNome.Text == "" && v == false)
            {
                v = true;
                vt = false;
                //MessageBox.Show("Nome Obrigatório");
                errorProvider.SetError(txtNome, "Nome Obrigatório");
                txtNome.BackColor = Color.LightSalmon;
                txtNome.Focus();
            }
            else
            {
                errorProvider.SetError(txtNome, "");
                txtNome.BackColor = Color.White;
            }

            if (txtCel.MaskCompleted == false && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtCel, "Celular Obrigatório");
                txtCel.BackColor = Color.LightSalmon;
                txtCel.Focus();
            }
            else
            {
                errorProvider.SetError(txtCel, "");
                txtCel.BackColor = Color.White;
            }

            if (txtCPF.MaskCompleted == false && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtCPF, "CPF Obrigatório");
                txtCPF.BackColor = Color.LightSalmon;
                txtCPF.Focus();
            }
            else
            {
                errorProvider.SetError(txtCPF, "");
                txtCPF.BackColor = Color.White;
            }

            if (txtIdade.Text == "" && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtIdade, "Idade Obrigatório");
                txtIdade.BackColor = Color.LightSalmon;
                txtIdade.Focus();
            }
            else
            {
                errorProvider.SetError(txtIdade, "");
                txtIdade.BackColor = Color.White;
            }

            if (txtDataNas.MaskCompleted == false && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtDataNas, "Data de nascimento Obrigatório");
                txtDataNas.BackColor = Color.LightSalmon;
                txtDataNas.Focus();
            }
            else
            {
                errorProvider.SetError(txtDataNas, "");
                txtDataNas.BackColor = Color.White;
            }

            if (txtDataIda.MaskCompleted == false && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtDataIda, "Data de ida Obrigatório");
                txtDataIda.BackColor = Color.LightSalmon;
                txtDataIda.Focus();
            }
            else
            {
                errorProvider.SetError(txtDataIda, "");
                txtDataIda.BackColor = Color.White;
            }

            if (txtDataVolta.MaskCompleted == false && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtDataVolta, "Data de volta Obrigatório");
                txtDataVolta.BackColor = Color.LightSalmon;
                txtDataVolta.Focus();
            }
            else
            {
                errorProvider.SetError(txtDataVolta, "");
                txtDataVolta.BackColor = Color.White;
            }

            if (txtHorarioIda.MaskCompleted == false && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtHorarioIda, "Horario de ida Obrigatório");
                txtHorarioIda.BackColor = Color.LightSalmon;
                txtHorarioIda.Focus();
            }
            else
            {
                errorProvider.SetError(txtHorarioIda, "");
                txtHorarioIda.BackColor = Color.White;
            }

            if (txtHorarioVolta.MaskCompleted == false && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtHorarioVolta, "Horario de volta Obrigatório");
                txtHorarioVolta.BackColor = Color.LightSalmon;
                txtHorarioVolta.Focus();
            }
            else
            {
                errorProvider.SetError(txtHorarioVolta, "");
                txtHorarioVolta.BackColor = Color.White;
            }

            if (txtLocal.Text == "" && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtLocal, "Local Obrigatório");
                txtLocal.BackColor = Color.LightSalmon;
                txtLocal.Focus();
            }
            else
            {
                errorProvider.SetError(txtLocal, "");
                txtLocal.BackColor = Color.White;
            }

            if (txtQTDp.Text == "" && v == false)
            {
                v = true;
                vt = false;

                errorProvider.SetError(txtQTDp, "QTD Passagens Obrigatório");
                txtQTDp.BackColor = Color.LightSalmon;
                txtQTDp.Focus();
            }
            else
            {
                errorProvider.SetError(txtQTDp, "");
                txtQTDp.BackColor = Color.White;
            }

            if (vt == true)
            {
                MessageBox.Show("( ͡❛ ͜ʖ ͡❛)👌");
            }

        }

        private void txtDataVolta_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void maskedTextBox1_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void txtDataIda_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void maskedTextBox3_MaskInputRejected_1(object sender, MaskInputRejectedEventArgs e)
        {

        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void txtLocal_TextChanged(object sender, EventArgs e)
        {

        }

        private void Passagem_Load(object sender, EventArgs e)
        {

        }
    }
}
