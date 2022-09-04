
namespace TDE2PE
{
    partial class Passagem
    {
        /// <summary>
        /// Variável de designer necessária.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpar os recursos que estão sendo usados.
        /// </summary>
        /// <param name="disposing">true se for necessário descartar os recursos gerenciados; caso contrário, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código gerado pelo Windows Form Designer

        /// <summary>
        /// Método necessário para suporte ao Designer - não modifique 
        /// o conteúdo deste método com o editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Passagem));
            this.tabControl2 = new System.Windows.Forms.TabControl();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.txtCel = new System.Windows.Forms.MaskedTextBox();
            this.label21 = new System.Windows.Forms.Label();
            this.txtDataNas = new System.Windows.Forms.MaskedTextBox();
            this.txtCPF = new System.Windows.Forms.MaskedTextBox();
            this.label20 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.txtIdade = new System.Windows.Forms.TextBox();
            this.label19 = new System.Windows.Forms.Label();
            this.txtNome = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.txtHorarioVolta = new System.Windows.Forms.MaskedTextBox();
            this.txtDataVolta = new System.Windows.Forms.MaskedTextBox();
            this.txtHorarioIda = new System.Windows.Forms.MaskedTextBox();
            this.txtDataIda = new System.Windows.Forms.MaskedTextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.tabPage6 = new System.Windows.Forms.TabPage();
            this.txtLocal = new System.Windows.Forms.TextBox();
            this.txtQTDp = new System.Windows.Forms.TextBox();
            this.label18 = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.btnConfirmar = new System.Windows.Forms.Button();
            this.btnSair = new System.Windows.Forms.Button();
            this.errorProvider = new System.Windows.Forms.ErrorProvider(this.components);
            this.tabControl2.SuspendLayout();
            this.tabPage4.SuspendLayout();
            this.tabPage5.SuspendLayout();
            this.tabPage6.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).BeginInit();
            this.SuspendLayout();
            // 
            // tabControl2
            // 
            this.tabControl2.Controls.Add(this.tabPage4);
            this.tabControl2.Controls.Add(this.tabPage5);
            this.tabControl2.Controls.Add(this.tabPage6);
            this.tabControl2.Location = new System.Drawing.Point(12, 12);
            this.tabControl2.Name = "tabControl2";
            this.tabControl2.SelectedIndex = 0;
            this.tabControl2.Size = new System.Drawing.Size(322, 225);
            this.tabControl2.TabIndex = 0;
            // 
            // tabPage4
            // 
            this.tabPage4.AccessibleName = "tpDadosP";
            this.tabPage4.BackColor = System.Drawing.Color.DarkRed;
            this.tabPage4.Controls.Add(this.txtCel);
            this.tabPage4.Controls.Add(this.label21);
            this.tabPage4.Controls.Add(this.txtDataNas);
            this.tabPage4.Controls.Add(this.txtCPF);
            this.tabPage4.Controls.Add(this.label20);
            this.tabPage4.Controls.Add(this.label13);
            this.tabPage4.Controls.Add(this.txtIdade);
            this.tabPage4.Controls.Add(this.label19);
            this.tabPage4.Controls.Add(this.txtNome);
            this.tabPage4.Controls.Add(this.label11);
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage4.Size = new System.Drawing.Size(314, 199);
            this.tabPage4.TabIndex = 0;
            this.tabPage4.Text = "Dados Principais";
            this.tabPage4.Click += new System.EventHandler(this.tabPage4_Click);
            // 
            // txtCel
            // 
            this.txtCel.Location = new System.Drawing.Point(69, 52);
            this.txtCel.Mask = "(00) 00000-0000";
            this.txtCel.Name = "txtCel";
            this.txtCel.Size = new System.Drawing.Size(88, 20);
            this.txtCel.TabIndex = 2;
            // 
            // label21
            // 
            this.label21.AutoSize = true;
            this.label21.ForeColor = System.Drawing.Color.White;
            this.label21.Location = new System.Drawing.Point(21, 55);
            this.label21.Name = "label21";
            this.label21.Size = new System.Drawing.Size(42, 13);
            this.label21.TabIndex = 15;
            this.label21.Text = "Celular:";
            // 
            // txtDataNas
            // 
            this.txtDataNas.Location = new System.Drawing.Point(132, 160);
            this.txtDataNas.Mask = "00/00/0000";
            this.txtDataNas.Name = "txtDataNas";
            this.txtDataNas.Size = new System.Drawing.Size(69, 20);
            this.txtDataNas.TabIndex = 5;
            this.txtDataNas.MaskInputRejected += new System.Windows.Forms.MaskInputRejectedEventHandler(this.maskedTextBox3_MaskInputRejected_1);
            // 
            // txtCPF
            // 
            this.txtCPF.Location = new System.Drawing.Point(65, 88);
            this.txtCPF.Mask = "000.000.000.-00";
            this.txtCPF.Name = "txtCPF";
            this.txtCPF.Size = new System.Drawing.Size(90, 20);
            this.txtCPF.TabIndex = 3;
            this.txtCPF.MaskInputRejected += new System.Windows.Forms.MaskInputRejectedEventHandler(this.maskedTextBox1_MaskInputRejected);
            // 
            // label20
            // 
            this.label20.AutoSize = true;
            this.label20.ForeColor = System.Drawing.Color.White;
            this.label20.Location = new System.Drawing.Point(21, 91);
            this.label20.Name = "label20";
            this.label20.Size = new System.Drawing.Size(30, 13);
            this.label20.TabIndex = 10;
            this.label20.Text = "CPF:";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.ForeColor = System.Drawing.Color.White;
            this.label13.Location = new System.Drawing.Point(21, 163);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(105, 13);
            this.label13.TabIndex = 9;
            this.label13.Text = "Data de nascimento:";
            // 
            // txtIdade
            // 
            this.txtIdade.Location = new System.Drawing.Point(64, 127);
            this.txtIdade.Name = "txtIdade";
            this.txtIdade.Size = new System.Drawing.Size(50, 20);
            this.txtIdade.TabIndex = 4;
            this.txtIdade.TextChanged += new System.EventHandler(this.txtIdade_TextChanged);
            // 
            // label19
            // 
            this.label19.AutoSize = true;
            this.label19.ForeColor = System.Drawing.Color.White;
            this.label19.Location = new System.Drawing.Point(21, 130);
            this.label19.Name = "label19";
            this.label19.Size = new System.Drawing.Size(37, 13);
            this.label19.TabIndex = 8;
            this.label19.Text = "Idade:";
            // 
            // txtNome
            // 
            this.txtNome.Location = new System.Drawing.Point(61, 14);
            this.txtNome.Name = "txtNome";
            this.txtNome.Size = new System.Drawing.Size(228, 20);
            this.txtNome.TabIndex = 1;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.ForeColor = System.Drawing.Color.White;
            this.label11.Location = new System.Drawing.Point(17, 17);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(38, 13);
            this.label11.TabIndex = 0;
            this.label11.Text = "Nome:";
            // 
            // tabPage5
            // 
            this.tabPage5.AccessibleName = "tpDatasH";
            this.tabPage5.BackColor = System.Drawing.Color.DarkRed;
            this.tabPage5.Controls.Add(this.txtHorarioVolta);
            this.tabPage5.Controls.Add(this.txtDataVolta);
            this.tabPage5.Controls.Add(this.txtHorarioIda);
            this.tabPage5.Controls.Add(this.txtDataIda);
            this.tabPage5.Controls.Add(this.label17);
            this.tabPage5.Controls.Add(this.label16);
            this.tabPage5.Controls.Add(this.label15);
            this.tabPage5.Controls.Add(this.label14);
            this.tabPage5.Location = new System.Drawing.Point(4, 22);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage5.Size = new System.Drawing.Size(314, 199);
            this.tabPage5.TabIndex = 1;
            this.tabPage5.Text = "Datas e Horarios";
            this.tabPage5.Click += new System.EventHandler(this.tabPage5_Click);
            // 
            // txtHorarioVolta
            // 
            this.txtHorarioVolta.Location = new System.Drawing.Point(173, 142);
            this.txtHorarioVolta.Mask = "00:00";
            this.txtHorarioVolta.Name = "txtHorarioVolta";
            this.txtHorarioVolta.Size = new System.Drawing.Size(100, 20);
            this.txtHorarioVolta.TabIndex = 9;
            // 
            // txtDataVolta
            // 
            this.txtDataVolta.Location = new System.Drawing.Point(42, 142);
            this.txtDataVolta.Mask = "00/00/0000";
            this.txtDataVolta.Name = "txtDataVolta";
            this.txtDataVolta.Size = new System.Drawing.Size(100, 20);
            this.txtDataVolta.TabIndex = 7;
            this.txtDataVolta.MaskInputRejected += new System.Windows.Forms.MaskInputRejectedEventHandler(this.txtDataVolta_MaskInputRejected);
            // 
            // txtHorarioIda
            // 
            this.txtHorarioIda.Location = new System.Drawing.Point(173, 57);
            this.txtHorarioIda.Mask = "00:00";
            this.txtHorarioIda.Name = "txtHorarioIda";
            this.txtHorarioIda.Size = new System.Drawing.Size(100, 20);
            this.txtHorarioIda.TabIndex = 8;
            this.txtHorarioIda.MaskInputRejected += new System.Windows.Forms.MaskInputRejectedEventHandler(this.maskedTextBox3_MaskInputRejected);
            // 
            // txtDataIda
            // 
            this.txtDataIda.Location = new System.Drawing.Point(42, 57);
            this.txtDataIda.Mask = "00/00/0000";
            this.txtDataIda.Name = "txtDataIda";
            this.txtDataIda.Size = new System.Drawing.Size(100, 20);
            this.txtDataIda.TabIndex = 6;
            this.txtDataIda.MaskInputRejected += new System.Windows.Forms.MaskInputRejectedEventHandler(this.txtDataIda_MaskInputRejected);
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.ForeColor = System.Drawing.Color.White;
            this.label17.Location = new System.Drawing.Point(170, 28);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(61, 13);
            this.label17.TabIndex = 4;
            this.label17.Text = "Horario ida:";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.ForeColor = System.Drawing.Color.White;
            this.label16.Location = new System.Drawing.Point(170, 111);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(70, 13);
            this.label16.TabIndex = 3;
            this.label16.Text = "Horario volta:";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.ForeColor = System.Drawing.Color.White;
            this.label15.Location = new System.Drawing.Point(39, 111);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(59, 13);
            this.label15.TabIndex = 2;
            this.label15.Text = "Data volta:";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.ForeColor = System.Drawing.Color.White;
            this.label14.Location = new System.Drawing.Point(39, 28);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(50, 13);
            this.label14.TabIndex = 1;
            this.label14.Text = "Data ida:";
            // 
            // tabPage6
            // 
            this.tabPage6.BackColor = System.Drawing.Color.DarkRed;
            this.tabPage6.Controls.Add(this.txtLocal);
            this.tabPage6.Controls.Add(this.txtQTDp);
            this.tabPage6.Controls.Add(this.label18);
            this.tabPage6.Controls.Add(this.label12);
            this.tabPage6.ForeColor = System.Drawing.Color.Black;
            this.tabPage6.Location = new System.Drawing.Point(4, 22);
            this.tabPage6.Name = "tabPage6";
            this.tabPage6.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage6.Size = new System.Drawing.Size(314, 199);
            this.tabPage6.TabIndex = 2;
            this.tabPage6.Text = "Dados da Passagem";
            // 
            // txtLocal
            // 
            this.txtLocal.Location = new System.Drawing.Point(59, 43);
            this.txtLocal.Name = "txtLocal";
            this.txtLocal.Size = new System.Drawing.Size(228, 20);
            this.txtLocal.TabIndex = 10;
            this.txtLocal.TextChanged += new System.EventHandler(this.txtLocal_TextChanged);
            // 
            // txtQTDp
            // 
            this.txtQTDp.Location = new System.Drawing.Point(98, 106);
            this.txtQTDp.Name = "txtQTDp";
            this.txtQTDp.Size = new System.Drawing.Size(53, 20);
            this.txtQTDp.TabIndex = 11;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.ForeColor = System.Drawing.Color.White;
            this.label18.Location = new System.Drawing.Point(15, 109);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(77, 13);
            this.label18.TabIndex = 3;
            this.label18.Text = "Qtd Passagen:";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.ForeColor = System.Drawing.Color.White;
            this.label12.Location = new System.Drawing.Point(15, 46);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(36, 13);
            this.label12.TabIndex = 1;
            this.label12.Text = "Local:";
            this.label12.Click += new System.EventHandler(this.label12_Click);
            // 
            // btnConfirmar
            // 
            this.btnConfirmar.BackColor = System.Drawing.Color.Transparent;
            this.btnConfirmar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnConfirmar.ForeColor = System.Drawing.Color.White;
            this.btnConfirmar.Location = new System.Drawing.Point(12, 243);
            this.btnConfirmar.Name = "btnConfirmar";
            this.btnConfirmar.Size = new System.Drawing.Size(157, 23);
            this.btnConfirmar.TabIndex = 12;
            this.btnConfirmar.Text = "Confirmar";
            this.btnConfirmar.UseVisualStyleBackColor = false;
            this.btnConfirmar.Click += new System.EventHandler(this.btnConfirmar_Click);
            // 
            // btnSair
            // 
            this.btnSair.BackColor = System.Drawing.Color.Transparent;
            this.btnSair.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnSair.ForeColor = System.Drawing.Color.White;
            this.btnSair.Location = new System.Drawing.Point(170, 243);
            this.btnSair.Name = "btnSair";
            this.btnSair.Size = new System.Drawing.Size(160, 23);
            this.btnSair.TabIndex = 13;
            this.btnSair.Text = "Voltar";
            this.btnSair.UseVisualStyleBackColor = false;
            this.btnSair.Click += new System.EventHandler(this.btnSair_Click);
            // 
            // errorProvider
            // 
            this.errorProvider.ContainerControl = this;
            // 
            // Passagem
            // 
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(511, 282);
            this.Controls.Add(this.btnSair);
            this.Controls.Add(this.btnConfirmar);
            this.Controls.Add(this.tabControl2);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "Passagem";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Passagem";
            this.Load += new System.EventHandler(this.Passagem_Load);
            this.tabControl2.ResumeLayout(false);
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            this.tabPage5.ResumeLayout(false);
            this.tabPage5.PerformLayout();
            this.tabPage6.ResumeLayout(false);
            this.tabPage6.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errorProvider)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TabControl tabControl2;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.TabPage tabPage5;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Button btnConfirmar;
        private System.Windows.Forms.Button btnSair;
        private System.Windows.Forms.TextBox txtNome;
        private System.Windows.Forms.TextBox txtQTDp;
        private System.Windows.Forms.TextBox txtLocal;
        private System.Windows.Forms.MaskedTextBox txtHorarioVolta;
        private System.Windows.Forms.MaskedTextBox txtDataVolta;
        private System.Windows.Forms.MaskedTextBox txtHorarioIda;
        private System.Windows.Forms.MaskedTextBox txtDataIda;
        private System.Windows.Forms.TextBox txtIdade;
        private System.Windows.Forms.Label label19;
        private System.Windows.Forms.ErrorProvider errorProvider;
        private System.Windows.Forms.MaskedTextBox txtCPF;
        private System.Windows.Forms.Label label20;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.MaskedTextBox txtDataNas;
        private System.Windows.Forms.MaskedTextBox txtCel;
        private System.Windows.Forms.Label label21;
        private System.Windows.Forms.TabPage tabPage6;
    }
}

