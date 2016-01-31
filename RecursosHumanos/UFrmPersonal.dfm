inherited FrmPersonal: TFrmPersonal
  Caption = 'Cat'#225'logo de Personal'
  ClientHeight = 781
  ClientWidth = 1299
  OnCreate = FormCreate
  ExplicitWidth = 1315
  ExplicitHeight = 820
  PixelsPerInch = 96
  TextHeight = 13
  inherited dxDockSite1: TdxDockSite
    Width = 1299
    Height = 686
    DockingType = 5
    OriginalWidth = 1299
    OriginalHeight = 686
    inherited dxLayoutDockSite1: TdxLayoutDockSite
      Width = 856
      Height = 686
      ExplicitWidth = 856
      ExplicitHeight = 640
      DockingType = 0
      OriginalWidth = 300
      OriginalHeight = 200
      inherited dxlytdckst1: TdxLayoutDockSite
        Width = 856
        Height = 686
        ExplicitWidth = 856
        ExplicitHeight = 686
        DockingType = 0
        OriginalWidth = 300
        OriginalHeight = 200
      end
      inherited dxDockGrid: TdxDockPanel
        Width = 856
        Height = 686
        Caption = 'Cat'#225'logo de Personal'
        ExplicitWidth = 856
        ExplicitHeight = 686
        DockingType = 0
        OriginalWidth = 185
        OriginalHeight = 140
        inherited cxGridGral: TcxGrid
          Width = 842
          Height = 650
          inherited cxGridDatos: TcxGridDBTableView
            DataController.DataSource = dsDatos
            OptionsView.ColumnAutoWidth = False
            object cxColCodigoPersonal: TcxGridDBColumn
              Caption = 'Expediente'
              DataBinding.FieldName = 'CodigoPersonal'
              Width = 160
            end
            object cxColAPaterno: TcxGridDBColumn
              Caption = 'Nombre(s)'
              DataBinding.FieldName = 'Nombre'
              Width = 136
            end
            object cxColAMaterno: TcxGridDBColumn
              Caption = 'Ap. Paterno'
              DataBinding.FieldName = 'APaterno'
              Width = 166
            end
            object cxColTelFijo: TcxGridDBColumn
              Caption = 'Ap. Materno'
              DataBinding.FieldName = 'AMaterno'
              Width = 150
            end
            object cxColTelMovil: TcxGridDBColumn
              Caption = 'Tel. Fijo'
              DataBinding.FieldName = 'Telefono'
              Width = 129
            end
            object cxColCorreo: TcxGridDBColumn
              Caption = 'Tel. M'#243'vil'
              DataBinding.FieldName = 'Movil'
              Width = 129
            end
            object cxColCurp: TcxGridDBColumn
              Caption = 'CURP'
              DataBinding.FieldName = 'Curp'
              Width = 181
            end
            object cxColRfc: TcxGridDBColumn
              DataBinding.FieldName = 'RFC'
              Width = 165
            end
            object cxColNSS: TcxGridDBColumn
              DataBinding.FieldName = 'NSS'
              Width = 193
            end
          end
        end
      end
    end
    inherited dxDockDatos: TdxDockPanel
      Left = 856
      Width = 443
      Height = 686
      AllowFloating = False
      ExplicitLeft = 856
      ExplicitWidth = 443
      ExplicitHeight = 640
      DockingType = 3
      OriginalWidth = 443
      OriginalHeight = 140
      inherited cxPageDatos: TcxPageControl
        Width = 435
        Height = 656
        ClientRectBottom = 650
        ClientRectRight = 429
        inherited cxTsDatos: TcxTabSheet
          Caption = 'Informaci'#243'n detallada'
          inherited dxLYCDatos: TdxLayoutControl
            AlignWithMargins = True
            Left = 5
            Top = 3
            Width = 419
            Height = 230
            Margins.Left = 5
            Align = alTop
            ExplicitLeft = 5
            ExplicitTop = 3
            ExplicitWidth = 419
            ExplicitHeight = 230
            object imgFoto: TcxDBImage [0]
              Left = 11
              Top = 11
              DataBinding.DataField = 'Imagen'
              DataBinding.DataSource = dsDatosUpt
              Properties.GraphicClassName = 'TdxSmartImage'
              Style.HotTrack = False
              TabOrder = 0
              Height = 110
              Width = 94
            end
            object cxTextCodigoPersonal: TcxDBTextEdit [1]
              Left = 184
              Top = 11
              DataBinding.DataField = 'CodigoPersonal'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 1
              Width = 224
            end
            object cxTextNombre: TcxDBTextEdit [2]
              Left = 184
              Top = 38
              DataBinding.DataField = 'Nombre'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 2
              Width = 121
            end
            object cxTextAPaterno: TcxDBTextEdit [3]
              Left = 184
              Top = 65
              DataBinding.DataField = 'APaterno'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 3
              Width = 121
            end
            object cxTextAMaterno: TcxDBTextEdit [4]
              Left = 184
              Top = 92
              DataBinding.DataField = 'AMaterno'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 4
              Width = 121
            end
            object cbbSexo: TcxDBComboBox [5]
              Left = 117
              Top = 127
              DataBinding.DataField = 'Sexo'
              DataBinding.DataSource = dsDatosUpt
              Properties.Items.Strings = (
                'Hombre'
                'Mujer')
              Style.HotTrack = False
              TabOrder = 5
              Width = 126
            end
            object cbbEdoCivil: TcxDBComboBox [6]
              Left = 313
              Top = 127
              DataBinding.DataField = 'EstadoCivil'
              DataBinding.DataSource = dsDatosUpt
              Properties.Items.Strings = (
                'Soltero'
                'Casado'
                'Viudo')
              Style.HotTrack = False
              TabOrder = 6
              Width = 95
            end
            object cxDateNacimiento: TcxDBDateEdit [7]
              Left = 117
              Top = 154
              DataBinding.DataField = 'FechaNacimiento'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 7
              Width = 74
            end
            object cxTextSangre: TcxDBTextEdit [8]
              Left = 117
              Top = 181
              DataBinding.DataField = 'GrupoSanguineo'
              DataBinding.DataSource = dsDatosUpt
              Style.HotTrack = False
              TabOrder = 8
              Width = 279
            end
            inherited dxLyDatos: TdxLayoutGroup
              Index = -1
            end
            object lyLYCDatosItem1: TdxLayoutItem
              Parent = dxLYCDatosGroup2
              CaptionOptions.Text = 'cxDBImage1'
              CaptionOptions.Visible = False
              Control = imgFoto
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lyCodigoPersonal: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              CaptionOptions.Text = 'Expediente:'
              Control = cxTextCodigoPersonal
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object lyNombre: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              CaptionOptions.Text = 'Nombre:'
              Control = cxTextNombre
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object dxLYCDatosGroup1: TdxLayoutAutoCreatedGroup
              Parent = dxLYCDatosGroup2
              Index = 1
              AutoCreated = True
            end
            object lyAPaterno: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              CaptionOptions.Text = 'Ap. Paterno:'
              Control = cxTextAPaterno
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lyAMaterno: TdxLayoutItem
              Parent = dxLYCDatosGroup1
              CaptionOptions.Text = 'Ap. Materno:'
              Control = cxTextAMaterno
              ControlOptions.ShowBorder = False
              Index = 3
            end
            object lySexo: TdxLayoutItem
              Parent = dxLYCDatosGroup3
              AlignHorz = ahClient
              CaptionOptions.Text = 'Sexo:'
              Control = cbbSexo
              ControlOptions.ShowBorder = False
              Index = 0
            end
            object dxLYCDatosGroup2: TdxLayoutAutoCreatedGroup
              Parent = dxLyDatos
              LayoutDirection = ldHorizontal
              Index = 0
              AutoCreated = True
            end
            object dxLYCDatosGroup3: TdxLayoutAutoCreatedGroup
              Parent = dxLyDatos
              LayoutDirection = ldHorizontal
              Index = 1
              AutoCreated = True
            end
            object lyEdoCivil: TdxLayoutItem
              Parent = dxLYCDatosGroup3
              CaptionOptions.Text = 'Edo. Civil:'
              Control = cbbEdoCivil
              ControlOptions.ShowBorder = False
              Index = 1
            end
            object lyNacimiento: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Nacimiento:'
              Control = cxDateNacimiento
              ControlOptions.ShowBorder = False
              Index = 2
            end
            object lySangre: TdxLayoutItem
              Parent = dxLyDatos
              CaptionOptions.Text = 'Grupo Sanguineo:'
              Control = cxTextSangre
              ControlOptions.ShowBorder = False
              Index = 3
            end
          end
          object cxPageControl1: TcxPageControl
            AlignWithMargins = True
            Left = 10
            Top = 246
            Width = 407
            Height = 367
            Margins.Left = 10
            Margins.Top = 10
            Margins.Right = 10
            Margins.Bottom = 10
            Align = alClient
            TabOrder = 1
            Properties.ActivePage = cxTabDireccion
            Properties.CustomButtons.Buttons = <>
            ExplicitTop = 142
            ExplicitWidth = 511
            ExplicitHeight = 346
            ClientRectBottom = 361
            ClientRectLeft = 2
            ClientRectRight = 401
            ClientRectTop = 27
            object cxTabDireccion: TcxTabSheet
              Caption = 'Direcci'#243'n / Contacto'
              ImageIndex = 0
              ExplicitLeft = 3
              ExplicitTop = 30
              ExplicitWidth = 447
              ExplicitHeight = 257
              object dxLayControl1: TdxLayoutControl
                AlignWithMargins = True
                Left = 5
                Top = 3
                Width = 391
                Height = 328
                Margins.Left = 5
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = UDMConection.dxStyleForms
                ExplicitLeft = 48
                ExplicitTop = 0
                ExplicitWidth = 300
                ExplicitHeight = 250
                object cxMaskTel: TcxDBMaskEdit
                  Left = 74
                  Top = 11
                  DataBinding.DataField = 'Telefono'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 0
                  Width = 303
                end
                object cxMaskMovil: TcxDBMaskEdit
                  Left = 74
                  Top = 38
                  DataBinding.DataField = 'Movil'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 1
                  Width = 121
                end
                object cxTextCorreo: TcxDBTextEdit
                  Left = 74
                  Top = 65
                  DataBinding.DataField = 'CorreoElectronico'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 2
                  Width = 121
                end
                object cbbPais: TcxDBLookupComboBox
                  Left = 74
                  Top = 200
                  DataBinding.DataField = 'IdPais'
                  DataBinding.DataSource = dsDatosUpt
                  Properties.ListColumns = <>
                  Style.HotTrack = False
                  TabOrder = 8
                  Width = 145
                end
                object cbbEstado: TcxDBLookupComboBox
                  Left = 74
                  Top = 227
                  DataBinding.DataField = 'IdEstado'
                  DataBinding.DataSource = dsDatosUpt
                  Properties.ListColumns = <>
                  Style.HotTrack = False
                  TabOrder = 9
                  Width = 145
                end
                object cbbCiudad: TcxDBLookupComboBox
                  Left = 74
                  Top = 254
                  DataBinding.DataField = 'IdCiudad'
                  DataBinding.DataSource = dsDatosUpt
                  Properties.ListColumns = <>
                  Style.HotTrack = False
                  TabOrder = 10
                  Width = 145
                end
                object cxTextLocalidad: TcxDBTextEdit
                  Left = 74
                  Top = 281
                  DataBinding.DataField = 'Localidad'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 11
                  Width = 121
                end
                object cxTextCalle: TcxDBTextEdit
                  Left = 74
                  Top = 92
                  DataBinding.DataField = 'Calle'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 3
                  Width = 121
                end
                object cbbColonia: TcxDBLookupComboBox
                  Left = 74
                  Top = 119
                  DataBinding.DataField = 'Colonia'
                  DataBinding.DataSource = dsDatosUpt
                  Properties.ListColumns = <>
                  Style.HotTrack = False
                  TabOrder = 4
                  Width = 145
                end
                object cxSpinCP: TcxDBSpinEdit
                  Left = 74
                  Top = 146
                  DataBinding.DataField = 'CP'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 5
                  Width = 121
                end
                object cxTextExt: TcxDBTextEdit
                  Left = 74
                  Top = 173
                  DataBinding.DataField = 'NoExt'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 6
                  Width = 121
                end
                object cxTextINt: TcxDBTextEdit
                  Left = 256
                  Top = 173
                  DataBinding.DataField = 'NoInt'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 7
                  Width = 121
                end
                object dxLayControl1Group_Root: TdxLayoutGroup
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object lyTel: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'Tel. Fijo:'
                  Control = cxMaskTel
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object lyMovil: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'Tel. M'#243'vil:'
                  Control = cxMaskMovil
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object lyCOrreo: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'Correo:'
                  Control = cxTextCorreo
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object lyPais: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'Pa'#237's:'
                  Control = cbbPais
                  ControlOptions.ShowBorder = False
                  Index = 7
                end
                object lyEstado: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'Estado:'
                  Control = cbbEstado
                  ControlOptions.ShowBorder = False
                  Index = 8
                end
                object lyCiudad: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'Ciudad:'
                  Control = cbbCiudad
                  ControlOptions.ShowBorder = False
                  Index = 9
                end
                object lyLocalidad: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'Localidad:'
                  Control = cxTextLocalidad
                  ControlOptions.ShowBorder = False
                  Index = 10
                end
                object lyCalle: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'Calle:'
                  Control = cxTextCalle
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object lyColona: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'Colonia:'
                  Control = cbbColonia
                  ControlOptions.ShowBorder = False
                  Index = 4
                end
                object lyCp: TdxLayoutItem
                  Parent = dxLayControl1Group_Root
                  CaptionOptions.Text = 'C.P:'
                  Control = cxSpinCP
                  ControlOptions.ShowBorder = False
                  Index = 5
                end
                object lyExt: TdxLayoutItem
                  Parent = dxLayControl1Group1
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'No. Ext:'
                  Control = cxTextExt
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object lyINt: TdxLayoutItem
                  Parent = dxLayControl1Group1
                  CaptionOptions.Text = 'No. Int:'
                  Control = cxTextINt
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayControl1Group1: TdxLayoutAutoCreatedGroup
                  Parent = dxLayControl1Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 6
                  AutoCreated = True
                end
              end
            end
            object cxTabSheet2: TcxTabSheet
              Caption = 'Datos para empleo'
              ImageIndex = 1
              ExplicitWidth = 503
              ExplicitHeight = 313
              object dxLayoutControl1: TdxLayoutControl
                AlignWithMargins = True
                Left = 5
                Top = 3
                Width = 391
                Height = 328
                Margins.Left = 5
                Align = alClient
                TabOrder = 0
                LayoutLookAndFeel = UDMConection.dxStyleForms
                ExplicitLeft = 3
                ExplicitTop = 4
                ExplicitWidth = 300
                ExplicitHeight = 250
                object cxTextCURP: TcxDBTextEdit
                  Left = 92
                  Top = 11
                  DataBinding.DataField = 'Curp'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 0
                  Width = 285
                end
                object cxTextRFC: TcxDBTextEdit
                  Left = 92
                  Top = 38
                  DataBinding.DataField = 'RFC'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 1
                  Width = 121
                end
                object cxTextNSS: TcxDBTextEdit
                  Left = 92
                  Top = 65
                  DataBinding.DataField = 'Nss'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 2
                  Width = 121
                end
                object cbbTipoInfonavit: TcxDBComboBox
                  Left = 92
                  Top = 139
                  DataBinding.DataField = 'TipoInfonavit'
                  DataBinding.DataSource = dsDatosUpt
                  Properties.Items.Strings = (
                    'Fijo'
                    'VSM'
                    'Porcentaje')
                  Style.HotTrack = False
                  TabOrder = 4
                  Width = 133
                end
                object cxSpinFactor: TcxDBSpinEdit
                  Left = 280
                  Top = 139
                  DataBinding.DataField = 'FactorInfonavit'
                  DataBinding.DataSource = dsDatosUpt
                  Properties.AssignedValues.MinValue = True
                  Properties.Nullstring = '0'
                  Properties.ValueType = vtFloat
                  Style.HotTrack = False
                  TabOrder = 5
                  Width = 97
                end
                object cxTextInfonavit: TcxDBTextEdit
                  Left = 92
                  Top = 112
                  DataBinding.DataField = 'Infonavit'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 3
                  Width = 121
                end
                object cxDateInicio: TcxDBDateEdit
                  Left = 92
                  Top = 166
                  DataBinding.DataField = 'AplicacionInfonavit'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 6
                  Width = 121
                end
                object cxDateFin: TcxDBDateEdit
                  Left = 92
                  Top = 193
                  DataBinding.DataField = 'TerminoInfonavit'
                  DataBinding.DataSource = dsDatosUpt
                  Style.HotTrack = False
                  TabOrder = 7
                  Width = 121
                end
                object dxLayoutControl1Group_Root: TdxLayoutGroup
                  AlignHorz = ahLeft
                  AlignVert = avTop
                  ButtonOptions.Buttons = <>
                  Hidden = True
                  ShowBorder = False
                  Index = -1
                end
                object lyCurp: TdxLayoutItem
                  Parent = dxLayoutControl1Group_Root
                  CaptionOptions.Text = 'CURP:'
                  Control = cxTextCURP
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object lyRFC: TdxLayoutItem
                  Parent = dxLayoutControl1Group_Root
                  CaptionOptions.Text = 'RFC:'
                  Control = cxTextRFC
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object lyNSS: TdxLayoutItem
                  Parent = dxLayoutControl1Group_Root
                  CaptionOptions.Text = 'NSS:'
                  Control = cxTextNSS
                  ControlOptions.ShowBorder = False
                  Index = 2
                end
                object lytipoInfonavit: TdxLayoutItem
                  Parent = dxLayoutControl1Group1
                  AlignHorz = ahClient
                  CaptionOptions.Text = 'Tipo Infonavit:'
                  Control = cbbTipoInfonavit
                  ControlOptions.ShowBorder = False
                  Index = 0
                end
                object lyFactor: TdxLayoutItem
                  Parent = dxLayoutControl1Group1
                  CaptionOptions.Text = 'Factor:'
                  Control = cxSpinFactor
                  ControlOptions.ShowBorder = False
                  Index = 1
                end
                object dxLayoutControl1Group1: TdxLayoutAutoCreatedGroup
                  Parent = dxLayoutControl1Group_Root
                  LayoutDirection = ldHorizontal
                  Index = 4
                  AutoCreated = True
                end
                object lyInfonavit: TdxLayoutItem
                  Parent = dxLayoutControl1Group_Root
                  CaptionOptions.Text = 'Infonavit:'
                  Padding.Top = 20
                  Padding.AssignedValues = [lpavTop]
                  Control = cxTextInfonavit
                  ControlOptions.ShowBorder = False
                  Index = 3
                end
                object lyInicio: TdxLayoutItem
                  Parent = dxLayoutControl1Group_Root
                  CaptionOptions.Text = 'Inicio:'
                  Control = cxDateInicio
                  ControlOptions.ShowBorder = False
                  Index = 5
                end
                object lyFin: TdxLayoutItem
                  Parent = dxLayoutControl1Group_Root
                  CaptionOptions.Text = 'Termino:'
                  Control = cxDateFin
                  ControlOptions.ShowBorder = False
                  Index = 6
                end
              end
            end
          end
        end
      end
    end
  end
  inherited dxRibbon1: TdxRibbon
    Width = 1299
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
  inherited cxHintStyleController: TcxHintStyleController
    Left = 272
    Top = 376
  end
end