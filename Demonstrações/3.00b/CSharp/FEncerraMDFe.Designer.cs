namespace ExemploMDFe
{
    partial class FEncerraMDFe
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FEncerraMDFe));
            this.btnCancelar = new System.Windows.Forms.Button();
            this.btnOk = new System.Windows.Forms.Button();
            this.lblUFEncerramento = new System.Windows.Forms.Label();
            this.edtNumeroProtocolo = new System.Windows.Forms.TextBox();
            this.lblNumeroProtocolo = new System.Windows.Forms.Label();
            this.edtChave = new System.Windows.Forms.TextBox();
            this.lblChave = new System.Windows.Forms.Label();
            this.lblMunEncerramento = new System.Windows.Forms.Label();
            this.edtUFEncerramento = new System.Windows.Forms.TextBox();
            this.edtMunEncerramento = new System.Windows.Forms.TextBox();
            this.SuspendLayout();
            // 
            // btnCancelar
            // 
            this.btnCancelar.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancelar.Location = new System.Drawing.Point(201, 169);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(75, 23);
            this.btnCancelar.TabIndex = 27;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = true;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // btnOk
            // 
            this.btnOk.Location = new System.Drawing.Point(120, 169);
            this.btnOk.Name = "btnOk";
            this.btnOk.Size = new System.Drawing.Size(75, 23);
            this.btnOk.TabIndex = 26;
            this.btnOk.Text = "Ok";
            this.btnOk.UseVisualStyleBackColor = true;
            this.btnOk.Click += new System.EventHandler(this.btnOk_Click);
            // 
            // lblUFEncerramento
            // 
            this.lblUFEncerramento.AutoSize = true;
            this.lblUFEncerramento.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblUFEncerramento.Location = new System.Drawing.Point(9, 86);
            this.lblUFEncerramento.Name = "lblUFEncerramento";
            this.lblUFEncerramento.Size = new System.Drawing.Size(179, 13);
            this.lblUFEncerramento.TabIndex = 24;
            this.lblUFEncerramento.Text = "UF de Encerramento (Código)*";
            // 
            // edtNumeroProtocolo
            // 
            this.edtNumeroProtocolo.Location = new System.Drawing.Point(8, 63);
            this.edtNumeroProtocolo.Name = "edtNumeroProtocolo";
            this.edtNumeroProtocolo.Size = new System.Drawing.Size(268, 20);
            this.edtNumeroProtocolo.TabIndex = 23;
            // 
            // lblNumeroProtocolo
            // 
            this.lblNumeroProtocolo.AutoSize = true;
            this.lblNumeroProtocolo.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNumeroProtocolo.Location = new System.Drawing.Point(9, 47);
            this.lblNumeroProtocolo.Name = "lblNumeroProtocolo";
            this.lblNumeroProtocolo.Size = new System.Drawing.Size(70, 13);
            this.lblNumeroProtocolo.TabIndex = 22;
            this.lblNumeroProtocolo.Text = "Protocolo *";
            // 
            // edtChave
            // 
            this.edtChave.Location = new System.Drawing.Point(8, 24);
            this.edtChave.Name = "edtChave";
            this.edtChave.Size = new System.Drawing.Size(268, 20);
            this.edtChave.TabIndex = 21;
            // 
            // lblChave
            // 
            this.lblChave.AutoSize = true;
            this.lblChave.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblChave.Location = new System.Drawing.Point(9, 8);
            this.lblChave.Name = "lblChave";
            this.lblChave.Size = new System.Drawing.Size(52, 13);
            this.lblChave.TabIndex = 20;
            this.lblChave.Text = "Chave *";
            // 
            // lblMunEncerramento
            // 
            this.lblMunEncerramento.AutoSize = true;
            this.lblMunEncerramento.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMunEncerramento.Location = new System.Drawing.Point(9, 127);
            this.lblMunEncerramento.Name = "lblMunEncerramento";
            this.lblMunEncerramento.Size = new System.Drawing.Size(219, 13);
            this.lblMunEncerramento.TabIndex = 28;
            this.lblMunEncerramento.Text = "Município de Encerramento (Código)*";
            // 
            // edtUFEncerramento
            // 
            this.edtUFEncerramento.Location = new System.Drawing.Point(8, 102);
            this.edtUFEncerramento.Name = "edtUFEncerramento";
            this.edtUFEncerramento.Size = new System.Drawing.Size(268, 20);
            this.edtUFEncerramento.TabIndex = 29;
            // 
            // edtMunEncerramento
            // 
            this.edtMunEncerramento.Location = new System.Drawing.Point(8, 143);
            this.edtMunEncerramento.Name = "edtMunEncerramento";
            this.edtMunEncerramento.Size = new System.Drawing.Size(268, 20);
            this.edtMunEncerramento.TabIndex = 30;
            // 
            // FEncerraMDFe
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(284, 196);
            this.Controls.Add(this.edtMunEncerramento);
            this.Controls.Add(this.edtUFEncerramento);
            this.Controls.Add(this.lblMunEncerramento);
            this.Controls.Add(this.btnCancelar);
            this.Controls.Add(this.btnOk);
            this.Controls.Add(this.lblUFEncerramento);
            this.Controls.Add(this.edtNumeroProtocolo);
            this.Controls.Add(this.lblNumeroProtocolo);
            this.Controls.Add(this.edtChave);
            this.Controls.Add(this.lblChave);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.MaximizeBox = false;
            this.Name = "FEncerraMDFe";
            this.Text = "Encerramento MDFe";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.Button btnOk;
        private System.Windows.Forms.Label lblUFEncerramento;
        public System.Windows.Forms.TextBox edtNumeroProtocolo;
        private System.Windows.Forms.Label lblNumeroProtocolo;
        public System.Windows.Forms.TextBox edtChave;
        private System.Windows.Forms.Label lblChave;
        private System.Windows.Forms.Label lblMunEncerramento;
        public System.Windows.Forms.TextBox edtUFEncerramento;
        public System.Windows.Forms.TextBox edtMunEncerramento;
    }
}