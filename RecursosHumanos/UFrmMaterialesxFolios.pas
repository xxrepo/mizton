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
  cxGroupBox, dxLayoutControlAdapters, Menus, StdCtrls, cxButtons, DateUtils,
  cxImage, cxDBEdit, cxLabel, cxDBLabel, cxGridChartView, cxGridDBChartView,
  ExportaExcel, ComObj, strUtils, cxSpinEdit, ZSqlUpdate;

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
    dxPopupGrid: TdxRibbonPopupMenu;
    dlgSave1: TSaveDialog;
    dxDockingManager1: TdxDockingManager;
    cxHintStyleController: TcxHintStyleController;
    pnlFiltro: TPanel;
    cxGboxFiltro: TcxGroupBox;
    dxLayControl1: TdxLayoutControl;
    dxLayControl1Group_Root: TdxLayoutGroup;
    cxDateDesde: TcxDateEdit;
    lyLayControl1Item1: TdxLayoutItem;
    cxDateHasta: TcxDateEdit;
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
    CxGrdMat: TcxGrid;
    cxGridMateriales: TcxGridDBTableView;
    cxLvl1: TcxGridLevel;
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
    zPersonal: TZQuery;
    dsPersonal: TDataSource;
    imgFoto: TcxDBImage;
    lyFoto: TdxLayoutItem;
    LblCodigo: TcxDBLabel;
    dxLayoutControl1Item1: TdxLayoutItem;
    LblNombre: TcxDBLabel;
    lyNombre: TdxLayoutItem;
    LblApPat: TcxDBLabel;
    lyApPat: TdxLayoutItem;
    LblApMat: TcxDBLabel;
    lyApMat: TdxLayoutItem;
    LblNoCarro: TcxDBLabel;
    lyBNocarro: TdxLayoutItem;
    zMaterial: TZQuery;
    dsMaterial: TDataSource;
    cxLvlGrafico: TcxGridLevel;
    cxChartProductividad: TcxGridDBChartView;
    cxSerieProductividad: TcxGridDBChartSeries;
    cxDataEstatus: TcxGridDBChartDataGroup;
    DbLblTelefono: TcxDBLabel;
    lyTelefono: TdxLayoutItem;
    DbLblCorreo: TcxDBLabel;
    lyCorreo: TdxLayoutItem;
    zDeleteFolio: TZQuery;
    cxColEstatus: TcxGridDBColumn;
    zUMateriales: TZQuery;
    cxColCreado: TcxGridDBColumn;
    zUptMateriales: TZUpdateSQL;
    pnl1: TPanel;
    btnSaveChanges: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAplicarClick(Sender: TObject);
    procedure cxGridGralActiveTabChanged(Sender: TcxCustomGrid;
      ALevel: TcxGridLevel);
    procedure dxButtonNuevoClick(Sender: TObject);
    procedure dxButtonActualizarClick(Sender: TObject);
    procedure dxBButtonEditarClick(Sender: TObject);
    procedure dxBButtonBuscarClick(Sender: TObject);
    procedure dxBButtonEliminarClick(Sender: TObject);
    procedure cxDateDesdePropertiesChange(Sender: TObject);
    procedure btnaddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure zDatosAfterScroll(DataSet: TDataSet);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure dxButtonExportarClick(Sender: TObject);
    procedure cxGridMaterialesEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
  private
    ExApp: Variant;
    { Private declarations }
  public
    IdPersonal: integer;
    constructor CreateByParam(Personal: Integer; Modal: Boolean = False);
    { Public declarations }
  end;

var
  FrmMaterialesxFolios: TFrmMaterialesxFolios;

implementation

{$R *.dfm}

uses UfrmCapturaFolio, UfrmFolioMAterial;


