using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TDE3POO.Alunos;

namespace TDE3POO
{
	public partial class Principal : Form
	{
		public Principal()
		{
			InitializeComponent();
		}

		private void btnCadastrar_Click(object sender, EventArgs e)
		{
			ViewAlunos form = new ViewAlunos();
			form.Show();
		}

	}
}
