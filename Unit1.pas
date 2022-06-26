//  Foobar is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  Foobar is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with Foobar.  If not, see <http://www.gnu.org/licenses/>.
Unit Unit1;

interface

uses System, System.Drawing, System.Windows.Forms, Unit2;

type
  Form1 = class(Form)
    procedure Encrypt_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem2_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem1_Click(sender: Object; e: EventArgs);
    procedure Decrypt_Click(sender: Object; e: EventArgs);
    procedure Clear1_Click(sender: Object; e: EventArgs);
    procedure Clear2_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem3_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem5_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem6_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem7_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource Unit1.Form1.resources}
    toolStripMenuItem1: ToolStripMenuItem;
    toolStripMenuItem2: ToolStripMenuItem;
    NonDecoderText: RichTextBox;
    Encrypt: Button;
    saveFileDialog1: SaveFileDialog;
    EncoderText: RichTextBox;
    Decrypt: Button;
    openFileDialog1: OpenFileDialog;
    Block1: PictureBox;
    Block2: PictureBox;
    Block3: PictureBox;
    Clear1: Button;
    Clear2: Button;
    toolStripMenuItem3: ToolStripMenuItem;
    contextMenuStrip1: System.Windows.Forms.ContextMenuStrip;
    components: System.ComponentModel.IContainer;
    toolStripMenuItem5: ToolStripMenuItem;
    toolStripMenuItem6: ToolStripMenuItem;
    toolStripMenuItem7: ToolStripMenuItem;
    menuStrip1: MenuStrip;
    {$include Unit1.Form1.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure Form1.Encrypt_Click(sender: Object; e: EventArgs);
begin
  SaveFileDialog1.ShowDialog;                         // Сохранение файла в формате *.fx
  NonDecoderText.SaveFile(SaveFileDialog1.FileName);   
end;

procedure Form1.toolStripMenuItem2_Click(sender: Object; e: EventArgs);
begin
  Encrypt.Visible:=false;                // Кнопка шифрования текста исчезает.
  Encrypt.Enabled:=false;                // Кнопка шифрования текста выключается.
  NonDecoderText.Visible:=false;         // Первое поле ввода текста исчезает.
  NonDecoderText.Enabled:=false;         // Первое поле ввода текста выключается.
  Clear1.Visible:=false;                 // Первая кнопка очистки поля исчезает.
  Clear1.Enabled:=false;                 // Первая кнопка очистки поля выключается.
  ////////////////////////////////////
  EncoderText.Visible:=true;             // Второе поле появляется.
  EncoderText.Enabled:=true;             // Второе поле включается.
  Decrypt.Visible:=true;                 // Кнопка расшифровки текста появляется.
  Decrypt.Enabled:=true;                 // Кнопка расшифровки текста включается.
  Clear2.Visible:=true;                  // Вторая кнопка очистки поля появляется.
  Clear2.Enabled:=true;                  // Вторая кнопка очистки поля включается.
  ////////////////////////////////////
  NonDecoderText.Clear;                  // Первое поле ввода текста очищается.
end;

procedure Form1.toolStripMenuItem1_Click(sender: Object; e: EventArgs);
begin
  Encrypt.Visible:=true;                 // Кнопка шифрования текста появляется.                              
  Encrypt.Enabled:=true;                 // Кнопка шифрования текста включается.
  NonDecoderText.Visible:=true;          // Первое поле ввода текста появляется.
  NonDecoderText.Enabled:=true;          // Первое поле ввода текста включается.
  Clear1.Visible:=true;                  // Первая кнопка очистки поля появляется.
  Clear1.Enabled:=true;                  // Первая кнопка очистки поля включается.
  ////////////////////////////////////
  EncoderText.Visible:=false;            // Второе поле исчезает.
  EncoderText.Enabled:=false;            // Второе поле выключается.
  Decrypt.Visible:=false;                // Кнопка расшифровки текста исчезает.
  Decrypt.Enabled:=false;                // Кнопка расшифровки текста выключается.
  Clear2.Visible:=false;                 // Вторая кнопка очистки поля исчезает.
  Clear2.Enabled:=false;                 // Вторая кнопка очистки поля выключается.
  ////////////////////////////////////
  EncoderText.Clear;                     // Второе поле очищается.
end;

procedure Form1.Decrypt_Click(sender: Object; e: EventArgs);
begin
  OpenFileDialog1.ShowDialog;                      // Открытие файла в формате *.fx
  EncoderText.LoadFile(OpenFileDialog1.FileName); 
end;

procedure Form1.Clear1_Click(sender: Object; e: EventArgs);
begin
  NonDecoderText.Clear;                            // Очистка первого поля ввода текста при нажатии кнопки.
end;

procedure Form1.Clear2_Click(sender: Object; e: EventArgs);
begin
  EncoderText.Clear;                               // Очистка второго поля при нажатии кнопки.
end;

procedure Form1.toolStripMenuItem3_Click(sender: Object; e: EventArgs);
begin
  Form(new Form2).show;                            // Открытие второй Формы при нажатии кнопки "О программе".
end;

procedure Form1.toolStripMenuItem5_Click(sender: Object; e: EventArgs);
begin
  NonDecoderText.Copy;                        // Копирование выделенного текста при нажатии кнопки "Копировать".
end;

procedure Form1.toolStripMenuItem6_Click(sender: Object; e: EventArgs);
begin
  NonDecoderText.Cut;                        // Вырезание выделенного текста при нажатии кнопки "Вырезать".
end;

procedure Form1.toolStripMenuItem7_Click(sender: Object; e: EventArgs);
begin
  NonDecoderText.Paste;                      // Вставка выделенного текста при нажатии кнопки "Вставить".
end;

end.
