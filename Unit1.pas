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

uses System, System.Drawing, System.Windows.Forms, Unit2, Unit3;

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
    procedure toolStripMenuItem11_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem10_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem13_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem14_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem8_Click(sender: Object; e: EventArgs);
    procedure toolStripMenuItem16_Click(sender: Object; e: EventArgs);
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
    toolStripMenuItem4: ToolStripMenuItem;
    toolStripMenuItem9: ToolStripMenuItem;
    toolStripMenuItem10: ToolStripMenuItem;
    toolStripMenuItem11: ToolStripMenuItem;
    WhiteBlock: PictureBox;
    toolStripMenuItem12: ToolStripMenuItem;
    toolStripMenuItem13: ToolStripMenuItem;
    toolStripMenuItem14: ToolStripMenuItem;
    toolStripMenuItem8: ToolStripMenuItem;
    toolStripMenuItem16: ToolStripMenuItem;
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

procedure Form1.toolStripMenuItem11_Click(sender: Object; e: EventArgs);
begin
  menustrip1.BackColor:=Color.FromArgb(100, 149, 237);  // Изменение цвета верхнего меню с кнопками.
  Block1.BackColor:=Color.FromArgb(100, 149, 237);      // Изменение цвета левого блока.
  Block2.BackColor:=Color.FromArgb(100, 149, 237);      // Изменение цвета правого блока.
  Block3.BackColor:=Color.FromArgb(100, 149, 237);      // Изменение цвета нижнего блока.
  WhiteBlock.Visible:=true;                             // Задний фон становится белым.
  /////////////////////////////////////////////////////////
  NonDecoderText.BackColor:=Color.FromArgb(211, 211, 211); // Изменение цвета фона первого поля ввода текста.
  EncoderText.BackColor:=Color.FromArgb(211, 211, 211);    // Изменение цвета фона второго поля.
  NonDecoderText.ForeColor:=Color.FromArgb(0, 0, 0);       // Изменение цвета текста первого поля ввода текста.
  EncoderText.ForeColor:=Color.FromArgb(0, 0, 0);          // Изменение цвета текста второго поля.        
  /////////////////////////////////////////////////////////
  ToolStripMenuItem9.BackColor:=Color.FromArgb(100, 149, 237);  // Изменение цвета фона кнопок в верхнем меню.
  ToolStripMenuItem10.BackColor:=Color.FromArgb(100, 149, 237); //
  ToolStripMenuItem11.BackColor:=Color.FromArgb(100, 149, 237); //
  ToolStripMenuItem12.BackColor:=Color.FromArgb(100, 149, 237); //
  ToolStripMenuItem13.BackColor:=Color.FromArgb(100, 149, 237); //
  ToolStripMenuItem14.BackColor:=Color.FromArgb(100, 149, 237); //
  ToolStripMenuItem16.BackColor:=Color.FromArgb(100, 149, 237); //
  /////////////////////////////////////////////////////////
  ToolStripMenuItem1.ForeColor:=Color.FromArgb(0, 0, 0);        // Изменение цвета текста кнопок в верхнем меню.
  ToolStripMenuItem2.ForeColor:=Color.FromArgb(0, 0, 0);        //
  ToolStripMenuItem3.ForeColor:=Color.FromArgb(0, 0, 0);        //
  ToolStripMenuItem4.ForeColor:=Color.FromArgb(0, 0, 0);        //   
  /////////////////////////////////////////////////////////     //
  ToolStripMenuItem9.ForeColor:=Color.FromArgb(0, 0, 0);        //
  ToolStripMenuItem10.ForeColor:=Color.FromArgb(0, 0, 0);       //
  ToolStripMenuItem11.ForeColor:=Color.FromArgb(0, 0, 0);       //
  ToolStripMenuItem12.ForeColor:=Color.FromArgb(0, 0, 0);       //
  ToolStripMenuItem13.ForeColor:=Color.FromArgb(0, 0, 0);       //
  ToolStripMenuItem14.ForeColor:=Color.FromArgb(0, 0, 0);       //
  ToolStripMenuItem16.ForeColor:=Color.FromArgb(0, 0, 0);       //
  /////////////////////////////////////////////////////////
  toolstripMenuItem5.BackColor:=Color.FromArgb(100, 149, 237);  // Изменение цвета фона и текста ToolStrip
  toolstripMenuItem6.BackColor:=Color.FromArgb(100, 149, 237);  //
  toolstripMenuItem7.BackColor:=Color.FromArgb(100, 149, 237);  //
  toolstripMenuItem5.ForeColor:=Color.FromArgb(0, 0, 0);        // 
  toolstripMenuItem6.ForeColor:=Color.FromArgb(0, 0, 0);        //
  toolstripMenuItem7.ForeColor:=Color.FromArgb(0, 0, 0);        //
  /////////////////////////////////////////////////////////
  ToolStripMenuItem8.Visible:=true;                             // Появление клона кнопки "О программе".
  ToolStripMenuItem3.Visible:=false;                            // Исчезновение кнопки "О программе".
