object frmConsultaOrdemServico: TfrmConsultaOrdemServico
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Consulta e manuten'#231#227'o de Ordem de Servi'#231'o'
  ClientHeight = 520
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinStatusBar1: TbsSkinStatusBar
    Left = 0
    Top = 499
    Width = 1026
    Height = 21
    HintImageIndex = 0
    TabOrder = 0
    SkinData = frmPrincipal.SkinPrincipal
    SkinDataName = 'statusbar'
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
    BorderStyle = bvNone
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinStatusBar1'
    Align = alBottom
    SizeGrip = False
  end
  object panelconsulta: TbsSkinPanel
    Left = 0
    Top = 44
    Width = 1026
    Height = 60
    HintImageIndex = 0
    TabOrder = 1
    SkinData = frmPrincipal.SkinPrincipal
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
    Caption = 'panelconsulta'
    Align = alTop
    object lblsituacao: TbsSkinStdLabel
      Left = 16
      Top = 37
      Width = 42
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
      Caption = 'Situa'#231#227'o'
    end
    object lblTurma: TbsSkinStdLabel
      Left = 291
      Top = 15
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
    object cmbStatus: TbsSkinComboBox
      Left = 64
      Top = 32
      Width = 105
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
      CharCase = ecNormal
      DefaultColor = clWindow
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'O.S Aberta'
        'Agendada'
        'Fechada '
        'Pendente'
        'Em Libera'#231#227'o'
        'Em Atendimento'
        'O.S. Cancelada')
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
    end
    object cmbTipoFiltro: TbsSkinComboBox
      Left = 186
      Top = 34
      Width = 120
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
      ImageIndex = 2
      CharCase = ecNormal
      DefaultColor = clWindow
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'Nome do Cliente'
        'Numero da O.S.'
        'C.N.P.J /C.P.F '
        'Nome da obra'
        'Pedido')
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
    end
    object dtpData_Ini: TbsSkinDateEdit
      Left = 186
      Top = 6
      Width = 88
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'buttonedit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 10
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
    object dtpData_Fim: TbsSkinDateEdit
      Left = 318
      Top = 6
      Width = 89
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
      SkinData = frmPrincipal.SkinPrincipal
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
    object cmbTipoData: TbsSkinComboBox
      Left = 64
      Top = 6
      Width = 105
      Height = 20
      HintImageIndex = 0
      TabOrder = 4
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
      Enabled = False
      CharCase = ecNormal
      DefaultColor = clWindow
      Text = 'Data da O.S.'
      Items.Strings = (
        'Data da O.S.'
        'Data Agendamento')
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
    end
    object edtPesquisa: TbsSkinEdit
      Left = 312
      Top = 34
      Width = 281
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object cmbPeriodo: TbsSkinComboBox
      Left = 413
      Top = 6
      Width = 180
      Height = 20
      HintImageIndex = 0
      TabOrder = 6
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
    object btnTudo: TbsSkinButton
      Left = 632
      Top = 15
      Width = 107
      Height = 28
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
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 5
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
      Caption = '    &Pesquisar'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnTudoClick
    end
  end
  object bsSkinCoolBar1: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 1026
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 1022
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 2
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 70
      Height = 40
      HintImageIndex = 0
      TabOrder = 0
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'bigtoolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 70
      DefaultHeight = 40
      UseSkinFont = True
      EmptyDrawing = False
      RibbonStyle = False
      ImagePosition = bsipDefault
      TransparentMode = False
      CaptionImageIndex = -1
      RealHeight = 1
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
      Spacing = 5
      Caption = 'bsSkinToolBar1'
      Align = alClient
      CanScroll = False
      HotScroll = False
      ScrollOffset = 0
      ScrollTimerInterval = 50
      AdjustControls = True
      WidthWithCaptions = 0
      WidthWithoutCaptions = 0
      AutoShowHideCaptions = False
      ShowCaptions = True
      Flat = True
      Images = frmPrincipal.Imagebutoes
      object btnFechar: TbsSkinSpeedButton
        Left = 913
        Top = 0
        Width = 70
        Height = 40
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
        ExplicitLeft = 967
        ExplicitTop = 8
      end
      object btnabrios: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 87
        Height = 40
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
        ImageIndex = 13
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Fechar O.S'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnabriosClick
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 983
        Top = 0
        Width = 1
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 273
        ExplicitTop = -5
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 261
        Top = 0
        Width = 116
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 751
        Top = 0
        Width = 87
        Height = 40
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
        Caption = 'Imprimir O.S.'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnokClick
        ExplicitLeft = 658
        ExplicitTop = 8
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 87
        Top = 0
        Width = 87
        Height = 40
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
        ImageIndex = 4
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Cancelar O.S'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnCancelaClick
        ExplicitLeft = 76
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 647
        Top = 0
        Width = 104
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 545
        ExplicitTop = -5
      end
      object bsSkinSpeedButton3: TbsSkinSpeedButton
        Left = 174
        Top = 0
        Width = 87
        Height = 40
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
        ImageIndex = 14
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Agendar O.S'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = bsSkinSpeedButton3Click
        ExplicitLeft = 157
        ExplicitTop = 8
      end
      object bsSkinSpeedButton4: TbsSkinSpeedButton
        Left = 377
        Top = 0
        Width = 87
        Height = 40
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
        ImageIndex = 3
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Liberar O.S'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = bsSkinSpeedButton4Click
        ExplicitLeft = 430
        ExplicitTop = 8
      end
      object bsSkinBevel4: TbsSkinBevel
        Left = 838
        Top = 0
        Width = 75
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object bsSkinSpeedButton5: TbsSkinSpeedButton
        Left = 464
        Top = 0
        Width = 96
        Height = 40
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
        ImageIndex = 11
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Servico / Material'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = bsSkinSpeedButton5Click
        ExplicitLeft = 496
        ExplicitTop = 8
      end
      object btnVisualizar: TbsSkinSpeedButton
        Left = 560
        Top = 0
        Width = 87
        Height = 40
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
        ImageIndex = 8
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Visualizar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnVisualizarClick
        ExplicitLeft = 629
        ExplicitTop = 8
      end
    end
  end
  object pgGeral: TbsSkinPageControl
    Left = 0
    Top = 104
    Width = 1026
    Height = 395
    ActivePage = bsSkinTabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnChange = bsSkinPageControl1Change
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
    SkinData = frmPrincipal.SkinPrincipal
    SkinDataName = 'tab'
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Consulta e Manuten'#231#227'o'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object gridOS: TcxGrid
        Left = 0
        Top = 0
        Width = 1024
        Height = 374
        Align = alClient
        TabOrder = 0
        object GrdVendas: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = srcOrdemServico
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = Column_Vlr_os
            end
            item
              Format = '0'
              Kind = skCount
              Column = Colum_SeqOS
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              Column = Column_Vlr_os
            end
            item
              Format = '0'
              Kind = skCount
              Column = Colum_SeqOS
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          Styles.GroupByBox = frmPrincipal.cxStyle4
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object Colum_NomeStatus: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'Nome_Status'
            Width = 89
          end
          object Colum_SeqOS: TcxGridDBColumn
            Caption = 'Ordem de Servi'#231'o n'#186
            DataBinding.FieldName = 'SeqOS'
            Width = 110
          end
          object colum_OS_informada: TcxGridDBColumn
            Caption = 'O.S. Informada'
            DataBinding.FieldName = 'os_Informada'
            Visible = False
            Width = 100
          end
          object Colum_Data_os: TcxGridDBColumn
            Caption = 'Data O.S.'
            DataBinding.FieldName = 'Data_Mov'
            Width = 120
          end
          object Colum_Cod_Clientes: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'cod_Cliente'
            Width = 70
          end
          object colum_Data_Agendada: TcxGridDBColumn
            Caption = 'Data Agendada'
            DataBinding.FieldName = 'Data_Agendada'
            Width = 145
          end
          object Colum_Descricao: TcxGridDBColumn
            Caption = 'Nome Cliente'
            DataBinding.FieldName = 'Descricao'
            Width = 200
          end
          object Colum_Nome_Obra: TcxGridDBColumn
            Caption = 'Nome da obra'
            DataBinding.FieldName = 'Nome_Obra'
            Width = 179
          end
          object Colum_Tecnico: TcxGridDBColumn
            Caption = 'Tecnico Responsavel'
            DataBinding.FieldName = 'nome_Tecnico'
            Width = 150
          end
          object Colum_Natureza: TcxGridDBColumn
            Caption = 'Natureza do Servi'#231'o'
            DataBinding.FieldName = 'Nome_Tipo_Servico'
            Width = 125
          end
          object Column_Vlr_os: TcxGridDBColumn
            Caption = 'Vlr. O.S.'
            DataBinding.FieldName = 'Vlr_os'
            Width = 70
          end
          object Column_Prioridade: TcxGridDBColumn
            DataBinding.FieldName = 'Prioridade'
          end
          object Colum_Operador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 120
          end
          object column_Tipo_OS: TcxGridDBColumn
            Caption = 'Tipo OS'
            DataBinding.FieldName = 'Nome_Tipo_Os'
          end
          object Collum_Bairro: TcxGridDBColumn
            DataBinding.FieldName = 'Bairro'
          end
          object Column_Solicitante: TcxGridDBColumn
            DataBinding.FieldName = 'Solicitante'
            Width = 150
          end
          object Column_Pedidos: TcxGridDBColumn
            DataBinding.FieldName = 'Pedido'
          end
        end
        object GrdItensVendas: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DetailKeyFieldNames = 'Seqvenda'
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'seqvenda'
          DataController.MasterKeyFieldNames = 'Seqvenda'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object Colum_Codigo: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'Cod_Produto'
            Width = 60
          end
          object Colum_Descrisao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 200
          end
          object Colum_Quantidade: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'Qtde_Venda'
            Width = 70
          end
          object Colum_PcoVenda: TcxGridDBColumn
            Caption = 'Preco'
            DataBinding.FieldName = 'Pco_Venda'
            Width = 70
          end
          object Colum_Desconto: TcxGridDBColumn
            Caption = 'Desconto'
            DataBinding.FieldName = 'Vlr_Desconto'
            Width = 70
          end
          object Colum_VlrTotal: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'Vlr_Total'
            Width = 70
          end
          object Colum_Complemento: TcxGridDBColumn
            DataBinding.FieldName = 'Complemento'
            Visible = False
            Width = 150
          end
        end
        object gridOSLevel1: TcxGridLevel
          GridView = GrdVendas
        end
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Historico da O.S.'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Splitter1: TSplitter
        Left = 632
        Top = 0
        Width = 4
        Height = 373
        Align = alRight
        ExplicitLeft = 631
        ExplicitHeight = 375
      end
      object bsSkinPanel2: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 632
        Height = 373
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
        Caption = 'bsSkinPanel2'
        Align = alClient
        ExplicitHeight = 374
        object bsSkinExPanel3: TbsSkinExPanel
          Left = 610
          Top = 26
          Width = 21
          Height = 346
          HintImageIndex = 0
          TabOrder = 0
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'expanel'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          UseSkinSize = True
          CaptionImageList = frmPrincipal.cxSmallImages
          CaptionImageIndex = 18
          NumGlyphs = 1
          Spacing = 2
          RealWidth = 288
          RealHeight = 373
          ShowRollButton = True
          ShowCloseButton = False
          DefaultCaptionHeight = 21
          RollState = True
          RollKind = rkRollHorizontal
          Moveable = False
          Sizeable = False
          Align = alRight
          Caption = ' Historico'
          ExplicitHeight = 347
          object MemoHistorico: TMemo
            Left = 1
            Top = 21
            Width = 286
            Height = 351
            Align = alClient
            Lines.Strings = (
              'MemoHistorico')
            ScrollBars = ssVertical
            TabOrder = 0
            Visible = False
          end
        end
        object cxGrid2: TcxGrid
          Left = 1
          Top = 26
          Width = 609
          Height = 346
          Align = alClient
          TabOrder = 1
          ExplicitHeight = 347
          object cxGrid2DBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = srcHistoricoOS
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.GroupByBox = False
            Styles.Content = frmPrincipal.cxStyle36
            Styles.Inactive = frmPrincipal.cxStyle2
            Styles.Indicator = frmPrincipal.cxStyle4
            Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetWindowsClassic
            object Column_Operador: TcxGridDBColumn
              DataBinding.FieldName = 'Operador'
              Width = 150
            end
            object Column_Data_cad: TcxGridDBColumn
              Caption = 'Data Ocorrencia'
              DataBinding.FieldName = 'Data_Cad'
              Width = 120
            end
            object Column_Ocorrencia: TcxGridDBColumn
              Caption = 'Ocorrenciao'
              DataBinding.FieldName = 'Ocorrencia'
              Width = 450
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
        object pnlClientes: TbsSkinPanel
          Left = 1
          Top = 1
          Width = 630
          Height = 25
          HintImageIndex = 0
          TabOrder = 2
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'panel'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          EmptyDrawing = False
          RibbonStyle = False
          ImagePosition = bsipDefault
          TransparentMode = False
          CaptionImageIndex = -1
          RealHeight = -1
          AutoEnabledControls = True
          CheckedMode = False
          Checked = False
          DefaultAlignment = taCenter
          DefaultCaptionHeight = 22
          BorderStyle = bvFrame
          CaptionMode = True
          RollUpMode = False
          RollUpState = False
          NumGlyphs = 1
          Spacing = 2
          Caption = 'pnlClientes'
          Align = alTop
        end
      end
      object bsSkinPanel1: TbsSkinPanel
        Left = 636
        Top = 0
        Width = 388
        Height = 373
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
        ExplicitHeight = 374
        object panelExecultado: TbsSkinExPanel
          Left = 1
          Top = 22
          Width = 386
          Height = 21
          HintImageIndex = 0
          TabOrder = 0
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'expanel'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          UseSkinSize = True
          CaptionImageList = frmPrincipal.cxSmallImages
          CaptionImageIndex = 42
          NumGlyphs = 1
          Spacing = 2
          RealWidth = 0
          RealHeight = 176
          ShowRollButton = True
          ShowCloseButton = False
          DefaultCaptionHeight = 21
          RollState = True
          RollKind = rkRollVertical
          Moveable = False
          Sizeable = False
          Align = alTop
          Caption = 'Servi'#231'os Executado'
          object Memoexecultado: TbsSkinDBMemo2
            Left = 1
            Top = 21
            Width = 398
            Height = 154
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              '')
            ParentFont = False
            ScrollBars = ssBoth
            TabOrder = 0
            Visible = False
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clBlack
            DefaultFont.Height = 14
            DefaultFont.Name = 'Arial'
            DefaultFont.Style = []
            UseSkinFont = True
            UseSkinFontColor = True
            SkinDataName = 'memo'
          end
        end
        object PanelSolicitado: TbsSkinExPanel
          Left = 1
          Top = 1
          Width = 386
          Height = 21
          HintImageIndex = 0
          TabOrder = 1
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'expanel'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          UseSkinSize = True
          CaptionImageList = frmPrincipal.cxSmallImages
          CaptionImageIndex = 42
          NumGlyphs = 1
          Spacing = 2
          RealWidth = 0
          RealHeight = 192
          ShowRollButton = True
          ShowCloseButton = False
          DefaultCaptionHeight = 21
          RollState = True
          RollKind = rkRollVertical
          Moveable = False
          Sizeable = False
          Align = alTop
          Caption = 'Servi'#231'o Solicitado'
          object MemoSolicitado: TbsSkinMemo
            Left = 1
            Top = 21
            Width = 384
            Height = 170
            Align = alClient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            Lines.Strings = (
              'MemoSolicitado')
            ParentFont = False
            ReadOnly = True
            ScrollBars = ssVertical
            TabOrder = 0
            Visible = False
            WantTabs = True
            Transparent = False
            WallpaperStretch = False
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clBlack
            DefaultFont.Height = 14
            DefaultFont.Name = 'Arial'
            DefaultFont.Style = []
            UseSkinFont = True
            UseSkinFontColor = True
            BitMapBG = True
            SkinDataName = 'memo'
          end
        end
        object PanelUtilizado: TbsSkinExPanel
          Left = 1
          Top = 43
          Width = 386
          Height = 327
          HintImageIndex = 0
          TabOrder = 2
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'expanel'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = False
          UseSkinSize = True
          CaptionImageList = frmPrincipal.cxSmallImages
          CaptionImageIndex = 42
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
          Align = alTop
          Caption = 'Material Utilizado'
          object cxGrid1: TcxGrid
            Left = 1
            Top = 21
            Width = 384
            Height = 305
            Align = alClient
            TabOrder = 0
            object gridMaterial: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = srcMaterialUtilizado
              DataController.Summary.DefaultGroupSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                end>
              DataController.Summary.FooterSummaryItems = <
                item
                  Format = '0'
                  Kind = skCount
                  Column = Column_Pco_Venda
                end
                item
                  Format = '0.00'
                  Kind = skSum
                  Column = Column_Total_Item
                end>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Deleting = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.GroupSummaryLayout = gslAlignWithColumns
              Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
              object Column_Nome_Status: TcxGridDBColumn
                Caption = 'Status'
                DataBinding.FieldName = 'Nome_Status'
                Width = 100
              end
              object Column_SeqVenda: TcxGridDBColumn
                Caption = 'N'#186' Venda'
                DataBinding.FieldName = 'SeqVenda'
                Width = 80
              end
              object Column_Operdor: TcxGridDBColumn
                DataBinding.FieldName = 'Operador'
                Width = 100
              end
              object Columm_Codigo: TcxGridDBColumn
                Caption = 'Codigo'
                DataBinding.FieldName = 'Cod_Produto'
                Width = 60
              end
              object Column_Descricao: TcxGridDBColumn
                DataBinding.FieldName = 'Descricao'
                Width = 200
              end
              object Column_Qtde_Venda: TcxGridDBColumn
                Caption = 'Qtde.'
                DataBinding.FieldName = 'Qtde_Venda'
              end
              object Column_Pco_Venda: TcxGridDBColumn
                Caption = 'Pco. Venda'
                DataBinding.FieldName = 'Pco_Venda'
                Width = 80
              end
              object Column_Total_Item: TcxGridDBColumn
                Caption = 'Total'
                DataBinding.FieldName = 'Total_Item'
                Width = 70
              end
              object Column2_Data_cad: TcxGridDBColumn
                Caption = 'Data'
                DataBinding.FieldName = 'Data_cad'
                Width = 130
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = gridMaterial
            end
          end
        end
      end
    end
  end
  object QryOrdemServico: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'Select  Cli.Descricao,Cli.Bairro, Cli.Telefone, Cli.Cep, Cli.End' +
        'ereco, '
      
        '                                     Cli.CnpjCpf, Cli.Cidade,Cli' +
        '.Pto_Referencia, '
      
        '                              Fun.Descricao as Nome_Tecnico, Aux' +
        '.Descricao as Nome_Auxiliar, OS.* '
      '                              FROM T_OrdemServico OS  '
      '                                   LEFT JOIN T_Clientes Cli On '
      
        '                                        Cli.Codigo=OS.Cod_Client' +
        'e  '
      
        '                                   LEFT JOIN T_funcionarios Fun ' +
        'On'
      
        '                                        Fun.Codigo = OS.Cod_Func' +
        'ionario'
      
        '                                   LEFT JOIN T_funcionarios Aux ' +
        'On'
      
        '                                        Fun.Codigo = OS.Cod_Auxi' +
        'liar')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 331
    Top = 139
  end
  object dspOrdemServico: TDataSetProvider
    DataSet = QryOrdemServico
    Left = 332
    Top = 167
  end
  object srcOrdemServico: TDataSource
    DataSet = cdsOrdemServico
    Left = 332
    Top = 223
  end
  object cdsOrdemServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemServico'
    BeforeOpen = cdsOrdemServicoBeforeOpen
    OnCalcFields = cdsOrdemServicoClcFields
    Left = 92
    Top = 163
    object cdsOrdemServicoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object cdsOrdemServicoBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object cdsOrdemServicoTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
      Size = 13
    end
    object cdsOrdemServicoCep: TStringField
      FieldName = 'Cep'
      FixedChar = True
      Size = 9
    end
    object cdsOrdemServicoEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object cdsOrdemServicoCnpjCpf: TStringField
      FieldName = 'CnpjCpf'
      FixedChar = True
      Size = 14
    end
    object cdsOrdemServicoCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object cdsOrdemServicoNome_Tecnico: TStringField
      FieldName = 'Nome_Tecnico'
      Size = 50
    end
    object cdsOrdemServicoCod_Emp: TStringField
      FieldName = 'Cod_Emp'
      FixedChar = True
      Size = 3
    end
    object cdsOrdemServicoData_cad: TSQLTimeStampField
      FieldName = 'Data_cad'
    end
    object cdsOrdemServicoData_Atu: TSQLTimeStampField
      FieldName = 'Data_Atu'
    end
    object cdsOrdemServicoData_Mov: TSQLTimeStampField
      FieldName = 'Data_Mov'
    end
    object cdsOrdemServicoOperador: TStringField
      FieldName = 'Operador'
      Size = 30
    end
    object cdsOrdemServicoSeqOS: TIntegerField
      FieldName = 'SeqOS'
    end
    object cdsOrdemServicoOS_Informada: TIntegerField
      FieldName = 'OS_Informada'
    end
    object cdsOrdemServicoTipo_OS: TStringField
      FieldName = 'Tipo_OS'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoCod_Cliente: TIntegerField
      FieldName = 'Cod_Cliente'
    end
    object cdsOrdemServicoStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoNivel_Atendimento: TStringField
      FieldName = 'Nivel_Atendimento'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoTipo_Servico: TStringField
      FieldName = 'Tipo_Servico'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoData_Agendada: TSQLTimeStampField
      FieldName = 'Data_Agendada'
    end
    object cdsOrdemServicoCod_Funcionario: TIntegerField
      FieldName = 'Cod_Funcionario'
    end
    object cdsOrdemServicoDesc_servico: TStringField
      FieldName = 'Desc_servico'
      Size = 500
    end
    object cdsOrdemServicoDesc_Execultado: TStringField
      FieldName = 'Desc_Execultado'
      Size = 500
    end
    object cdsOrdemServicovlr_OS: TFloatField
      FieldName = 'vlr_OS'
    end
    object cdsOrdemServicocod_Auxiliar: TIntegerField
      FieldName = 'cod_Auxiliar'
    end
    object cdsOrdemServicodata_inicio: TSQLTimeStampField
      FieldName = 'data_inicio'
    end
    object cdsOrdemServicoData_fim: TSQLTimeStampField
      FieldName = 'Data_fim'
    end
    object cdsOrdemServicoResponsavel_Quality: TStringField
      FieldName = 'Responsavel_Quality'
      Size = 50
    end
    object cdsOrdemServicoAvaliacao: TIntegerField
      FieldName = 'Avaliacao'
    end
    object cdsOrdemServiconome_Tipo_OS: TStringField
      FieldKind = fkCalculated
      FieldName = 'nome_Tipo_OS'
      Size = 30
      Calculated = True
    end
    object cdsOrdemServicoNome_Tipo_Servico: TStringField
      DisplayWidth = 30
      FieldKind = fkCalculated
      FieldName = 'Nome_Tipo_Servico'
      Size = 30
      Calculated = True
    end
    object cdsOrdemServicoNome_Obra: TStringField
      FieldName = 'Nome_Obra'
      Size = 50
    end
    object cdsOrdemServicoPto_Referencia: TStringField
      FieldName = 'Pto_Referencia'
      Size = 50
    end
    object cdsOrdemServicoNome_Auxiliar: TStringField
      FieldKind = fkCalculated
      FieldName = 'Nome_Auxiliar'
      Size = 50
      Calculated = True
    end
    object cdsOrdemServicoConsultor: TStringField
      FieldName = 'Consultor'
      Size = 50
    end
    object cdsOrdemServicoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsOrdemServicoFax: TStringField
      FieldName = 'Fax'
      Size = 14
    end
    object cdsOrdemServicoSolicitante: TStringField
      FieldName = 'Solicitante'
      Size = 50
    end
    object cdsOrdemServicoPedido: TStringField
      FieldName = 'Pedido'
      Size = 10
    end
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
    ShowMDIScrollBars = True
    WindowState = wsNormal
    QuickButtons = <>
    QuickButtonsShowHint = False
    QuickButtonsShowDivider = True
    ClientInActiveEffect = False
    ClientInActiveEffectType = bsieSemiTransparent
    DisableSystemMenu = False
    AlwaysResize = False
    PositionInMonitor = bspDefault
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    UseSkinFontInCaption = True
    UseSkinSizeInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = False
    AlphaBlendValue = 200
    ShowObjectHint = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = frmPrincipal.SkinPrincipal
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 496
    Top = 232
  end
  object dspVariavel: TDataSetProvider
    DataSet = qryVariavel
    Left = 304
    Top = 167
  end
  object qryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 303
    Top = 139
  end
  object srcHistoricoOS: TDataSource
    DataSet = cdsHistoricoOS
    Left = 360
    Top = 223
  end
  object cdsHistoricoOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    OnCalcFields = cdsOrdemServicoClcFields
    Left = 360
    Top = 195
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_clientes where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 275
    Top = 139
  end
  object cdsMaterialUtilizado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    BeforeOpen = cdsMaterialUtilizadoBeforeOpen
    OnCalcFields = cdsMaterialUtilizadoCalcFields
    Left = 388
    Top = 195
    object cdsMaterialUtilizadoCod_Produto: TIntegerField
      FieldName = 'Cod_Produto'
    end
    object cdsMaterialUtilizadoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object cdsMaterialUtilizadoPco_Venda: TFloatField
      FieldName = 'Pco_Venda'
      DisplayFormat = '0.00'
      currency = True
      Precision = 2
    end
    object cdsMaterialUtilizadoTotal_Item: TFloatField
      FieldName = 'Total_Item'
      DisplayFormat = '0.00'
      currency = True
      Precision = 2
    end
    object cdsMaterialUtilizadoOperador: TStringField
      FieldName = 'Operador'
      Size = 50
    end
    object cdsMaterialUtilizadoSeqvenda: TIntegerField
      FieldName = 'Seqvenda'
    end
    object cdsMaterialUtilizadoData_Cad: TSQLTimeStampField
      FieldName = 'Data_Cad'
    end
    object cdsMaterialUtilizadoQtde_Venda: TFloatField
      FieldName = 'Qtde_Venda'
    end
  end
  object srcMaterialUtilizado: TDataSource
    DataSet = cdsMaterialUtilizado
    Left = 388
    Top = 223
  end
  object bsSkinPopupMenu1: TbsSkinPopupMenu
    Left = 216
    Top = 224
    object EnviarParaExcel1: TMenuItem
      Caption = 'Enviar Para Excel'
    end
  end
  object cdsFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    BeforeOpen = cdsMaterialUtilizadoBeforeOpen
    Left = 416
    Top = 195
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
    CaptionSetup = 'Configura'#231#245'es'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = False
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
    PortaComunicacao = 'LPT1'
    MostrarProgresso = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Oito
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 182
    Top = 224
  end
end
