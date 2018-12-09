object sprav_dolzhn: Tsprav_dolzhn
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1076#1086#1083#1078#1085#1086#1089#1090#1077#1081
  ClientHeight = 321
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitTop = -6
    object Splitter1: TSplitter
      Left = 63
      Top = 1
      Width = 12
      Height = 31
    end
    object Splitter2: TSplitter
      Left = 106
      Top = 1
      Width = 23
      Height = 31
    end
    object btnClose: TButton
      Left = 433
      Top = 1
      Width = 31
      Height = 31
      Align = alRight
      TabOrder = 0
      OnClick = btnCloseClick
      ExplicitLeft = 431
    end
    object Доб: TButton
      Left = 1
      Top = 1
      Width = 31
      Height = 31
      Align = alLeft
      Caption = #1044#1086#1073
      TabOrder = 1
      OnClick = ДобClick
    end
    object TButton
      Left = 32
      Top = 1
      Width = 31
      Height = 31
      Align = alLeft
      TabOrder = 2
      ExplicitLeft = 33
    end
    object TButton
      Left = 75
      Top = 1
      Width = 31
      Height = 31
      Align = alLeft
      TabOrder = 3
      ExplicitLeft = 76
    end
    object TButton
      Left = 129
      Top = 1
      Width = 31
      Height = 31
      Align = alLeft
      TabOrder = 4
      ExplicitLeft = 119
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 33
    Width = 465
    Height = 288
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    SearchPanel.Enabled = True
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KOD'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1050#1086#1076
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAME'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Width = 120
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object qryMain: TFDQuery
    Connection = DataModule6.MainConnection
    Transaction = DataModule6.trRead
    SQL.Strings = (
      'select kod, name from dolzhnost')
    Left = 408
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = qryMain
    Left = 408
    Top = 72
  end
  object trWrite: TFDTransaction
    Connection = DataModule6.MainConnection
    Left = 408
    Top = 232
  end
  object qryTemp: TFDQuery
    Connection = DataModule6.MainConnection
    Transaction = trWrite
    Left = 408
    Top = 176
  end
end
