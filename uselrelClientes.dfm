object frmSelRelClientes: TfrmSelRelClientes
  Left = 0
  Top = 0
  Caption = 'Relatorio de Clientes '
  ClientHeight = 321
  ClientWidth = 504
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPanel1: TbsSkinPanel
    Left = 0
    Top = 281
    Width = 504
    Height = 40
    HintImageIndex = 0
    TabOrder = 0
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
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
    Align = alBottom
    object bsSkinStdLabel3: TbsSkinStdLabel
      Left = 7
      Top = 11
      Width = 143
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Caption = 'Percentual de Aproveitamento'
    end
    object edtPercentual: TbsSkinEdit
      Left = 169
      Top = 6
      Width = 66
      Height = 18
      Text = '0,00'
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'edit'
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object ProgressBar1: TProgressBar
      Left = 241
      Top = 6
      Width = 250
      Height = 17
      TabOrder = 1
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 504
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 500
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 491
      Height = 49
      HintImageIndex = 0
      TabOrder = 0
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'bigtoolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
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
      BorderStyle = bvNone
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'bsSkinToolBar1'
      CanScroll = False
      HotScroll = False
      ScrollOffset = 0
      ScrollTimerInterval = 50
      AdjustControls = True
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = False
      Flat = False
      Images = frmPrincipal.Imagebutoes
      object btnFechar: TbsSkinSpeedButton
        Left = 375
        Top = 0
        Width = 70
        Height = 49
        HintImageIndex = 0
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 70
        DefaultHeight = 40
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 7
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Fechar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 2
        Layout = blGlyphTop
        OnClick = btnFecharClick
        ExplicitLeft = 392
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object btnok: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 49
        HintImageIndex = 0
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 6
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Imprimir'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnokClick
        ExplicitLeft = -6
        ExplicitTop = 12
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 137
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 110
        ExplicitTop = -1
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 207
        Top = 0
        Width = 168
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 280
        ExplicitTop = -1
      end
    end
  end
  object grpSelVendedor: TbsSkinGroupBox
    Left = 0
    Top = 183
    Width = 504
    Height = 98
    HintImageIndex = 0
    TabOrder = 2
    SkinData = frmPrincipal.SkinPrincipal
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
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
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'Informe o vendedor para o relarorio'
    Align = alClient
    object bsSkinStdLabel4: TbsSkinStdLabel
      Left = 5
      Top = 37
      Width = 76
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Caption = 'Vendedor Inicial'
    end
    object bsSkinStdLabel5: TbsSkinStdLabel
      Left = 10
      Top = 63
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'stdlabel'
      Caption = 'Vendedor Final'
    end
    object cmbCod_FuncionarioIni: TbsSkinDBLookupComboBox
      Left = 87
      Top = 30
      Width = 76
      Height = 20
      HintImageIndex = 0
      TabOrder = 0
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'codigo'
      ListField = 'Codigo;Descricao'
      ListSource = srcCadFuncionarios
      ParentFont = False
      TabStop = False
      OnChange = cmbCod_FuncionarioIniChange
    end
    object cmbCod_FuncionarioFim: TbsSkinDBLookupComboBox
      Left = 87
      Top = 56
      Width = 76
      Height = 20
      HintImageIndex = 0
      TabOrder = 1
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'codigo'
      ListField = 'Codigo;Descricao'
      ListSource = srcCadFuncionarios
      ParentFont = False
      TabStop = False
      OnChange = cmbCod_FuncionarioFimChange
    end
    object cmbNome_FuncionarioIni: TbsSkinDBLookupComboBox
      Left = 169
      Top = 30
      Width = 292
      Height = 20
      HintImageIndex = 0
      TabOrder = 2
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'Descricao;Codigo'
      ListSource = srcCadFuncionarios
      OnChange = cmbNome_FuncionarioIniChange
    end
    object cmbNome_FuncionarioFim: TbsSkinDBLookupComboBox
      Left = 169
      Top = 56
      Width = 292
      Height = 20
      HintImageIndex = 0
      TabOrder = 3
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'Descricao;Codigo'
      ListSource = srcCadFuncionarios
      OnChange = cmbNome_FuncionarioFimChange
    end
    object bsSkinButton1: TbsSkinButton
      Left = 467
      Top = 28
      Width = 24
      Height = 22
      Hint = 'Limpar Sele'#231#227'o'
      HintImageIndex = 0
      TabOrder = 4
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      CheckedMode = False
      ImageList = frmPrincipal.cxSmallImages
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
      NumGlyphs = 1
      Spacing = 1
    end
  end
  object grpRota: TbsSkinGroupBox
    Left = 0
    Top = 107
    Width = 504
    Height = 76
    HintImageIndex = 0
    TabOrder = 3
    SkinData = frmPrincipal.SkinPrincipal
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
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
    CaptionMode = True
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'Informe a Rota para o Relatorio'
    Align = alTop
    object bsSkinStdLabel1: TbsSkinStdLabel
      Left = 28
      Top = 31
      Width = 53
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Caption = 'Rota Inicial'
    end
    object bsSkinStdLabel2: TbsSkinStdLabel
      Left = 33
      Top = 57
      Width = 48
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinDataName = 'stdlabel'
      Caption = 'Rota Final'
    end
    object cmbCod_RotaFim: TbsSkinDBLookupComboBox
      Left = 87
      Top = 50
      Width = 76
      Height = 20
      HintImageIndex = 0
      TabOrder = 0
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'codigo'
      ListField = 'Codigo;Descricao'
      ListSource = srcCadRotas
      ParentFont = False
      TabStop = False
      OnChange = cmbCod_RotaFimChange
    end
    object cmbCod_RotaIni: TbsSkinDBLookupComboBox
      Left = 87
      Top = 24
      Width = 76
      Height = 20
      HintImageIndex = 0
      TabOrder = 1
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'codigo'
      ListField = 'Codigo;Descricao'
      ListSource = srcCadRotas
      ParentFont = False
      TabStop = False
      OnChange = cmbCod_RotaIniChange
    end
    object cmbNome_RotaIni: TbsSkinDBLookupComboBox
      Left = 169
      Top = 24
      Width = 292
      Height = 20
      HintImageIndex = 0
      TabOrder = 2
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'Descricao;Codigo'
      ListSource = srcCadRotas
      OnChange = cmbNome_RotaIniChange
    end
    object cmbNome_Rotafim: TbsSkinDBLookupComboBox
      Left = 169
      Top = 50
      Width = 292
      Height = 20
      HintImageIndex = 0
      TabOrder = 3
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'Descricao;Codigo'
      ListSource = srcCadRotas
      OnChange = cmbNome_RotafimChange
    end
    object btnLimpa: TbsSkinButton
      Left = 467
      Top = 24
      Width = 24
      Height = 22
      Hint = 'Limpar Sele'#231#227'o'
      HintImageIndex = 0
      TabOrder = 4
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      CheckedMode = False
      ImageList = frmPrincipal.cxSmallImages
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
      NumGlyphs = 1
      Spacing = 1
    end
  end
  object bsSkinExPanel1: TbsSkinExPanel
    Left = 0
    Top = 53
    Width = 504
    Height = 54
    HintImageIndex = 0
    TabOrder = 4
    SkinDataName = 'expanel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
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
    Align = alTop
    Caption = 'Intervalo de Datas'
    object lblTurma: TbsSkinStdLabel
      Left = 126
      Top = 30
      Width = 19
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = []
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'stdlabel'
      Caption = 'Ate.'
    end
    object dtpData_Ini: TbsSkinDateEdit
      Left = 22
      Top = 27
      Width = 95
      Height = 18
      EditMask = '!99/99/0000;1; '
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'buttonedit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object dtpData_Fim: TbsSkinDateEdit
      Left = 154
      Top = 27
      Width = 95
      Height = 18
      EditMask = '!99/99/0000;1; '
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'buttonedit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object cmbPeriodo: TbsSkinComboBox
      Left = 256
      Top = 27
      Width = 233
      Height = 20
      HintImageIndex = 0
      TabOrder = 2
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = True
      UseSkinSize = True
      ToolButtonStyle = False
      AlphaBlend = False
      AlphaBlendValue = 0
      AlphaBlendAnimation = False
      ListBoxCaptionMode = False
      ListBoxDefaultFont.Charset = DEFAULT_CHARSET
      ListBoxDefaultFont.Color = clWindowText
      ListBoxDefaultFont.Height = 14
      ListBoxDefaultFont.Name = 'Arial'
      ListBoxDefaultFont.Style = []
      ListBoxDefaultCaptionFont.Charset = DEFAULT_CHARSET
      ListBoxDefaultCaptionFont.Color = clWindowText
      ListBoxDefaultCaptionFont.Height = 14
      ListBoxDefaultCaptionFont.Name = 'Arial'
      ListBoxDefaultCaptionFont.Style = []
      ListBoxDefaultItemHeight = 20
      ListBoxCaptionAlignment = taLeftJustify
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      ListBoxWidth = 0
      HideSelection = True
      AutoComplete = True
      ImageIndex = -1
      TabWidths.Strings = (
        'Nenhum'
        'Ontem'
        'Hoje'
        'Amanh'#227
        'Semana Anterior'
        'Esta Semana'
        'Pr'#243'xima Semana'
        'Quinzena Anterior'
        'Esta Quinzena'
        'Pr'#243'xima Quinzena '
        'Nos '#218'ltimos 15 dias'
        'Nos Pr'#243'ximos 15 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 15 dias'
        'M'#234's Anterior'
        'Este M'#234's'
        'Pr'#243'ximo M'#234's'
        'Nos '#218'ltimos 30 dias'
        'Nos Pr'#243'ximos 30 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 30 dias'
        'Nos '#218'ltimos 45 dias'
        'Nos Pr'#243'ximos 45 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 45 dias'
        'Nos '#218'ltimos 60 dias'
        'Nos Pr'#243'ximos 60 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 60 dias'
        'Trimestre Anterior'
        'Neste Trimestre'
        'Pr'#243'ximo Trimestre'
        'Nos '#218'ltimos 90 dias'
        'Nos Pr'#243'ximos 90 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 90 dias'
        'Semestre Passado'
        'Neste Semestre'
        'Pr'#243'ximo Semestre'
        'Nos '#218'ltimos 120 dias'
        'Nos Pr'#243'ximos 120 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 120 dias'
        'Ano Passado'
        'Neste Ano'
        'Pr'#243'ximo Ano')
      CharCase = ecNormal
      DefaultColor = clWindow
      Text = 'Nenhum'
      Items.Strings = (
        'Nenhum'
        'Ontem'
        'Hoje'
        'Amanh'#227
        'Semana Anterior'
        'Esta Semana'
        'Pr'#243'xima Semana'
        'Quinzena Anterior'
        'Esta Quinzena'
        'Pr'#243'xima Quinzena '
        'Nos '#218'ltimos 15 dias'
        'Nos Pr'#243'ximos 15 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 15 dias'
        'M'#234's Anterior'
        'Este M'#234's'
        'Pr'#243'ximo M'#234's'
        'Nos '#218'ltimos 30 dias'
        'Nos Pr'#243'ximos 30 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 30 dias'
        'Nos '#218'ltimos 45 dias'
        'Nos Pr'#243'ximos 45 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 45 dias'
        'Nos '#218'ltimos 60 dias'
        'Nos Pr'#243'ximos 60 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 60 dias'
        'Trimestre Anterior'
        'Neste Trimestre'
        'Pr'#243'ximo Trimestre'
        'Nos '#218'ltimos 90 dias'
        'Nos Pr'#243'ximos 90 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 90 dias'
        'Semestre Passado'
        'Neste Semestre'
        'Pr'#243'ximo Semestre'
        'Nos '#218'ltimos 120 dias'
        'Nos Pr'#243'ximos 120 dias'
        'Nos '#218'ltimos e Pr'#243'ximos 120 dias'
        'Ano Passado'
        'Neste Ano'
        'Pr'#243'ximo Ano')
      ItemIndex = 0
      DropDownCount = 8
      HorizontalExtent = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Sorted = False
      Style = bscbFixedStyle
      OnChange = cmbPeriodoChange
    end
  end
  object impMatricial: TRDprint
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
    OnNewPage = impMatricialNewPage
    Left = 245
    Top = 120
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 294
    Top = 55
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 294
    Top = 27
  end
  object srcRelatorio: TDataSource
    Left = 294
    Top = 111
  end
  object dspVariavel: TDataSetProvider
    DataSet = qryvariavel
    Left = 269
    Top = 55
  end
  object qryvariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 268
    Top = 27
  end
  object cdsClientesDebitos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 350
    Top = 82
  end
  object cdsCadRotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    Left = 322
    Top = 83
  end
  object srcCadRotas: TDataSource
    DataSet = cdsCadRotas
    Left = 322
    Top = 111
  end
  object cdsCadFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    Left = 378
    Top = 82
  end
  object srcCadFuncionarios: TDataSource
    DataSet = cdsCadFuncionarios
    Left = 378
    Top = 110
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 288
    Top = 80
  end
end
