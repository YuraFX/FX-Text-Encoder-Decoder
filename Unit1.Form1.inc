procedure InitializeComponent;
    begin
        self.components := new System.ComponentModel.Container();
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(Form1));
        self.menuStrip1 := new System.Windows.Forms.MenuStrip();
        self.toolStripMenuItem1 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem2 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem4 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem9 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem10 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem11 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem12 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem13 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem14 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem3 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem8 := new System.Windows.Forms.ToolStripMenuItem();
        self.NonDecoderText := new System.Windows.Forms.RichTextBox();
        self.contextMenuStrip1 := new System.Windows.Forms.ContextMenuStrip(self.components);
        self.toolStripMenuItem5 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem6 := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem7 := new System.Windows.Forms.ToolStripMenuItem();
        self.Encrypt := new System.Windows.Forms.Button();
        self.saveFileDialog1 := new System.Windows.Forms.SaveFileDialog();
        self.EncoderText := new System.Windows.Forms.RichTextBox();
        self.Decrypt := new System.Windows.Forms.Button();
        self.openFileDialog1 := new System.Windows.Forms.OpenFileDialog();
        self.Block1 := new System.Windows.Forms.PictureBox();
        self.Block2 := new System.Windows.Forms.PictureBox();
        self.Block3 := new System.Windows.Forms.PictureBox();
        self.Clear1 := new System.Windows.Forms.Button();
        self.Clear2 := new System.Windows.Forms.Button();
        self.WhiteBlock := new System.Windows.Forms.PictureBox();
        self.menuStrip1.SuspendLayout();
        self.contextMenuStrip1.SuspendLayout();
        (System.ComponentModel.ISupportInitialize(self.Block1)).BeginInit();
        (System.ComponentModel.ISupportInitialize(self.Block2)).BeginInit();
        (System.ComponentModel.ISupportInitialize(self.Block3)).BeginInit();
        (System.ComponentModel.ISupportInitialize(self.WhiteBlock)).BeginInit();
        self.SuspendLayout();
        // 
        // menuStrip1
        // 
        self.menuStrip1.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[5](self.toolStripMenuItem1, self.toolStripMenuItem2, self.toolStripMenuItem4, self.toolStripMenuItem3, self.toolStripMenuItem8));
        self.menuStrip1.Location := new System.Drawing.Point(0, 0);
        self.menuStrip1.Name := 'menuStrip1';
        self.menuStrip1.Size := new System.Drawing.Size(591, 24);
        self.menuStrip1.TabIndex := 0;
        self.menuStrip1.Text := 'menuStrip1';
        // 
        // toolStripMenuItem1
        // 
        self.toolStripMenuItem1.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem1.Name := 'toolStripMenuItem1';
        self.toolStripMenuItem1.Size := new System.Drawing.Size(127, 20);
        self.toolStripMenuItem1.Text := 'Зашифровать текст';
        self.toolStripMenuItem1.Click += toolStripMenuItem1_Click;
        // 
        // toolStripMenuItem2
        // 
        self.toolStripMenuItem2.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem2.Name := 'toolStripMenuItem2';
        self.toolStripMenuItem2.Size := new System.Drawing.Size(133, 20);
        self.toolStripMenuItem2.Text := 'Расшифровать текст';
        self.toolStripMenuItem2.Click += toolStripMenuItem2_Click;
        // 
        // toolStripMenuItem4
        // 
        self.toolStripMenuItem4.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[2](self.toolStripMenuItem9, self.toolStripMenuItem12));
        self.toolStripMenuItem4.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem4.Name := 'toolStripMenuItem4';
        self.toolStripMenuItem4.Size := new System.Drawing.Size(61, 20);
        self.toolStripMenuItem4.Text := 'Прочее';
        // 
        // toolStripMenuItem9
        // 
        self.toolStripMenuItem9.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.toolStripMenuItem9.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[2](self.toolStripMenuItem10, self.toolStripMenuItem11));
        self.toolStripMenuItem9.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem9.Image := (System.Drawing.Image(resources.GetObject('toolStripMenuItem9.Image')));
        self.toolStripMenuItem9.Name := 'toolStripMenuItem9';
        self.toolStripMenuItem9.Size := new System.Drawing.Size(152, 22);
        self.toolStripMenuItem9.Text := 'Тема';
        // 
        // toolStripMenuItem10
        // 
        self.toolStripMenuItem10.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.toolStripMenuItem10.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem10.Name := 'toolStripMenuItem10';
        self.toolStripMenuItem10.Size := new System.Drawing.Size(118, 22);
        self.toolStripMenuItem10.Text := 'Тёмная';
        self.toolStripMenuItem10.Click += toolStripMenuItem10_Click;
        // 
        // toolStripMenuItem11
        // 
        self.toolStripMenuItem11.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.toolStripMenuItem11.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem11.Name := 'toolStripMenuItem11';
        self.toolStripMenuItem11.Size := new System.Drawing.Size(118, 22);
        self.toolStripMenuItem11.Text := 'Светлая';
        self.toolStripMenuItem11.Click += toolStripMenuItem11_Click;
        // 
        // toolStripMenuItem12
        // 
        self.toolStripMenuItem12.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.toolStripMenuItem12.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[2](self.toolStripMenuItem13, self.toolStripMenuItem14));
        self.toolStripMenuItem12.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem12.Image := (System.Drawing.Image(resources.GetObject('toolStripMenuItem12.Image')));
        self.toolStripMenuItem12.Name := 'toolStripMenuItem12';
        self.toolStripMenuItem12.Size := new System.Drawing.Size(152, 22);
        self.toolStripMenuItem12.Text := 'Язык';
        // 
        // toolStripMenuItem13
        // 
        self.toolStripMenuItem13.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.toolStripMenuItem13.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem13.Image := (System.Drawing.Image(resources.GetObject('toolStripMenuItem13.Image')));
        self.toolStripMenuItem13.Name := 'toolStripMenuItem13';
        self.toolStripMenuItem13.Size := new System.Drawing.Size(141, 22);
        self.toolStripMenuItem13.Text := 'Английский';
        self.toolStripMenuItem13.Click += toolStripMenuItem13_Click;
        // 
        // toolStripMenuItem14
        // 
        self.toolStripMenuItem14.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.toolStripMenuItem14.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem14.Image := (System.Drawing.Image(resources.GetObject('toolStripMenuItem14.Image')));
        self.toolStripMenuItem14.Name := 'toolStripMenuItem14';
        self.toolStripMenuItem14.Size := new System.Drawing.Size(141, 22);
        self.toolStripMenuItem14.Text := 'Русский';
        self.toolStripMenuItem14.Click += toolStripMenuItem14_Click;
        // 
        // toolStripMenuItem3
        // 
        self.toolStripMenuItem3.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem3.Name := 'toolStripMenuItem3';
        self.toolStripMenuItem3.Size := new System.Drawing.Size(94, 20);
        self.toolStripMenuItem3.Text := 'О программе';
        self.toolStripMenuItem3.Click += toolStripMenuItem3_Click;
        // 
        // toolStripMenuItem8
        // 
        self.toolStripMenuItem8.Name := 'toolStripMenuItem8';
        self.toolStripMenuItem8.Size := new System.Drawing.Size(94, 20);
        self.toolStripMenuItem8.Text := 'О программе';
        self.toolStripMenuItem8.Visible := false;
        self.toolStripMenuItem8.Click += toolStripMenuItem8_Click;
        // 
        // NonDecoderText
        // 
        self.NonDecoderText.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.NonDecoderText.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.NonDecoderText.ContextMenuStrip := self.contextMenuStrip1;
        self.NonDecoderText.Font := new System.Drawing.Font('Microsoft Sans Serif', 9.75, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.NonDecoderText.ForeColor := System.Drawing.Color.White;
        self.NonDecoderText.Location := new System.Drawing.Point(21, 67);
        self.NonDecoderText.Name := 'NonDecoderText';
        self.NonDecoderText.Size := new System.Drawing.Size(548, 115);
        self.NonDecoderText.TabIndex := 1;
        self.NonDecoderText.Text := '';
        // 
        // contextMenuStrip1
        // 
        self.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[3](self.toolStripMenuItem5, self.toolStripMenuItem6, self.toolStripMenuItem7));
        self.contextMenuStrip1.Name := 'contextMenuStrip1';
        self.contextMenuStrip1.Size := new System.Drawing.Size(140, 70);
        // 
        // toolStripMenuItem5
        // 
        self.toolStripMenuItem5.BackColor := System.Drawing.SystemColors.ActiveCaptionText;
        self.toolStripMenuItem5.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem5.Name := 'toolStripMenuItem5';
        self.toolStripMenuItem5.Size := new System.Drawing.Size(139, 22);
        self.toolStripMenuItem5.Text := 'Копировать';
        self.toolStripMenuItem5.Click += toolStripMenuItem5_Click;
        // 
        // toolStripMenuItem6
        // 
        self.toolStripMenuItem6.BackColor := System.Drawing.SystemColors.ActiveCaptionText;
        self.toolStripMenuItem6.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem6.Name := 'toolStripMenuItem6';
        self.toolStripMenuItem6.Size := new System.Drawing.Size(139, 22);
        self.toolStripMenuItem6.Text := 'Вырезать';
        self.toolStripMenuItem6.Click += toolStripMenuItem6_Click;
        // 
        // toolStripMenuItem7
        // 
        self.toolStripMenuItem7.BackColor := System.Drawing.SystemColors.ActiveCaptionText;
        self.toolStripMenuItem7.ForeColor := System.Drawing.Color.White;
        self.toolStripMenuItem7.Name := 'toolStripMenuItem7';
        self.toolStripMenuItem7.Size := new System.Drawing.Size(139, 22);
        self.toolStripMenuItem7.Text := 'Вставить';
        self.toolStripMenuItem7.Click += toolStripMenuItem7_Click;
        // 
        // Encrypt
        // 
        self.Encrypt.Location := new System.Drawing.Point(21, 38);
        self.Encrypt.Name := 'Encrypt';
        self.Encrypt.Size := new System.Drawing.Size(152, 23);
        self.Encrypt.TabIndex := 2;
        self.Encrypt.Text := 'Шифровать текст';
        self.Encrypt.UseVisualStyleBackColor := true;
        self.Encrypt.Click += Encrypt_Click;
        // 
        // saveFileDialog1
        // 
        self.saveFileDialog1.DefaultExt := 'fx';
        self.saveFileDialog1.FileName := 'Шифрованный текст';
        self.saveFileDialog1.Filter := 'Текст (*.fx) | *.fx';
        // 
        // EncoderText
        // 
        self.EncoderText.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.EncoderText.BorderStyle := System.Windows.Forms.BorderStyle.None;
        self.EncoderText.Enabled := false;
        self.EncoderText.Font := new System.Drawing.Font('Microsoft Sans Serif', 9.75, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, (System.Byte(204)));
        self.EncoderText.ForeColor := System.Drawing.Color.White;
        self.EncoderText.Location := new System.Drawing.Point(21, 67);
        self.EncoderText.Name := 'EncoderText';
        self.EncoderText.Size := new System.Drawing.Size(548, 115);
        self.EncoderText.TabIndex := 3;
        self.EncoderText.Text := '';
        self.EncoderText.Visible := false;
        // 
        // Decrypt
        // 
        self.Decrypt.Enabled := false;
        self.Decrypt.Location := new System.Drawing.Point(21, 38);
        self.Decrypt.Name := 'Decrypt';
        self.Decrypt.Size := new System.Drawing.Size(152, 23);
        self.Decrypt.TabIndex := 4;
        self.Decrypt.Text := 'Дешифровать текст';
        self.Decrypt.UseVisualStyleBackColor := true;
        self.Decrypt.Visible := false;
        self.Decrypt.Click += Decrypt_Click;
        // 
        // openFileDialog1
        // 
        self.openFileDialog1.DefaultExt := 'fx';
        self.openFileDialog1.FileName := 'Шифрованный текст';
        self.openFileDialog1.Filter := 'Текст (*.fx) | *.fx';
        // 
        // Block1
        // 
        self.Block1.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.Block1.Location := new System.Drawing.Point(0, 12);
        self.Block1.Name := 'Block1';
        self.Block1.Size := new System.Drawing.Size(10, 214);
        self.Block1.TabIndex := 5;
        self.Block1.TabStop := false;
        // 
        // Block2
        // 
        self.Block2.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.Block2.Location := new System.Drawing.Point(581, 12);
        self.Block2.Name := 'Block2';
        self.Block2.Size := new System.Drawing.Size(10, 214);
        self.Block2.TabIndex := 6;
        self.Block2.TabStop := false;
        // 
        // Block3
        // 
        self.Block3.BackColor := System.Drawing.SystemColors.ControlDarkDark;
        self.Block3.Location := new System.Drawing.Point(1, 193);
        self.Block3.Name := 'Block3';
        self.Block3.Size := new System.Drawing.Size(604, 14);
        self.Block3.TabIndex := 7;
        self.Block3.TabStop := false;
        // 
        // Clear1
        // 
        self.Clear1.Location := new System.Drawing.Point(179, 38);
        self.Clear1.Name := 'Clear1';
        self.Clear1.Size := new System.Drawing.Size(104, 23);
        self.Clear1.TabIndex := 8;
        self.Clear1.Text := 'Очистить поле';
        self.Clear1.UseVisualStyleBackColor := true;
        self.Clear1.Click += Clear1_Click;
        // 
        // Clear2
        // 
        self.Clear2.Enabled := false;
        self.Clear2.Location := new System.Drawing.Point(179, 38);
        self.Clear2.Name := 'Clear2';
        self.Clear2.Size := new System.Drawing.Size(104, 23);
        self.Clear2.TabIndex := 9;
        self.Clear2.Text := 'Очистить поле';
        self.Clear2.UseVisualStyleBackColor := true;
        self.Clear2.Visible := false;
        self.Clear2.Click += Clear2_Click;
        // 
        // WhiteBlock
        // 
        self.WhiteBlock.BackColor := System.Drawing.SystemColors.ButtonFace;
        self.WhiteBlock.Location := new System.Drawing.Point(1, 12);
        self.WhiteBlock.Name := 'WhiteBlock';
        self.WhiteBlock.Size := new System.Drawing.Size(590, 195);
        self.WhiteBlock.TabIndex := 10;
        self.WhiteBlock.TabStop := false;
        self.WhiteBlock.Visible := false;
        // 
        // Form1
        // 
        self.AutoSizeMode := System.Windows.Forms.AutoSizeMode.GrowAndShrink;
        self.BackColor := System.Drawing.SystemColors.InactiveCaptionText;
        self.ClientSize := new System.Drawing.Size(591, 205);
        self.Controls.Add(self.Clear2);
        self.Controls.Add(self.Clear1);
        self.Controls.Add(self.Block3);
        self.Controls.Add(self.Decrypt);
        self.Controls.Add(self.EncoderText);
        self.Controls.Add(self.Encrypt);
        self.Controls.Add(self.menuStrip1);
        self.Controls.Add(self.Block1);
        self.Controls.Add(self.NonDecoderText);
        self.Controls.Add(self.Block2);
        self.Controls.Add(self.WhiteBlock);
        self.ForeColor := System.Drawing.Color.Black;
        self.Icon := (System.Drawing.Icon(resources.GetObject('$this.Icon')));
        self.MainMenuStrip := self.menuStrip1;
        self.MaximizeBox := false;
        self.Name := 'Form1';
        self.StartPosition := System.Windows.Forms.FormStartPosition.CenterScreen;
        self.Text := 'FX Text Encoder/Decoder 1.1';
        self.menuStrip1.ResumeLayout(false);
        self.menuStrip1.PerformLayout();
        self.contextMenuStrip1.ResumeLayout(false);
        (System.ComponentModel.ISupportInitialize(self.Block1)).EndInit();
        (System.ComponentModel.ISupportInitialize(self.Block2)).EndInit();
        (System.ComponentModel.ISupportInitialize(self.Block3)).EndInit();
        (System.ComponentModel.ISupportInitialize(self.WhiteBlock)).EndInit();
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
