inherited FrmPuestos: TFrmPuestos
  Caption = 'Cat'#225'logo de puestos'
  ClientHeight = 520
  ClientWidth = 441
  OnCreate = FormCreate
  ExplicitWidth = 447
  ExplicitHeight = 549
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxRibbon1: TdxRibbon
    Width = 441
    inherited dxRibbon1Tab1: TdxRibbonTab
      Caption = 'Puestos'
      Index = 0
    end
  end
  inherited cxGridGral: TcxGrid
    Width = 430
    Height = 280
    ExplicitLeft = 8
    ExplicitWidth = 832
    ExplicitHeight = 264
    inherited cxGridDatos: TcxGridDBTableView
      DataController.DataSource = dsDatos
      object cxColCodigo: TcxGridDBColumn
        Caption = 'C'#243'digo'
        DataBinding.FieldName = 'Codigo'
        Width = 106
      end
      object cxColPuesto: TcxGridDBColumn
        Caption = 'Puesto'
        DataBinding.FieldName = 'Titulo'
        Width = 712
      end
    end
  end
  inherited pnlDatos: TPanel
    Top = 408
    Width = 441
    Height = 112
    ExplicitTop = 408
    ExplicitWidth = 441
    ExplicitHeight = 112
    inherited cxPageDatos: TcxPageControl
      Width = 437
      Height = 108
      ExplicitHeight = 178
      ClientRectBottom = 102
      ClientRectRight = 431
      inherited cxTsDatos: TcxTabSheet
        ExplicitWidth = 831
        ExplicitHeight = 145
        inherited dxLYCDatos: TdxLayoutControl
          Width = 429
          Height = 75
          ExplicitLeft = 4
          ExplicitWidth = 831
          ExplicitHeight = 145
          object cxTextCodigo: TcxDBTextEdit [0]
            Tag = -1
            Left = 60
            Top = 11
            DataBinding.DataField = 'Codigo'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 0
            Width = 261
          end
          object cxTextPuesto: TcxDBTextEdit [1]
            Tag = -1
            Left = 60
            Top = 38
            DataBinding.DataField = 'Titulo'
            DataBinding.DataSource = dsDatosUpt
            Style.HotTrack = False
            TabOrder = 1
            Width = 121
          end
          inherited dxLyDatos: TdxLayoutGroup
            Index = -1
          end
          object lyCodigo: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'C'#243'digo:'
            Control = cxTextCodigo
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object lyPuesto: TdxLayoutItem
            Parent = dxLyDatos
            CaptionOptions.Text = 'Puesto:'
            Control = cxTextPuesto
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
    end
  end
  inherited cxSplitter1: TcxSplitter
    Height = 286
    ExplicitLeft = 0
    ExplicitHeight = 270
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbrManager1Bar: TdxBar
      FloatClientWidth = 97
      FloatClientHeight = 307
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 9
    end
  end
  inherited dsDatos: TDataSource
    DataSet = zDatos
  end
end