procedure TFrmMaterialesxFolios.btnaddClick(Sender: TObject);
begin
  try
    if zDatos.FieldByName('Estatus').AsString <> 'Liquidada' then
      raise eWarning.Create('No puedes asignar materiales a folios con estatus diferente de "Liquidada"');
    try
      application.CreateForm(TFrmFolioMaterial, FrmFolioMaterial);
      FrmFolioMaterial.Id := -9;
      FrmFolioMaterial.IdFolio := zDatos.FieldByName('IdFolio').AsInteger;
      FrmFolioMaterial.ShowModal;
    finally
      btnRefresh.Click;
    end;
  except
    on e: eWarning do
    begin
      MsgBox.ShowModal('Validaci�n.',e.Message, cmtWarning, [cmbOK]);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.btnAplicarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

       if not FiltrarDataset(zDatos, 'IdPersonal,Desde,Hasta', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date)]) then
        raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');

      try
        zDatos.AfterScroll := Nil;

        if zDatos.Active then
          zDatos.Refresh
        else
          zDatos.Open;
      finally
        zDatos.AfterScroll := zDatosAfterScroll;
        if zDatos.Active then
          zdatos.first;
      end;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception do
    begin
      MsgBox.ShowModal('Error.', 'Ha ocurrido el siguiente error: ' + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.btnDeleteClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;
      if (MsgBox.ShowModal('Confirmar acci�n.', '�Est� seguro que deseas eliminar este folio [' + zDatos.FieldByName('Folio').AsString + '] juntos con los materiales asignados?', cmtInformation, [cMbDelete, cMbNo]) = mrYes) then
      begin
        zDeleteFolio.SQL.Text := 'DELETE FROM mt_materialxfolio WHERE IdMaterialxFolio = :IdMaterialxFolio';
        zDeleteFolio.ParamByName('IdMaterialxFolio').AsInteger := zMaterial.FieldByName('IdMaterialxFolio').AsInteger;
        zDeleteFolio.ExecSQL;
        btnRefresh.Click;
      end;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception do
    begin
      MsgBox.ShowModal('Error.', 'Ha ocurrido el siguiente error: ' + e.Message, cmtError, [cmbOK]);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.btnEditClick(Sender: TObject);
begin
  try
    application.CreateForm(TFrmFolioMaterial, FrmFolioMaterial);
    FrmFolioMaterial.Id := zMaterial.fieldByName('IdMaterialxFolio').asinteger;
    FrmFolioMaterial.ShowModal;
  finally
    btnRefresh.Click;
  end;
end;

procedure TFrmMaterialesxFolios.btnRefreshClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  Cursor := Screen.Cursor;
  try
    Screen.Cursor := crAppStart;
    if zMaterial.Active then
      zMaterial.Refresh
    else
      zMaterial.Open;
  finally
    Screen.Cursor := Cursor;
  end;
end;

constructor TFrmMaterialesxFolios.CreateByParam(Personal: integer; Modal: Boolean = False);
begin
  if Not Modal then
  begin
    IdPersonal := Personal;
  end;
end;

procedure TFrmMaterialesxFolios.cxDateDesdePropertiesChange(Sender: TObject);
begin
  cxDateDesde.Date := StartOfTheWeek(cxDateDesde.Date);
  cxDateHasta.Date := EndOfTheWeek(cxDateDesde.Date);
end;

procedure TFrmMaterialesxFolios.cxGridGralActiveTabChanged(
  Sender: TcxCustomGrid; ALevel: TcxGridLevel);
var
   Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := CrAppstart;
      if cxGridGral.ActiveLevel = cxLvlGrafico then
      begin
        if not FiltrarDataset(zDatos, 'IdPersonal,Desde,Hasta,Grafica', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date), 'Si']) then
          raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');
      end
      else
      begin
         if not FiltrarDataset(zDatos, 'IdPersonal,Desde,Hasta', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date)]) then
          raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');
      end;

      if zDatos.Active then
        zDatos.Refresh
      else
        zDatos.Open;
    finally
      Screen.Cursor := Cursor;
    end;
  Except
    raise;
  end;
end;

procedure TFrmMaterialesxFolios.cxGridMaterialesEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
  begin
    zUptMateriales.Params.ParamByName('Cantidad').AsFloat := zMaterial.FieldByName('Cantidad').AsFloat;
    zUptMateriales.Params.ParamByName('idMaterialxfolio').AsInteger := zMaterial.FieldByName('idMaterialxfolio').AsInteger;

    if not zMaterial.Connection.Ping then
      zMaterial.Connection.Reconnect;

    zUptMateriales.SQL[ukModify];
  end;
end;

procedure TFrmMaterialesxFolios.dxBButtonBuscarClick(Sender: TObject);
begin
  cxgridDatos.FilterRow.Visible := Not cxGridDatos.FilterRow.Visible;
end;

