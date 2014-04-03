object frmFechaLocacao: TfrmFechaLocacao
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Fechamento de Loca'#231#227'o'
  ClientHeight = 491
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinCoolBar1: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 806
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 802
      end>
    SkinDataName = 'controlbar'
    SkinBevel = True
    TabOrder = 0
    ExplicitWidth = 759
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 793
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
        Left = 716
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        Visible = False
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
        ExplicitLeft = 405
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 15
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 0
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
        Caption = '&Receber'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnokClick
        ExplicitLeft = 9
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 85
        Top = 0
        Width = 631
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
      end
    end
  end
  object bsSkinGroupBox1: TbsSkinGroupBox
    Left = 0
    Top = 44
    Width = 806
    Height = 195
    HintImageIndex = 0
    TabOrder = 1
    SkinData = frmPrincipal.SkinPrincipal
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -15
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
    Caption = 'Informa'#231#245'es Dos Itens Locados'
    Align = alTop
    UseSkinSize = False
    ExplicitWidth = 759
    object edtMascara: TbsSkinEdit
      Left = 316
      Top = 30
      Width = 56
      Height = 25
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = -16
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      UseSkinFont = False
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = frmPrincipal.SkinEntradaDados
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Visible = False
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object bsSkinPanel2: TbsSkinPanel
      Left = 1
      Top = 159
      Width = 804
      Height = 35
      HintImageIndex = 0
      TabOrder = 1
      SkinDataName = 'panel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 13
      DefaultFont.Name = 'Tahoma'
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
      DefaultCaptionHeight = 20
      BorderStyle = bvFrame
      CaptionMode = False
      RollUpMode = False
      RollUpState = False
      NumGlyphs = 1
      Spacing = 2
      Caption = 'bsSkinPanel2'
      Align = alBottom
      ExplicitWidth = 757
      object bsSkinStdLabel6: TbsSkinStdLabel
        Left = 277
        Top = 12
        Width = 123
        Height = 16
        EllipsType = bsetNone
        UseSkinFont = False
        UseSkinColor = False
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'MS Sans Serif'
        DefaultFont.Style = [fsBold]
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'stdlabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Caption = 'Total da Loca'#231#227'o'
        ParentFont = False
      end
      object bsSkinStdLabel1: TbsSkinStdLabel
        Left = 6
        Top = 12
        Width = 105
        Height = 16
        EllipsType = bsetNone
        UseSkinFont = False
        UseSkinColor = False
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'MS Sans Serif'
        DefaultFont.Style = [fsBold]
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'stdlabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Caption = 'Data Deolu'#231#227'o'
        ParentFont = False
      end
      object bsSkinStdLabel2: TbsSkinStdLabel
        Left = 560
        Top = 12
        Width = 109
        Height = 16
        EllipsType = bsetNone
        UseSkinFont = False
        UseSkinColor = False
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'MS Sans Serif'
        DefaultFont.Style = [fsBold]
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'stdlabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Caption = 'Pre-Pagamento'
        ParentFont = False
      end
      object edtTotalTitulo: TbsSkinNumericEdit
        Left = 406
        Top = 6
        Width = 103
        Height = 25
        Text = '0,00'
        Increment = 1.000000000000000000
        SupportUpDownKeys = False
        Alignment = taRightJustify
        UseSkinFont = True
        ValueType = vtFloat
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsBold]
        DefaultWidth = 0
        DefaultHeight = 0
        ButtonMode = False
        SkinDataName = 'edit'
        ReadOnly = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
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
        OnExit = edtTotalTituloExit
      end
      object edtDataDevolucao: TbsSkinDateEdit
        Left = 117
        Top = 6
        Width = 154
        Height = 25
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
        CalendarFont.Height = 13
        CalendarFont.Name = 'Tahoma'
        CalendarFont.Style = []
        CalendarBoldDays = False
        CalendarUseSkinFont = True
        CalendarSkinDataName = 'panel'
        FirstDayOfWeek = Sun
        WeekNumbers = False
        ShowToday = False
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'Tahoma'
        DefaultFont.Style = [fsBold]
        DefaultWidth = 0
        DefaultHeight = 0
        ButtonMode = True
        SkinDataName = 'buttonedit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 1
        ButtonImageIndex = -1
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
        OnChange = edtDataDevolucaoChange
      end
      object edtPrePagamento: TbsSkinNumericEdit
        Left = 675
        Top = 6
        Width = 103
        Height = 25
        Text = '0,00'
        Increment = 1.000000000000000000
        SupportUpDownKeys = False
        Alignment = taRightJustify
        UseSkinFont = True
        ValueType = vtFloat
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsBold]
        DefaultWidth = 0
        DefaultHeight = 0
        ButtonMode = False
        SkinDataName = 'edit'
        ReadOnly = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
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
        OnExit = edtTotalTituloExit
      end
    end
    object bsSkinDBGrid1: TbsSkinDBGrid
      Left = 1
      Top = 23
      Width = 804
      Height = 136
      Hint = 'Duplo Click para desmarcar o produto'
      HintImageIndex = 0
      TabOrder = 2
      SkinDataName = 'grid'
      Transparent = False
      WallpaperStretch = False
      UseSkinFont = True
      UseSkinCellHeight = True
      GridLineColor = clBtnFace
      DefaultCellHeight = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ColSizingwithLine = False
      DrawGraphicFields = False
      UseColumnsFont = False
      DefaultRowHeight = 18
      MouseWheelSupport = False
      SaveMultiSelection = False
      PickListBoxSkinDataName = 'listbox'
      PickListBoxCaptionMode = False
      Align = alClient
      DataSource = srcItensVendasTmp
      ParentFont = False
      ParentShowHint = False
      ReadOnly = True
      ShowHint = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = bsSkinDBGrid1DblClick
    end
    object lblDataLocacao: TbsSkinLabel
      Left = 520
      Top = 0
      Width = 205
      Height = 22
      HintImageIndex = 0
      TabOrder = 3
      SkinDataName = 'label'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clRed
      DefaultFont.Height = -13
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
      Caption = 'lblDataLocacao'
      AutoSize = False
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 239
    Width = 806
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 40
        Width = 802
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 2
    ExplicitWidth = 759
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 793
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
      object btnRemover: TbsSkinSpeedButton
        Left = 719
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
        ImageIndex = 9
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Remover'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 2
        Layout = blGlyphTop
        OnClick = btnRemoverClick
        ExplicitLeft = 487
        ExplicitTop = 8
      end
      object btnAdicionar: TbsSkinSpeedButton
        Left = 649
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
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 10
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Adicionar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnAdicionarClick
        ExplicitLeft = 515
        ExplicitTop = 8
      end
      object bsSkinBevel5: TbsSkinBevel
        Left = 0
        Top = 0
        Width = 649
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
      end
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 0
    Top = 283
    Width = 806
    Height = 30
    HintImageIndex = 0
    TabOrder = 3
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
    Align = alTop
    ExplicitTop = 285
    ExplicitWidth = 759
    object bsSkinStdLabel7: TbsSkinStdLabel
      Left = 1
      Top = 6
      Width = 93
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
      Caption = 'Tipo de Pagamento'
    end
    object bsSkinStdLabel8: TbsSkinStdLabel
      Left = 626
      Top = 11
      Width = 69
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
      Caption = 'VARLO PAGO'
    end
    object edtcod_Pagamento: TbsSkinEdit
      Left = 100
      Top = 4
      Width = 61
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
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtcod_PagamentoExit
    end
    object cmbNome_formaPagamento: TbsSkinDBLookupComboBox
      Left = 102
      Top = 4
      Width = 259
      Height = 20
      HintImageIndex = 0
      TabOrder = 1
      SkinData = frmPrincipal.SkinEntradaDados
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -16
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 20
      UseSkinFont = False
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'Descricao;Codigo'
      ListSource = srcCadFormasPagamento
      OnChange = cmbNome_formaPagamentoChange
      OnExit = cmbNome_formaPagamentoExit
    end
    object edtPco_Venda: TbsSkinNumericEdit
      Left = 701
      Top = 3
      Width = 79
      Height = 25
      Text = '0,00'
      Increment = 1.000000000000000000
      SupportUpDownKeys = False
      Alignment = taRightJustify
      UseSkinFont = True
      ValueType = vtFloat
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = -16
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = frmPrincipal.SkinEntradaDados
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
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
      OnExit = btnAdicionarClick
    end
  end
  object bsSkinStatusBar1: TbsSkinStatusBar
    Left = 0
    Top = 469
    Width = 806
    Height = 22
    HintImageIndex = 0
    TabOrder = 4
    SkinData = frmPrincipal.SkinPrincipal
    SkinDataName = 'statusbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
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
    ExplicitWidth = 759
    object lblNome: TbsSkinStdLabel
      Left = 435
      Top = 3
      Width = 103
      Height = 16
      EllipsType = bsetNone
      UseSkinFont = False
      UseSkinColor = False
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = -16
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = [fsBold]
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'stdlabel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Caption = 'Esta Restando'
      ParentFont = False
    end
    object bsSkinStatusPanel1: TbsSkinStatusPanel
      Left = 0
      Top = 0
      Width = 130
      Height = 22
      HintImageIndex = 0
      TabOrder = 0
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'statuspanel'
      DefaultFont.Charset = ANSI_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = -16
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      Transparent = False
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = bsetNoneEllips
      UseSkinSize = False
      UseSkinFontColor = False
      BorderStyle = bvFrame
      Align = alLeft
      Caption = 'Total Recebido'
      AutoSize = False
      ImageIndex = -1
      NumGlyphs = 1
    end
    object edtSaldoDevedor: TbsSkinEdit
      Left = 688
      Top = 0
      Width = 118
      Height = 25
      TabStop = False
      Text = '0,00'
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = -16
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      UseSkinFont = False
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinDataName = 'statusedit'
      ReadOnly = True
      Align = alRight
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      ExplicitLeft = 385
    end
    object edtVlr_Recebido: TbsSkinEdit
      Left = 130
      Top = 0
      Width = 130
      Height = 25
      TabStop = False
      Text = '0,00'
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = -16
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      UseSkinFont = False
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinDataName = 'statusedit'
      ReadOnly = True
      Align = alLeft
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
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
      ExplicitTop = -1
    end
  end
  object dbgConsulta: TbsSkinDBGrid
    Left = 0
    Top = 313
    Width = 806
    Height = 156
    HintImageIndex = 0
    TabOrder = 5
    SkinData = frmPrincipal.SkinEntradaDados
    SkinDataName = 'grid'
    Transparent = False
    WallpaperStretch = False
    UseSkinFont = False
    UseSkinCellHeight = True
    GridLineColor = clWindowText
    DefaultCellHeight = 20
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ColSizingwithLine = False
    DrawGraphicFields = False
    UseColumnsFont = False
    MouseWheelSupport = False
    SaveMultiSelection = False
    PickListBoxSkinDataName = 'listbox'
    PickListBoxCaptionMode = False
    Align = alClient
    DataSource = srcTempPagamentos
    ParentFont = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 355
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Visible = True
      end>
  end
  object edtCodCliente: TbsSkinEdit
    Left = 185
    Top = 8
    Width = 66
    Height = 25
    DefaultColor = clScrollBar
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = -16
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = False
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinData = frmPrincipal.SkinEntradaDados
    SkinDataName = 'edit'
    ReadOnly = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Visible = False
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object edtNumeroVenda: TbsSkinEdit
    Left = 257
    Top = 8
    Width = 66
    Height = 25
    DefaultColor = clScrollBar
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = -16
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = False
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinData = frmPrincipal.SkinEntradaDados
    SkinDataName = 'edit'
    ReadOnly = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Visible = False
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object edtData_Venda: TbsSkinEdit
    Left = 113
    Top = 8
    Width = 66
    Height = 25
    DefaultColor = clScrollBar
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clBlack
    DefaultFont.Height = -16
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    UseSkinFont = False
    DefaultWidth = 0
    DefaultHeight = 0
    ButtonMode = False
    SkinData = frmPrincipal.SkinEntradaDados
    SkinDataName = 'edit'
    ReadOnly = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    Visible = False
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object cdsTempPagamentos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end
      item
        Name = 'TipoPagamento'
        DataType = ftInteger
      end
      item
        Name = 'PRazo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'seqos'
        DataType = ftInteger
      end
      item
        Name = 'TipoLancamento'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 291
    Top = 325
    Data = {
      B60000009619E0BD010000001800000007000000000003000000B60006436F64
      69676F0100490000000100055749445448020002000300094465736372696361
      6F01004900000001000557494454480200020032000556616C6F720800040000
      0000000D5469706F506167616D656E746F0400010000000000055052617A6F01
      00490000000100055749445448020002001400057365716F7304000100000000
      000E5469706F4C616E63616D656E746F04000100000000000000}
    object cdsTempPagamentosCodigo: TStringField
      DisplayWidth = 7
      FieldName = 'Codigo'
      Size = 3
    end
    object cdsTempPagamentosDescricao: TStringField
      DisplayWidth = 34
      FieldName = 'Descricao'
      Size = 50
    end
    object cdsTempPagamentosValor: TFloatField
      DisplayWidth = 10
      FieldName = 'Valor'
    end
    object cdsTempPagamentosTipoPagamento: TIntegerField
      FieldName = 'TipoPagamento'
    end
    object cdsTempPagamentosPrazo: TStringField
      FieldName = 'Prazo'
    end
    object cdsTempPagamentosseqos: TIntegerField
      FieldName = 'seqos'
    end
    object cdsTempPagamentosTipoLancamento: TIntegerField
      FieldName = 'TipoLancamento'
    end
  end
  object srcTempPagamentos: TDataSource
    DataSet = cdsTempPagamentos
    Left = 291
    Top = 353
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 375
    Top = 272
  end
  object srcCadFormasPagamento: TDataSource
    DataSet = cdsCadFormasPagamento
    Left = 319
    Top = 353
  end
  object cdsCadFormasPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 319
    Top = 325
  end
  object QryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 347
    Top = 272
  end
  object dspVariavel: TDataSetProvider
    DataSet = QryVariavel
    Left = 347
    Top = 299
  end
  object sdtsPesqOS: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 411
    Top = 272
  end
  object SkinForm: TbsBusinessSkinForm
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
    AlphaBlendAnimation = True
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
    Left = 412
    Top = 112
  end
  object qryContasReceber: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 263
    Top = 271
  end
  object dspContasReceber: TDataSetProvider
    DataSet = qryContasReceber
    Left = 263
    Top = 299
  end
  object cdsContasReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagamento'
    Left = 263
    Top = 325
  end
  object srcContasReceber: TDataSource
    DataSet = cdsContasReceber
    Left = 263
    Top = 353
  end
  object QryMovCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 235
    Top = 271
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = QryMovCaixa
    Left = 235
    Top = 299
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovCaixa'
    Left = 235
    Top = 325
  end
  object srcMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 235
    Top = 353
  end
  object sdtsBuscaEmpresa: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.CommandText = 'select  *  from T_Empresas'
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 112
    Top = 296
  end
  object RvRecibo: TRvProject
    Engine = RvSystem1
    Left = 160
    Top = 296
  end
  object Dados_Recibo: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = sdtsBuscaEmpresa
    Left = 160
    Top = 324
  end
  object RvRenderPDF1: TRvRenderPDF
    DisplayName = 'Adobe Acrobat (PDF)'
    FileExtension = '*.pdf'
    EmbedFonts = False
    ImageQuality = 90
    MetafileDPI = 300
    FontEncoding = feWinAnsiEncoding
    DocInfo.Creator = 'Rave Reports (http://www.nevrona.com/rave)'
    DocInfo.Producer = 'Nevrona Designs'
    BufferDocument = True
    DisableHyperlinks = False
    Left = 112
    Top = 336
  end
  object RvSystem1: TRvSystem
    TitleSetup = 'Output Options'
    TitleStatus = 'Report Status'
    TitlePreview = 'Report Preview'
    SystemFiler.StatusFormat = 'Generating page %p'
    SystemPreview.ZoomFactor = 100.000000000000000000
    SystemPrinter.ScaleX = 100.000000000000000000
    SystemPrinter.ScaleY = 100.000000000000000000
    SystemPrinter.StatusFormat = 'Printing page %p'
    SystemPrinter.Title = 'Rave Report'
    SystemPrinter.UnitsFactor = 1.000000000000000000
    Left = 160
    Top = 360
  end
  object cdsItensVendasTmp: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Marcado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Quatidade'
        DataType = ftFloat
      end
      item
        Name = 'Diaria'
        DataType = ftFloat
      end
      item
        Name = 'Dias'
        DataType = ftInteger
      end
      item
        Name = 'Total'
        DataType = ftFloat
      end
      item
        Name = 'Quantidade'
        DataType = ftFloat
      end
      item
        Name = 'TipoCobranca'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforeOpen = cdsItensVendasTmpBeforeOpen
    Left = 208
    Top = 88
    Data = {
      D30000009619E0BD010000001800000009000000000003000000D300074D6172
      6361646F010049000000010005574944544802000200010006436F6469676F04
      000100000000000944657363726963616F010049000000010005574944544802
      0002006400095175617469646164650800040000000000064469617269610800
      0400000000000444696173040001000000000005546F74616C08000400000000
      000A5175616E74696461646508000400000000000C5469706F436F6272616E63
      6101004900000001000557494454480200020014000000}
    object cdsItensVendasTmpMarcado: TStringField
      DisplayLabel = 'M'
      DisplayWidth = 4
      FieldName = 'Marcado'
      Size = 1
    end
    object cdsItensVendasTmpTipoCobranca: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 7
      FieldName = 'TipoCobranca'
    end
    object cdsItensVendasTmpCodigo: TIntegerField
      DisplayWidth = 6
      FieldName = 'Codigo'
    end
    object cdsItensVendasTmpDescricao: TStringField
      DisplayWidth = 41
      FieldName = 'Descricao'
      Size = 100
    end
    object cdsItensVendasTmpQuantidade: TFloatField
      DisplayWidth = 11
      FieldName = 'Quantidade'
    end
    object cdsItensVendasTmpDiaria: TFloatField
      DisplayWidth = 6
      FieldName = 'Diaria'
    end
    object cdsItensVendasTmpDias: TIntegerField
      DisplayWidth = 6
      FieldName = 'Dias'
    end
    object cdsItensVendasTmpTotal: TFloatField
      DisplayWidth = 10
      FieldName = 'Total'
    end
  end
  object srcItensVendasTmp: TDataSource
    DataSet = cdsItensVendasTmp
    Left = 236
    Top = 88
  end
  object qryItensDevolucoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 560
    Top = 320
  end
  object dspItensDevolucoes: TDataSetProvider
    DataSet = qryItensDevolucoes
    Left = 560
    Top = 348
  end
  object cdsItensDevolucoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensDevolucoes'
    Left = 561
    Top = 376
  end
end
