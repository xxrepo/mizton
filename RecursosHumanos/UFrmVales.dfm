inherited FrmVales: TFrmVales
  Align = alCustom
  Caption = 'Cat'#225'logo de Vales'
  ClientHeight = 651
  ClientWidth = 985
  OnCreate = FormCreate
  ExplicitWidth = 991
  ExplicitHeight = 680
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 985
    ExplicitWidth = 985
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Inicio'
      Groups = <
        item
        end
        item
          ToolbarName = 'dxbrManager1Bar'
        end
        item
          Caption = 'Vales'
          ToolbarName = 'dxbrManager1Bar2'
        end>
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Left = 3
    Width = 979
    Height = 355
    ExplicitLeft = 8
    ExplicitWidth = 974
    ExplicitHeight = 0
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      OptionsView.ColumnAutoWidth = False
      OptionsView.GroupByBox = True
      object cxColFolio: TcxGridDBColumn
        Caption = 'Folio Maestro'
        DataBinding.FieldName = 'FolioMaestro'
        Width = 112
      end
      object cxColNoVale: TcxGridDBColumn
        Caption = 'No. Vale'
        DataBinding.FieldName = 'NoVale'
        Width = 75
      end
      object cxColFecha: TcxGridDBColumn
        Caption = 'Fecha Vale'
        DataBinding.FieldName = 'FechaVale'
        Width = 95
      end
      object cxColDivision: TcxGridDBColumn
        Caption = 'Divisi'#243'n'
        DataBinding.FieldName = 'Division'
        Width = 117
      end
      object cxColArea: TcxGridDBColumn
        Caption = #193'rea'
        DataBinding.FieldName = 'Area'
        Width = 103
      end
      object cxColContratista: TcxGridDBColumn
        DataBinding.FieldName = 'Contratista'
        Width = 160
      end
      object cxColFirmaContratista: TcxGridDBColumn
        Caption = 'Firmante Contratista'
        DataBinding.FieldName = 'FirmaContratista'
        Width = 160
      end
      object cxColFirmaSupervisor: TcxGridDBColumn
        Caption = 'Firmante Supervisor'
        DataBinding.FieldName = 'FirmaSupervisor'
        Width = 160
      end
      object cxColCreacion: TcxGridDBColumn
        Caption = 'Fecha de Creaci'#243'n'
        DataBinding.FieldName = 'FechaCreacion'
        Width = 131
      end
      object cxColEstatus: TcxGridDBColumn
        DataBinding.FieldName = 'Estatus'
        Visible = False
        GroupIndex = 0
        Width = 106
      end
    end
    object cxGridFolios: TcxGridDBTableView [1]
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    inherited GridLevel1: TcxGridLevel
      object cxLvlFolios: TcxGridLevel
        GridView = cxGridFolios
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 488
    Width = 985
    Height = 163
    ExplicitTop = 488
    ExplicitWidth = 985
    ExplicitHeight = 163
    inherited cxPageDatos: TcxPageControl
      Width = 981
      Height = 159
      ExplicitWidth = 981
      ExplicitHeight = 247
      ClientRectBottom = 153
      ClientRectRight = 975
      inherited cxTsDatos: TcxTabSheet
        Caption = 'Inserci'#243'n/Edici'#243'n de vales'
        ExplicitWidth = 973
        ExplicitHeight = 492
        inherited dxLYCDatos: TdxLayoutControl
          Width = 973
          Height = 126
          ExplicitWidth = 973
          ExplicitHeight = 492
          object cxTextNoVale: TcxDBTextEdit [0]
            Tag = -1
            Left = 66
            Top = 38
            DataBinding.DataField = 'NoVale'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          object cxTextFolio: TcxDBTextEdit [1]
            Tag = -1
            Left = 66
            Top = 11
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 0
            Width = 235
          end
          object cbbEstatus: TcxDBComboBox [2]
            Tag = -1
            Left = 66
            Top = 65
            DataBinding.DataField = 'estatus'
            DataBinding.DataSource = dsDatosUpt
            Properties.Items.Strings = (
              'Abierto'
              'Cerrado')
            Style.HotTrack = False
            TabOrder = 2
            Width = 121
          end
          object cxDateVale: TcxDBDateEdit [3]
            Tag = -1
            Left = 385
            Top = 11
            DataBinding.DataField = 'FechaVale'
            DataBinding.DataSource = dsDatosUpt
            Properties.OnChange = cxDateValePropertiesChange
            Style.HotTrack = False
            TabOrder = 3
            Width = 184
          end
          object cxSpinNoSemana: TcxDBSpinEdit [4]
            Left = 385
            Top = 38
            DataBinding.DataField = 'NoSemana'
            DataBinding.DataSource = dsDatosUpt
            Enabled = False
            Style.HotTrack = False
            TabOrder = 4
            Width = 121
          end
          object cxDateInicio: TcxDBDateEdit [5]
            Left = 385
            Top = 65
            DataBinding.DataField = 'Inicio'
            DataBinding.DataSource = dsDatosUpt
            Enabled = False
            Style.HotTrack = False
            TabOrder = 5
            Width = 121
          end
          object cxDateTermino: TcxDBDateEdit [6]
            Left = 385
            Top = 92
            DataBinding.DataField = 'Termino'
            DataBinding.DataSource = dsDatosUpt
            Enabled = False
            Style.HotTrack = False
            TabOrder = 6
            Width = 121
          end
          inherited dxLyDatos: TdxLayoutGroup
            LayoutDirection = ldHorizontal
            Index = -1
          end
          object lyNoVale: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'No. Vale:'
            Control = cxTextNoVale
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object lyFolio: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'C'#243'digo:'
            Control = cxTextFolio
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lyEstatus: TdxLayoutItem
            Parent = dxLYCDatosGroup1
            CaptionOptions.Text = 'Estatus:'
            Control = cbbEstatus
            ControlOptions.ShowBorder = False
            Index = 2
          end
          object lyFechaVale: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Fecha:'
            Control = cxDateVale
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            Index = 0
            AutoCreated = True
          end
          object lyNoSemana: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'No. Semana:'
            Control = cxSpinNoSemana
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 1
          end
          object dxLYCDatosGroup2: TdxLayoutAutoCreatedGroup
            Parent = dxLyDatos
            Index = 1
            AutoCreated = True
          end
          object lyInicio: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Inicio:'
            Control = cxDateInicio
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 2
          end
          object lyTermino: TdxLayoutItem
            Parent = dxLYCDatosGroup2
            CaptionOptions.Text = 'Termino:'
            Control = cxDateTermino
            ControlOptions.ShowBorder = False
            Enabled = False
            Index = 3
          end
        end
      end
    end
  end
  inherited cxSplitter1: TcxSplitter
    Top = 483
    Width = 985
    Height = 5
    AlignSplitter = salBottom
    ExplicitLeft = 0
    ExplicitHeight = 0
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    Left = 640
    Top = 40
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbrManager1Bar: TdxBar
      FloatClientWidth = 97
      FloatClientHeight = 307
      OneOnRow = False
    end
    object dxbrManager1Bar2: TdxBar [2]
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedLeft = 399
      DockedTop = 0
      FloatLeft = 995
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnGenerarAnual'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnAbrir'
        end
        item
          Visible = True
          ItemName = 'btnCerrar'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
    object btnAbrir: TdxBarLargeButton
      Caption = '&Abrir'#13#10'Vales'
      Category = 0
      Hint = 'Abrir'#13#10'Vales'
      Visible = ivAlways
    end
    object btnCerrar: TdxBarLargeButton
      Caption = '&Cerrar'#13#10'Vales'
      Category = 0
      Hint = 'Cerrar'#13#10'Vales'
      Visible = ivAlways
    end
    object btnGenerarAnual: TdxBarLargeButton
      Caption = '&Generar vales del todo el a'#241'o'
      Category = 0
      Hint = 'Generar vales del todo el a'#241'o'
      Visible = ivAlways
    end
  end
  inherited dsDatos: TDataSource
    DataSet = zDatos
    Left = 736
    Top = 80
  end
  inherited zDatos: TZQuery
    Left = 888
    Top = 24
  end
  inherited zDatosUpt: TZQuery
    Left = 800
    Top = 8
  end
  inherited dsDatosUpt: TDataSource
    Left = 744
    Top = 16
  end
  inherited dxPopupGrid: TdxRibbonPopupMenu
    Left = 784
    Top = 72
  end
  inherited dlgSave1: TSaveDialog
    Left = 832
    Top = 56
  end
end
