Unit Unit3;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form3 = class(Form)
  {$region FormDesigner}
  internal
    {$resource Unit3.Form3.resources}
    ProgName: &Label;
    Author: &Label;
    GNU: &Label;
    {$include Unit3.Form3.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

end.