end;

procedure Form1.toolStripMenuItem10_Click(sender: Object; e: EventArgs);
begin
  menustrip1.BackColor:=Color.FromArgb(105,105,105);  // Изменение цвета верхнего меню с кнопками.
  Block1.BackColor:=Color.FromArgb(105,105,105);      // Изменение цвета левого блока.
  Block2.BackColor:=Color.FromArgb(105,105,105);      // Изменение цвета правого блока.
  Block3.BackColor:=Color.FromArgb(105,105,105);      // Изменение цвета нижнего блока.
  WhiteBlock.Visible:=false;                          // Задний фон становится белым.
  /////////////////////////////////////////////////////////
  NonDecoderText.BackColor:=Color.FromArgb(105,105,105); // Изменение цвета фона первого поля ввода текста.
  EncoderText.BackColor:=Color.FromArgb(105,105,105);    // Изменение цвета фона второго поля.
  NonDecoderText.ForeColor:=Color.FromArgb(255,255,255); // Изменение цвета текста первого поля ввода текста.
  EncoderText.ForeColor:=Color.FromArgb(255,255,255);    // Изменение цвета текста второго поля.        
  /////////////////////////////////////////////////////////
  ToolStripMenuItem9.BackColor:=Color.FromArgb(105,105,105);  // Изменение цвета фона кнопок в верхнем меню.
  ToolStripMenuItem10.BackColor:=Color.FromArgb(105,105,105); //
  ToolStripMenuItem11.BackColor:=Color.FromArgb(105,105,105); //
  ToolStripMenuItem12.BackColor:=Color.FromArgb(105,105,105); //
  ToolStripMenuItem13.BackColor:=Color.FromArgb(105,105,105); //
  ToolStripMenuItem14.BackColor:=Color.FromArgb(105,105,105); //
  ToolStripMenuItem16.BackColor:=Color.FromArgb(105,105,105); //
  /////////////////////////////////////////////////////////
  ToolStripMenuItem1.ForeColor:=Color.FromArgb(255,255,255);  // Изменение цвета текста кнопок в верхнем меню.
  ToolStripMenuItem2.ForeColor:=Color.FromArgb(255,255,255);  //
  ToolStripMenuItem3.ForeColor:=Color.FromArgb(255,255,255);  //
  ToolStripMenuItem4.ForeColor:=Color.FromArgb(255,255,255);  //
  /////////////////////////////////////////////////////////   //
  ToolStripMenuItem9.ForeColor:=Color.FromArgb(255,255,255);  //
  ToolStripMenuItem10.ForeColor:=Color.FromArgb(255,255,255); //
  ToolStripMenuItem11.ForeColor:=Color.FromArgb(255,255,255); //
  ToolStripMenuItem12.ForeColor:=Color.FromArgb(255,255,255); //
  ToolStripMenuItem13.ForeColor:=Color.FromArgb(255,255,255); //
  ToolStripMenuItem14.ForeColor:=Color.FromArgb(255,255,255); //
  ToolStripMenuItem16.ForeColor:=Color.FromArgb(255,255,255); //
  /////////////////////////////////////////////////////////   
  toolstripMenuItem5.BackColor:=Color.FromArgb(0, 0, 0);      // Изменение цвета фона и текста ToolStrip
  toolstripMenuItem6.BackColor:=Color.FromArgb(0, 0, 0);      //
  toolstripMenuItem7.BackColor:=Color.FromArgb(0, 0, 0);      //
  toolstripMenuItem5.ForeColor:=Color.FromArgb(255,255,255);  //
  toolstripMenuItem6.ForeColor:=Color.FromArgb(255,255,255);  //
  toolstripMenuItem7.ForeColor:=Color.FromArgb(255,255,255);  //
  /////////////////////////////////////////////////////////  
  ToolStripMenuItem8.Visible:=false;                          // Исчезновение клона кнопки "О программе".
  ToolStripMenuItem3.Visible:=true;                           // Появление кнопки "О программе".  
end;

