procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form4));
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
        self.ProgName.TabIndex := 2;
        self.ProgName.Text := 'FX Text Encoder/Decoder 1.1';
        self.ProgName.TextAlign := System.Drawing.ContentAlignment.TopCenter;
        // 
        // Author
        // 
        self.Author.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.Author.Location := new System.Drawing.Point(0, 35);
        self.Author.Name := 'Author';
        self.Author.Size := new System.Drawing.Size(242, 70);
        self.Author.TabIndex := 3;
        self.Author.Text := 'The program was written by Yura Konyshev aka Yura_FX on PascalABC.NET';
        self.Author.TextAlign := System.Drawing.ContentAlignment.TopCenter;
        // 
        // GNU
        // 
        self.GNU.Font := new System.Drawing.Font('Microsoft Sans Serif', 9, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.GNU.Location := new System.Drawing.Point(12, 75);
        self.GNU.Name := 'GNU';
        self.GNU.Size := new System.Drawing.Size(218, 33);
        self.GNU.TabIndex := 4;
        self.GNU.Text := 'The program uses the GNU GPL v3 license';
        self.GNU.TextAlign := System.Drawing.ContentAlignment.TopCenter;
        // 
        // Form4
        // 
        self.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.ClientSize := new System.Drawing.Size(242, 114);
        self.Controls.Add(self.GNU);
        self.Controls.Add(self.Author);
        self.Controls.Add(self.ProgName);
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.MaximizeBox := false;
        self.MinimizeBox := false;
        self.Name := 'Form4';
        self.StartPosition := System.Windows.Forms.FormStartPosition.CenterScreen;
        self.Text := 'About the program';
        self.ResumeLayout(false);
    end;
