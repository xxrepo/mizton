inherited FrmPersonal: TFrmPersonal
  Caption = 'FrmPersonal'
  ClientHeight = 561
  ClientWidth = 1056
  OnCreate = FormCreate
  ExplicitWidth = 1072
  ExplicitHeight = 600
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Width = 1056
    Height = 466
    ExplicitWidth = 1056
    ExplicitHeight = 466
    DockingType = 5
    OriginalWidth = 1056
    OriginalHeight = 466
    inherited dxlytdckst1: TdxLayoutDockSite
      Width = 1056
      Height = 466
      ExplicitWidth = 1056
      ExplicitHeight = 466
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
    end
    inherited dxHorizContainerDockSite2: TdxHorizContainerDockSite
      Width = 1056
      Height = 466
      ExplicitWidth = 1056
      ExplicitHeight = 466
      DockingType = 0
      OriginalWidth = 185
      OriginalHeight = 140
      inherited dxDockGrid: TdxDockPanel
        Width = 705
        Height = 466
        Caption = 'Listado de personal contratado y postulantes'
        ExplicitWidth = 705
        ExplicitHeight = 466
        DockingType = 1
        OriginalWidth = 705
        OriginalHeight = 140
        inherited cxGridGral: TcxGrid
          Width = 691
          Height = 430
          ExplicitWidth = 691
          ExplicitHeight = 430
          inherited cxGridDatos: TcxGridDBTableView
            DataController.DataSource = dsDatos
            OptionsView.ColumnAutoWidth = False
            object cxColCodigoPersonal: TcxGridDBColumn
              Caption = 'Expediente'
              DataBinding.FieldName = 'CodigoPersonal'
              Width = 128
            end
            object cxColNombre: TcxGridDBColumn
              DataBinding.FieldName = 'Nombre'
              Width = 103
            end
            object cxColAPaterno: TcxGridDBColumn
              DataBinding.FieldName = 'Ap. Paterno'
              Width = 118
            end
            object cxColAMaterno: TcxGridDBColumn
              DataBinding.FieldName = 'Ap. Materno'
              Width = 112
            end
            object cxColTelefono: TcxGridDBColumn
              Caption = 'Tel'#233'fono'
              DataBinding.FieldName = 'Telefono'
              Width = 118
            end
            object cxColMovil: TcxGridDBColumn
              Caption = 'M'#243'vil'
              DataBinding.FieldName = 'Movil'
              Width = 128
            end
            object cxColCorreo: TcxGridDBColumn
              Caption = 'Correo Electr'#243'nico'
              DataBinding.FieldName = 'CorreoElectronico'
              Width = 236
            end
          end
        end
      end
      inherited dxDockDatos: TdxDockPanel
        Left = 705
        Width = 351
        Height = 466
        ExplicitLeft = 705
        ExplicitTop = 0
        ExplicitWidth = 351
        ExplicitHeight = 466
        DockingType = 1
        OriginalWidth = 351
        OriginalHeight = 140
        inherited cxPageDatos: TcxPageControl
          Width = 343
          Height = 436
          ExplicitWidth = 343
          ExplicitHeight = 436
          ClientRectBottom = 430
          ClientRectRight = 337
          inherited cxTsDatos: TcxTabSheet
            ExplicitWidth = 335
            ExplicitHeight = 403
            inherited dxLYCDatos: TdxLayoutControl
              Width = 335
              Height = 403
              ExplicitWidth = 335
              ExplicitHeight = 403
              inherited dxLyDatos: TdxLayoutGroup
                Index = -1
              end
            end
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 1056
    ExplicitWidth = 1056
    inherited dxRibbon1Tab1: TdxRibbonTab
      Index = 0
    end
  end
  inherited dxBarManager1: TdxBarManager
    LookAndFeel.SkinName = ''
    DockControlHeights = (
      0
      0
      0
      0)
    inherited dxbrManager1Bar: TdxBar
      FloatClientWidth = 153
      FloatClientHeight = 307
    end
    inherited dxButtonGuardar: TdxBarLargeButton
      ImageIndex = 8
    end
  end
  inherited dxDockingManager1: TdxDockingManager
    PixelsPerInch = 96
  end
end
