object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 705
  ClientWidth = 1221
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFiltros: TPanel
    Left = 0
    Top = 0
    Width = 313
    Height = 705
    Align = alLeft
    TabOrder = 0
    ExplicitHeight = 709
    object cxGboxFecha: TcxGroupBox
      Left = 8
      Top = 48
      TabOrder = 0
      Height = 185
      Width = 289
      object dxLayControl1: TdxLayoutControl
        Left = 3
        Top = 22
        Width = 283
        Height = 160
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 235
        object cxDateEdit1: TcxDateEdit
          Left = 69
          Top = 37
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 1
          Width = 196
        end
        object cxDateEdit2: TcxDateEdit
          Left = 69
          Top = 64
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          Style.ButtonStyle = bts3D
          Style.PopupBorderStyle = epbsFrame3D
          TabOrder = 2
          Width = 121
        end
        object cxTextEdit1: TcxTextEdit
          Left = 69
          Top = 118
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 4
          Text = 'cxTextEdit1'
          Width = 192
        end
        object cxCheckExpediente: TcxCheckBox
          Left = 10
          Top = 91
          Caption = 'Buscar por expediente espec'#237'fico'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 3
          Width = 121
        end
        object cxCheckOrign: TcxCheckBox
          Left = 10
          Top = 10
          Caption = 'Desde el origen de los tiempos'
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
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
        object lyDesde: TdxLayoutItem
          Parent = dxLayControl1Group_Root
          CaptionOptions.Text = 'Desde:'
          Control = cxDateEdit1
          ControlOptions.ShowBorder = False
          Index = 1
        end
        object lyHasta: TdxLayoutItem
          Parent = dxLayControl1Group_Root
          CaptionOptions.Text = 'Hasta:'
          Control = cxDateEdit2
          ControlOptions.ShowBorder = False
          Index = 2
        end
        object lyExpediente: TdxLayoutItem
          Parent = dxLayControl1Group_Root
          CaptionOptions.Text = 'Expediente'
          Control = cxTextEdit1
          ControlOptions.ShowBorder = False
          Index = 4
        end
        object lyExpedienteChk: TdxLayoutItem
          Parent = dxLayControl1Group_Root
          CaptionOptions.Text = 'cxCheckBox1'
          CaptionOptions.Visible = False
          Control = cxCheckExpediente
          ControlOptions.ShowBorder = False
          Index = 3
        end
        object lyOrigen: TdxLayoutItem
          Parent = dxLayControl1Group_Root
          CaptionOptions.Text = 'cxCheckBox2'
          CaptionOptions.Visible = False
          Control = cxCheckOrign
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object rbFecha: TcxRadioButton
      Left = 11
      Top = 25
      Width = 113
      Height = 17
      Caption = 'Filtrar por fechas'
      TabOrder = 1
    end
    object cxRadioButton1: TcxRadioButton
      Left = 8
      Top = 249
      Width = 113
      Height = 17
      Caption = 'Filtrar por folio'
      TabOrder = 2
    end
    object cxGboxFolio: TcxGroupBox
      Left = 8
      Top = 272
      TabOrder = 3
      Height = 73
      Width = 289
      object dxLayoutControl1: TdxLayoutControl
        Left = 3
        Top = 22
        Width = 283
        Height = 48
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 51
        object cxTextFolio: TcxTextEdit
          Left = 41
          Top = 10
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Text = 'cxTextFolio'
          Width = 224
        end
        object dxLayoutGroup1: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object lyFolio: TdxLayoutItem
          Parent = dxLayoutGroup1
          CaptionOptions.Text = 'Folio:'
          Control = cxTextFolio
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
    object cxRadioButton2: TcxRadioButton
      Left = 8
      Top = 361
      Width = 137
      Height = 17
      Caption = 'Filtrar No. Telef'#243'nico'
      TabOrder = 4
    end
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 384
      TabOrder = 5
      Height = 73
      Width = 289
      object dxLayoutControl2: TdxLayoutControl
        Left = 3
        Top = 22
        Width = 283
        Height = 48
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = -2
        ExplicitWidth = 285
        ExplicitHeight = 73
        object cxTextTelefono: TcxTextEdit
          Left = 61
          Top = 10
          Style.BorderColor = clWindowFrame
          Style.BorderStyle = ebs3D
          Style.HotTrack = False
          TabOrder = 0
          Text = 'cxTextFolio'
          Width = 204
        end
        object dxLayoutGroup2: TdxLayoutGroup
          AlignHorz = ahLeft
          AlignVert = avTop
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          Index = -1
        end
        object dxLayoutItem1: TdxLayoutItem
          Parent = dxLayoutGroup2
          CaptionOptions.Text = 'Tel'#233'fono:'
          Control = cxTextTelefono
          ControlOptions.ShowBorder = False
          Index = 0
        end
      end
    end
  end
  object CxGrdFolios: TcxGrid
    Left = 313
    Top = 0
    Width = 908
    Height = 705
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 464
    ExplicitTop = 169
    ExplicitWidth = 250
    ExplicitHeight = 200
    object CxGrdFoliosDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
    end
    object cxLvl1: TcxGridLevel
      GridView = CxGrdFoliosDBTableView1
    end
  end
end
