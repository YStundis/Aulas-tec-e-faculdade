namespace TDE3_PE
{
	partial class Pedido
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Pedido));
			this.dgvPedido = new System.Windows.Forms.DataGridView();
			this.lblNome = new System.Windows.Forms.Label();
			this.txtNome = new System.Windows.Forms.TextBox();
			this.btnConfirmar = new System.Windows.Forms.Button();
			this.btnSair = new System.Windows.Forms.Button();
			this.lblTel = new System.Windows.Forms.Label();
			this.txtEndereco = new System.Windows.Forms.TextBox();
			this.lblEnderoco = new System.Windows.Forms.Label();
			this.lblPedido = new System.Windows.Forms.Label();
			this.lblExtra = new System.Windows.Forms.Label();
			this.txtTel = new System.Windows.Forms.MaskedTextBox();
			this.cmpPedido = new System.Windows.Forms.ComboBox();
			this.cmbExtra = new System.Windows.Forms.ComboBox();
			this.Nome = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.Telefone = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.Endereco = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.dPedido = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.Extra = new System.Windows.Forms.DataGridViewTextBoxColumn();
			this.errorProvider = new System.Windows.Forms.ErrorProvider(this.components);
			((System.ComponentModel.ISupportInitialize)(this.dgvPedido)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.errorProvider)).BeginInit();
			this.SuspendLayout();
			// 
			// dgvPedido
			// 
			this.dgvPedido.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
			this.dgvPedido.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dgvPedido.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Nome,
            this.Telefone,
            this.Endereco,
            this.dPedido,
            this.Extra});
			this.dgvPedido.GridColor = System.Drawing.SystemColors.ControlDarkDark;
			this.dgvPedido.Location = new System.Drawing.Point(12, 137);
			this.dgvPedido.Name = "dgvPedido";
			this.dgvPedido.Size = new System.Drawing.Size(562, 150);
			this.dgvPedido.TabIndex = 8;
			this.dgvPedido.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvPedido_CellContentClick);
			// 
			// lblNome
			// 
			this.lblNome.AutoSize = true;
			this.lblNome.BackColor = System.Drawing.Color.Transparent;
			this.lblNome.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lblNome.Location = new System.Drawing.Point(18, 30);
			this.lblNome.Name = "lblNome";
			this.lblNome.Size = new System.Drawing.Size(43, 13);
			this.lblNome.TabIndex = 1;
			this.lblNome.Text = "Nome:";
			// 
			// txtNome
			// 
			this.txtNome.Location = new System.Drawing.Point(59, 27);
			this.txtNome.Name = "txtNome";
			this.txtNome.Size = new System.Drawing.Size(117, 20);
			this.txtNome.TabIndex = 1;
			this.txtNome.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
			// 
			// btnConfirmar
			// 
			this.btnConfirmar.BackColor = System.Drawing.Color.Transparent;
			this.btnConfirmar.FlatAppearance.BorderSize = 0;
			this.btnConfirmar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.btnConfirmar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btnConfirmar.ForeColor = System.Drawing.Color.Black;
			this.btnConfirmar.Location = new System.Drawing.Point(580, 147);
			this.btnConfirmar.Name = "btnConfirmar";
			this.btnConfirmar.Size = new System.Drawing.Size(101, 54);
			this.btnConfirmar.TabIndex = 6;
			this.btnConfirmar.Text = "Confirmar";
			this.btnConfirmar.UseVisualStyleBackColor = false;
			this.btnConfirmar.Click += new System.EventHandler(this.btnConfirmar_Click);
			// 
			// btnSair
			// 
			this.btnSair.BackColor = System.Drawing.Color.Transparent;
			this.btnSair.FlatAppearance.BorderSize = 0;
			this.btnSair.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
			this.btnSair.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.btnSair.ForeColor = System.Drawing.Color.Black;
			this.btnSair.Location = new System.Drawing.Point(580, 218);
			this.btnSair.Name = "btnSair";
			this.btnSair.Size = new System.Drawing.Size(101, 54);
			this.btnSair.TabIndex = 7;
			this.btnSair.Text = "Sair";
			this.btnSair.UseVisualStyleBackColor = false;
			this.btnSair.Click += new System.EventHandler(this.btnSair_Click);
			// 
			// lblTel
			// 
			this.lblTel.AutoSize = true;
			this.lblTel.BackColor = System.Drawing.Color.Transparent;
			this.lblTel.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lblTel.Location = new System.Drawing.Point(18, 83);
			this.lblTel.Name = "lblTel";
			this.lblTel.Size = new System.Drawing.Size(61, 13);
			this.lblTel.TabIndex = 5;
			this.lblTel.Text = "Telefone:";
			this.lblTel.Click += new System.EventHandler(this.label2_Click);
			// 
			// txtEndereco
			// 
			this.txtEndereco.Location = new System.Drawing.Point(271, 27);
			this.txtEndereco.Name = "txtEndereco";
			this.txtEndereco.Size = new System.Drawing.Size(100, 20);
			this.txtEndereco.TabIndex = 3;
			this.txtEndereco.TextChanged += new System.EventHandler(this.textBox3_TextChanged);
			// 
			// lblEnderoco
			// 
			this.lblEnderoco.AutoSize = true;
			this.lblEnderoco.BackColor = System.Drawing.Color.Transparent;
			this.lblEnderoco.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lblEnderoco.Location = new System.Drawing.Point(209, 30);
			this.lblEnderoco.Name = "lblEnderoco";
			this.lblEnderoco.Size = new System.Drawing.Size(65, 13);
			this.lblEnderoco.TabIndex = 7;
			this.lblEnderoco.Text = "Endereço:";
			// 
			// lblPedido
			// 
			this.lblPedido.AutoSize = true;
			this.lblPedido.BackColor = System.Drawing.Color.Transparent;
			this.lblPedido.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lblPedido.Location = new System.Drawing.Point(209, 83);
			this.lblPedido.Name = "lblPedido";
			this.lblPedido.Size = new System.Drawing.Size(50, 13);
			this.lblPedido.TabIndex = 9;
			this.lblPedido.Text = "Pedido:";
			// 
			// lblExtra
			// 
			this.lblExtra.AutoSize = true;
			this.lblExtra.BackColor = System.Drawing.Color.Transparent;
			this.lblExtra.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lblExtra.Location = new System.Drawing.Point(402, 56);
			this.lblExtra.Name = "lblExtra";
			this.lblExtra.Size = new System.Drawing.Size(40, 13);
			this.lblExtra.TabIndex = 11;
			this.lblExtra.Text = "Extra:";
			this.lblExtra.Click += new System.EventHandler(this.label5_Click);
			// 
			// txtTel
			// 
			this.txtTel.Location = new System.Drawing.Point(76, 80);
			this.txtTel.Mask = "(00) 00000-0000";
			this.txtTel.Name = "txtTel";
			this.txtTel.Size = new System.Drawing.Size(100, 20);
			this.txtTel.TabIndex = 2;
			// 
			// cmpPedido
			// 
			this.cmpPedido.FormattingEnabled = true;
			this.cmpPedido.Items.AddRange(new object[] {
            "01 - X-Tudo",
            "02 - X-Salada",
            "03 - X-Bacon",
            "04 - HotDog",
            "05 - HotDog II",
            "06 - Mini Pizza Calabresa",
            "07 - Milk Shake",
            "08 - Batata Frita",
            "09 - Escondidinho",
            "10 - Lasanha",
            "11 - 51",
            "12 - Empadinha",
            "13 - Coxinha",
            "14 - Pastel",
            "15 - Pamonha",
            "16 - Cural",
            "17 - Mané Pelado",
            "18 - Moreninha do rio",
            "19 - Rocanbole",
            "20 - Victor"});
			this.cmpPedido.Location = new System.Drawing.Point(258, 80);
			this.cmpPedido.Name = "cmpPedido";
			this.cmpPedido.Size = new System.Drawing.Size(113, 21);
			this.cmpPedido.TabIndex = 4;
			this.cmpPedido.SelectedIndexChanged += new System.EventHandler(this.cmpPedido_SelectedIndexChanged);
			// 
			// cmbExtra
			// 
			this.cmbExtra.FormattingEnabled = true;
			this.cmbExtra.Items.AddRange(new object[] {
            "01 - Nutela",
            "02 - Refrigerante",
            "03 - Guarana jesus",
            "04 - Suco",
            "05 - Todinho",
            "06 - Garapa",
            "07 - Leite",
            "08 - Cerveja",
            "09 - Cachaça",
            "10 - Victor"});
			this.cmbExtra.Location = new System.Drawing.Point(442, 53);
			this.cmbExtra.Name = "cmbExtra";
			this.cmbExtra.Size = new System.Drawing.Size(112, 21);
			this.cmbExtra.TabIndex = 5;
			// 
			// Nome
			// 
			this.Nome.HeaderText = "Nome";
			this.Nome.Name = "Nome";
			// 
			// Telefone
			// 
			this.Telefone.HeaderText = "Telefone";
			this.Telefone.Name = "Telefone";
			// 
			// Endereco
			// 
			this.Endereco.HeaderText = "endereco";
			this.Endereco.Name = "Endereco";
			// 
			// dPedido
			// 
			this.dPedido.HeaderText = "Pedido";
			this.dPedido.Name = "dPedido";
			// 
			// Extra
			// 
			this.Extra.HeaderText = "Extra";
			this.Extra.Name = "Extra";
			// 
			// errorProvider
			// 
			this.errorProvider.ContainerControl = this;
			// 
			// Pedido
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
			this.ClientSize = new System.Drawing.Size(693, 299);
			this.Controls.Add(this.cmbExtra);
			this.Controls.Add(this.cmpPedido);
			this.Controls.Add(this.txtTel);
			this.Controls.Add(this.lblExtra);
			this.Controls.Add(this.lblPedido);
			this.Controls.Add(this.txtEndereco);
			this.Controls.Add(this.lblEnderoco);
			this.Controls.Add(this.lblTel);
			this.Controls.Add(this.btnSair);
			this.Controls.Add(this.btnConfirmar);
			this.Controls.Add(this.txtNome);
			this.Controls.Add(this.lblNome);
			this.Controls.Add(this.dgvPedido);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "Pedido";
			this.Text = "FormPedido";
			this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Pedido_FormClosing);
			this.Load += new System.EventHandler(this.Form1_Load);
			((System.ComponentModel.ISupportInitialize)(this.dgvPedido)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.errorProvider)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion

		private System.Windows.Forms.DataGridView dgvPedido;
		private System.Windows.Forms.Label lblNome;
		private System.Windows.Forms.TextBox txtNome;
		private System.Windows.Forms.Button btnConfirmar;
		private System.Windows.Forms.Button btnSair;
		private System.Windows.Forms.Label lblTel;
		private System.Windows.Forms.TextBox txtEndereco;
		private System.Windows.Forms.Label lblEnderoco;
		private System.Windows.Forms.Label lblPedido;
		private System.Windows.Forms.Label lblExtra;
		private System.Windows.Forms.MaskedTextBox txtTel;
		private System.Windows.Forms.ComboBox cmpPedido;
		private System.Windows.Forms.ComboBox cmbExtra;
		private System.Windows.Forms.DataGridViewTextBoxColumn Nome;
		private System.Windows.Forms.DataGridViewTextBoxColumn Telefone;
		private System.Windows.Forms.DataGridViewTextBoxColumn Endereco;
		private System.Windows.Forms.DataGridViewTextBoxColumn dPedido;
		private System.Windows.Forms.DataGridViewTextBoxColumn Extra;
		private System.Windows.Forms.ErrorProvider errorProvider;
	}
}

