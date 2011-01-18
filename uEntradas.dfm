object frmEntradas: TfrmEntradas
  Left = 231
  Top = 50
  BorderIcons = []
  Caption = 'Entrada de Produtos'
  ClientHeight = 536
  ClientWidth = 666
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinCoolBar1: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 666
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 660
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 0
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 12
      Top = 0
      Width = 646
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
        Left = 552
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
        ExplicitLeft = 561
        ExplicitTop = 8
      end
      object btnincluir: TbsSkinSpeedButton
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
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Incluir'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnincluirClick
        ExplicitLeft = -6
        ExplicitTop = 8
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 415
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
        Caption = '&Cancelar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        Enabled = False
        OnClick = BtnCancelaClick
        ExplicitLeft = 427
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 485
        Top = 0
        Width = 67
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 522
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 345
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
        Caption = '&Ok'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        Enabled = False
        OnClick = btnokClick
        ExplicitLeft = 313
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 199
        Top = 0
        Width = 146
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnDevolver: TbsSkinSpeedButton
        Left = 129
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
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 2
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Devolver'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        Enabled = False
        ExplicitLeft = 135
        ExplicitTop = 8
      end
      object bsSkinBevel5: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 59
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 517
    Width = 666
    Height = 19
    Panels = <>
  end
  object pagCadastro: TbsSkinPageControl
    Left = 0
    Top = 44
    Width = 666
    Height = 473
    ActivePage = bsSkinTabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 2
    OnChange = pagCadastroChange
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
    ExplicitTop = 46
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Consulta'
      object bsSkinPanel1: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 664
        Height = 62
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
        Align = alTop
        ExplicitTop = -6
        object lblTurma: TbsSkinStdLabel
          Left = 241
          Top = 33
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
        object lblsituacao: TbsSkinStdLabel
          Left = 45
          Top = 35
          Width = 83
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
          Caption = 'Informe o Periodo'
        end
        object bsSkinComboBox1: TbsSkinComboBox
          Left = 8
          Top = 8
          Width = 120
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
          Text = 'Descricao'
          Items.Strings = (
            'Descricao')
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
        object EdtPesquisa: TbsSkinEdit
          Left = 136
          Top = 9
          Width = 216
          Height = 18
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
          TabOrder = 1
        end
        object chkPesqTodoTexto: TbsSkinCheckRadioBox
          Left = 358
          Top = 5
          Width = 150
          Height = 25
          HintImageIndex = 0
          TabOrder = 2
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'checkbox'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = True
          WordWrap = False
          AllowGrayed = False
          State = cbUnchecked
          ImageIndex = 0
          Flat = True
          UseSkinFontColor = True
          TabStop = True
          CanFocused = True
          Radio = False
          Checked = False
          GroupIndex = 0
          Caption = 'Pesquisa em todo texo'
        end
        object btnPesquisar: TbsSkinButton
          Left = 514
          Top = 17
          Width = 125
          Height = 28
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
          UseSkinFont = True
          ImageList = frmPrincipal.Imagebutoes
          ImageIndex = 5
          UseSkinSize = True
          UseSkinFontColor = True
          RepeatMode = False
          RepeatInterval = 100
          AllowAllUp = False
          TabStop = True
          CanFocused = True
          Down = False
          GroupIndex = 0
          Caption = ' &Pesquisar'
          NumGlyphs = 1
          Spacing = 1
          OnClick = btnPesquisarClick
        end
        object dtpData_Ini: TbsSkinDateEdit
          Left = 136
          Top = 32
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
        end
        object dtpData_Fim: TbsSkinDateEdit
          Left = 263
          Top = 32
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
          TabOrder = 5
        end
        object cmbPeriodo: TbsSkinComboBox
          Left = 358
          Top = 32
          Width = 130
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
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 62
        Width = 664
        Height = 387
        Align = alClient
        TabOrder = 1
        ExplicitTop = 58
        object GrdCompras: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcConsEntradas
          DataController.DetailKeyFieldNames = 'seqEntrada'
          DataController.KeyFieldNames = 'seqEntrada'
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = Colum_Vlr_Total
              DisplayText = 'Total agrupado'
              Sorted = True
            end
            item
              Format = '0.00'
              Kind = skSum
              DisplayText = 'Total Desconto'
            end
            item
              Format = '0'
              Kind = skCount
              DisplayText = 'Contagem'
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = Colum_Vlr_Total
              DisplayText = 'Valor Total'
            end
            item
              Format = '0.00'
              Kind = skSum
              DisplayText = 'Total Desconto'
            end
            item
              Format = '0'
              Kind = skCount
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
          object colum_SEqEntrada: TcxGridDBColumn
            Caption = 'N'#186' Entrada'
            DataBinding.FieldName = 'seqentrada'
            Width = 100
          end
          object Colum_Seqnotafiscal: TcxGridDBColumn
            Caption = 'Nota  Fiscal'
            DataBinding.FieldName = 'seqNotaFiscal'
            Width = 100
          end
          object Colum_SeqPedido: TcxGridDBColumn
            Caption = 'N'#186' Pedido'
            DataBinding.FieldName = 'SeqPedido'
            Width = 100
          end
          object Colum_Cod_Fornecedore: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'Cod_Fornecedor'
            Width = 50
          end
          object Colum_Descricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 200
          end
          object Colum_Data_Venda: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'Data_Entrada'
            Width = 120
          end
          object Colum_Vlr_Total: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'Vlr_Total'
            Width = 65
          end
          object Colum_Operador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 120
          end
        end
        object GrdItensCompras: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcconsItensEntradas
          DataController.DetailKeyFieldNames = 'seqEntrada'
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'seqEntrada'
          DataController.MasterKeyFieldNames = 'seqEntrada'
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
            DataBinding.FieldName = 'Qtde_Entrada'
            Width = 70
          end
          object Colum_PcoVenda: TcxGridDBColumn
            Caption = 'Preco'
            DataBinding.FieldName = 'Pco_Entrada'
            Width = 70
          end
          object Colum_VlrTotal: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'Vlr_Total'
            Width = 70
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = GrdCompras
          object cxGrid1Level2: TcxGridLevel
            GridView = GrdItensCompras
          end
        end
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Manuten'#231#227'o'
      object bsSkinPanel3: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 664
        Height = 111
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
        Align = alTop
        object bsSkinStdLabel3: TbsSkinStdLabel
          Left = 80
          Top = 93
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
          Caption = 'Obs'
        end
        object bsSkinStdLabel4: TbsSkinStdLabel
          Left = 45
          Top = 35
          Width = 54
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
          Caption = 'Fornecedor'
        end
        object bsSkinStdLabel8: TbsSkinStdLabel
          Left = 297
          Top = 11
          Width = 68
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
          Caption = 'Data Cadastro'
        end
        object bsSkinStdLabel11: TbsSkinStdLabel
          Left = 16
          Top = 64
          Width = 83
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
          Caption = 'N'#186' da Nota Fiscal'
        end
        object bsSkinStdLabel16: TbsSkinStdLabel
          Left = 302
          Top = 64
          Width = 63
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
          Caption = 'Data Entrada'
        end
        object bsSkinStdLabel17: TbsSkinStdLabel
          Left = 174
          Top = 66
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
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'stdlabel'
          Caption = 'N'#186' Pedido'
          Enabled = False
        end
        object btnCadAlunos: TbsSkinSpeedButton
          Left = 429
          Top = 28
          Width = 23
          Height = 23
          HintImageIndex = 0
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'toolbutton'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = True
          ImageList = frmPrincipal.cxSmallImages
          UseSkinSize = True
          UseSkinFontColor = True
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          ImageIndex = 8
          RepeatMode = False
          RepeatInterval = 100
          Transparent = False
          Flat = False
          AllowAllUp = False
          ShowHint = True
          Action = frmPrincipal.actCadFornecedores
          ParentShowHint = False
          Down = False
          GroupIndex = 0
          ShowCaption = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00F800F807EF01EF11EC01EC14DB04
            DB26D903DA28FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F700F708D304
            D72EC006C743A309B6637D0CAC8C460DACC7370EB2D92E0DB4E1320CA9DC3823
            7DEB52365CE0CD07CF36FE00FE01FF00FF00FF00FF00FF00FF009810B775302A
            C7FF413CCDFF4B45D7FF524BD5FF4A43DCFF4F48E0FF524CE4FF443EDAFF2620
            CEFF65647FFF543954E09D0BA168F001F010FF00FF00FF00FF008214BA91403C
            D2FF2D2B97FF3B3A67FF2E2D6AFF1B19A6FF1916ADFF17139AFF1B15BDFF150F
            C8FF3D3A62FF5B6159FF6D6574F1552158C6B10CB358FF00FF009A02CB670302
            9FFF00009AFF00009AFF00009EFF000099FF0101A0FF080853FF0A05A0FF0C06
            C8FF18148CFF3B3F50FF505F60FF858788FF7D4983C5FF00FF008F0CCA7E3935
            CCFF322EC7FF332FC7FF332FC7FF322EC7FF3A37CEFF1A1882FF0C079BFF0E09
            B3FF01009AFF807BACFFAAACA6FF7D7E7DFF5B255CC7FF00FF008A15CC8C3A35
            D3FF221FC1FF211EBCFF2320BBFF2825C0FF3E3BCBFF201CC8FF120E90FF2120
            68FF000091FF9795B2FFFAF9F4FFEEEEEEFFBFA0BEE1E424E2418B03C7791311
            69FF181759FF1B1A4EFF1C1B48FF1A1A4CFF151558FF110F6FFF181487FF2928
            64FF02038EFF9591B5FFE7E6E0FFDADADAFFEAEAEAFFF391F39DA902AD583131
            29FF37372EFF37372FFF373730FF36372FFF36372DFF2E2F27FF1E1B73FF3937
            58FF1A2246FF97989AFFD3D2D1FFC1C1C1FFC7C7C7FFE27BE199CA00D3353B3B
            44FF4C4C4BFF4A494AFF494949FF484848FF474747FF3D3D3CFF232078FF4E4C
            61FF2C363AFF939591FFBDBBBBFFADAEAEFFB1B1B1FFD56AD495CB07D43B4545
            57FF636360FF616160FF626161FF626262FF636363FF5E5E5CFF2A277AFF6F6E
            76FF414566FF9996A1FFA8A6A5FF9D9D9DFF9C9C9CFFCA5BC991D30DD3396250
            5FEC5C585AFC595857FF5B5B55FF5C5C54FF5C5C53FF5B5B50FF4A4A57FF4041
            87FF262882FF9D9A9FFF9D9C9BFF8E8F8FFF8D8D8DFFC150C08FFF00FF00FF00
            FF008B12C488231FA5FF2925A5FF2B289DFF2F2D94FF343283FF35337EFF0202
            A3FF100E94FF9D9998FF969594FF838383FF988C98F3DC38DB5CFF00FF00FF00
            FF00E300F21C590DBAB65048CAFB615ED6FF6763DCFF625FD9FF5B58D5FF5450
            CFFF5856ACFF9A9793FFA391A1EFD058CE89F911F917FF00FF00FF00FF00FF00
            FF00FF00FF00FD00FE02E201F11FD404EA30D914F03BF338FD45EF54FC65ED7D
            FD90EC65F379E53CE357F614F61DFF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          NumGlyphs = 1
          Spacing = 1
        end
        object cmbCod_Fornecedor: TbsSkinDBLookupComboBox
          Left = 209
          Top = 4
          Width = 48
          Height = 20
          HintImageIndex = 0
          TabOrder = 8
          Visible = False
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
          ListField = 'Codigo;Descricao'
          ListSource = srcCadFornecedores
          OnChange = cmbCod_FornecedorChange
        end
        object edtobs: TbsSkinEdit
          Left = 107
          Top = 88
          Width = 350
          Height = 18
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
          MaxLength = 100
          ParentFont = False
          TabOrder = 5
          OnExit = edtobsExit
        end
        object edtCod_Fornecedor: TbsSkinEdit
          Left = 107
          Top = 30
          Width = 61
          Height = 18
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
          OnExit = edtCod_FornecedorExit
        end
        object cmbNome_Fornecedor: TbsSkinDBLookupComboBox
          Left = 174
          Top = 30
          Width = 249
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
          KeyField = 'codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadFornecedores
          OnChange = cmbNome_FornecedorChange
        end
        object edtData_cad: TbsSkinEdit
          Left = 383
          Top = 4
          Width = 74
          Height = 18
          DefaultColor = clScrollBar
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          UseSkinFont = True
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinDataName = 'edit'
          ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object edtCodigo: TbsSkinEdit
          Left = 9
          Top = 4
          Width = 40
          Height = 18
          Text = '0001'
          DefaultColor = clScrollBar
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          UseSkinFont = True
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinDataName = 'edit'
          ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 7
          Visible = False
        end
        object edtSeqNotaFiscal: TbsSkinEdit
          Left = 107
          Top = 61
          Width = 61
          Height = 18
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
          TabOrder = 2
          OnExit = edtCod_ProdutoExit
        end
        object edtDataEntrada: TbsSkinDateEdit
          Left = 377
          Top = 59
          Width = 80
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
        end
        object edtNumeroPedido: TbsSkinEdit
          Left = 228
          Top = 61
          Width = 61
          Height = 18
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
          Enabled = False
          ParentFont = False
          TabOrder = 3
          OnExit = edtCod_ProdutoExit
        end
        object bsSkinGroupBox1: TbsSkinGroupBox
          Left = 470
          Top = 1
          Width = 193
          Height = 109
          HintImageIndex = 0
          TabOrder = 9
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
          ImagePosition = bsipDefault
          TransparentMode = False
          CaptionImageList = frmPrincipal.cxSmallImages
          CaptionImageIndex = 5
          RealHeight = -1
          AutoEnabledControls = True
          CheckedMode = False
          Checked = False
          DefaultAlignment = taLeftJustify
          DefaultCaptionHeight = 30
          BorderStyle = bvFrame
          CaptionMode = True
          RollUpMode = False
          RollUpState = False
          NumGlyphs = 1
          Spacing = 2
          Caption = '  Resumo da Entrada'
          Align = alRight
          object bsSkinStdLabel5: TbsSkinStdLabel
            Left = 17
            Top = 39
            Width = 79
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
            Caption = 'Total da Entrada'
          end
          object bsSkinStdLabel18: TbsSkinStdLabel
            Left = 18
            Top = 63
            Width = 78
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
            Caption = 'Numero de Itens'
          end
          object bsSkinStdLabel19: TbsSkinStdLabel
            Left = 14
            Top = 88
            Width = 82
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
            Caption = 'Quantidade Total'
          end
          object edtTotalEntrada: TbsSkinEdit
            Left = 110
            Top = 34
            Width = 72
            Height = 18
            TabStop = False
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
            ReadOnly = True
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
          end
          object edtNumeroItens: TbsSkinEdit
            Left = 110
            Top = 59
            Width = 72
            Height = 18
            TabStop = False
            Text = '0'
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
            ReadOnly = True
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
          end
          object edtQtde_Total: TbsSkinEdit
            Left = 110
            Top = 83
            Width = 72
            Height = 18
            TabStop = False
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
            ReadOnly = True
            Alignment = taRightJustify
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = 14
            Font.Name = 'Arial'
            Font.Style = []
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
          end
        end
      end
      object bsSkinDBGrid2: TbsSkinDBGrid
        Left = 0
        Top = 208
        Width = 645
        Height = 241
        HintImageIndex = 0
        TabOrder = 1
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'grid'
        Transparent = False
        WallpaperStretch = False
        UseSkinFont = True
        UseSkinCellHeight = True
        VScrollBar = bsSkinScrollBar1
        GridLineColor = clWindowText
        DefaultCellHeight = 20
        DrawGraphicFields = False
        UseColumnsFont = False
        DefaultRowHeight = 18
        MouseWheelSupport = False
        SaveMultiSelection = False
        PickListBoxSkinDataName = 'listbox'
        PickListBoxCaptionMode = False
        Align = alClient
        DataSource = srcItensVendasTMP
        ReadOnly = True
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBtnText
        TitleFont.Height = 14
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
      end
      object pnlProdutos: TbsSkinPanel
        Left = 0
        Top = 155
        Width = 664
        Height = 53
        HintImageIndex = 0
        TabOrder = 2
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
        Align = alTop
        object bsSkinStdLabel1: TbsSkinStdLabel
          Left = 10
          Top = 9
          Width = 37
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
          Caption = 'Produto'
        end
        object bsSkinStdLabel2: TbsSkinStdLabel
          Left = 263
          Top = 29
          Width = 55
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
          Caption = 'Quantidade'
        end
        object bsSkinStdLabel6: TbsSkinStdLabel
          Left = 386
          Top = 29
          Width = 54
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
          Caption = 'Vlr. Unit'#225'rio'
        end
        object bsSkinStdLabel7: TbsSkinStdLabel
          Left = 524
          Top = 29
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
          Caption = 'Vlr. Total'
        end
        object bsSkinStdLabel9: TbsSkinStdLabel
          Left = 81
          Top = 9
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
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'stdlabel'
          Caption = 'Descricao'
        end
        object edtCod_Produto: TbsSkinEdit
          Left = 10
          Top = 24
          Width = 65
          Height = 18
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
          TabOrder = 0
          OnExit = edtCod_ProdutoExit
        end
        object cmbNome_Produto: TbsSkinDBLookupComboBox
          Left = 81
          Top = 22
          Width = 176
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
          KeyField = 'codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadProdutos
          OnChange = cmbNome_ProdutoChange
        end
        object edtQtde_Venda: TbsSkinEdit
          Left = 323
          Top = 24
          Width = 57
          Height = 18
          Text = '0'
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
          TabOrder = 2
        end
        object EdtPco_Venda: TbsSkinEdit
          Left = 446
          Top = 24
          Width = 57
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
          TabOrder = 3
          OnExit = EdtPco_VendaExit
        end
        object edtTotal: TbsSkinEdit
          Left = 580
          Top = 22
          Width = 57
          Height = 20
          Text = '0,00'
          DefaultColor = clInfoBk
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -13
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          UseSkinFont = False
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'edit'
          ReadOnly = True
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnExit = btnAdicionarClick
        end
      end
      object bsSkinScrollBar1: TbsSkinScrollBar
        Left = 645
        Top = 208
        Width = 19
        Height = 241
        HintImageIndex = 0
        TabOrder = 3
        SkinData = frmPrincipal.SkinPrincipal
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
        PageSize = 1
        Min = 1
        Max = 0
        Position = 1
        SmallChange = 1
        LargeChange = 1
        ExplicitLeft = 651
        ExplicitTop = 203
      end
      object bsSkinCoolBar2: TbsSkinCoolBar
        Left = 0
        Top = 111
        Width = 664
        Height = 44
        AutoSize = True
        Bands = <
          item
            Control = bsSkinToolBar2
            ImageIndex = -1
            MinHeight = 40
            Width = 660
          end>
        SkinDataName = 'controlbar'
        SkinData = frmPrincipal.SkinPrincipal
        SkinBevel = True
        TabOrder = 4
        object bsSkinToolBar2: TbsSkinToolBar
          Left = 10
          Top = 0
          Width = 646
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
          object btnExcluir: TbsSkinSpeedButton
            Left = 558
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
            Caption = '&Excluir'
            ShowCaption = True
            NumGlyphs = 1
            Align = alLeft
            Spacing = 1
            Layout = blGlyphTop
            OnClick = btnExcluirClick
            ExplicitLeft = 346
            ExplicitTop = 8
          end
          object btnAdicionar: TbsSkinSpeedButton
            Left = 473
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
            ExplicitLeft = 261
            ExplicitTop = 8
          end
          object bsSkinBevel3: TbsSkinBevel
            Left = 543
            Top = 0
            Width = 15
            Height = 40
            Align = alLeft
            SkinData = frmPrincipal.SkinPrincipal
            SkinDataName = 'bevel'
            DividerMode = True
            ExplicitLeft = 331
            ExplicitTop = -5
          end
          object bsSkinBevel4: TbsSkinBevel
            Left = 628
            Top = 0
            Width = 12
            Height = 40
            Align = alLeft
            SkinData = frmPrincipal.SkinPrincipal
            SkinDataName = 'bevel'
            DividerMode = True
            ExplicitLeft = 416
            ExplicitTop = -5
          end
          object bsSkinBevel6: TbsSkinBevel
            Left = 0
            Top = 0
            Width = 473
            Height = 40
            Align = alLeft
            SkinData = frmPrincipal.SkinPrincipal
            SkinDataName = 'bevel'
            DividerMode = True
            ExplicitLeft = -6
          end
        end
      end
    end
    object tabCtasPagar: TbsSkinTabSheet
      Caption = 'Contas a Pagar'
      object bsSkinGroupBox2: TbsSkinGroupBox
        Left = 84
        Top = 53
        Width = 482
        Height = 281
        HintImageIndex = 0
        TabOrder = 0
        SkinData = frmPrincipal.SkinEntradaDados
        SkinDataName = 'groupbox'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -15
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsBold]
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
        ImagePosition = bsipDefault
        TransparentMode = False
        CaptionImageList = frmPrincipal.cxSmallImages
        CaptionImageIndex = 33
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
        Caption = 'Lancamento do Contas a Pagar'
        object bsSkinStdLabel12: TbsSkinStdLabel
          Left = 323
          Top = 5
          Width = 68
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
          Caption = 'Data Cadastro'
          Visible = False
        end
        object bsSkinStdLabel10: TbsSkinStdLabel
          Left = 54
          Top = 90
          Width = 41
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
          Caption = 'Historico'
        end
        object bsSkinStdLabel13: TbsSkinStdLabel
          Left = 56
          Top = 114
          Width = 39
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
          Caption = 'Emiss'#227'o'
        end
        object lblVencimentos: TbsSkinStdLabel
          Left = 256
          Top = 112
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
          Caption = '1'#186' Vencimento'
        end
        object lblDiasa: TbsSkinStdLabel
          Left = 74
          Top = 139
          Width = 21
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
          Caption = 'Dias'
        end
        object bsSkinStdLabel14: TbsSkinStdLabel
          Left = 229
          Top = 139
          Width = 96
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
          Caption = 'Numero de Parcelas'
        end
        object bsSkinStdLabel15: TbsSkinStdLabel
          Left = 17
          Top = 68
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Centro de Custo'
        end
        object bsSkinStdLabel20: TbsSkinStdLabel
          Left = 101
          Top = 245
          Width = 112
          Height = 20
          EllipsType = bsetNone
          UseSkinFont = False
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clNavy
          DefaultFont.Height = -16
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = [fsBold]
          SkinDataName = 'stdlabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          AutoSize = False
          Caption = 'Valor Total'
          ParentFont = False
        end
        object bsSkinStdLabel21: TbsSkinStdLabel
          Left = 33
          Top = 40
          Width = 54
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
          Caption = 'Fornecedor'
        end
        object lblMostraFornecedor: TbsSkinStdLabel
          Left = 104
          Top = 35
          Width = 78
          Height = 20
          EllipsType = bsetNone
          UseSkinFont = False
          UseSkinColor = False
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clNavy
          DefaultFont.Height = -16
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = [fsBold]
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Caption = 'Desconto'
          ParentFont = False
        end
        object rdgTipoVencimento: TbsSkinRadioGroup
          Left = 101
          Top = 158
          Width = 328
          Height = 65
          HintImageIndex = 0
          TabOrder = 7
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'groupbox'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = True
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
          Caption = 'Tipo de Vencimento'
          OnClick = rdgTipoVencimentoClick
          ButtonSkinDataName = 'radiobox'
          ButtonDefaultFont.Charset = DEFAULT_CHARSET
          ButtonDefaultFont.Color = clWindowText
          ButtonDefaultFont.Height = 14
          ButtonDefaultFont.Name = 'Arial'
          ButtonDefaultFont.Style = []
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'Vencimento Fixo'
            'Numero de dias')
        end
        object edtParcelas: TbsSkinSpinEdit
          Left = 338
          Top = 132
          Width = 91
          Height = 20
          HintImageIndex = 0
          TabOrder = 6
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'spinedit'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = True
          DefaultColor = clWindow
          UseSkinSize = True
          ValueType = vtInteger
          Increment = 1.000000000000000000
          EditorEnabled = True
          MaxLength = 0
        end
        object edtDias: TbsSkinSpinEdit
          Left = 102
          Top = 132
          Width = 91
          Height = 20
          HintImageIndex = 0
          TabOrder = 5
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'spinedit'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = True
          DefaultColor = clWindow
          UseSkinSize = True
          ValueType = vtInteger
          Increment = 1.000000000000000000
          EditorEnabled = True
          MaxLength = 0
        end
        object edtData_Emissao: TbsSkinDateEdit
          Left = 102
          Top = 109
          Width = 91
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
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = True
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'buttonedit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 3
        end
        object edtHistorico: TbsSkinEdit
          Left = 104
          Top = 87
          Width = 325
          Height = 18
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
          MaxLength = 50
          ParentFont = False
          TabOrder = 2
        end
        object cmbNome_CentroCusto: TbsSkinDBLookupComboBox
          Left = 171
          Top = 61
          Width = 258
          Height = 20
          HintImageIndex = 0
          TabOrder = 1
          SkinData = frmPrincipal.SkinEntradaDados
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
          ListField = 'descricao;codigo'
          ListSource = srcCadOperacoes
          OnChange = cmbNome_CentroCustoChange
        end
        object cmbCod_CentroCusto: TbsSkinDBLookupComboBox
          Left = 173
          Top = 61
          Width = 63
          Height = 20
          HintImageIndex = 0
          TabOrder = 9
          Visible = False
          SkinData = frmPrincipal.SkinEntradaDados
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
          ListField = 'Codigo;Descricao'
          ListSource = srcCadOperacoes
          OnChange = cmbCod_CentroCustoChange
        end
        object edtData_Vencimento: TbsSkinDateEdit
          Left = 338
          Top = 109
          Width = 91
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
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = True
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'buttonedit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 4
        end
        object edtCod_CentroCusto: TbsSkinEdit
          Left = 101
          Top = 63
          Width = 64
          Height = 18
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
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = edtCod_CentroCustoExit
        end
        object bsSkinEdit1: TbsSkinEdit
          Left = 405
          Top = 2
          Width = 74
          Height = 18
          DefaultColor = clScrollBar
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          UseSkinFont = True
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinDataName = 'edit'
          ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          Visible = False
        end
        object EdtVlr_total: TbsSkinEdit
          Left = 351
          Top = 242
          Width = 78
          Height = 23
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          ReadOnly = True
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 8
        end
      end
    end
  end
  object cdsCadProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 325
    Top = 437
  end
  object srcCadProdutos: TDataSource
    DataSet = cdsCadProdutos
    Left = 325
    Top = 465
  end
  object srcCadFornecedores: TDataSource
    DataSet = cdsCadFornecedores
    Left = 269
    Top = 465
  end
  object dspVariavel: TDataSetProvider
    DataSet = QryVariavel
    Left = 465
    Top = 408
  end
  object cdsItensEntradasTMP: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    BeforeOpen = cdsItensEntradasTMPBeforeOpen
    Left = 298
    Top = 437
    Data = {
      B30000009619E0BD010000001800000007000000000003000000B30006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000A717464655F56656E646108000400000000000950636F
      5F56656E6461080004000000000009766C725F546F74616C0800040000000000
      0B436F6D706C656D656E746F0100490000000100055749445448020002003200
      0C766C725F446573636F6E746F08000400000000000000}
    object cdsItensEntradasTMPCodigo: TIntegerField
      DisplayWidth = 13
      FieldName = 'Codigo'
    end
    object cdsItensEntradasTMPDescricao: TStringField
      DisplayWidth = 51
      FieldName = 'Descricao'
      Size = 50
    end
    object cdsItensEntradasTMPqtde_Venda: TFloatField
      DisplayLabel = 'Quantidade.'
      DisplayWidth = 19
      FieldName = 'qtde_Venda'
    end
    object cdsItensEntradasTMPPco_Venda: TFloatField
      DisplayLabel = 'Pco. Venda'
      DisplayWidth = 19
      FieldName = 'Pco_Venda'
    end
    object cdsItensEntradasTMPvlr_Total: TFloatField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 14
      FieldName = 'vlr_Total'
    end
  end
  object srcItensVendasTMP: TDataSource
    DataSet = cdsItensEntradasTMP
    Left = 298
    Top = 465
  end
  object dspEntradas: TDataSetProvider
    DataSet = QryEntradas
    Left = 381
    Top = 407
  end
  object dspItensEntradas: TDataSetProvider
    DataSet = qryItensEntradas
    Left = 353
    Top = 408
  end
  object cdsItensEntradas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensEntradas'
    Left = 354
    Top = 436
  end
  object cdsEntradas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEntradas'
    Left = 382
    Top = 436
  end
  object srcConsEntradas: TDataSource
    DataSet = cdsConsEntradas
    Left = 185
    Top = 465
  end
  object srcconsItensEntradas: TDataSource
    DataSet = cdsconsItensEntradas
    Left = 213
    Top = 465
  end
  object srcCadOperacoes: TDataSource
    DataSet = cdsCadOperacoes
    Left = 241
    Top = 465
  end
  object SkinForm: TbsBusinessSkinForm
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
    UseDefaultObjectHint = True
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
    Top = 380
  end
  object qryItensEntradas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 353
    Top = 380
  end
  object QryEntradas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 381
    Top = 380
  end
  object qryCtasPagar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 409
    Top = 380
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 437
    Top = 380
  end
  object QryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 465
    Top = 380
  end
  object cdsConsEntradas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 185
    Top = 437
    Data = {
      B30000009619E0BD010000001800000007000000000003000000B30006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000A717464655F56656E646108000400000000000950636F
      5F56656E6461080004000000000009766C725F546F74616C0800040000000000
      0B436F6D706C656D656E746F0100490000000100055749445448020002003200
      0C766C725F446573636F6E746F08000400000000000000}
  end
  object cdsconsItensEntradas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 214
    Top = 437
    Data = {
      B30000009619E0BD010000001800000007000000000003000000B30006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000A717464655F56656E646108000400000000000950636F
      5F56656E6461080004000000000009766C725F546F74616C0800040000000000
      0B436F6D706C656D656E746F0100490000000100055749445448020002003200
      0C766C725F446573636F6E746F08000400000000000000}
  end
  object cdsCadOperacoes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 242
    Top = 437
    Data = {
      B30000009619E0BD010000001800000007000000000003000000B30006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000A717464655F56656E646108000400000000000950636F
      5F56656E6461080004000000000009766C725F546F74616C0800040000000000
      0B436F6D706C656D656E746F0100490000000100055749445448020002003200
      0C766C725F446573636F6E746F08000400000000000000}
  end
  object cdsCadFornecedores: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 270
    Top = 437
    Data = {
      B30000009619E0BD010000001800000007000000000003000000B30006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000A717464655F56656E646108000400000000000950636F
      5F56656E6461080004000000000009766C725F546F74616C0800040000000000
      0B436F6D706C656D656E746F0100490000000100055749445448020002003200
      0C766C725F446573636F6E746F08000400000000000000}
  end
  object dspCtasPagar: TDataSetProvider
    DataSet = qryCtasPagar
    Left = 409
    Top = 407
  end
  object cdsCtasPagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtsCtasPagar'
    Left = 410
    Top = 436
  end
  object srcCtasPagar: TDataSource
    DataSet = cdsCtasPagar
    Left = 410
    Top = 465
  end
end
