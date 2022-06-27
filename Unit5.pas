Unit Unit5;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  Form5 = class(Form)
  {$region FormDesigner}
  internal
    {$resource Unit5.Form5.resources}
    ProgName: &Label;
    Author: &Label;
    GNU: &Label;
    {$include Unit5.Form5.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

end.
