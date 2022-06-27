Unit Unit4;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form4 = class(Form)
  {$region FormDesigner}
  internal
    {$resource Unit4.Form4.resources}
    ProgName: &Label;
    Author: &Label;
    GNU: &Label;
    {$include Unit4.Form4.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

end.
