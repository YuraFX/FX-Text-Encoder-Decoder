procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form2));
        self.ProgName := new System.Windows.Forms.Label();
        self.Author := new System.Windows.Forms.Label();
        self.GNU := new System.Windows.Forms.Label();
        self.SuspendLayout();
        // 
        // ProgName
        // 
        self.ProgName.Font := new System.Drawing.Font('Microsoft Sans Serif', 11.25, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.ProgName.Location := new System.Drawing.Point(12, 9);
        self.ProgName.Name := 'ProgName';
        self.ProgName.Size := new System.Drawing.Size(218, 23);
        self.ProgName.TabIndex := 0;
        self.ProgName.Text := 'FX Text Encoder/Decoder 1.2';
        self.ProgName.TextAlign := System.Drawing.ContentAlignment.TopCenter;
        // 
        // Author
        // 
        self.Author.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.Author.Location := new System.Drawing.Point(12, 35);
        self.Author.Name := 'Author';
        self.Author.Size := new System.Drawing.Size(218, 70);
        self.Author.TabIndex := 1;
        self.Author.Text := 'Программу написал Конышев Юрий aka Yura_FX на PascalABC.NET';
        self.Author.TextAlign := System.Drawing.ContentAlignment.TopCenter;
        // 
        // GNU
        // 
        self.GNU.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.GNU.Location := new System.Drawing.Point(12, 75);
        self.GNU.Name := 'GNU';
        self.GNU.Size := new System.Drawing.Size(218, 33);
        self.GNU.TabIndex := 2;
        self.GNU.Text := 'Программа использует лицензию GNU GPL v3';
        self.GNU.TextAlign := System.Drawing.ContentAlignment.TopCenter;
        // 
        // Form2
        // 
        self.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.ClientSize := new System.Drawing.Size(242, 114);
        self.Controls.Add(self.GNU);
        self.Controls.Add(self.Author);
        self.Controls.Add(self.ProgName);
        self.ForeColor := System.Drawing.Color.White;
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.MaximizeBox := false;
        self.MinimizeBox := false;
        self.Name := 'Form2';
        self.ShowIcon := false;
        self.StartPosition := System.Windows.Forms.FormStartPosition.CenterScreen;
        self.Text := 'О программе';
        self.ResumeLayout(false);
    end;
