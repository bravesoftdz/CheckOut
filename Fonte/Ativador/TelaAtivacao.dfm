object FormTelaAtivacao: TFormTelaAtivacao
  Left = 227
  Top = 166
  Width = 818
  Height = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PanelDadosCliente: TPanel
    Left = 7
    Top = 82
    Width = 791
    Height = 160
    BevelWidth = 2
    Color = 12572888
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 7
      Top = 5
      Width = 738
      Height = 32
      Caption = 'Digite a Chave de Ativa'#231#227'o passada pelo suporte'
      Color = 32767
      Font.Charset = ANSI_CHARSET
      Font.Color = 10053171
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowPos = spRightBottom
      Transparent = True
    end
    object RxLabel2: TRxLabel
      Left = 195
      Top = 77
      Width = 15
      Height = 32
      Caption = '-'
      Color = 32767
      Font.Charset = ANSI_CHARSET
      Font.Color = 10053171
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowPos = spRightBottom
      Transparent = True
    end
    object RxLabel3: TRxLabel
      Left = 403
      Top = 77
      Width = 15
      Height = 32
      Caption = '-'
      Color = 32767
      Font.Charset = ANSI_CHARSET
      Font.Color = 10053171
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowPos = spRightBottom
      Transparent = True
    end
    object Vlr01: TMaskEdit
      Left = 39
      Top = 71
      Width = 121
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Vlr02: TMaskEdit
      Left = 248
      Top = 71
      Width = 121
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Vlr03: TMaskEdit
      Left = 452
      Top = 71
      Width = 121
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object BtLiberar: TConerBtn
    Left = 611
    Top = 151
    Width = 129
    Height = 48
    Cursor = crHandPoint
    Caption = 'Liberar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TabStop = False
    OnClick = BtLiberarClick
    Glyph.Data = {
      360C0000424D360C000000000000360000002800000020000000200000000100
      180000000000000C0000C40E0000C40E00000000000000000000804000804000
      8040008040008040008040008040008040008040008040008040008040008040
      0080400080400080400080400080400080400080400080400080400080400080
      4000804000804000804000804000804000804000804000804000804000804000
      8040008040008040008040008040008040008040000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      4000804000804000804000804000804000804000804000804000804000804000
      8040008040008040008040008040008040000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000080
      4000804000804000804000804000804000804000804000804000804000804000
      8040008040008040008040008040000000000000000078BF00A8FF00A8FF00A8
      FF00A8FF00A8FF00A8FF00A8FF00A8FF00A8FF00A8FF00A8FF0078BF00000000
      0000804000804000804000804000804000804000804000804000804000804000
      8040008040008040008040000000000000006FC7FF0000008087808087808087
      808087809F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F0078BF00000000
      0000804000804000804000804000804000804000804000804000804000804000
      8040008040008040000000000000006FC7FF00689F00689F000000AFA8AFB0B7
      B0C0C0C0CFCFCFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF0078BF00
      0000000000804000804000804000804000804000804000804000804000804000
      8040008040000000000000006FC7FF0078BF006FAF006FAF000000AFA8AFB0B7
      B0C0C0C0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0E0E7E0E0E7E0E0E7E00078BF00
      0000000000804000804000804000804000804000804000804000804000804000
      8040000000000000006FC7FF0090DF006FAF006FAF0077B000689F000000B0B7
      B0C0C0C0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0E0E7E0F0F0F0F0F0F0FFFFFF00
      78BF000000000000804000804000804000804000804000804000804000804000
      0000000000006FC7FF0090DF0078BF0078BF0077B0006FAF00689F000000AFA8
      AFB0B7B0C0C0C0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0F0F0F0F0F0F0F0F0F000
      78BF000000000000804000804000804000804000804000804000804000000000
      0000006FC7FF0090DF0087CF0087CF0078BF0077B0006FAF00689F00689F0000
      00B0B7B0C0C0C0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0E0E7E0F0F0F0FFFFFFFF
      FFFF0078BF000000000000804000804000804000804000804000000000000000
      6FC7FF00A8FF0087CF008FD00087CF0078BF0077B00077B0006FAF00689F0000
      00AFA8AFB0B7B0C0C0C0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0F0F0F0FFFFFFFF
      FFFF0078BF000000000000804000804000804000804000804000000000000000
      6FC7FF00A8FF0090DF0087CF008FD00087CF0078BF0077B0006FAF00689F0068
      9F000000B0B7B0C0C0C0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0E0E7E0F0F0F0FF
      FFFFFFFFFF0078BF000000000000804000804000804000804000804000000000
      0000006FC7FF0090DF0090DF008FD00087CF0078BF0077B00077B0006FAF0068
      9F000000AFA8AFB0B7B0C0C0C0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0F0F0F0F0
      F0F0FFFFFF0078BF000000000000804000804000804000804000804000000000
      0000006FC7FF00A8FF0090DF0087CF008FD00087CF0078BF0077B0006FAF0068
      9F00689F000000B0B7B0C0C0C0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0E0E7E0F0
      F0F0FFFFFFFFFFFF0078BF000000000000804000804000804000804000804000
      0000000000006FC7FF0090DF0090DF008FD00087CF0078BF0078BF0077B0006F
      AF00689F000000AFA8AFB0B7B0C0C0C0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0F0
      F0F0F0F0F0FFFFFF0078BF000000000000804000804000804000804000804000
      0000000000006FC7FF00A8FF0090DF0087CF008FD00087CF0078BF0077B0006F
      AF00689F00689F000000B0B7B0B0B7B0C0C0C0CFCFCFDFD8DFDFD8DFE0E7E0E0
      E7E0F0F0F0FFFFFFFFFFFF0078BF000000000000804000804000804000804000
      8040000000000000006FC7FF0090DF0090DF008FD00087CF0078BF0078BF0077
      B0006FAF00689F000000AFA8AFB0B7B09F9F9FC0C0C0CFCFCFDFD8DFDFD8DFE0
      E7E0F0F0F0F0F0F0FFFFFF0078BF000000000000804000804000804000804000
      8040000000000000006FC7FF00A8FF0090DF0087CF008FD00087CF0078BF0077
      B0006FAF00689F00689F000000B0B7B0B0B7B0BF7800CFCFCFDFD8DFDFD8DFE0
      E7E0E0E7E0F0F0F0FFFFFFFFFFFF0078BF000000000000804000804000804000
      8040008040000000000000006FC7FF0090DF0090DF008FD00087CF0078BF0078
      BF0077B0006FAF00689F000000AFA8AFB0B7B0BF7800C0C0C0CFCFCFDFD8DFDF
      D8DFE0E7E0F0F0F0F0F0F0FFFFFF0078BF000000000000804000804000804000
      8040008040000000000000008FD7FF00A8FF0090DF0087CF008FD00087CF0078
      BF0077B0006FAF00689F00689F000000C0C0C0B0B7B000000000000000000090
      9090B0B7B0C0C0C0CFCFCFCFCFCFCFCFCF0078BF000000000000804000804000
      8040008040008040000000000000006FC7FF0090DF0090DF008FD00087CF0078
      BF0078BF0077B000689F00689F000000AFA8AFB0B7B0000000E0E7E0E0E7E000
      0000909090909090909090B0B7B0B0B7B00078BF000000000000804000804000
      8040008040008040000000000000008FD7FF00A8FF0090DF0087CF008FD00087
      CF0078BF0077B0006FAF00689F00689F000000B0B7B0000000E0E7E0BF7800BF
      7800000000CFCFCFCFCFCF909090909090000000000000804000804000804000
      8040008040008040008040000000000000006FC7FF0090DF0090DF008FD00087
      CF0078BF0078BF0077B0006FAF000000000000000000000000000000FFA820DF
      9000BF7800000000000000000000000000000000000000804000804000804000
      8040008040008040008040000000000000008FD7FF00A8FF0090DF0087CF008F
      D00087CF0078BF0080C0000000000000000000000000000000000000000000FF
      A820DF9000BF7800000000000000000000000000804000804000804000804000
      8040008040008040008040008040000000000000006FC7FF0090DF0090DF0087
      CF0087CF0078BF00000000000080400080400080400080400080400000000000
      0000FFA820DF9000BF7800000000000000804000804000804000804000804000
      8040008040008040008040008040000000000000006FC7FF00A8FF0090DF008F
      D00087CF00000000000080400080400080400080400080400080400080400000
      0000000000FFA820DF9000BF7800000000000000804000804000804000804000
      8040008040008040008040008040008040000000000000006FC7FF0090DF0087
      CF00000000000080400080400080400080400080400080400080400080400080
      4000000000000000FFA820DF9000BF7800000000000000804000804000804000
      8040008040008040008040008040008040000000000000006FC7FF00A8FF0000
      0000000080400080400080400080400080400080400080400080400080400080
      4000804000000000000000FFA820DF9000BF7800000000000000804000804000
      8040008040008040008040008040008040008040000000000000000000000000
      0080400080400080400080400080400080400080400080400080400080400080
      4000804000804000000000000000FFA820000000000000804000804000804000
      8040008040008040008040008040008040008040008040000000000000008040
      0080400080400080400080400080400080400080400080400080400080400080
      4000804000804000804000000000000000000000804000804000804000804000
      8040008040008040008040008040008040008040008040008040008040008040
      0080400080400080400080400080400080400080400080400080400080400080
      4000804000804000804000804000000000804000804000804000804000804000
      8040008040008040008040008040008040008040008040008040008040008040
      0080400080400080400080400080400080400080400080400080400080400080
      4000804000804000804000804000804000804000804000804000}
    Layout = blGlyphTop
    Spacing = 0
    Flat = True
    PlaceConer = pcNone
    SymbolState = ssClose
    SymbolColorOpen = 14731440
    SymbolColorClose = 14731440
    Transparent = True
  end
  object Panel1: TPanel
    Left = 7
    Top = 10
    Width = 791
    Height = 52
    BevelWidth = 2
    Color = 12572888
    TabOrder = 2
    object RxLabel4: TRxLabel
      Left = 7
      Top = 7
      Width = 773
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Caption = 'Licen'#231'a de Uso Expirado!'
      Color = 32767
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ShadowColor = clBlack
      ShadowPos = spRightBottom
      Transparent = True
    end
  end
end