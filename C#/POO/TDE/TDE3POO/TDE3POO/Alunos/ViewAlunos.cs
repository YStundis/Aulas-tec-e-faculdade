using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TDE3POO.Alunos
{
	public partial class ViewAlunos : Form
	{
		AlunosController controller = new AlunosController();

		public ViewAlunos()
		{
			InitializeComponent();
		}

		private void btnCadastrar_Click(object sender, EventArgs e)
		{
			int i = 0;

			String nomea = txtNome.Text;
			String Periodo = cbxPeriodo.Text;
			String Turma = cbxTurma.Text;
			String RA = txtRA.Text;
			String Ano = cbxAno.Text;

			controller.store(nomea, Turma, Ano, RA, Periodo);

			dgvAlunos.Rows.Insert(i++, nomea, Periodo, Ano, Turma, RA);

			txtNome.Text = "";
			cbxPeriodo.Text = "";
			cbxAno.Text = "";
			cbxTurma.Text = "";
			txtRA.Text = "";
			txtRG.Text = "";
			txtCPF.Text = "";
			mtxtDataNascimento.Text = "";
			txtObservacoes.Text = "";
			txtNomeMae.Text = "";
			txtRGMae.Text = "";
			txtCpfMae.Text = "";
			txtNomePai.Text = "";
			txtRGPai.Text = "";
			txtCPFPai.Text = "";
			txtEndereco.Text = "";
			txtNumero.Text = "";
			txtBairro.Text = "";
			txtTelefone.Text = "";
			txtTelefone2.Text = "";
			cbxSala.Text = "";
			txtObservacoesEscolares.Text = "";
		}

		private void ViewAlunos_Load_1(object sender, EventArgs e)
		{
			List<Aluno> alunos = controller.show();

			int i = 0;

			foreach (Aluno aluno in alunos)
			{
				dgvAlunos.Rows.Insert(i++, aluno.Nome, aluno.Periodo, aluno.Ano, aluno.Turma, aluno.Ra);
			}
		}
	}
}
