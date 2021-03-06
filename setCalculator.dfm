object Form2: TForm2
  AlignWithMargins = True
  Left = 0
  Top = 0
  VertScrollBar.Color = clSilver
  VertScrollBar.ParentColor = False
  AlphaBlend = True
  Caption = 'Set Calculator'
  ClientHeight = 641
  ClientWidth = 876
  Color = clBtnFace
  TransparentColor = True
  TransparentColorValue = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 870
    Height = 635
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 18
      Width = 860
      Height = 33
      Margins.Bottom = 20
      Align = alTop
      Alignment = taCenter
      Caption = 'Set Calculator'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Montserrat'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 168
    end
    object Label3: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 341
      Width = 860
      Height = 22
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alTop
      Alignment = taCenter
      Caption = 'Choose an Algorithm'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Montserrat SemiBold'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 175
    end
    object ScrollBox1: TScrollBox
      Left = 2
      Top = 444
      Width = 866
      Height = 193
      Align = alTop
      TabOrder = 0
      object Label8: TLabel
        AlignWithMargins = True
        Left = 20
        Top = 20
        Width = 115
        Height = 69
        Margins.Left = 20
        Margins.Top = 20
        Margins.Bottom = 100
        Align = alLeft
        Caption = 'Matching Pairs:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Montserrat'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 21
      end
      object setPairs1: TLabel
        AlignWithMargins = True
        Left = 388
        Top = 20
        Width = -176
        Height = 166
        Margins.Left = 250
        Margins.Top = 20
        Margins.Right = 650
        Align = alClient
        Alignment = taCenter
        Caption = 'N/A '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 28
        ExplicitHeight = 19
      end
      object setPairs2: TLabel
        AlignWithMargins = True
        Left = 638
        Top = 20
        Width = -176
        Height = 166
        Margins.Left = 500
        Margins.Top = 20
        Margins.Right = 400
        Align = alClient
        Alignment = taCenter
        Caption = 'N/A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        ExplicitWidth = 24
        ExplicitHeight = 19
      end
    end
    object ScrollBox2: TScrollBox
      Left = 2
      Top = 164
      Width = 866
      Height = 64
      Align = alTop
      TabOrder = 1
      object displaySet: TLabel
        Left = 49
        Top = 19
        Width = 115
        Height = 19
        Caption = '--> there is no set'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 71
      Width = 866
      Height = 93
      Align = alTop
      TabOrder = 2
      object Label2: TLabel
        AlignWithMargins = True
        Left = 31
        Top = 31
        Width = 151
        Height = 31
        Margins.Left = 30
        Margins.Top = 30
        Margins.Bottom = 30
        Align = alLeft
        Alignment = taCenter
        Anchors = [akLeft]
        Caption = 'Enter  the Set Size:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Montserrat'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 22
      end
      object setSize: TEdit
        AlignWithMargins = True
        Left = 245
        Top = 31
        Width = 342
        Height = 31
        Margins.Left = 60
        Margins.Top = 30
        Margins.Right = 60
        Margins.Bottom = 30
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Montserrat Light'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 29
      end
      object genSet: TButton
        AlignWithMargins = True
        Left = 650
        Top = 31
        Width = 185
        Height = 31
        Margins.Top = 30
        Margins.Right = 30
        Margins.Bottom = 30
        Align = alRight
        BiDiMode = bdLeftToRight
        Caption = 'Generate Random Set'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Montserrat'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        OnClick = genSetClick
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 228
      Width = 866
      Height = 103
      Align = alTop
      TabOrder = 3
      object Label9: TLabel
        AlignWithMargins = True
        Left = 31
        Top = 31
        Width = 131
        Height = 31
        Margins.Left = 30
        Margins.Top = 30
        Margins.Bottom = 40
        Align = alLeft
        Caption = 'Enter  Integer X:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Montserrat'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitHeight = 22
      end
      object displayX: TLabel
        AlignWithMargins = True
        Left = 168
        Top = 71
        Width = 495
        Height = 28
        Margins.Top = 70
        Align = alClient
        Alignment = taCenter
        Caption = '--> x = N/A'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = cl3DDkShadow
        Font.Height = -16
        Font.Name = 'Calibri'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 69
        ExplicitHeight = 19
      end
      object enterX: TEdit
        AlignWithMargins = True
        Left = 225
        Top = 31
        Width = 381
        Height = 31
        Margins.Left = 60
        Margins.Top = 30
        Margins.Right = 60
        Margins.Bottom = 40
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Montserrat Light'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 29
      end
      object setX: TButton
        AlignWithMargins = True
        Left = 696
        Top = 31
        Width = 89
        Height = 31
        Margins.Left = 30
        Margins.Top = 30
        Margins.Right = 80
        Margins.Bottom = 40
        Align = alRight
        Caption = 'Set X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Montserrat'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = setXClick
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 373
      Width = 866
      Height = 71
      Align = alTop
      TabOrder = 4
      object Panel4: TPanel
        AlignWithMargins = True
        Left = 4
        Top = 4
        Width = 437
        Height = 63
        Align = alLeft
        TabOrder = 0
        object bruteAlg: TButton
          AlignWithMargins = True
          Left = 41
          Top = 16
          Width = 355
          Height = 31
          Margins.Left = 40
          Margins.Top = 15
          Margins.Right = 40
          Margins.Bottom = 15
          Align = alClient
          Caption = 'Brute Force'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Montserrat'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = bruteAlgClick
        end
      end
      object Panel5: TPanel
        AlignWithMargins = True
        Left = 447
        Top = 4
        Width = 415
        Height = 63
        Align = alRight
        TabOrder = 1
        object optimAlg: TButton
          AlignWithMargins = True
          Left = 41
          Top = 16
          Width = 333
          Height = 31
          Margins.Left = 40
          Margins.Top = 15
          Margins.Right = 40
          Margins.Bottom = 15
          Align = alClient
          BiDiMode = bdLeftToRight
          Caption = 'Optimized'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Montserrat'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnClick = optimAlgClick
        end
      end
    end
  end
end
