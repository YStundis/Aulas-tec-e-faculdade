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

namespace TDE3_PE
{
	public partial class Pedido : Form
	{

	static string CaminhoDados = AppDomain.CurrentDomain.BaseDirectory + "dados/";
	static string arquivo = CaminhoDados + "/Pedidos.txt";
	string SeparadorColuna = "|";

	
		public Pedido()
		{
			InitializeComponent();
		}

		private void Form1_Load(object sender, EventArgs e)
		{

			if (File.Exists(arquivo))
			{
				dgvPedido.Rows.Clear();

				using (StreamReader sr = new StreamReader(arquivo))
				{
					int TotalLinhas = 0;
					string linha;

					while ((linha = sr.ReadLine()) != null)
					{
						Console.WriteLine(linha);

						string[] partes = linha.Split(Convert.ToChar(SeparadorColuna));

						dgvPedido.Rows.Add(partes[0], partes[1], partes[2], partes[3], partes[4]);

						TotalLinhas++;
					}
					sr.Close();

					Console.WriteLine("Encontradas " + TotalLinhas + " linhas");
				}
			}

		}

		private void textBox1_TextChanged(object sender, EventArgs e)
		{

		}

		private void label2_Click(object sender, EventArgs e)
		{

		}

		private void label5_Click(object sender, EventArgs e)
		{

		}

		private void txtExtra_TextChanged(object sender, EventArgs e)
		{

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
				txtNome.BackColor = Color.LightSalmon;
				txtNome.Focus();
			}
			else
			{
				errorProvider.SetError(txtNome, "");
				txtNome.BackColor = Color.White;
			}

			if (txtTel.Text == "" && validou == false)
			{
				validou = true;
				vt = false;
				errorProvider.SetError(txtTel, "Telefone obrigatório");
				txtTel.BackColor = Color.LightSalmon;
				txtTel.Focus();
			}
			else
			{
				errorProvider.SetError(txtTel, "");
				txtTel.BackColor = Color.White;
			}

			if (txtEndereco.Text == "" && validou == false)
			{
				validou = true;
				vt = false;
				errorProvider.SetError(txtEndereco, "Endereço obrigatório");
				txtEndereco.BackColor = Color.LightSalmon;
				txtTel.Focus();
			}
			else
			{
				errorProvider.SetError(txtEndereco, "");
				txtEndereco.BackColor = Color.White;
			}

			if (cmpPedido.Text == "" && validou == false)
			{
				validou = true;
				vt = false;
				errorProvider.SetError(cmpPedido, "Pedido obrigatório");
				cmpPedido.BackColor = Color.LightSalmon;
				cmpPedido.Focus();
			}
			else
			{
				errorProvider.SetError(cmpPedido, "");
				cmpPedido.BackColor = Color.White;
			}

			if (vt == true)
			{

				bool VerificaDir = Directory.Exists(CaminhoDados);

				if (VerificaDir == false)
				{
					Directory.CreateDirectory(CaminhoDados);
				}

				if (VerificaDir == true)
				{
					bool VerificaArq = File.Exists(arquivo);
					if (VerificaArq == true)
					{
						using (StreamWriter sw = File.AppendText(arquivo))
						{
							sw.WriteLine(txtNome.Text + SeparadorColuna + txtTel.Text + SeparadorColuna + txtEndereco.Text + SeparadorColuna + cmpPedido.Text + SeparadorColuna + cmbExtra.Text);
						}
					}
					else
					{
						using (StreamWriter sw = File.CreateText(arquivo))
						{
							sw.WriteLine(txtNome.Text + SeparadorColuna + txtTel.Text + SeparadorColuna + txtEndereco.Text + SeparadorColuna + cmpPedido.Text + SeparadorColuna + cmbExtra.Text);
						}
					}
				}

				String nome = txtNome.Text;
				String telefone = txtTel.Text;
				String endereco = txtEndereco.Text;
				String pedido = cmpPedido.Text;
				String extra = cmbExtra.Text;

				dgvPedido.Rows.Add(nome, telefone, endereco, pedido, extra);

				txtNome.Text = "";
				txtEndereco.Text = "";
				txtTel.Text = "";
				cmpPedido.Text = "";
				cmbExtra.Text = "";

			}
		}

		private void textBox3_TextChanged(object sender, EventArgs e)
		{

		}

		private void cmpPedido_SelectedIndexChanged(object sender, EventArgs e)
		{

		}

		private void btnSair_Click(object sender, EventArgs e)
		{

			this.Close();

		}

		private void Pedido_FormClosing(object sender, FormClosingEventArgs e)
		{

			var opcaoSelecionada = MessageBox.Show("Deseja sair do sistema?", "Atenção", MessageBoxButtons.YesNo, MessageBoxIcon.Question, MessageBoxDefaultButton.Button2);

			if (opcaoSelecionada == DialogResult.No)
			{
				e.Cancel = true;
			}


		}

		private void dgvPedido_CellContentClick(object sender, DataGridViewCellEventArgs e)
		{

		}
	}
}