procedure Form1.toolStripMenuItem13_Click(sender: Object; e: EventArgs);
begin
  ToolStripMenuItem1.Text:='Encrypt text';                    // Изменение языка интерфейса на Английский.     
  ToolStripMenuItem2.Text:='Decrypt text';                    //
  ToolStripMenuItem3.Text:='About the program';               //
  ToolStripMenuItem4.Text:='Other';                           //
  ToolStripMenuItem9.Text:='Theme';                           //
  ToolStripMenuItem10.Text:='Dark';                           //
  ToolStripMenuItem11.Text:='Light';                          //
  ToolStripMenuItem12.Text:='Language';                       //
  ToolStripMenuItem13.Text:='English';                        //
  ToolStripMenuItem14.Text:='Russian';                        //
  ToolStripMenuItem16.Text:='Polish';                         //
  //////////////////////////////////////////////              //
  Encrypt.Text:='Encrypt text';                               //
  Decrypt.Text:='Decrypt text';                               //
  Clear1.Text:='Clear field';                                 //
  Clear2.Text:='Clear field';                                 //
  //////////////////////////////////////////////              //
  toolStripMenuItem5.Text:='Copy';                            //             
  toolStripMenuItem6.Text:='Cut';                             //
  toolStripMenuItem7.Text:='Paste';                           //
  toolStripMenuItem8.Text:='About the program';               //
  //////////////////////////////////////////////              //
  SaveFileDialog1.FileName:='Encrypted text';                 //
  SaveFileDialog1.Filter:='Text (*.fx) | *.fx';               //
  //////////////////////////////////////////////              //
  OpenFileDialog1.FileName:='Encrypted text';                 //
  OpenFileDialog1.Filter:='Text (*.fx) | *.fx';               //
end;

procedure Form1.toolStripMenuItem14_Click(sender: Object; e: EventArgs);
begin
  ToolStripMenuItem1.Text:='Зашифровать текст';               // Изменение языка интерфейса на Русский.
  ToolStripMenuItem2.Text:='Расшифровать текст';              //
  ToolStripMenuItem3.Text:='О программе';                     //
  ToolStripMenuItem4.Text:='Прочее';                          //
  ToolStripMenuItem9.Text:='Тема';                            //
  ToolStripMenuItem10.Text:='Тёмная';                         //
  ToolStripMenuItem11.Text:='Светлая';                        //
  ToolStripMenuItem12.Text:='Язык';                           //
  ToolStripMenuItem13.Text:='Английский';                     //
  ToolStripMenuItem14.Text:='Русский';                        //
  ToolStripMenuItem16.Text:='Польский';                       //
  //////////////////////////////////////////////              //
  Encrypt.Text:='Шифровать текст';                            //
  Decrypt.Text:='Дешифровать текст';                          //
  Clear1.Text:='Очистить поле';                               //
  Clear2.Text:='Очистить поле';                               //
  //////////////////////////////////////////////              //
  toolStripMenuItem5.Text:='Копировать';                      //
  toolStripMenuItem6.Text:='Вырезать';                        //
  toolStripMenuItem7.Text:='Вставить';                        //
  toolStripMenuItem8.Text:='О программе';                     //
  //////////////////////////////////////////////              //
  SaveFileDialog1.FileName:='Шифрованный текст';              //
  SaveFileDialog1.Filter:='Текст (*.fx) | *.fx';              //
  //////////////////////////////////////////////              //
  OpenFileDialog1.FileName:='Шифрованный текст';              //
  OpenFileDialog1.Filter:='Текст (*.fx) | *.fx';              //
end;

procedure Form1.toolStripMenuItem16_Click(sender: Object; e: EventArgs);
begin
  ToolStripMenuItem1.Text:='Zaszyfruj tekst';                 // Изменение языка интерфейса на Польский.
  ToolStripMenuItem2.Text:='Odszyfruj tekst';                 //
  ToolStripMenuItem3.Text:='O programie';                     //
  ToolStripMenuItem4.Text:='Inny';                            //
  ToolStripMenuItem9.Text:='Temat';                           //
  ToolStripMenuItem10.Text:='Ciemny';                         //
  ToolStripMenuItem11.Text:='Światło';                        //
  ToolStripMenuItem12.Text:='Język';                          //
  ToolStripMenuItem13.Text:='język angielski';                //
  ToolStripMenuItem14.Text:='Rosyjski';                       //
  ToolStripMenuItem16.Text:='Polski';                         //
  //////////////////////////////////////////////              //
  Encrypt.Text:='Zaszyfruj tekst';                            //
  Decrypt.Text:='Odszyfruj tekst';                            //
  Clear1.Text:='Czyste pole';                                 //
  Clear2.Text:='Czyste pole';                                 //
  //////////////////////////////////////////////              //
  toolStripMenuItem5.Text:='Kopiuj';                          //
  toolStripMenuItem6.Text:='Odetnij';                         //
  toolStripMenuItem7.Text:='Wstawić';                         //
  toolStripMenuItem8.Text:='O programie';                     //
  //////////////////////////////////////////////              //
  SaveFileDialog1.FileName:='Zaszyfrowany tekst';             //
  SaveFileDialog1.Filter:='Tekst (*.fx) | *.fx';              //
  //////////////////////////////////////////////              //
  OpenFileDialog1.FileName:='Zaszyfrowany tekst';             //
  OpenFileDialog1.Filter:='Tekst (*.fx) | *.fx';              //
end;

procedure Form1.toolStripMenuItem8_Click(sender: Object; e: EventArgs);
begin
  Form(new Form3).show;                          // Открытие третьей Формы при нажатии клона кнопки "О программе".
end;

end.
