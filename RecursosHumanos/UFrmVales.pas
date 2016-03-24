unit UFrmVales;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UFrmMiniCatalogo, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxRibbonSkins, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinsdxRibbonPainter, dxRibbonCustomizationForm, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, DB, cxDBData, dxBarBuiltInMenu, dxSkinsdxBarPainter, dxBar,
  dxRibbon, ZAbstractRODataset, ZAbstractDataset, ZDataset, dxLayoutContainer,
  dxLayoutControl, cxPC, ExtCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxContainer, dxLayoutcxEditAdapters, cxDropDownEdit, cxDBEdit, cxMaskEdit,
  cxCalendar, cxTextEdit, cxSpinEdit, cxSplitter, DateUtils;

type
  TFrmVales = class(TFrmMiniCatalogo)
    cxColFolio: TcxGridDBColumn;
    cxColNoVale: TcxGridDBColumn;
    cxColFecha: TcxGridDBColumn;
    cxColDivision: TcxGridDBColumn;
    cxColArea: TcxGridDBColumn;
    cxColContratista: TcxGridDBColumn;
    cxColFirmaContratista: TcxGridDBColumn;
    cxColFirmaSupervisor: TcxGridDBColumn;
    cxColCreacion: TcxGridDBColumn;
    cxColEstatus: TcxGridDBColumn;
    cxTextFolio: TcxDBTextEdit;
    lyFolio: TdxLayoutItem;
    cxTextNoVale: TcxDBTextEdit;
    lyNoVale: TdxLayoutItem;
    cxDateVale: TcxDBDateEdit;
    lyFechaVale: TdxLayoutItem;
    cbbEstatus: TcxDBComboBox;
    lyEstatus: TdxLayoutItem;
    btnAbrir: TdxBarLargeButton;
    btnCerrar: TdxBarLargeButton;
    dxbrManager1Bar2: TdxBar;
    btnGenerarAnual: TdxBarLargeButton;
    cxDateInicio: TcxDBDateEdit;
    lyInicio: TdxLayoutItem;
    cxDateTermino: TcxDBDateEdit;
    lyTermino: TdxLayoutItem;
    cxSpinNoSemana: TcxDBSpinEdit;
    lyNoSemana: TdxLayoutItem;
    cxLvlFolios: TcxGridLevel;
    cxGridFolios: TcxGridDBTableView;
    dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup;
    dxLYCDatosGroup2: TdxLayoutAutoCreatedGroup;
    procedure FormCreate(Sender: TObject);
    procedure dxButtonGuardarClick(Sender: TObject);
    procedure cxDateValePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVales: TFrmVales;

implementation

{$R *.dfm}

uses
  ufrmMaterialesxFolios;

procedure TFrmVales.cxDateValePropertiesChange(Sender: TObject);
begin
  inherited;
  cxSpinNoSemana.Value := WeekOfTheYear(cxDateVale.Date);
  cxDateInicio.date := StartOfTheWeek(cxDateVale.Date);
  cxDateTermino.Date := EndOfTheWeek(cxDateVale.Date);
end;

procedure TFrmVales.dxButtonGuardarClick(Sender: TObject);
begin
  inherited;
  if assigned(frmMaterialesxfolios) then
  begin

    if FrmMaterialesxFolios.zDatos.Active then
    try
      FrmMaterialesxFolios.zDatos.afterScroll := Nil;
      FrmMaterialesxFolios.zDatos.Refresh;
    finally
      FrmMaterialesxFolios.zDatos.afterScroll := FrmMaterialesxFolios.zDatosAfterScroll;
    end;
  end;
end;

procedure TFrmVales.FormCreate(Sender: TObject);
begin
  inherited;
   QueryName := 'mt_vales';
   PKField := 'IdVale';
   CampoMostrar :='NoVale';
   //Validar Registros duplicados
   pCondiciones := '~(IdVale)&(NoVale)';
   pCampos := 'IdVale,NoVale';
end;

end.
