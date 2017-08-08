object FormTelaObsProduto: TFormTelaObsProduto
  Left = 99
  Top = 0
  BorderStyle = bsSingle
  ClientHeight = 670
  ClientWidth = 1008
  Color = 16249066
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 582
    Width = 113
    Height = 29
    Caption = 'Obs Livre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGridItens: TDBGrid
    Left = 10
    Top = 55
    Width = 983
    Height = 521
    BorderStyle = bsNone
    Color = clWhite
    Ctl3D = False
    DataSource = DSMemObsProduto
    FixedColor = 10053171
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnColExit = DBGridItensColExit
    OnDrawColumnCell = DBGridItensDrawColumnCell
    OnDblClick = DBGridItensDblClick
    OnKeyDown = DBGridItensKeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'Quantidade'
        Title.Caption = 'Qtde'
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -35
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -35
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 693
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Marcado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -35
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Alignment = taCenter
        Title.Font.Charset = ANSI_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -35
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 66
        Visible = True
      end>
  end
  object Memo: TMemo
    Left = 136
    Top = 583
    Width = 857
    Height = 74
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ptopo: TAdvOfficeStatusBar
    Left = 0
    Top = 0
    Width = 1008
    Height = 49
    AnchorHint = False
    Align = alTop
    Panels = <
      item
        AppearanceStyle = psLight
        DateFormat = 'mm/dd/yyyy'
        Progress.BackGround = clNone
        Progress.Indication = piPercentage
        Progress.Min = 0
        Progress.Max = 100
        Progress.Position = 0
        Progress.Level0Color = clLime
        Progress.Level0ColorTo = 14811105
        Progress.Level1Color = clYellow
        Progress.Level1ColorTo = 13303807
        Progress.Level2Color = 5483007
        Progress.Level2ColorTo = 11064319
        Progress.Level3Color = clRed
        Progress.Level3ColorTo = 13290239
        Progress.Level1Perc = 70
        Progress.Level2Perc = 90
        Progress.BorderColor = clBlack
        Progress.ShowBorder = False
        Progress.Stacked = False
        TimeFormat = 'hh:mm:ss'
        Width = 50
      end>
    SimplePanel = False
    SizeGrip = False
    URLColor = clBlue
    Styler = AdvOfficeStatusBarOfficeStyler1
    Version = '1.3.0.2'
    object lbTitulo: TRxLabel
      Left = 8
      Top = 11
      Width = 109
      Height = 29
      Caption = 'Produto =>'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
      ShadowColor = 15195349
      ShadowPos = spRightBottom
      Transparent = True
    end
    object ImgDesligar: TImage
      Left = 947
      Top = 3
      Width = 44
      Height = 43
      Hint = 'Fechar Tela'
      Center = True
      ParentShowHint = False
      Picture.Data = {
        0A544A504547496D61676544060000FFD8FFE000104A46494600010101006000
        600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
        0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
        3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
        3232323232323232323232323232323232323232323232323232323232323232
        32323232323232323232323232FFC00011080036003303012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F6ED
        4B558B4E542FF33C99D8990338EA727A01DFEA2B317C4C4F5FB38CF4C6F23F3D
        BCFE55CBF8CB50922F1B0B4DC76FF67AC8A33D3F78C0FF004FC8566A5C8CF180
        7AF1594A6EF63BE96154A09B3BD1E23CFF00141FF8FF00FF0013520D7B23FD65
        B8FC1FFC2B8CD3644BBBE8212C4ABC8A8DB4FA9ADCF10D9DB696F6E6DD4A0937
        02A5C91C77E73CF34293B5C52A105250EE6C8D709FF96B6FF9354B06B219C097
        CB28CDB449193807B6E040239E33C8FA5718973C9524FBE6AB6B1A99B2D12FAE
        548DE90311FC87F3A3DA772D60F9AC9753D3B73F600D14D81F7DBC6CDF799413
        F9515B1E79E47F10E4F2FE22DB9CF074DC7FE44357FC1DA32EB37325C5C2EEB4
        B7FBCA47FAC6EA07E5C9FA8AC5F8AB2795E3BB56F5D3C0FF00C7DABB4F87D26E
        F03492DBF331794FBEEE71FD2B913FDE347B734E1828CE3BBD066AFAB585D789
        F4CB2B48D37DB5CAA348A31DF1B47B67F956878A3515D3350D2EE5E3F3150C99
        53E840CE3DFBD7915AEA32452C7708E448AC1D5BB86E0F3F8D5FD57C573DF324
        9A8DD0919170A8AA07E83BD43C42499D90CA26EA412DADF99EA7A85A5B788349
        1A85881E785DCA4705B1D50D78B78AB5B7D4627B1B463F675C991F18F308FE83
        F9D7A5FC2CD426D434FD48B214B75957603C9CEDF9B3FA579C6B36B1A6A1AA88
        C7C8279B6E3A601359D79DE31947A9B65B4551AF5684F5E5D8FA0ADF26D623FE
        C2FF002A296D7FE3D21FFAE6BFCA8AF496C7CAC9EACF0FF8CD298BC6166E3AFD
        9067DBE76A77C2CF19C5A4DE49A3EA522C56D74D98A56E8B27420FA03C56CFC5
        EF0E4F7F756BA8C4010B198CB13800839009F704FE22BCB3FB1755DDFF0020FB
        8E3B842C3F31C1AF36ACA50ABCC8FB0C0D2C3E2F00A94E563D53C61F0CB50B8B
        F96FF409D1A3998BBDAB3EC2A7A9DA7D0FA1E95CCE9BF0B7C4D777016E2D92CA
        3CFCD24B22B1C7A80A4E7F4A8744F1178DB418560B55BA7B7518586784B851E8
        33C81EC0D6CCBE3CF1D5CA6C16C20FF6A2B5E7FF001ECD44BD8C9F334CD692CC
        A843D9539C1AEEF73B8BBB9D33C01E165D3ACDC35D3A9D8A7EFBB9EAE4761FA7
        6AF2F742D69396C9628C49F53839FC293ECDAADDCED3DDC5732CCC72CF20249F
        C4D68DA69D717532D904227986C58B396C1E0923F8401CE4FA544E52AB256565
        D02961E183A5294E7CD296AD9EE16BFF001E90FF00D735FE5453A28F6428993F
        2A81457ACA5A1F10DAB8B3DB45731345346AF1B0C1561906B18F83B43C93F614
        19F4A28A1A4F708CE51D22C3FE10DD0FFE7CD7F3A43E0BD04F5B143F5E68A297
        247B15EDAA771BFF00084787FF00E81D17E55A1A7683A6E939FB0DA45093D4AA
        F5A28A39509D49CB76686D145145519D8FFFD9}
      ShowHint = True
      Transparent = True
      OnClick = ImgDesligarClick
    end
    object btDesmarcar: TSpeedButton
      Tag = 3
      Left = 811
      Top = 10
      Width = 121
      Height = 33
      Cursor = crHandPoint
      Caption = '&Desmarcar Todos'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        02050000424D020500000000000036040000280000000C000000110000000100
        080000000000CC000000CE0E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA600C7CAB700939874005C614700303F
        C800555BE300ECE3E800DAC9D200BBACBD008B738E0054455600E7CFC500C691
        7900AA654A00693E2E00BDC6A500848C5A006B6B310029310000B1C8F800909D
        CB00DDC1CF00B5849C00944A7B006B1052001A060800E7B59C00F7844A00AD39
        00009421000069110800E4EEE800D9E2D400A1B999006E9457006783AF006888
        CC00E0B7F900845A9C0052086B007B10BD00FCEDDA00F5CD9900F1B96D00EA93
        1E00923B1D00D2EDC900ABDE98007ACA5A0045872C00305C1F0047281B00DCD8
        EA00A9A9CD00575CB8001106AF002E248A00DACBCB00AD8C8C00845252006941
        4100442B2B00E9F8EB00C3EACA00A0E19D0040C43A001C7837008B9AB300B5BD
        DE005A6BAD000818840000084A00EBEBEB00F0ECCE00D9CE8400BCAB3B008E83
        2D005C5843009FBCB40067968F002D75660029553F006B7A8800545664008E91
        EA000E0DEF0009099B0014123D00DCDCDC00DDDCC100D0C99D00ACA171009D6B
        2B0069301100BDE6E20081CDC8003B948D002A55630061C4D60038C2E600CACE
        F700969EED002130BA0011185F00A0A0A000DAFDFE00A8FBFD0024F6F900116F
        8600BEE4E1009FBECB006596AB002B6384000B9ECD005EC7F40093B1F0002161
        E000184AB1000D275E005A5A5A0089FCEB0024F9D90006E1C000049B85000264
        5500BDD2F0006195DC002761B1000F488B000D79B1003491AF00D1E9F50084C3
        E4006BA4CF00348BCC004670B600E3FBFB00D6F6FA00C2F3FA00B9DEF8009CC8
        F90063EAF50080572300FE5DFF0093CEE20094C6DE000000BF0000BF000000BF
        BF00BF000000BF00BF00BFBF0000520052005200290051735B00B7CDD6009D00
        FF0098B1FB007A98A700729D9100506E66006685F200929EF70088B9FB00B5C2
        FF00A7C2F4007798EB005B78EB005A9CFF007B9CDE00445BB4008AA2E4006B9C
        DE0098A0DA008E9EBE00678ACA005A6ED300A5B5FF003562B2004478DB00697E
        DA0094C1F600466CD700BBC4DE002F52AD0073A5E700B7C0F100395EC6006390
        D60094B2E7005776B7003151B8002C4D9E0094A3CB007D88B700637BC6000E27
        75001C3489005356800065719D002D40800022336C001C419A00FFBDBD00FF59
        5900FFC6FF00FEFEB8004A66C8006BA4FF00528AE9006196F1007E97F7006B9C
        EF005D0070005B005200B87FFF00FFFF7C005B00CD00B77F0A00000001000000
        0A0000004C000000EE005B000000020000000200A400C86BF400030303030303
        0303030303030303030303030303030303030303030303030303030303030301
        0101030303030301010100000001030303030000000102021000010303001002
        0003030202100001001002000303030302021000100200030303030303000210
        0200030303030303030010021000010303030303001002150210000103030300
        1002150315021000010300100215030303150210000115151503030303031515
        1503030303030303030303030303030303030303030303030303030303030303
        030303030303}
      ParentFont = False
      OnClick = btDesmarcarClick
    end
    object btMarcar: TSpeedButton
      Tag = 3
      Left = 687
      Top = 10
      Width = 119
      Height = 33
      Cursor = crHandPoint
      Caption = '&Marcar Todos'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        46050000424D460500000000000036040000280000000D000000110000000100
        08000000000010010000CE0E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA600C7CAB700939874005C614700303F
        C800555BE300ECE3E800DAC9D200BBACBD008B738E0054455600E7CFC500C691
        7900AA654A00693E2E00BDC6A500848C5A006B6B310029310000B1C8F800909D
        CB00DDC1CF00B5849C00944A7B006B1052001A060800E7B59C00F7844A00AD39
        00009421000069110800E4EEE800D9E2D400A1B999006E9457006783AF006888
        CC00E0B7F900845A9C0052086B007B10BD00FCEDDA00F5CD9900F1B96D00EA93
        1E00923B1D00D2EDC900ABDE98007ACA5A0045872C00305C1F0047281B00DCD8
        EA00A9A9CD00575CB8001106AF002E248A00DACBCB00AD8C8C00845252006941
        4100442B2B00E9F8EB00C3EACA00A0E19D0040C43A001C7837008B9AB300B5BD
        DE005A6BAD000818840000084A00EBEBEB00F0ECCE00D9CE8400BCAB3B008E83
        2D005C5843009FBCB40067968F002D75660029553F006B7A8800545664008E91
        EA000E0DEF0009099B0014123D00DCDCDC00DDDCC100D0C99D00ACA171009D6B
        2B0069301100BDE6E20081CDC8003B948D002A55630061C4D60038C2E600CACE
        F700969EED002130BA0011185F00A0A0A000DAFDFE00A8FBFD0024F6F900116F
        8600BEE4E1009FBECB006596AB002B6384000B9ECD005EC7F40093B1F0002161
        E000184AB1000D275E005A5A5A0089FCEB0024F9D90006E1C000049B85000264
        5500BDD2F0006195DC002761B1000F488B000D79B1003491AF00D1E9F50084C3
        E4006BA4CF00348BCC004670B600E3FBFB00D6F6FA00C2F3FA00B9DEF8009CC8
        F90063EAF50080572300FE5DFF0093CEE20094C6DE000000BF0000BF000000BF
        BF00BF000000BF00BF00BFBF0000520052005200290051735B00B7CDD6009D00
        FF0098B1FB007A98A700729D9100506E66006685F200929EF70088B9FB00B5C2
        FF00A7C2F4007798EB005B78EB005A9CFF007B9CDE00445BB4008AA2E4006B9C
        DE0098A0DA008E9EBE00678ACA005A6ED300A5B5FF003562B2004478DB00697E
        DA0094C1F600466CD700BBC4DE002F52AD0073A5E700B7C0F100395EC6006390
        D60094B2E7005776B7003151B8002C4D9E0094A3CB007D88B700637BC6000E27
        75001C3489005356800065719D002D40800022336C001C419A00FFBDBD00FF59
        5900FFC6FF00FEFEB8004A66C8006BA4FF00528AE9006196F1007E97F7006B9C
        EF005D0070005B005200B87FFF00FFFF7C005B00CD00B77F0A00000001000000
        0A0000004C000000EE005B000000020000000200A400C86BF400030303030303
        0303030303030300000003030303030303030303030303000000030303030301
        0103030303030300000003030303010001010303030303000000030303010012
        0001010303030300000003030100121204000103030303000000030100121212
        1200010103030300000001001212120412120001010303000000010412120401
        0412040001030300000003010404010301121200010103000000030301010303
        0301121200010100000003030303030303030112040003000000030303030303
        0303030112010100000003030303030303030303011201000000030303030303
        0303030303010400000003030303030303030303030303000000030303030303
        03030303030303000000}
      ParentFont = False
      OnClick = btMarcarClick
    end
    object btRetornar: TSpeedButton
      Tag = 3
      Left = 563
      Top = 10
      Width = 119
      Height = 33
      Cursor = crHandPoint
      Caption = '&Retornar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        46050000424D460500000000000036040000280000000D000000110000000100
        08000000000010010000CE0E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA600C7CAB700939874005C614700303F
        C800555BE300ECE3E800DAC9D200BBACBD008B738E0054455600E7CFC500C691
        7900AA654A00693E2E00BDC6A500848C5A006B6B310029310000B1C8F800909D
        CB00DDC1CF00B5849C00944A7B006B1052001A060800E7B59C00F7844A00AD39
        00009421000069110800E4EEE800D9E2D400A1B999006E9457006783AF006888
        CC00E0B7F900845A9C0052086B007B10BD00FCEDDA00F5CD9900F1B96D00EA93
        1E00923B1D00D2EDC900ABDE98007ACA5A0045872C00305C1F0047281B00DCD8
        EA00A9A9CD00575CB8001106AF002E248A00DACBCB00AD8C8C00845252006941
        4100442B2B00E9F8EB00C3EACA00A0E19D0040C43A001C7837008B9AB300B5BD
        DE005A6BAD000818840000084A00EBEBEB00F0ECCE00D9CE8400BCAB3B008E83
        2D005C5843009FBCB40067968F002D75660029553F006B7A8800545664008E91
        EA000E0DEF0009099B0014123D00DCDCDC00DDDCC100D0C99D00ACA171009D6B
        2B0069301100BDE6E20081CDC8003B948D002A55630061C4D60038C2E600CACE
        F700969EED002130BA0011185F00A0A0A000DAFDFE00A8FBFD0024F6F900116F
        8600BEE4E1009FBECB006596AB002B6384000B9ECD005EC7F40093B1F0002161
        E000184AB1000D275E005A5A5A0089FCEB0024F9D90006E1C000049B85000264
        5500BDD2F0006195DC002761B1000F488B000D79B1003491AF00D1E9F50084C3
        E4006BA4CF00348BCC004670B600E3FBFB00D6F6FA00C2F3FA00B9DEF8009CC8
        F90063EAF50080572300FE5DFF0093CEE20094C6DE000000BF0000BF000000BF
        BF00BF000000BF00BF00BFBF0000520052005200290051735B00B7CDD6009D00
        FF0098B1FB007A98A700729D9100506E66006685F200929EF70088B9FB00B5C2
        FF00A7C2F4007798EB005B78EB005A9CFF007B9CDE00445BB4008AA2E4006B9C
        DE0098A0DA008E9EBE00678ACA005A6ED300A5B5FF003562B2004478DB00697E
        DA0094C1F600466CD700BBC4DE002F52AD0073A5E700B7C0F100395EC6006390
        D60094B2E7005776B7003151B8002C4D9E0094A3CB007D88B700637BC6000E27
        75001C3489005356800065719D002D40800022336C001C419A00FFBDBD00FF59
        5900FFC6FF00FEFEB8004A66C8006BA4FF00528AE9006196F1007E97F7006B9C
        EF005D0070005B005200B87FFF00FFFF7C005B00CD00B77F0A00000001000000
        0A0000004C000000EE005B000000020000000200A400C86BF400030303030303
        0303030303030300000003030303030303030303030303000000030303030301
        0103030303030300000003030303010001010303030303000000030303010012
        0001010303030300000003030100121204000103030303000000030100121212
        1200010103030300000001001212120412120001010303000000010412120401
        0412040001030300000003010404010301121200010103000000030301010303
        0301121200010100000003030303030303030112040003000000030303030303
        0303030112010100000003030303030303030303011201000000030303030303
        0303030303010400000003030303030303030303030303000000030303030303
        03030303030303000000}
      ParentFont = False
      OnClick = btRetornarClick
    end
  end
  object DSMemObsProduto: TDataSource
    DataSet = TblMemObsProduto
    Left = 508
    Top = 248
  end
  object TblMemObsProduto: TTable
    DatabaseName = 'Easy_Temp'
    TableName = 'TblMemObsProduto.DB'
    Left = 508
    Top = 278
    object TblMemObsProdutoSigla: TStringField
      DisplayWidth = 60
      FieldName = 'Sigla'
      Size = 60
    end
    object TblMemObsProdutoMarcado: TBooleanField
      FieldName = 'Marcado'
    end
    object TblMemObsProdutoQuantidade: TStringField
      FieldName = 'Quantidade'
      Size = 5
    end
  end
  object AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler
    BorderColor = 14986888
    PanelAppearanceLight.BorderColor = 14922381
    PanelAppearanceLight.BorderColorHot = clGray
    PanelAppearanceLight.BorderColorDown = 10240783
    PanelAppearanceLight.Color = 16440774
    PanelAppearanceLight.ColorTo = 14854530
    PanelAppearanceLight.ColorHot = 13958143
    PanelAppearanceLight.ColorHotTo = 6538487
    PanelAppearanceLight.ColorDown = 9232890
    PanelAppearanceLight.ColorDownTo = 1940207
    PanelAppearanceLight.ColorMirror = 14854530
    PanelAppearanceLight.ColorMirrorTo = 14854530
    PanelAppearanceLight.ColorMirrorHot = 6538487
    PanelAppearanceLight.ColorMirrorHotTo = 6538487
    PanelAppearanceLight.ColorMirrorDown = 1940207
    PanelAppearanceLight.ColorMirrorDownTo = 1940207
    PanelAppearanceLight.TextColor = clBlack
    PanelAppearanceLight.TextColorHot = clBlack
    PanelAppearanceLight.TextColorDown = clBlack
    PanelAppearanceLight.TextStyle = []
    PanelAppearanceDark.BorderColor = clNone
    PanelAppearanceDark.BorderColorHot = clGray
    PanelAppearanceDark.BorderColorDown = 10240783
    PanelAppearanceDark.Color = 14986888
    PanelAppearanceDark.ColorTo = 14986888
    PanelAppearanceDark.ColorHot = 13958143
    PanelAppearanceDark.ColorHotTo = 6538487
    PanelAppearanceDark.ColorDown = 9232890
    PanelAppearanceDark.ColorDownTo = 1940207
    PanelAppearanceDark.ColorMirror = 14986888
    PanelAppearanceDark.ColorMirrorTo = 14986888
    PanelAppearanceDark.ColorMirrorHot = 6538487
    PanelAppearanceDark.ColorMirrorHotTo = 6538487
    PanelAppearanceDark.ColorMirrorDown = 1940207
    PanelAppearanceDark.ColorMirrorDownTo = 1940207
    PanelAppearanceDark.TextColor = clWhite
    PanelAppearanceDark.TextColorHot = clWhite
    PanelAppearanceDark.TextColorDown = clWhite
    PanelAppearanceDark.TextStyle = []
    Left = 4
    Top = 3
  end
end