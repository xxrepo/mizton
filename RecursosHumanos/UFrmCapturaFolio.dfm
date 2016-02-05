object FrmCapturaFolio: TFrmCapturaFolio
  Left = 0
  Top = 0
  Caption = 'Captura Folio'
  ClientHeight = 304
  ClientWidth = 389
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 389
    Height = 264
    Align = alClient
    TabOrder = 0
    ExplicitHeight = 281
    object cxTextFolioPrincipal: TcxDBTextEdit
      Left = 83
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Width = 290
    end
    object cxTextFolio: TcxDBTextEdit
      Left = 83
      Top = 64
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 121
    end
    object cxMaskTelefono: TcxDBMaskEdit
      Left = 83
      Top = 91
      Properties.EditMask = '!\(999\)000-0000;1;_'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object cxTextPrincipal: TcxDBTextEdit
      Left = 83
      Top = 199
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 121
    end
    object cxTextSecundario: TcxDBTextEdit
      Left = 83
      Top = 172
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 121
    end
    object cxTextArea: TcxDBTextEdit
      Left = 83
      Top = 145
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 121
    end
    object cxTextNoVale: TcxDBTextEdit
      Left = 83
      Top = 118
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object cxDateFecha: TcxDBDateEdit
      Left = 83
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 0
      Width = 121
    end
    object cbbEstatus: TcxDBComboBox
      Left = 83
      Top = 226
      Properties.Items.Strings = (
        'Liquidada'
        'Objetada'
        'Queja')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 8
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
    object lyFolioPrincipal: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Folio Maestro:'
      Control = cxTextFolioPrincipal
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lyFolio: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Folio:'
      Control = cxTextFolio
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lyTelefono: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Tel'#233'fono:'
      Control = cxMaskTelefono
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lyPrincipal: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Principal:'
      Control = cxTextPrincipal
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object lySecundario: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Secundario:'
      Control = cxTextSecundario
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lyArea: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = #193'rea:'
      Control = cxTextArea
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lyNoVale: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'No. Vale'
      Control = cxTextNoVale
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lyFecha: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Fecha:'
      Control = cxDateFecha
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lyEstatus: TdxLayoutItem
      Parent = dxLayControl1Group_Root
      CaptionOptions.Text = 'Estatus:'
      Control = cbbEstatus
      ControlOptions.ShowBorder = False
      Index = 8
    end
  end
  object pnlBotonera: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 267
    Width = 383
    Height = 34
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -2
    ExplicitTop = 270
    object btnGuardar: TcxButton
      AlignWithMargins = True
      Left = 224
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Caption = '&Guardar'
      TabOrder = 0
      ExplicitLeft = 160
      ExplicitTop = 6
      ExplicitHeight = 25
    end
    object btnCancelar: TcxButton
      AlignWithMargins = True
      Left = 305
      Top = 3
      Width = 75
      Height = 28
      Align = alRight
      Caption = '&Cancelar'
      TabOrder = 1
      ExplicitLeft = 168
      ExplicitTop = 16
      ExplicitHeight = 25
    end
  end
  object dsDatos: TDataSource
    Left = 64
    Top = 256
  end
  object zDatos: TZQuery
    Params = <>
    Left = 16
    Top = 256
  end
end