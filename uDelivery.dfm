object frmDelivery: TfrmDelivery
  Left = 0
  Top = 0
  Caption = 'Atendimento Expresso'
  ClientHeight = 484
  ClientWidth = 1241
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinExPanel1: TbsSkinExPanel
    Left = 0
    Top = 0
    Width = 1241
    Height = 65
    HintImageIndex = 0
    TabOrder = 0
    SkinData = frmPrincipal.SkinPrincipal
    SkinDataName = 'expanel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    UseSkinSize = True
    CaptionImageIndex = -1
    NumGlyphs = 1
    Spacing = 2
    RealWidth = 0
    RealHeight = 0
    ShowRollButton = False
    ShowCloseButton = False
    DefaultCaptionHeight = 21
    RollState = False
    RollKind = rkRollVertical
    Moveable = False
    Sizeable = False
    Align = alTop
    Caption = 'Dados do Cliente'
    object bsSkinLabel1: TbsSkinLabel
      Left = 4
      Top = 31
      Width = 112
      Height = 21
      HintImageIndex = 0
      TabOrder = 0
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'label'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlue
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      Transparent = False
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = bsetNoneEllips
      UseSkinSize = True
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Alignment = taCenter
      Caption = 'Nome/telefone'
      AutoSize = False
    end
    object edtNome: TbsSkinEdit
      Left = 120
      Top = 31
      Width = 314
      Height = 20
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = frmPrincipal.SkinEntradaDados
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnChange = edtNomeChange
    end
    object btnAdicionar: TbsSkinButton
      Left = 606
      Top = 29
      Width = 84
      Height = 25
      HintImageIndex = 0
      TabOrder = 2
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      Transparent = False
      CheckedMode = False
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 10
      AlwaysShowLayeredFrame = False
      UseSkinSize = False
      UseSkinFontColor = False
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = ' &Adicionar'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnAdicionarClick
    end
    object btnRemoverDesconto: TbsSkinButton
      Left = 690
      Top = 29
      Width = 84
      Height = 25
      HintImageIndex = 0
      TabOrder = 3
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      Transparent = False
      CheckedMode = False
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 9
      AlwaysShowLayeredFrame = False
      UseSkinSize = False
      UseSkinFontColor = False
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = ' &Remover'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnRemoverDescontoClick
    end
    object edtData: TbsSkinDateEdit
      Left = 434
      Top = 31
      Width = 98
      Height = 20
      EditMask = '!99/99/9999;1; '
      Text = '  /  /    '
      AlphaBlend = False
      AlphaBlendAnimation = False
      AlphaBlendValue = 0
      UseSkinFont = True
      TodayDefault = False
      CalendarWidth = 200
      CalendarHeight = 150
      CalendarFont.Charset = DEFAULT_CHARSET
      CalendarFont.Color = clWindowText
      CalendarFont.Height = 14
      CalendarFont.Name = 'Arial'
      CalendarFont.Style = []
      CalendarBoldDays = False
      CalendarUseSkinFont = True
      CalendarSkinDataName = 'panel'
      FirstDayOfWeek = Sun
      WeekNumbers = False
      ShowToday = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = True
      SkinDataName = 'buttonedit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 4
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object btnClientes: TbsSkinButton
      Left = 966
      Top = 24
      Width = 84
      Height = 25
      HintImageIndex = 0
      TabOrder = 5
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      Transparent = False
      CheckedMode = False
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 14
      AlwaysShowLayeredFrame = False
      UseSkinSize = False
      UseSkinFontColor = False
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = ' &clientes'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnClientesClick
    end
    object btnServicos: TbsSkinButton
      Left = 1112
      Top = 24
      Width = 61
      Height = 35
      HintImageIndex = 0
      TabOrder = 6
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      Transparent = False
      CheckedMode = False
      ImageList = frmPrincipal.ImageMenu32x32
      ImageIndex = 13
      AlwaysShowLayeredFrame = False
      UseSkinSize = False
      UseSkinFontColor = False
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00D409
        D634A823BF73791DC08E8428C68B8E33CA8B973DCE8B9F45D08BA146D08B993F
        CE8B9036CB8B872CC78B7B1FC28DA527C079D20DD43AFF00FF00FF00FF009F33
        E47E4A67E5ED2567ECFF327CF5FF4396FDFF4EA4FCFF58ABFBFF5BAFFCFF50A6
        FCFF3C93FBFF3581F7FF276BEEFF486EE7F29D3CE886FF00FF00FF00FF00C01A
        F5485144E6C42264E8FF276CE9FF1855D8FF1149D3FF1A58DDFF236DEBFF5FA2
        F5FF81B1F2FF2A70EAFF2366EAFF434CE6D4B120F35AFF00FF00FF00FF00EC0A
        FB188B35EC8B2060E5FF2658D5FF3D66D7FF5A81E1FF719AEBFF79A9F5FFACD0
        FEFFF6FEFFFF7CB4F1FF195AE4FF7938EA9BE10DFA23FF00FF00FF00FF00FF00
        FF00C225F4523670E4FF567CDEFF94AFEAFF7398E6FF719BEBFF7DABF5FFC3DD
        FDFFFCFCFFFFADD6FCFF1657E2FFA823F064FC01FF03FF00FF00FF00FF00FF00
        FF00E80DFA1F3972E3FF608BE4FF567DDDFF1547D3FF1653DFFF2C77EFFFAAD1
        FDFFEDFAFFFF94BBF8FF1F5BE0FFDB10F82BFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF004C64E2E72B61DCFF2757D4FF2A59D7FF3E74E5FF5A95F3FFC6E0
        FDFFCDF0FFFF357BEAFF2D53DDF2F803FE08FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CD1BF541BA25F2597985E4EB87A7E9FF88ADEEFFA3C5F8FFEAF3
        FEFFD5DFFFF4B427F35EC317F245FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A95DEC9F678DE3FF4B7EE6FF7EAEF5FFEBF5
        FFFFD197FFB2FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C913F23E2355D7FF0F4FDEFF63A0F4FFDFF2
        FEFFD639FF51FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FE00FF016570E2E55C8CE9FFA6C9F8FFDDDF
        FFF1F908FF0BFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00B25BEF9596B8F1FFD0E2FBFFDF97
        FEABFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D619F6385E91EAFFC0DAFAFFEB3F
        FE4CFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005A71E9E1BFCDFBF1FD05
        FF06FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE5CF394D894FCABFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EC25FC33EE34FD3FFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnServicosClick
    end
    object bsSkinButton2: TbsSkinButton
      Left = 1172
      Top = 24
      Width = 61
      Height = 35
      HintImageIndex = 0
      TabOrder = 7
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      Transparent = False
      CheckedMode = False
      ImageList = frmPrincipal.ImageMenu32x32
      ImageIndex = 12
      AlwaysShowLayeredFrame = False
      UseSkinSize = False
      UseSkinFontColor = False
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00D409
        D634A823BF73791DC08E8428C68B8E33CA8B973DCE8B9F45D08BA146D08B993F
        CE8B9036CB8B872CC78B7B1FC28DA527C079D20DD43AFF00FF00FF00FF009F33
        E47E4A67E5ED2567ECFF327CF5FF4396FDFF4EA4FCFF58ABFBFF5BAFFCFF50A6
        FCFF3C93FBFF3581F7FF276BEEFF486EE7F29D3CE886FF00FF00FF00FF00C01A
        F5485144E6C42264E8FF276CE9FF1855D8FF1149D3FF1A58DDFF236DEBFF5FA2
        F5FF81B1F2FF2A70EAFF2366EAFF434CE6D4B120F35AFF00FF00FF00FF00EC0A
        FB188B35EC8B2060E5FF2658D5FF3D66D7FF5A81E1FF719AEBFF79A9F5FFACD0
        FEFFF6FEFFFF7CB4F1FF195AE4FF7938EA9BE10DFA23FF00FF00FF00FF00FF00
        FF00C225F4523670E4FF567CDEFF94AFEAFF7398E6FF719BEBFF7DABF5FFC3DD
        FDFFFCFCFFFFADD6FCFF1657E2FFA823F064FC01FF03FF00FF00FF00FF00FF00
        FF00E80DFA1F3972E3FF608BE4FF567DDDFF1547D3FF1653DFFF2C77EFFFAAD1
        FDFFEDFAFFFF94BBF8FF1F5BE0FFDB10F82BFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF004C64E2E72B61DCFF2757D4FF2A59D7FF3E74E5FF5A95F3FFC6E0
        FDFFCDF0FFFF357BEAFF2D53DDF2F803FE08FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CD1BF541BA25F2597985E4EB87A7E9FF88ADEEFFA3C5F8FFEAF3
        FEFFD5DFFFF4B427F35EC317F245FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A95DEC9F678DE3FF4B7EE6FF7EAEF5FFEBF5
        FFFFD197FFB2FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C913F23E2355D7FF0F4FDEFF63A0F4FFDFF2
        FEFFD639FF51FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FE00FF016570E2E55C8CE9FFA6C9F8FFDDDF
        FFF1F908FF0BFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00B25BEF9596B8F1FFD0E2FBFFDF97
        FEABFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D619F6385E91EAFFC0DAFAFFEB3F
        FE4CFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005A71E9E1BFCDFBF1FD05
        FF06FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE5CF394D894FCABFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EC25FC33EE34FD3FFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 1
      Spacing = 1
    end
    object edtHora: TbsSkinTimeEdit
      Left = 534
      Top = 30
      Width = 56
      Height = 22
      EditMask = '!90:00:00;1; '
      Text = '00:00:00'
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = -13
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = False
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 8
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      AutoSize = False
      BorderStyle = bsNone
      ShowUpDown = False
    end
    object btnNovoCliente: TbsSkinButton
      Left = 863
      Top = 24
      Width = 104
      Height = 25
      HintImageIndex = 0
      TabOrder = 9
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      Transparent = False
      CheckedMode = False
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 10
      AlwaysShowLayeredFrame = False
      UseSkinSize = False
      UseSkinFontColor = True
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = ' &Novo Cliente'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnNovoClienteClick
    end
    object btnImprimir: TbsSkinButton
      Left = 1056
      Top = 24
      Width = 61
      Height = 35
      HintImageIndex = 0
      TabOrder = 10
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      Transparent = False
      CheckedMode = False
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 6
      AlwaysShowLayeredFrame = False
      UseSkinSize = False
      UseSkinFontColor = False
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00D409
        D634A823BF73791DC08E8428C68B8E33CA8B973DCE8B9F45D08BA146D08B993F
        CE8B9036CB8B872CC78B7B1FC28DA527C079D20DD43AFF00FF00FF00FF009F33
        E47E4A67E5ED2567ECFF327CF5FF4396FDFF4EA4FCFF58ABFBFF5BAFFCFF50A6
        FCFF3C93FBFF3581F7FF276BEEFF486EE7F29D3CE886FF00FF00FF00FF00C01A
        F5485144E6C42264E8FF276CE9FF1855D8FF1149D3FF1A58DDFF236DEBFF5FA2
        F5FF81B1F2FF2A70EAFF2366EAFF434CE6D4B120F35AFF00FF00FF00FF00EC0A
        FB188B35EC8B2060E5FF2658D5FF3D66D7FF5A81E1FF719AEBFF79A9F5FFACD0
        FEFFF6FEFFFF7CB4F1FF195AE4FF7938EA9BE10DFA23FF00FF00FF00FF00FF00
        FF00C225F4523670E4FF567CDEFF94AFEAFF7398E6FF719BEBFF7DABF5FFC3DD
        FDFFFCFCFFFFADD6FCFF1657E2FFA823F064FC01FF03FF00FF00FF00FF00FF00
        FF00E80DFA1F3972E3FF608BE4FF567DDDFF1547D3FF1653DFFF2C77EFFFAAD1
        FDFFEDFAFFFF94BBF8FF1F5BE0FFDB10F82BFF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF004C64E2E72B61DCFF2757D4FF2A59D7FF3E74E5FF5A95F3FFC6E0
        FDFFCDF0FFFF357BEAFF2D53DDF2F803FE08FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00CD1BF541BA25F2597985E4EB87A7E9FF88ADEEFFA3C5F8FFEAF3
        FEFFD5DFFFF4B427F35EC317F245FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00A95DEC9F678DE3FF4B7EE6FF7EAEF5FFEBF5
        FFFFD197FFB2FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00C913F23E2355D7FF0F4FDEFF63A0F4FFDFF2
        FEFFD639FF51FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FE00FF016570E2E55C8CE9FFA6C9F8FFDDDF
        FFF1F908FF0BFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00B25BEF9596B8F1FFD0E2FBFFDF97
        FEABFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00D619F6385E91EAFFC0DAFAFFEB3F
        FE4CFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005A71E9E1BFCDFBF1FD05
        FF06FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE5CF394D894FCABFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EC25FC33EE34FD3FFF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnImprimirClick
    end
    object bsSkinButton3: TbsSkinButton
      Left = 777
      Top = 26
      Width = 84
      Height = 33
      HintImageIndex = 0
      TabOrder = 11
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      Transparent = False
      CheckedMode = False
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 4
      AlwaysShowLayeredFrame = False
      UseSkinSize = False
      UseSkinFontColor = False
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Down = False
      GroupIndex = 0
      Caption = ' Remover Todos'
      NumGlyphs = 1
      Spacing = 1
      OnClick = bsSkinButton3Click
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 538
    Top = 65
    Width = 703
    Height = 419
    HintImageIndex = 0
    TabOrder = 1
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    EmptyDrawing = False
    RibbonStyle = False
    ImagePosition = bsipDefault
    TransparentMode = False
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel1'
    Align = alRight
    object bsSkinPageControl1: TbsSkinPageControl
      Left = 1
      Top = 1
      Width = 701
      Height = 417
      ActivePage = bsSkinTabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      MouseWheelSupport = False
      TabExtededDraw = False
      ButtonTabSkinDataName = 'resizetoolbutton'
      TabsOffset = 0
      TabSpacing = 1
      TextInHorizontal = False
      TabsInCenter = False
      FreeOnClose = False
      ShowCloseButtons = False
      TabsBGTransparent = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBtnText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = True
      DefaultItemHeight = 20
      SkinDataName = 'tab'
      object bsSkinTabSheet1: TbsSkinTabSheet
        Caption = 'Servi'#231'os Pendentes'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object dbgConsulta: TbsSkinDBGrid
          Left = 0
          Top = 0
          Width = 699
          Height = 372
          HintImageIndex = 0
          TabOrder = 0
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'grid'
          Transparent = False
          WallpaperStretch = False
          UseSkinFont = True
          UseSkinCellHeight = True
          GridLineColor = clWindowText
          DefaultCellHeight = 20
          ColSizingwithLine = False
          DrawGraphicFields = False
          UseColumnsFont = False
          DefaultRowHeight = 18
          MouseWheelSupport = False
          SaveMultiSelection = False
          PickListBoxSkinDataName = 'listbox'
          PickListBoxCaptionMode = False
          Align = alClient
          Color = clWhite
          DataSource = srcLista
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          PopupMenu = PopupMenu1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBtnText
          TitleFont.Height = 14
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = dbgConsultaDrawColumnCell
        end
        object pnlObs: TPanel
          Left = 0
          Top = 372
          Width = 699
          Height = 24
          Align = alBottom
          Color = clAppWorkSpace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object bsSkinPanel2: TbsSkinPanel
    Left = 0
    Top = 65
    Width = 538
    Height = 419
    HintImageIndex = 0
    TabOrder = 2
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
    EmptyDrawing = False
    RibbonStyle = False
    ImagePosition = bsipDefault
    TransparentMode = False
    CaptionImageIndex = -1
    RealHeight = -1
    AutoEnabledControls = True
    CheckedMode = False
    Checked = False
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvFrame
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinPanel2'
    Align = alClient
    object bsSkinExPanel2: TbsSkinExPanel
      AlignWithMargins = True
      Left = 4
      Top = 136
      Width = 530
      Height = 279
      HintImageIndex = 0
      TabOrder = 0
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'expanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      UseSkinSize = True
      CaptionImageIndex = -1
      NumGlyphs = 1
      Spacing = 2
      RealWidth = 0
      RealHeight = 0
      ShowRollButton = True
      ShowCloseButton = False
      DefaultCaptionHeight = 21
      RollState = False
      RollKind = rkRollVertical
      Moveable = False
      Sizeable = False
      Align = alBottom
      Caption = 'Enderteco do Cliente'
      DesignSize = (
        530
        279)
      object bsSkinExPanel3: TbsSkinExPanel
        Left = 1
        Top = 151
        Width = 528
        Height = 127
        HintImageIndex = 0
        TabOrder = 0
        SkinDataName = 'expanel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        UseSkinSize = True
        CaptionImageIndex = -1
        NumGlyphs = 1
        Spacing = 2
        RealWidth = 0
        RealHeight = 0
        ShowRollButton = True
        ShowCloseButton = False
        DefaultCaptionHeight = 21
        RollState = False
        RollKind = rkRollVertical
        Moveable = False
        Sizeable = False
        Align = alBottom
        Caption = 'Animais de Estima'#231#227'o'
        Enabled = False
        object bsSkinDBGrid3: TbsSkinDBGrid
          Left = 1
          Top = 21
          Width = 526
          Height = 105
          HintImageIndex = 0
          TabOrder = 0
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'grid'
          Transparent = False
          WallpaperStretch = False
          UseSkinFont = True
          UseSkinCellHeight = True
          VScrollBar = bsSkinScrollBar1
          GridLineColor = clWindowText
          DefaultCellHeight = 20
          ColSizingwithLine = False
          DrawGraphicFields = False
          UseColumnsFont = False
          DefaultRowHeight = 17
          MouseWheelSupport = False
          SaveMultiSelection = False
          PickListBoxSkinDataName = 'listbox'
          PickListBoxCaptionMode = False
          Align = alClient
          DataSource = srcAnimais
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
      object bsSkinPanel4: TbsSkinPanel
        Left = 9
        Top = 24
        Width = 510
        Height = 82
        HintImageIndex = 0
        TabOrder = 1
        SkinData = frmPrincipal.SkinEntradaDados
        SkinDataName = 'panel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        EmptyDrawing = False
        RibbonStyle = False
        ImagePosition = bsipDefault
        TransparentMode = False
        CaptionImageIndex = -1
        RealHeight = -1
        AutoEnabledControls = True
        CheckedMode = False
        Checked = False
        DefaultAlignment = taLeftJustify
        DefaultCaptionHeight = 22
        BorderStyle = bvFrame
        CaptionMode = False
        RollUpMode = False
        RollUpState = False
        NumGlyphs = 1
        Spacing = 2
        Caption = 'bsSkinPanel4'
        object bsSkinStdLabel3: TbsSkinStdLabel
          Left = 31
          Top = 7
          Width = 46
          Height = 13
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Endereco'
        end
        object bsSkinStdLabel2: TbsSkinStdLabel
          Left = 50
          Top = 34
          Width = 27
          Height = 13
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Bairro'
        end
        object bsSkinStdLabel4: TbsSkinStdLabel
          Left = 245
          Top = 34
          Width = 33
          Height = 13
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Cidade'
        end
        object bsSkinStdLabel16: TbsSkinStdLabel
          Left = 9
          Top = 59
          Width = 71
          Height = 13
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Pto Referencia'
        end
        object edtEndereco: TbsSkinEdit
          Left = 85
          Top = 3
          Width = 412
          Height = 24
          DefaultColor = clWindow
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          UseSkinFont = False
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtBairro: TbsSkinEdit
          Left = 85
          Top = 29
          Width = 137
          Height = 24
          DefaultColor = clWindow
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          UseSkinFont = False
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCidade: TbsSkinEdit
          Left = 284
          Top = 28
          Width = 213
          Height = 24
          DefaultColor = clCream
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          UseSkinFont = False
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtPto_Referencia: TbsSkinEdit
          Left = 86
          Top = 54
          Width = 411
          Height = 24
          DefaultColor = clWindow
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          UseSkinFont = False
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          MaxLength = 50
          ParentFont = False
          TabOrder = 3
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
      end
      object btnMostrarMapa: TbsSkinButton
        Left = 9
        Top = 112
        Width = 510
        Height = 33
        HintImageIndex = 0
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'button'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
        Transparent = False
        CheckedMode = False
        ImageList = frmPrincipal.cxLargeImages
        ImageIndex = 19
        AlwaysShowLayeredFrame = False
        UseSkinSize = False
        UseSkinFontColor = False
        RepeatMode = False
        RepeatInterval = 100
        AllowAllUp = False
        TabStop = True
        CanFocused = True
        Down = False
        GroupIndex = 0
        Caption = '  Mostrar no Mapa'
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00D409
          D634A823BF73791DC08E8428C68B8E33CA8B973DCE8B9F45D08BA146D08B993F
          CE8B9036CB8B872CC78B7B1FC28DA527C079D20DD43AFF00FF00FF00FF009F33
          E47E4A67E5ED2567ECFF327CF5FF4396FDFF4EA4FCFF58ABFBFF5BAFFCFF50A6
          FCFF3C93FBFF3581F7FF276BEEFF486EE7F29D3CE886FF00FF00FF00FF00C01A
          F5485144E6C42264E8FF276CE9FF1855D8FF1149D3FF1A58DDFF236DEBFF5FA2
          F5FF81B1F2FF2A70EAFF2366EAFF434CE6D4B120F35AFF00FF00FF00FF00EC0A
          FB188B35EC8B2060E5FF2658D5FF3D66D7FF5A81E1FF719AEBFF79A9F5FFACD0
          FEFFF6FEFFFF7CB4F1FF195AE4FF7938EA9BE10DFA23FF00FF00FF00FF00FF00
          FF00C225F4523670E4FF567CDEFF94AFEAFF7398E6FF719BEBFF7DABF5FFC3DD
          FDFFFCFCFFFFADD6FCFF1657E2FFA823F064FC01FF03FF00FF00FF00FF00FF00
          FF00E80DFA1F3972E3FF608BE4FF567DDDFF1547D3FF1653DFFF2C77EFFFAAD1
          FDFFEDFAFFFF94BBF8FF1F5BE0FFDB10F82BFF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF004C64E2E72B61DCFF2757D4FF2A59D7FF3E74E5FF5A95F3FFC6E0
          FDFFCDF0FFFF357BEAFF2D53DDF2F803FE08FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00CD1BF541BA25F2597985E4EB87A7E9FF88ADEEFFA3C5F8FFEAF3
          FEFFD5DFFFF4B427F35EC317F245FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00A95DEC9F678DE3FF4B7EE6FF7EAEF5FFEBF5
          FFFFD197FFB2FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00C913F23E2355D7FF0F4FDEFF63A0F4FFDFF2
          FEFFD639FF51FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FE00FF016570E2E55C8CE9FFA6C9F8FFDDDF
          FFF1F908FF0BFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00B25BEF9596B8F1FFD0E2FBFFDF97
          FEABFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00D619F6385E91EAFFC0DAFAFFEB3F
          FE4CFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005A71E9E1BFCDFBF1FD05
          FF06FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AE5CF394D894FCABFF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00EC25FC33EE34FD3FFF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        NumGlyphs = 1
        Spacing = 1
        OnClick = btnMostrarMapaClick
      end
    end
    object bsSkinPanel3: TbsSkinPanel
      Left = 1
      Top = 1
      Width = 536
      Height = 132
      HintImageIndex = 0
      TabOrder = 1
      SkinDataName = 'panel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      EmptyDrawing = False
      RibbonStyle = False
      ImagePosition = bsipDefault
      TransparentMode = False
      CaptionImageIndex = -1
      RealHeight = -1
      AutoEnabledControls = True
      CheckedMode = False
      Checked = False
      DefaultAlignment = taLeftJustify
      DefaultCaptionHeight = 22
      BorderStyle = bvFrame
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'bsSkinPanel3'
      Align = alClient
      object Label1: TLabel
        Left = 376
        Top = 80
        Width = 82
        Height = 13
        Caption = 'Previs'#227'o Entrega'
      end
      object bsSkinDBGrid1: TbsSkinDBGrid
        Left = 1
        Top = 1
        Width = 515
        Height = 130
        HintImageIndex = 0
        TabOrder = 0
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'grid'
        Transparent = False
        WallpaperStretch = False
        UseSkinFont = True
        UseSkinCellHeight = True
        VScrollBar = bsSkinScrollBar1
        GridLineColor = clWindowText
        DefaultCellHeight = 20
        ColSizingwithLine = False
        DrawGraphicFields = False
        UseColumnsFont = False
        DefaultRowHeight = 17
        MouseWheelSupport = False
        SaveMultiSelection = False
        PickListBoxSkinDataName = 'listbox'
        PickListBoxCaptionMode = False
        Align = alClient
        DataSource = srcClientes
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Width = 67
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Nome do Cliente'
            Width = 314
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Telefone'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Celular'
            Width = 77
            Visible = True
          end>
      end
      object bsSkinScrollBar1: TbsSkinScrollBar
        Left = 516
        Top = 1
        Width = 19
        Height = 130
        HintImageIndex = 0
        TabOrder = 1
        Visible = False
        SkinDataName = 'vscrollbar'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 19
        DefaultHeight = 0
        UseSkinFont = True
        Both = False
        BothMarkerWidth = 19
        BothSkinDataName = 'bothhscrollbar'
        CanFocused = False
        Align = alRight
        Kind = sbVertical
        PageSize = 0
        Min = 0
        Max = 100
        Position = 0
        SmallChange = 1
        LargeChange = 1
      end
    end
  end
  object srcClientes: TDataSource
    DataSet = cdsClientes
    Left = 240
    Top = 128
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdsClientesAfterScroll
    Left = 208
    Top = 128
  end
  object cdslista: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Data'
        DataType = ftDateTime
      end
      item
        Name = 'Hora'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'HoraChegada'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'PrevisaoChegda'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'CodCliente'
        DataType = ftInteger
      end
      item
        Name = 'Lancado'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'Obs'
        DataType = ftString
        Size = 300
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterScroll = cdslistaAfterScroll
    Left = 660
    Top = 138
    Data = {
      090100009619E0BD01000000180000000A000000000003000000090102496404
      00010000000000044E6F6D650100490000000100055749445448020002006400
      0444617461080008000000000004486F72610100490000000100055749445448
      0200020014000653746174757301004900000001000557494454480200020001
      000B486F72614368656761646101004900000001000557494454480200020005
      000E507265766973616F43686567646101004900000001000557494454480200
      020005000A436F64436C69656E74650400010000000000074C616E6361646F01
      00490000000100055749445448020002000200034F6273020049000000010005
      5749445448020002002C010000}
    object cdslistaLancado: TStringField
      DisplayLabel = 'L'
      DisplayWidth = 2
      FieldName = 'Lancado'
      Size = 2
    end
    object cdslistaId: TIntegerField
      DisplayWidth = 2
      FieldName = 'Id'
    end
    object cdslistaNome: TStringField
      DisplayWidth = 49
      FieldName = 'Nome'
      Size = 100
    end
    object cdslistaData: TDateTimeField
      DisplayWidth = 13
      FieldName = 'Data'
      Visible = False
    end
    object cdslistaHoraChegada: TStringField
      DisplayLabel = 'Hora Chegada'
      DisplayWidth = 17
      FieldName = 'HoraChegada'
      Size = 5
    end
    object cdslistaPrevisaoChegda: TStringField
      DisplayLabel = 'Previsao Chegda'
      DisplayWidth = 17
      FieldName = 'PrevisaoChegda'
      Size = 5
    end
    object cdslistaHora: TStringField
      DisplayLabel = 'Previs'#227'o Entrega'
      DisplayWidth = 17
      FieldName = 'Hora'
    end
    object cdslistaStatus: TStringField
      FieldName = 'Status'
      Visible = False
      Size = 1
    end
    object cdslistaCodCliente: TIntegerField
      FieldName = 'CodCliente'
      Visible = False
    end
    object cdslistaObs: TStringField
      DisplayWidth = 360
      FieldName = 'Obs'
      Size = 300
    end
  end
  object srcLista: TDataSource
    DataSet = cdslista
    Left = 692
    Top = 136
  end
  object PopupMenu1: TPopupMenu
    Left = 800
    Top = 136
    object MarcarcomoEntregue1: TMenuItem
      Caption = 'Marcar como Entregue'
      OnClick = MarcarcomoEntregue1Click
    end
    object MarcarComonoEntregue1: TMenuItem
      Caption = 'Marcar Como n'#227'o Entregue'
      OnClick = MarcarComonoEntregue1Click
    end
    object Saiuparaentrega1: TMenuItem
      Caption = 'Saiu para entrega'
      OnClick = Saiuparaentrega1Click
    end
    object PrevisodeChegada1: TMenuItem
      Caption = 'Previs'#227'o de Chegada'
      OnClick = PrevisodeChegada1Click
    end
    object HoradeChegada1: TMenuItem
      Caption = 'Hora de Chegada'
      OnClick = HoradeChegada1Click
    end
    object ServioFinalizado1: TMenuItem
      Caption = 'Servi'#231'o Finalizado'
      OnClick = ServioFinalizado1Click
    end
  end
  object srcAnimais: TDataSource
    Left = 296
    Top = 336
  end
  object ImpMatricial: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    OpcoesPreview.BotaoProcurar = Ativo
    Margens.Left = 10
    Margens.Right = 10
    Margens.Top = 10
    Margens.Bottom = 10
    Autor = Deltress
    RegistroUsuario.NomeRegistro = 'TEC-SOFT INFORMATICA LTDA'
    RegistroUsuario.SerieProduto = 'SITE-0306/00320'
    RegistroUsuario.AutorizacaoKey = 'EOSP-0695-PUAG-8415-LXYS'
    About = 'RDprint 4.0c - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    Mapeamento.Strings = (
      '//--- Grafico Compativel com Windows/USB ---//'
      '//'
      'GRAFICO=GRAFICO'
      'HP=GRAFICO'
      'DESKJET=GRAFICO'
      'LASERJET=GRAFICO'
      'INKJET=GRAFICO'
      'STYLUS=GRAFICO'
      'EPL=GRAFICO'
      'USB=GRAFICO'
      '//'
      '//--- Linha Epson Matricial 9 e 24 agulhas ---//'
      '//'
      'EPSON=EPSON'
      'GENERICO=EPSON'
      'LX-300=EPSON'
      'LX-810=EPSON'
      'FX-2170=EPSON'
      'FX-1170=EPSON'
      'LQ-1170=EPSON'
      'LQ-2170=EPSON'
      'OKIDATA=EPSON'
      '//'
      '//--- Rima e Emilia ---//'
      '//'
      'RIMA=RIMA'
      'EMILIA=RIMA'
      '//'
      '//--- Linha HP/Xerox padr'#227'o PCL ---//'
      '//'
      'PCL=HP'
      '//'
      '//--- Impressoras 40 Colunas ---//'
      '//'
      'DARUMA=BOBINA'
      'SIGTRON=BOBINA'
      'SWEDA=BOBINA'
      'BEMATECH=BOBINA')
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 368
    Top = 96
  end
end