procedure TFrmMaterialesxFolios.dxBButtonEditarClick(Sender: TObject);
begin
  try
    if zDatos.FieldByName('EstatusVale').AsString <> 'Abierto' then
      raise eWarning.Create('No est� permitido editar un folio cuyo vale ya ha sido cerrado.');

    try
      application.CreateForm(TFrmCapturaFolio, FrmCapturaFolio);
      FrmCapturaFolio.lyEstatus.Enabled := (zmaterial.RecordCount = 0);
      FrmCapturaFolio.IdFolio := zDatos.FieldByName('IdFolio').AsInteger;
      FrmCapturaFolio.IdPersonal := zPersonal.FieldByName('IdPersonal').AsInteger;
      If FrmCapturaFolio.ShowModal <> mrCancel then
        dxButtonActualizar.Click;
    finally

    end;
  Except
    on e: eWarning do
    begin
      MsgBox.ShowModal('Validaci�n.',e.Message, cmtWarning, [cmbOK]);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.dxBButtonEliminarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;

    if zDatos.FieldByName('EstatusVale').AsString <> 'Abierto' then
      raise eWarning.Create('No est� permitido eliminar un folio cuyo vale ya ha sido cerrado.');

    try
      Screen.Cursor := crAppStart;
      if (MsgBox.ShowModal('Confirmar acci�n.', '�Est� seguro que deseas eliminar este folio [' + zDatos.FieldByName('Folio').AsString + '] juntos con los materiales asignados?', cmtInformation, [cMbDelete, cMbNo]) = mrYes) then
      begin
        zDeleteFolio.Active := False;
        zDeleteFolio.Connection.StartTransaction;
        zDeleteFolio.SQL.Text := 'DELETE FROM mt_materialxfolio WHERE IdFolio = :IdFolio';

        zDeleteFolio.ParamByName('IdFolio').AsInteger := zDatos.FieldByName('IdFolio').AsInteger;
        zDeleteFolio.ExecSQL;

        zDeleteFolio.SQL.Text := 'DELETE FROM mt_foliosxtecnicos WHERE IdFolio = :IdFolio';
        zDeleteFolio.ParamByName('IdFolio').AsInteger := zDatos.FieldByName('IdFolio').AsInteger;
        zDeleteFolio.ExecSQL;


        zDeleteFolio.Connection.Commit;
      end;
    finally
      If zDeleteFolio.Connection.InTransaction then
        zDeleteFolio.Connection.Rollback;

      Screen.Cursor := Cursor;
    end;
  Except
    on e: eWarning do
    begin
      MsgBox.ShowModal('Validaci�n.',e.Message, cmtWarning, [cmbOK]);
    end;

    on e: Exception do
    begin
      If zDeleteFolio.Connection.InTransaction then
        zDeleteFolio.Connection.Rollback;
      MsgBox.ShowModal('Error.', 'Ha ocurrido el siguiente error: ' + e.Message, cmtError, [cmbOK]);
      PostMessage(self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.dxButtonActualizarClick(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      try
        zDatos.AfterScroll := Nil;

        if zDatos.Active then
          zDatos.Refresh
        else
          zDatos.Open;
      finally
        zDatos.AfterScroll := zDatosAfterScroll;
        if zDatos.Active then
          zdatos.first;
      end;

    finally
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception do
    begin
      MsgBox.ShowModal('Error.', 'Ha ocurrido el siguiente error: ' + e.Message, cmtError, [cmbOK]);
      PostMessage(self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.dxButtonExportarClick(Sender: TObject);
Var
  cursor: TCursor;
  Continuar: Boolean;
  Rango: Variant;
  zMat: TZQuery;
  iniFila, iniCol, recFila, recCol, i: Integer;
  ListaMaterial: TStringList;
begin
  try
    zDatos.Filtered := False;
    zDatos.Filter := 'Estatus=' + QuotedStr('Liquidada');
    zDatos.Filtered := True;

    Try
      Continuar     := True;
      ExApp := CreateOleObject('Excel.Application');
      ExApp.Visible := True;
      ExApp.DisplayAlerts := False;
      ExApp.Workbooks.Add;
    Except
      on e:Exception do
      begin
        Continuar := False;
        msgBox.ShowModal('Ha ocurrido un error.','Al parecer no el equipo no tiene instalado Microsoft Excel, Contacte a su administrador de sistema para poder utilizar esta caracter�stica', cmtError, [cmbOK]);
      end;
    End;

    //Si no se v� al chorizo, continuar
    if Continuar then
    begin
      //encabezado y datos generales
      ExApp.Range['A2'] := 'EXP.';
      FormatoTexto(ExApp.Range['A2'], 'Arial Narrow', 11, True, True);

      ExApp.Range['B5:C5'] := 'DIVISION';
      ExApp.Range['B5:C5'].mergeCells := True;
      ExApp.Range['D5:E5'] := zDatos.FieldByName('Division').AsString;
      ExApp.Range['D5:E5'].mergeCells := True;

      ExApp.Range['B6:C6'] := 'AREA';
      ExApp.Range['B6:C6'].mergeCells := True;
      ExApp.Range['D6:E6'] := zDatos.FieldByName('Area').AsString;
      ExApp.Range['D6:E6'].mergeCells := True;

      ExApp.Range['B7:C7'] := 'CONTRATISTA';
      ExApp.Range['B7:C7'].mergeCells := True;
      ExApp.Range['D7:E7'] := zDatos.FieldByName('Contratista').AsString;
      ExApp.Range['D7:E7'].mergeCells := True;

      ExApp.Range['B9:C9'] := 'No. VALE';
      ExApp.Range['B9:C9'].mergeCells := True;
      ExApp.Range['D9:E9'] := zDatos.FieldByName('NoVale').AsString;
      ExApp.Range['D9:E9'].mergeCells := True;

      ExApp.Range['B10:C10'] := 'FECHA VALE';
      ExApp.Range['B10:C10'].mergeCells := True;
      ExApp.Range['D10:E10'] := zDatos.FieldByName('FechaVale').AsString;
      ExApp.Range['D10:E10'].mergeCells := True;

      ExApp.Range['B11:C11'] := 'DEL MES';
      ExApp.Range['B11:C11'].mergeCells := True;

      ExApp.Range['D11:E11'].mergeCells := True;

      SetBorders(Exapp.Range['B5:E7'], xlThin, xlContinuous);
      SetBorders(Exapp.Range['B9:E11'], xlThin, xlContinuous);

      ExApp.Range['C12'] := 'FOLIO';
      ExApp.Range['D12'] :=  zDatos.FieldByName('FoliOPrincipal').AsString;
      SetBorders(Exapp.Range['C12'], xlThin, xlContinuous);

      ExApp.Range['A13'] := 'NO.';
      ExApp.Range['B13'] := 'FOLIO';
      ExApp.Range['C13'] := 'TELEFONO';
      ExApp.Range['D13'] := 'DIRECCION';
      ExApp.Range['E13'] := 'PPRINC';
      ExApp.Range['F13'] := 'PSEC';

      Rango := EXApp.Range['A1:F13'];
      FormatoTexto(Rango, 'Arial Narrow', 10, True, True);

      //Esto es para que no me desmadre el formato de principal y secundario
      ExApp.Columns['E:F'].NumberFormat := '@';


      Cursor := Screen.Cursor;
      try
        Screen.Cursor := crAppStart;

        iniFila := 12;
        InicOl := 7;
        recFila := 0;
        recCol := 0;

        //UNiverso de materiales utilizados en la semana
        if not FiltrarDataset(zUMateriales, 'IdPersonal,Desde,Hasta', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date)]) then
          raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');

        if zUMateriales.Active then
          zUMateriales.Refresh
        else
          zUMateriales.Open;

        zUMateriales.First;
        while not zUMateriales.Eof do
        begin
          //Material
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(1)] := zUMateriales.FieldByName('Material').AsString;
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(1)].mergeCells := True;
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(1)].Orientation := 90;
          FormatoTexto(ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol) + IntToStr(1)], 'Arial Narrow', 10, true, False);

          //Unidad Medida
          ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila+1)] := zUMateriales.FieldByName('Unidad').AsString;
          FormatoTexto(ExApp.Range[ColumnaNombre(IniCol + recCol) + IntToStr(IniFila+1)], 'Arial Narrow', 9, true, True);

          inc(RecCol);
          zUMateriales.Next;
        end;
        //Bordes de Materiales
        SetBorders(ExApp.Range[ColumnaNombre(IniCol) + IntToStr(IniFila) + ':' + ColumnaNombre(IniCol + recCol-1) + IntToStr(1)], xlThin, xlContinuous);

        //Agregando folios de la semana
        iniFila := 14;
        InicOl := 0;
        recFila := 0;

        zDatos.First;
        while Not zDatos.Eof do
        begin
          ExApp.Range[ColumnaNombre(IniCol + 1) + IntToStr(IniFila + recFila)] := zDatos.recNo;
          ExApp.Range[ColumnaNombre(IniCol + 2) + IntToStr(IniFila + recFila)] := zDatos.FieldByName('Folio').AsString;
          ExApp.Range[ColumnaNombre(IniCol + 3) + IntToStr(IniFila + recFila)] := zDatos.FieldByName('Telefono').AsString;
          ExApp.Range[ColumnaNombre(IniCol + 4) + IntToStr(IniFila + recFila)] := zDatos.FieldByName('Direccion').AsString;
          ExApp.Range[ColumnaNombre(IniCol + 5) + IntToStr(IniFila + recFila)].numberFormat := '@';
          ExApp.Range[ColumnaNombre(IniCol + 5) + IntToStr(IniFila + recFila)].FormulaR1C1 := Chr(39) +  zDatos.FieldByName('Principal').AsString ;
          ExApp.Range[ColumnaNombre(IniCol + 6) + IntToStr(IniFila + recFila)].NumberFormat := '@';
          ExApp.Range[ColumnaNombre(IniCol + 6) + IntToStr(IniFila + recFila)].FormulaR1C1 := Chr(39)  + zDatos.FieldByName('Secundario').AsString + ' ';

          recCol := 0;
          zUMateriales.First;
          while not zUMateriales.Eof do
          begin
            //Cantidad de Material
            try
              //Filtrar por material seleccionado en el universo de materiales
              zMaterial.Filtered := False;
              zMaterial.Filter := 'IdMaterial=' + zUMateriales.FieldByName('IdMaterial').AsString;
              zMaterial.Filtered := True;

              zMaterial.First;
              while not zMaterial.Eof do
              begin
                //Esto lo puse por si el ususario la cagotea se suman la cantidades que sean del mismo material
                ExApp.Range[ColumnaNombre(7 + recCol) + IntToStr(IniFila + RecFila)].value :=  ExApp.Range[ColumnaNombre(7 + recCol) + IntToStr(IniFila + RecFila)].value +
                                                                                               zMaterial.FieldByName('Cantidad').AsString;
                zMaterial.Next;
              end;

            finally
              zMaterial.Filtered := False;
            end;
            inc(RecCol);
            zUMateriales.Next;
          end;
          inc(RecFila);
          zDatos.Next;
        end;

        //Colocar las Formulas Sumatoria
        ExApp.Range['F'+intToStr(IniFila +RecFila)] := 'TOTAL';
        for i := 0 to zUMateriales.RecordCount-1 do
        begin
          //=SUM(R[-5]C:R[-1]C)
          ExApp.Range[ColumnaNombre(7+i) +intToStr(IniFila + RecFila)].FormulaR1C1 := '=SUM(R[-' + intToStr(zDatos.RecordCount) + ']C:R[-1]C)'
        end;

        //Borders a cuerpo del excel
        Rango := ExApp.Range[ColumnaNombre(IniCol + 1) + IntToStr(IniFila-1) + ':' + ColumnaNombre(6 + zUMateriales.RecordCount) + IntToStr(IniFila + recFila)];
        SetBorders(Rango, xlThin, xlContinuous);
        FormatoTexto(Rango, 'Arial Narrow', 10, True, True);

        //Firmantes
        Rango := ExApp.Range['D' + IntToStr(IniFila+recFila+2) + ':' + 'G' + IntToStr(IniFila + recFila + 6)];
        Rango.MergeCells := True;
        Rango := ExApp.Range['D' + IntToStr(IniFila+recFila + 7) + ':' + 'G' + IntToStr(IniFila + recFila + 7)];
        Rango.MergeCells := True;
        Rango.Value := 'NOMBRE Y FIRMA';
        Rango := ExApp.Range['D' + IntToStr(IniFila+recFila+2) + ':' + 'G' + IntToStr(IniFila + recFila + 7)];
        FormatoTexto(Rango, 'Arial Narrow', 10, True);
        SetBorders(Rango, xlThin, xlContinuous);
        Rango := ExApp.Range['D' + IntToStr(IniFila+recFila + 9) + ':' + 'G' + IntToStr(IniFila + recFila + 9)];
        Rango.MergeCells := True;
        Rango.Value := 'CONTRATISTA';
        FormatoTexto(Rango, 'Arial Narrow', 10, True, True);

        Rango := ExApp.Range['M' + IntToStr(IniFila+recFila+2) + ':' + 'R' + IntToStr(IniFila + recFila + 6)];
        Rango.MergeCells := True;
        Rango := ExApp.Range['M' + IntToStr(IniFila+recFila + 7) + ':' + 'R' + IntToStr(IniFila + recFila + 7)];
        Rango.MergeCells := True;
        Rango.Value := 'NOMBRE Y FIRMA';
        Rango := ExApp.Range['M' + IntToStr(IniFila+recFila+2) + ':' + 'R' + IntToStr(IniFila + recFila + 7)];
        FormatoTexto(Rango, 'Arial Narrow', 10, True);
        SetBorders(Rango, xlThin, xlContinuous);
        Rango := ExApp.Range['M' + IntToStr(IniFila+recFila + 9) + ':' + 'R' + IntToStr(IniFila + recFila + 9)];
        Rango.MergeCells := True;
        Rango.Value := 'SUPERVISOR';
        FormatoTexto(Rango, 'Arial Narrow', 10, True, True);

        Exapp.range['G:Z'].Columnwidth := 6;

        ExApp.ActiveSheet.name := 'MATERIALES';
        ExApp.ActiveWindow.DisplayGridlines := False;
      finally
        Screen.Cursor := Cursor;
      end;
    end;
  finally
    zDatos.Filtered := False;
  end;
