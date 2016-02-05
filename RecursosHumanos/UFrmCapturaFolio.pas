unit UFrmCapturaFolio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, ExtCtrls, dxLayoutContainer,
  dxLayoutControl, cxContainer, cxEdit, dxLayoutcxEditAdapters, cxMaskEdit,
  cxDBEdit, cxTextEdit, cxDropDownEdit, cxCalendar, Menus, StdCtrls, cxButtons,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TFrmCapturaFolio = class(TForm)
    dxLayControl1Group_Root: TdxLayoutGroup;
    dxLayControl1: TdxLayoutControl;
    pnlBotonera: TPanel;
    cxTextFolioPrincipal: TcxDBTextEdit;
    lyFolioPrincipal: TdxLayoutItem;
    cxTextFolio: TcxDBTextEdit;
    lyFolio: TdxLayoutItem;
    cxMaskTelefono: TcxDBMaskEdit;
    lyTelefono: TdxLayoutItem;
    cxTextPrincipal: TcxDBTextEdit;
    lyPrincipal: TdxLayoutItem;
    cxTextSecundario: TcxDBTextEdit;
    lySecundario: TdxLayoutItem;
    cxTextArea: TcxDBTextEdit;
    lyArea: TdxLayoutItem;
    cxTextNoVale: TcxDBTextEdit;
    lyNoVale: TdxLayoutItem;
    cxDateFecha: TcxDBDateEdit;
    lyFecha: TdxLayoutItem;
    cbbEstatus: TcxDBComboBox;
    lyEstatus: TdxLayoutItem;
    btnGuardar: TcxButton;
    btnCancelar: TcxButton;
    dsDatos: TDataSource;
    zDatos: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCapturaFolio: TFrmCapturaFolio;

implementation

{$R *.dfm}

end.