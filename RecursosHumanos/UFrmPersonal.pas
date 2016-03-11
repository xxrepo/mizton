unit UFrmPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmCatalogo, cxPC, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxRibbonSkins,
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, dxSkinsdxBarPainter,
  dxSkinsdxDockControlPainter, dxScreenTip, dxCustomHint, cxHint, cxClasses,
  dxDockControl, dxBar, dxRibbon, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, dxLayoutContainer, dxLayoutControl, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, dxDockPanel,
  cxContainer, dxLayoutcxEditAdapters, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxMaskEdit, cxTextEdit, cxImage, UConection, cxSpinEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox;

type
  TFrmPersonal = class(TFrmCatalogo)
    cxColCodigoPersonal: TcxGridDBColumn;
    cxColAPaterno: TcxGridDBColumn;
    cxColAMaterno: TcxGridDBColumn;
    cxColTelFijo: TcxGridDBColumn;
    cxColTelMovil: TcxGridDBColumn;
    cxColCorreo: TcxGridDBColumn;
    cxColCurp: TcxGridDBColumn;
    cxColRfc: TcxGridDBColumn;
    cxColNSS: TcxGridDBColumn;
    imgFoto: TcxDBImage;
    lyLYCDatosItem1: TdxLayoutItem;
    cxTextCodigoPersonal: TcxDBTextEdit;
    lyCodigoPersonal: TdxLayoutItem;
    cxTextNombre: TcxDBTextEdit;
    lyNombre: TdxLayoutItem;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    cxTextAPaterno: TcxDBTextEdit;
    lyAPaterno: TdxLayoutItem;
    cxTextAMaterno: TcxDBTextEdit;
    lyAMaterno: TdxLayoutItem;
    cxPageControl1: TcxPageControl;
    cxTabDireccion: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cbbSexo: TcxDBComboBox;
    lySexo: TdxLayoutItem;
    dxLYCDatosGroup2: TdxLayoutAutoCreatedGroup;
    cxDateNacimiento: TcxDBDateEdit;
    lyNacimiento: TdxLayoutItem;
    dxLYCDatosGroup3: TdxLayoutAutoCreatedGroup;
    cbbEdoCivil: TcxDBComboBox;
    lyEdoCivil: TdxLayoutItem;
    dxLayoutControl1: TdxLayoutControl;
    cxTextCURP: TcxDBTextEdit;
    cxTextRFC: TcxDBTextEdit;
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    lyCurp: TdxLayoutItem;
    lyRFC: TdxLayoutItem;
    cxTextNSS: TcxDBTextEdit;
    lyNSS: TdxLayoutItem;
    cxTextInfonavit: TcxDBTextEdit;
    lyInfonavit: TdxLayoutItem;
    cbbTipoInfonavit: TcxDBComboBox;
    lytipoInfonavit: TdxLayoutItem;
    cxSpinFactor: TcxDBSpinEdit;
    lyFactor: TdxLayoutItem;
    dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup;
    dxLayControl1Group_Root: TdxLayoutGroup;
    dxLayControl1: TdxLayoutControl;
    cxMaskTel: TcxDBMaskEdit;
    lyTel: TdxLayoutItem;
    cxMaskMovil: TcxDBMaskEdit;
    lyMovil: TdxLayoutItem;
    cxTextCorreo: TcxDBTextEdit;
    lyCOrreo: TdxLayoutItem;
    cbbPais: TcxDBLookupComboBox;
    lyPais: TdxLayoutItem;
    cbbEstado: TcxDBLookupComboBox;
    lyEstado: TdxLayoutItem;
    cbbCiudad: TcxDBLookupComboBox;
    lyCiudad: TdxLayoutItem;
    cxTextCalle: TcxDBTextEdit;
    lyCalle: TdxLayoutItem;
    cbbColonia: TcxDBLookupComboBox;
    lyColona: TdxLayoutItem;
    cxSpinCP: TcxDBSpinEdit;
    lyCp: TdxLayoutItem;
    cxTextINt: TcxDBTextEdit;
    lyINt: TdxLayoutItem;
    cxTextExt: TcxDBTextEdit;
    lyExt: TdxLayoutItem;
    cxTextLocalidad: TcxDBTextEdit;
    lyLocalidad: TdxLayoutItem;
    dxLayControl1Group1: TdxLayoutAutoCreatedGroup;
    cxTextSangre: TcxDBTextEdit;
    lySangre: TdxLayoutItem;
    cxDateInicio: TcxDBDateEdit;
    lyInicio: TdxLayoutItem;
    cxDateFin: TcxDBDateEdit;
    lyFin: TdxLayoutItem;
    cxDateaLTA: TcxDBDateEdit;
    lyaLTA: TdxLayoutItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPersonal: TFrmPersonal;

implementation

{$R *.dfm}

procedure TFrmPersonal.FormCreate(Sender: TObject);
begin
  inherited;
  QueryName := 'master_personal';
  PKField := 'IdPersonal';
  CampoMostrar := 'CodigoPersonal';
  //Validar Registros duplicados
  pCondiciones := '~(IdPersonal)&(CodigoPersonal)';
  pCampos := 'IdPersonal,CodigoPersonal';
end;

procedure TFrmPersonal.FormShow(Sender: TObject);
begin
  inherited;
  cxPagedatos.ActivePage := cxTsDatos;
end;

end.
