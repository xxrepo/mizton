unit UFrmMaterialesxFolios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  UConection, umsgbox, ExtCtrls, cxContainer, ComCtrls, dxCore, cxDateUtils,
  dxLayoutcxEditAdapters, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxGroupBox, dxLayoutControlAdapters, Menus, StdCtrls, cxButtons;

type
  TFrmMaterialesxFolios = class(TForm)
    dxDockSite1: TdxDockSite;
    dxLayoutDockSite1: TdxLayoutDockSite;
    dxlytdckst1: TdxLayoutDockSite;
    dxDockGrid: TdxDockPanel;
    cxGridGral: TcxGrid;
    cxGridDatos: TcxGridDBTableView;
    GridLevel1: TcxGridLevel;
    dxDockDatos: TdxDockPanel;
    cxPageDatos: TcxPageControl;
    cxTsDatos: TcxTabSheet;
    dxLYCDatos: TdxLayoutControl;
    dxLyDatos: TdxLayoutGroup;
    dxBarManager1: TdxBarManager;
    dxbrManager1Bar: TdxBar;
    dxButtonNuevo: TdxBarLargeButton;
    dxBButtonEditar: TdxBarButton;
    dxBButtonBuscar: TdxBarButton;
    dxBButtonEliminar: TdxBarButton;
    dxButtonGuardar: TdxBarLargeButton;
    dxButtonActualizar: TdxBarLargeButton;
    dxButtonCancelar: TdxBarLargeButton;
    dxButtonSalir: TdxBarLargeButton;
    dxButton2: TdxBarLargeButton;
    dxButtonExportar: TdxBarLargeButton;
    dxButtonOpcional: TdxBarLargeButton;
    dxButtonDetalle: TdxBarLargeButton;
    dsDatos: TDataSource;
    zDatos: TZQuery;
    zDatosUpt: TZQuery;
    dsDatosUpt: TDataSource;
    dxPopupGrid: TdxRibbonPopupMenu;
    dlgSave1: TSaveDialog;
    dxDockingManager1: TdxDockingManager;
    cxHintStyleController: TcxHintStyleController;
    pnlFiltro: TPanel;
    cxGboxFiltro: TcxGroupBox;
    dxLayControl1: TdxLayoutControl;
    dxLayControl1Group_Root: TdxLayoutGroup;
    cxDateEdit1: TcxDateEdit;
    lyLayControl1Item1: TdxLayoutItem;
    cxDateEdit2: TcxDateEdit;
    lyHasta: TdxLayoutItem;
    btnAplicar: TcxButton;
    lyAplicar: TdxLayoutItem;
    cxGroupBox1: TcxGroupBox;
    dxLayoutControl1: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxColFolioPrincipal: TcxGridDBColumn;
    cxColFolio: TcxGridDBColumn;
    cxColTelefono: TcxGridDBColumn;
    cxColPrincipal: TcxGridDBColumn;
    cxColSecundario: TcxGridDBColumn;
    cxColArea: TcxGridDBColumn;
    cxColContratista: TcxGridDBColumn;
    cxColNoVale: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxColmaterial: TcxGridDBColumn;
    cxColUMedida: TcxGridDBColumn;
    cxColCantidad: TcxGridDBColumn;
    dxRibbon1: TdxRibbon;
    dxRibbon1Tab1: TdxRibbonTab;
    dxDockBar1: TdxBarDockControl;
    dxbrManager1Bar1: TdxBar;
    btnadd: TdxBarLargeButton;
    btnDelete: TdxBarLargeButton;
    btnEdit: TdxBarLargeButton;
    btnRefresh: TdxBarLargeButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMaterialesxFolios: TFrmMaterialesxFolios;

implementation

{$R *.dfm}

procedure TFrmMaterialesxFolios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

end.