object frmControleRepasse: TfrmControleRepasse
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Controle de Repasse por rota'
  ClientHeight = 481
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPaintPanel1: TbsSkinPaintPanel
    Left = 0
    Top = 53
    Width = 972
    Height = 43
    HintImageIndex = 0
    TabOrder = 0
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
    Caption = 'bsSkinPaintPanel1'
    Align = alTop
    ExplicitTop = 44
    object lblTurma: TbsSkinStdLabel
      Left = 123
      Top = 18
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
      SkinDataName = 'stdlabel'
      Caption = 'Ate.'
    end
    object btnPesquisar: TbsSkinButton
      Left = 767
      Top = 7
      Width = 125
      Height = 30
      HintImageIndex = 0
      TabOrder = 0
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
      CheckedMode = False
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 8
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
      Caption = '    &Selecionar'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnPesquisarClick
    end
    object dtpData_Fim: TbsSkinDateEdit
      Left = 153
      Top = 12
      Width = 89
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
      Left = 266
      Top = 11
      Width = 180
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
      Text = 'Hoje'
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
      ItemIndex = 2
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
    object cmbNome_TipoVenda: TbsSkinDBLookupComboBox
      Left = 476
      Top = 11
      Width = 234
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
      ListSource = srcTipoVenda
    end
    object dtpData_Ini: TbsSkinDateEdit
      Left = 9
      Top = 13
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
      TabOrder = 4
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
  end
  object cxGrid1: TcxGrid
    Left = 0
    Top = 96
    Width = 972
    Height = 385
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 87
    ExplicitHeight = 394
    object GridRelatorio: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = srcRepasse
      DataController.Summary.DefaultGroupSummaryItems = <
        item
        end>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupFooters = gfAlwaysVisible
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      Styles.GroupByBox = frmPrincipal.cxStyle4
      Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
      object GridRelatorioRota: TcxGridDBColumn
        DataBinding.FieldName = 'Rota'
        Width = 160
      end
      object GridRelatorioQTDE_Fichas: TcxGridDBColumn
        Caption = 'Qtde Fichas'
        DataBinding.FieldName = 'QTDE_Fichas'
        Width = 100
      end
      object GridRelatoriovlr_Repasse: TcxGridDBColumn
        Caption = 'vlr. Repasse'
        DataBinding.FieldName = 'vlr_Repasse'
        Width = 100
      end
      object GridRelatoriovlr_Total: TcxGridDBColumn
        Caption = 'Vlr. Total'
        DataBinding.FieldName = 'vlr_Total'
        Visible = False
        Width = 100
      end
      object GridRelatoriovlr_Recebido: TcxGridDBColumn
        Caption = 'Vlr. Recebido'
        DataBinding.FieldName = 'vlr_Recebido'
        Width = 100
      end
      object GridRelatorioPerc001: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'Perc001'
        Width = 50
      end
      object GridRelatoriovlr_Devolvido: TcxGridDBColumn
        Caption = 'Vlr Devolvido'
        DataBinding.FieldName = 'vlr_Devolvido'
        Width = 100
      end
      object GridRelatorioperc002: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'perc002'
        Width = 50
      end
      object GridRelatoriovlr_Perdido: TcxGridDBColumn
        Caption = 'Vlr Perdido'
        DataBinding.FieldName = 'vlr_Perdido'
        Width = 100
      end
      object GridRelatorioperc003: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'perc003'
        Width = 50
      end
      object GridRelatoriovlr_Comissao: TcxGridDBColumn
        Caption = 'Vlr Comissao'
        DataBinding.FieldName = 'vlr_Comissao'
        Width = 100
      end
      object GridRelatorioperc004: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'perc004'
        Width = 50
      end
      object GridRelatoriovlr_SaldoRepasse: TcxGridDBColumn
        Caption = 'Saldo Repasse'
        DataBinding.FieldName = 'vlr_SaldoRepasse'
        Width = 100
      end
      object GridRelatorioColumn1: TcxGridDBColumn
        Caption = '%'
        DataBinding.FieldName = 'perc005'
        Width = 50
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = GridRelatorio
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 972
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 966
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 2
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 472
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 11
      Top = 0
      Width = 957
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
        Left = 847
        Top = 4
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
        ExplicitLeft = 811
        ExplicitTop = 12
      end
      object btnImprimir: TbsSkinSpeedButton
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
        OnClick = btnImprimirClick
        ExplicitLeft = 12
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 185
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 94
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 325
        Top = 0
        Width = 522
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 343
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object BtnFechamento: TbsSkinSpeedButton
        Left = 255
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
        ImageIndex = 11
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Encerramento'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = BtnFechamentoClick
        ExplicitLeft = 322
        ExplicitTop = 8
        ExplicitHeight = 40
      end
    end
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 314
    Top = 131
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 314
    Top = 159
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    Left = 314
    Top = 215
  end
  object srcRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 314
    Top = 187
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    Left = 314
    Top = 215
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 314
    Top = 187
  end
  object cdsRepasse: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Rota'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'vlr_Repasse'
        DataType = ftFloat
      end
      item
        Name = 'vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'vlr_Recebido'
        DataType = ftFloat
      end
      item
        Name = 'vlr_Devolvido'
        DataType = ftFloat
      end
      item
        Name = 'vlr_Perdido'
        DataType = ftFloat
      end
      item
        Name = 'vlr_Comissao'
        DataType = ftFloat
      end
      item
        Name = 'vlr_SaldoRepasse'
        DataType = ftFloat
      end
      item
        Name = 'QTDE_Fichas'
        DataType = ftInteger
      end
      item
        Name = 'perc001'
        DataType = ftFloat
      end
      item
        Name = 'perc002'
        DataType = ftFloat
      end
      item
        Name = 'perc003'
        DataType = ftFloat
      end
      item
        Name = 'perc004'
        DataType = ftFloat
      end
      item
        Name = 'perc005'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 354
    Top = 215
    object cdsRepasseRota: TStringField
      FieldName = 'Rota'
      Size = 30
    end
    object cdsRepassevlr_Repasse: TFloatField
      FieldName = 'vlr_Repasse'
      DisplayFormat = '0.00'
    end
    object cdsRepassevlr_Total: TFloatField
      FieldName = 'vlr_Total'
      DisplayFormat = '0.00'
    end
    object cdsRepassevlr_Recebido: TFloatField
      FieldName = 'vlr_Recebido'
      DisplayFormat = '0.00'
    end
    object cdsRepassevlr_Devolvido: TFloatField
      FieldName = 'vlr_Devolvido'
      DisplayFormat = '0.00'
    end
    object cdsRepassevlr_Perdido: TFloatField
      FieldName = 'vlr_Perdido'
      DisplayFormat = '0.00'
    end
    object cdsRepassevlr_Comissao: TFloatField
      FieldName = 'vlr_Comissao'
      DisplayFormat = '0.00'
    end
    object cdsRepassevlr_SaldoRepasse: TFloatField
      FieldName = 'vlr_SaldoRepasse'
      DisplayFormat = '0.00'
    end
    object cdsRepasseQTDE_Fichas: TIntegerField
      FieldName = 'QTDE_Fichas'
    end
    object cdsRepassePerc001: TFloatField
      FieldName = 'Perc001'
      DisplayFormat = '0.00'
    end
    object cdsRepasseperc002: TFloatField
      FieldName = 'perc002'
      DisplayFormat = '0.00'
    end
    object cdsRepasseperc003: TFloatField
      FieldName = 'perc003'
      DisplayFormat = '0.00'
    end
    object cdsRepasseperc004: TFloatField
      FieldName = 'perc004'
      DisplayFormat = '0.00'
    end
    object cdsRepasseperc005: TFloatField
      FieldName = 'perc005'
      DisplayFormat = '0.00'
    end
  end
  object srcRepasse: TDataSource
    DataSet = cdsRepasse
    Left = 354
    Top = 187
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
    Left = 279
    Top = 131
  end
  object srcTipoVenda: TDataSource
    DataSet = cdsTipoVenda
    Left = 385
    Top = 215
  end
  object cdsTipoVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 385
    Top = 187
  end
  object QryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 381
    Top = 122
  end
  object dspVariavel: TDataSetProvider
    DataSet = QryVariavel
    Left = 381
    Top = 149
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
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
    Left = 360
    Top = 64
  end
end
