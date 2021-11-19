
namespace MercamaxApp
{
    partial class MainForm
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
            this.lblNombre = new System.Windows.Forms.Label();
            this.btnBodega = new System.Windows.Forms.Button();
            this.txtBodega = new System.Windows.Forms.TextBox();
            this.txtGondola = new System.Windows.Forms.TextBox();
            this.btnGondola = new System.Windows.Forms.Button();
            this.tabModo = new System.Windows.Forms.TabControl();
            this.tabCliente = new System.Windows.Forms.TabPage();
            this.lblPuntos = new System.Windows.Forms.Label();
            this.tabCajero = new System.Windows.Forms.TabPage();
            this.btnAdd = new System.Windows.Forms.Button();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.btnComprar = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.tabAdmin = new System.Windows.Forms.TabPage();
            this.tabModo.SuspendLayout();
            this.tabCliente.SuspendLayout();
            this.tabCajero.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.tabAdmin.SuspendLayout();
            this.SuspendLayout();
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.Location = new System.Drawing.Point(13, 13);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(35, 13);
            this.lblNombre.TabIndex = 1;
            this.lblNombre.Text = "label1";
            // 
            // btnBodega
            // 
            this.btnBodega.Location = new System.Drawing.Point(13, 17);
            this.btnBodega.Name = "btnBodega";
            this.btnBodega.Size = new System.Drawing.Size(101, 23);
            this.btnBodega.TabIndex = 3;
            this.btnBodega.Text = "Ver en bodega";
            this.btnBodega.UseVisualStyleBackColor = true;
            this.btnBodega.Click += new System.EventHandler(this.btnBodega_Click);
            // 
            // txtBodega
            // 
            this.txtBodega.Location = new System.Drawing.Point(120, 18);
            this.txtBodega.Name = "txtBodega";
            this.txtBodega.Size = new System.Drawing.Size(100, 20);
            this.txtBodega.TabIndex = 4;
            // 
            // txtGondola
            // 
            this.txtGondola.Location = new System.Drawing.Point(120, 57);
            this.txtGondola.Name = "txtGondola";
            this.txtGondola.Size = new System.Drawing.Size(100, 20);
            this.txtGondola.TabIndex = 5;
            // 
            // btnGondola
            // 
            this.btnGondola.Location = new System.Drawing.Point(13, 56);
            this.btnGondola.Name = "btnGondola";
            this.btnGondola.Size = new System.Drawing.Size(101, 23);
            this.btnGondola.TabIndex = 6;
            this.btnGondola.Text = "Ver en gondola";
            this.btnGondola.UseVisualStyleBackColor = true;
            this.btnGondola.Click += new System.EventHandler(this.btnGondola_Click);
            // 
            // tabModo
            // 
            this.tabModo.Controls.Add(this.tabCliente);
            this.tabModo.Controls.Add(this.tabCajero);
            this.tabModo.Controls.Add(this.tabAdmin);
            this.tabModo.Location = new System.Drawing.Point(12, 41);
            this.tabModo.Name = "tabModo";
            this.tabModo.SelectedIndex = 0;
            this.tabModo.Size = new System.Drawing.Size(423, 492);
            this.tabModo.TabIndex = 7;
            // 
            // tabCliente
            // 
            this.tabCliente.BackColor = System.Drawing.SystemColors.Control;
            this.tabCliente.Controls.Add(this.lblPuntos);
            this.tabCliente.Location = new System.Drawing.Point(4, 22);
            this.tabCliente.Name = "tabCliente";
            this.tabCliente.Padding = new System.Windows.Forms.Padding(3);
            this.tabCliente.Size = new System.Drawing.Size(415, 466);
            this.tabCliente.TabIndex = 0;
            this.tabCliente.Text = "Modo Cliente";
            this.tabCliente.Click += new System.EventHandler(this.tabCliente_Click);
            // 
            // lblPuntos
            // 
            this.lblPuntos.AutoSize = true;
            this.lblPuntos.Location = new System.Drawing.Point(12, 12);
            this.lblPuntos.Name = "lblPuntos";
            this.lblPuntos.Size = new System.Drawing.Size(35, 13);
            this.lblPuntos.TabIndex = 3;
            this.lblPuntos.Text = "label1";
            // 
            // tabCajero
            // 
            this.tabCajero.BackColor = System.Drawing.SystemColors.Control;
            this.tabCajero.Controls.Add(this.btnAdd);
            this.tabCajero.Controls.Add(this.dataGridView2);
            this.tabCajero.Controls.Add(this.btnComprar);
            this.tabCajero.Controls.Add(this.dataGridView1);
            this.tabCajero.Location = new System.Drawing.Point(4, 22);
            this.tabCajero.Name = "tabCajero";
            this.tabCajero.Padding = new System.Windows.Forms.Padding(3);
            this.tabCajero.Size = new System.Drawing.Size(415, 466);
            this.tabCajero.TabIndex = 1;
            this.tabCajero.Text = "Modo Cajero";
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(284, 126);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(108, 23);
            this.btnAdd.TabIndex = 7;
            this.btnAdd.Text = "Agregar Cliente";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // dataGridView2
            // 
            this.dataGridView2.AllowUserToAddRows = false;
            this.dataGridView2.AllowUserToDeleteRows = false;
            this.dataGridView2.AllowUserToResizeRows = false;
            this.dataGridView2.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Location = new System.Drawing.Point(15, 18);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.Size = new System.Drawing.Size(377, 99);
            this.dataGridView2.TabIndex = 6;
            this.dataGridView2.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView2_CellContentClick);
            // 
            // btnComprar
            // 
            this.btnComprar.Location = new System.Drawing.Point(317, 431);
            this.btnComprar.Name = "btnComprar";
            this.btnComprar.Size = new System.Drawing.Size(75, 23);
            this.btnComprar.TabIndex = 5;
            this.btnComprar.Text = "Comprar";
            this.btnComprar.UseVisualStyleBackColor = true;
            this.btnComprar.Click += new System.EventHandler(this.btnComprar_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AllowUserToResizeRows = false;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(15, 161);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(377, 261);
            this.dataGridView1.TabIndex = 4;
            this.dataGridView1.CellValidating += new System.Windows.Forms.DataGridViewCellValidatingEventHandler(this.dataGridView1_CellValidating);
            // 
            // tabAdmin
            // 
            this.tabAdmin.BackColor = System.Drawing.SystemColors.Control;
            this.tabAdmin.Controls.Add(this.btnBodega);
            this.tabAdmin.Controls.Add(this.btnGondola);
            this.tabAdmin.Controls.Add(this.txtBodega);
            this.tabAdmin.Controls.Add(this.txtGondola);
            this.tabAdmin.Location = new System.Drawing.Point(4, 22);
            this.tabAdmin.Name = "tabAdmin";
            this.tabAdmin.Size = new System.Drawing.Size(415, 466);
            this.tabAdmin.TabIndex = 2;
            this.tabAdmin.Text = "Modo Administrador";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(446, 546);
            this.Controls.Add(this.tabModo);
            this.Controls.Add(this.lblNombre);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MainForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "MercamaxApp";
            this.Load += new System.EventHandler(this.MainForm_Load);
            this.tabModo.ResumeLayout(false);
            this.tabCliente.ResumeLayout(false);
            this.tabCliente.PerformLayout();
            this.tabCajero.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.tabAdmin.ResumeLayout(false);
            this.tabAdmin.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.Button btnBodega;
        private System.Windows.Forms.TextBox txtBodega;
        private System.Windows.Forms.TextBox txtGondola;
        private System.Windows.Forms.Button btnGondola;
        private System.Windows.Forms.TabControl tabModo;
        private System.Windows.Forms.TabPage tabCliente;
        private System.Windows.Forms.TabPage tabCajero;
        private System.Windows.Forms.TabPage tabAdmin;
        private System.Windows.Forms.Label lblPuntos;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btnComprar;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.Button btnAdd;
    }
}

