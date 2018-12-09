object frModal: TfrModal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frModal'
  ClientHeight = 81
  ClientWidth = 192
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbetMirrorEt: TDBEdit
    Left = 8
    Top = 16
    Width = 176
    Height = 21
    TabOrder = 0
  end
  object btnOK: TButton
    Left = 8
    Top = 43
    Width = 176
    Height = 25
    Caption = 'btnOK'
    DragCursor = crHandPoint
    ModalResult = 1
    TabOrder = 1
  end
  object etName: TEdit
    Left = 8
    Top = 16
    Width = 176
    Height = 21
    TabOrder = 2
    Text = 'etName'
  end
end
