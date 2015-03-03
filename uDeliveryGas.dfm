object frmDeliveryGas: TfrmDeliveryGas
  Left = 0
  Top = 0
  Caption = 'Atendimento Expresso'
  ClientHeight = 533
  ClientWidth = 1265
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
    Width = 1265
    Height = 91
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
    object edtNome: TbsSkinEdit
      Left = 112
      Top = 32
      Width = 393
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
      TabOrder = 0
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
      Left = 179
      Top = 59
      Width = 84
      Height = 25
      HintImageIndex = 0
      TabOrder = 1
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
      Left = 269
      Top = 59
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
      Left = 13
      Top = 62
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
      TabOrder = 3
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object btnClientes: TbsSkinButton
      Left = 616
      Top = 27
      Width = 84
      Height = 35
      HintImageIndex = 0
      TabOrder = 4
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
    object bsSkinButton1: TbsSkinButton
      Left = 706
      Top = 27
      Width = 107
      Height = 35
      HintImageIndex = 0
      TabOrder = 5
      Visible = False
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
      Caption = 'Servi'#231'os'
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
      OnClick = bsSkinButton1Click
    end
    object bsSkinButton2: TbsSkinButton
      Left = 819
      Top = 27
      Width = 107
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
      ImageIndex = 0
      AlwaysShowLayeredFrame = False
      UseSkinSize = False
      UseSkinFontColor = False
      RepeatMode = False
      RepeatInterval = 100
      AllowAllUp = False
      TabStop = True
      CanFocused = True
      Action = frmPrincipal.actVendas
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
      Left = 117
      Top = 62
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
      TabOrder = 7
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
      Left = 526
      Top = 27
      Width = 84
      Height = 35
      HintImageIndex = 0
      TabOrder = 8
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
    object cmbtipoPesquisa: TComboBox
      Left = 13
      Top = 32
      Width = 93
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 16
      ItemIndex = 0
      ParentFont = False
      TabOrder = 9
      Text = 'Telefone'
      Items.Strings = (
        'Telefone'
        'Nome')
    end
    object bsSkinButton3: TbsSkinButton
      Left = 421
      Top = 54
      Width = 84
      Height = 33
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
    Left = 784
    Top = 91
    Width = 481
    Height = 442
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
      Width = 639
      Height = 440
      ActivePage = bsSkinTabSheet1
      Align = alLeft
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
        object dbgConsulta: TbsSkinDBGrid
          Left = 0
          Top = 0
          Width = 637
          Height = 289
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
          DataSource = srcLista
          PopupMenu = PopupMenu1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBtnText
          TitleFont.Height = 14
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDrawColumnCell = dbgConsultaDrawColumnCell
        end
        object bsSkinExPanel5: TbsSkinExPanel
          Left = 0
          Top = 289
          Width = 637
          Height = 130
          HintImageIndex = 0
          TabOrder = 1
          SkinDataName = 'expanel'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 13
          DefaultFont.Name = 'Tahoma'
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
          ShowCloseButton = True
          DefaultCaptionHeight = 21
          RollState = False
          RollKind = rkRollVertical
          Moveable = False
          Sizeable = False
          Align = alBottom
          Caption = 'bsSkinExPanel5'
          object Label2: TLabel
            Left = 12
            Top = 112
            Width = 91
            Height = 14
            Caption = 'Tipo de Pagamento'
          end
          object Label3: TLabel
            Left = 50
            Top = 85
            Width = 53
            Height = 14
            Caption = 'Entregador'
          end
          object Label4: TLabel
            Left = 332
            Top = 47
            Width = 118
            Height = 19
            Caption = 'Total a Receber'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 4
            Top = 21
            Width = 91
            Height = 14
            Caption = 'Produtos Vendidos'
          end
          object lblTipoPagamento: TbsSkinLabel
            Left = 109
            Top = 105
            Width = 196
            Height = 21
            HintImageIndex = 0
            TabOrder = 0
            SkinDataName = 'label'
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clWindowText
            DefaultFont.Height = 13
            DefaultFont.Name = 'Tahoma'
            DefaultFont.Style = []
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
            Caption = 'lblVenda'
            AutoSize = False
          end
          object lblEntregador: TbsSkinLabel
            Left = 109
            Top = 78
            Width = 196
            Height = 21
            HintImageIndex = 0
            TabOrder = 1
            SkinDataName = 'label'
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clWindowText
            DefaultFont.Height = 13
            DefaultFont.Name = 'Tahoma'
            DefaultFont.Style = []
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
            Caption = 'lblVenda'
            AutoSize = False
          end
          object lbltotal: TbsSkinLabel
            Left = 341
            Top = 75
            Width = 113
            Height = 40
            HintImageIndex = 0
            TabOrder = 2
            SkinDataName = 'label'
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clNavy
            DefaultFont.Height = -19
            DefaultFont.Name = 'Tahoma'
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
            Caption = 'lblVenda'
            AutoSize = False
          end
          object Memo1: TMemo
            Left = 21
            Top = 40
            Width = 284
            Height = 32
            Lines.Strings = (
              'Memo1')
            TabOrder = 3
          end
        end
      end
    end
  end
  object bsSkinPanel2: TbsSkinPanel
    Left = 0
    Top = 91
    Width = 784
    Height = 442
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
      Top = 126
      Width = 776
      Height = 312
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
        776
        312)
      object lblDevedor: TLabel
        Left = 12
        Top = 112
        Width = 30
        Height = 19
        Caption = 'xxx'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bsSkinPanel4: TbsSkinPanel
        Left = 3
        Top = 24
        Width = 441
        Height = 82
        HintImageIndex = 0
        TabOrder = 0
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
          Width = 337
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
        end
        object edtCidade: TbsSkinEdit
          Left = 284
          Top = 27
          Width = 137
          Height = 20
          DefaultColor = clCream
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
          Width = 337
          Height = 20
          DefaultColor = 8454143
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
        Left = 453
        Top = 24
        Width = 323
        Height = 82
        HintImageIndex = 0
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 1
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'button'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clBlack
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
      object bsSkinExPanel4: TbsSkinExPanel
        Left = 1
        Top = 168
        Width = 774
        Height = 143
        HintImageIndex = 0
        TabOrder = 2
        SkinData = frmPrincipal.SkinEntradaDados
        SkinDataName = 'expanel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
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
        ShowCloseButton = True
        DefaultCaptionHeight = 21
        RollState = False
        RollKind = rkRollVertical
        Moveable = False
        Sizeable = False
        Align = alBottom
        Caption = 'Venda Rapida de Produtos'
        DesignSize = (
          774
          143)
        object btnVenda01: TbsSkinButton
          Left = 18
          Top = 38
          Width = 163
          Height = 41
          HintImageIndex = 0
          Anchors = []
          TabOrder = 0
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'button'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          Transparent = False
          CheckedMode = False
          ImageList = frmPrincipal.cxLargeImages
          ImageIndex = 0
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
          Caption = 'Gas 13Kg'
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
          OnClick = btnVenda01Click
        end
        object bsSkinButton4: TbsSkinButton
          Left = 187
          Top = 38
          Width = 163
          Height = 41
          HintImageIndex = 0
          Anchors = []
          TabOrder = 1
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'button'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          Transparent = False
          CheckedMode = False
          ImageList = frmPrincipal.cxLargeImages
          ImageIndex = 0
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
          Caption = 'Agua Mineral'
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
          OnClick = bsSkinButton4Click
        end
        object bsSkinButton5: TbsSkinButton
          Left = 356
          Top = 38
          Width = 163
          Height = 41
          HintImageIndex = 0
          Anchors = []
          TabOrder = 2
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'button'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          Transparent = False
          CheckedMode = False
          ImageList = frmPrincipal.cxLargeImages
          ImageIndex = 0
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
          Caption = '2 Aguas Minerais'
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
          OnClick = bsSkinButton5Click
        end
        object btnVenda04: TbsSkinButton
          Left = 18
          Top = 92
          Width = 163
          Height = 41
          HintImageIndex = 0
          Anchors = []
          TabOrder = 3
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'button'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          Transparent = False
          CheckedMode = False
          ImageList = frmPrincipal.cxLargeImages
          ImageIndex = 0
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
          Caption = 'Carv'#227'o'
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
          OnClick = btnVenda04Click
        end
        object bsSkinButton6: TbsSkinButton
          Left = 187
          Top = 92
          Width = 163
          Height = 41
          HintImageIndex = 0
          Anchors = []
          TabOrder = 4
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'button'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          Transparent = False
          CheckedMode = False
          ImageList = frmPrincipal.cxLargeImages
          ImageIndex = 0
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
          Caption = '1 Gas 2 Aguas'
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
          OnClick = bsSkinButton6Click
        end
        object btnVenda06: TbsSkinButton
          Left = 356
          Top = 92
          Width = 163
          Height = 41
          HintImageIndex = 0
          Anchors = []
          TabOrder = 5
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'button'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          Transparent = False
          CheckedMode = False
          ImageList = frmPrincipal.cxLargeImages
          ImageIndex = 0
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
          Caption = '1 Gas 1 Aguas'
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
          OnClick = btnVenda06Click
        end
      end
      object btnVendaproduto: TbsSkinButton
        Left = 3
        Top = 134
        Width = 441
        Height = 28
        HintImageIndex = 0
        Anchors = []
        TabOrder = 3
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'button'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -16
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsBold]
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
        Transparent = False
        CheckedMode = False
        ImageList = frmPrincipal.cxLargeImages
        ImageIndex = -1
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
        Caption = 'Venda de Produto'
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
        OnClick = btnVendaprodutoClick
      end
    end
    object bsSkinPanel3: TbsSkinPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 122
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
      object btnVenda05: TbsSkinDBGrid
        Left = 1
        Top = 1
        Width = 761
        Height = 120
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
        Left = 762
        Top = 1
        Width = 19
        Height = 120
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
        Name = 'FormaPagamento'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Entregador'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Total'
        DataType = ftFloat
      end
      item
        Name = 'NomeProduto'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    AfterScroll = cdslistaAfterScroll
    Left = 692
    Top = 165
    Data = {
      610100009619E0BD01000000180000000D000000000003000000610102496404
      00010000000000044E6F6D650100490000000100055749445448020002006400
      0444617461080008000000000004486F72610100490000000100055749445448
      0200020014000653746174757301004900000001000557494454480200020001
      000B486F72614368656761646101004900000001000557494454480200020005
      000E507265766973616F43686567646101004900000001000557494454480200
      020005000A436F64436C69656E74650400010000000000074C616E6361646F01
      004900000001000557494454480200020002000E466F726D61506167616D656E
      746F01004900000001000557494454480200020032000A456E7472656761646F
      72010049000000010005574944544802000200320005546F74616C0800040000
      0000000B4E6F6D6550726F6475746F0100490000000100055749445448020002
      0064000000}
    object cdslistaLancado: TStringField
      DisplayLabel = 'L'
      DisplayWidth = 3
      FieldName = 'Lancado'
      Visible = False
      Size = 2
    end
    object cdslistaId: TIntegerField
      DisplayWidth = 6
      FieldName = 'Id'
      Visible = False
    end
    object cdslistaNome: TStringField
      DisplayWidth = 79
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
      DisplayWidth = 18
      FieldName = 'HoraChegada'
      Size = 5
    end
    object cdslistaPrevisaoChegda: TStringField
      DisplayLabel = 'Previsao Chegda'
      DisplayWidth = 22
      FieldName = 'PrevisaoChegda'
      Size = 5
    end
    object cdslistaHora: TStringField
      DisplayLabel = 'Previs'#227'o Entrega'
      DisplayWidth = 22
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
    object cdslistaFormaPagamento: TStringField
      FieldName = 'FormaPagamento'
      Visible = False
      Size = 50
    end
    object cdslistaEntregador: TStringField
      FieldName = 'Entregador'
      Visible = False
      Size = 50
    end
    object cdslistaTotal: TFloatField
      FieldName = 'Total'
      Visible = False
    end
    object cdslistaNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Size = 100
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
    object PrevisodeChegada1: TMenuItem
      Caption = 'Saiu para entrega'
      OnClick = PrevisodeChegada1Click
    end
    object MarcarComonoEntregue1: TMenuItem
      Caption = 'Marcar Como n'#227'o Entregue'
      OnClick = MarcarComonoEntregue1Click
    end
  end
  object srcAnimais: TDataSource
    Left = 272
    Top = 128
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 522
    Top = 216
  end
  object srcPagamento: TDataSource
    DataSet = cdsPagamento
    Left = 467
    Top = 202
  end
  object qryPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 467
    Top = 120
  end
  object dspPagamento: TDataSetProvider
    DataSet = qryPagamento
    Left = 467
    Top = 148
  end
  object cdsPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagamento'
    Left = 467
    Top = 174
  end
end
