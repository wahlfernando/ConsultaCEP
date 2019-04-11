object Form1: TForm1
  Left = 372
  Top = 376
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Consulta de CEP'
  ClientHeight = 236
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 97
    Height = 14
    Caption = 'Buscar pelo CEP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Button1: TButton
    Left = 196
    Top = 42
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 32
    Top = 44
    Width = 158
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 32
    Top = 78
    Width = 239
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 32
    Top = 109
    Width = 239
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 32
    Top = 140
    Width = 239
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 32
    Top = 171
    Width = 239
    Height = 21
    TabOrder = 5
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 168
  end
end