end;

procedure TFrmMaterialesxFolios.dxButtonNuevoClick(Sender: TObject);
begin
  try
    application.CreateForm(TFrmCapturaFolio, FrmCapturaFolio);
    FrmCapturaFolio.IdFolio := -9;
    FrmCapturaFolio.IdPersonal := zPersonal.FieldByName('IdPersonal').AsInteger;

    If FrmCapturaFolio.ShowModal <> mrCancel then
      dxButtonActualizar.Click;
  finally

  end;
end;

procedure TFrmMaterialesxFolios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := Cafree;
end;

procedure TFrmMaterialesxFolios.FormCreate(Sender: TObject);
begin
  if NOT AsignarSQL(zPersonal, 'master_personal', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[master_personal]');

  if NOT AsignarSQL(zDatos, 'mt_foliosxtecnicos', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[mt_foliosxtecnicos]');

  if NOT AsignarSQL(zMaterial, 'mt_materialxfolio', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[mt_materialxfolio]');

  if NOT AsignarSQL(zUMateriales, 'mt_universomateriales', pReadOnly) then
    raise Exception.Create(pErrorConsulta + '[mt_universomateriales]');

end;

procedure TFrmMaterialesxFolios.FormShow(Sender: TObject);
var
  Cursor: TCursor;
begin
  try
    Cursor := Screen.Cursor;
    try
      Screen.Cursor := crAppStart;

      cxDateDesde.Date := StartOfTheWeek(Now);
      cxDateHasta.Date := EndOfTheWeek(Now);

      if not FiltrarDataset(zPersonal, 'IdPersonal', [Idpersonal]) then
        raise Exception.Create(pErrorFiltrar + '[master_personal]');

      if zPersonal.Active then
        zPersonal.Refresh
      else
        zPersonal.Open;

      if not FiltrarDataset(zDatos, 'IdPersonal,Desde,Hasta', [intTostr(Idpersonal), FechaSQl(cxDateDesde.Date), FechaSQL(cxDateHasta.Date)]) then
        raise Exception.Create(pErrorFiltrar + '[mt_foliosxtecnicos]');

      try
        zDatos.AfterScroll := Nil;

        if zDatos.Active then
          zDatos.Refresh
        else
          zDatos.Open;
      finally
        zDatos.AfterScroll := zDatosAfterScroll;
        if zDatos.Active then
          zdatos.first;
      end;

      self.Caption := 'Actividades: [' + zPersonal.FieldByName('CodigoPersonal').AsString + ']';
    finally
      AplicarTema(TForm(Self));
      AutoFocus(TForm(Self));
      Screen.Cursor := Cursor;
    end;
  Except
    on e: Exception do
    begin
      MsgBox.ShowModal('Error.', 'Ha ocurrido el siguiente error: ' + e.Message, cmtError, [cmbOK]);
      PostMessage(self.Handle, WM_CLOSE, 0, 0);
    end;
  end;
end;

procedure TFrmMaterialesxFolios.zDatosAfterScroll(DataSet: TDataSet);
begin
  if not FiltrarDataset(zMaterial, 'IdFolio', [zDatos.FieldByName('IdFOlio').AsString]) then
    raise Exception.Create(pErrorFiltrar + '[mt_materialxfolio]');

  if zMaterial.Active then
    zMaterial.Refresh
  else
    zMaterial.Open;
end;

end.
