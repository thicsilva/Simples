object frmabreos: Tfrmabreos
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Abertura de Ordem de Servi'#231'o'
  ClientHeight = 582
  ClientWidth = 665
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
  object bsSkinCoolBar1: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 665
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 661
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 652
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
        Left = 538
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
        ExplicitLeft = 497
        ExplicitTop = 8
      end
      object btnabrios: TbsSkinSpeedButton
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
        Caption = '&Abri O.S.'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnabriosClick
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 537
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
        Left = 70
        Top = 0
        Width = 169
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 239
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
        ExplicitLeft = 233
        ExplicitTop = 8
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 309
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
        ExplicitLeft = 315
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 379
        Top = 0
        Width = 158
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
    end
  end
  object pnlGeral: TbsSkinPanel
    Left = 0
    Top = 76
    Width = 665
    Height = 506
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
    Caption = 'pnlGeral'
    Align = alClient
    object bsSkinGroupBox3: TbsSkinGroupBox
      Left = 1
      Top = 354
      Width = 663
      Height = 57
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
      Caption = 'Informa'#231#245'es Adicionais'
      Align = alTop
      object bsSkinStdLabel3: TbsSkinStdLabel
        Left = 12
        Top = 33
        Width = 97
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
        Caption = 'Natureza do Servi'#231'o'
      end
      object bsSkinStdLabel5: TbsSkinStdLabel
        Left = 343
        Top = 33
        Width = 101
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
        Caption = 'Nivel de Atendimento'
      end
      object cmbTipo_Atendimento: TbsSkinComboBox
        Left = 137
        Top = 31
        Width = 144
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
        Text = 'Telecomunica'#231#245'es'
        Items.Strings = (
          'Telecomunica'#231#245'es'
          'Automa'#231#227'o'
          'Antenas'
          'Seguran'#231'a Eletronica')
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
      object cmbNivel_Atendimento: TbsSkinComboBox
        Left = 460
        Top = 31
        Width = 138
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
        ImageIndex = -1
        CharCase = ecNormal
        DefaultColor = clWindow
        Text = 'Baixa Prioridade'
        Items.Strings = (
          'Baixa Prioridade'
          'Media Prioridade'
          'Alta Prioridade')
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
    end
    object bsSkinStatusBar1: TbsSkinStatusBar
      Left = 1
      Top = 484
      Width = 663
      Height = 21
      HintImageIndex = 0
      TabOrder = 2
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
    object bsSkinExPanel1: TbsSkinExPanel
      Left = 1
      Top = 411
      Width = 663
      Height = 73
      HintImageIndex = 0
      TabOrder = 3
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
      Align = alClient
      Caption = 'Servi'#231'o Solicitado'
      object memoServico: TbsSkinMemo
        Left = 1
        Top = 21
        Width = 661
        Height = 51
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'bsSkinMemo1')
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
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
    object bsSkinExPanel2: TbsSkinExPanel
      Left = 1
      Top = 221
      Width = 663
      Height = 133
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
      Align = alTop
      Caption = 'Informa'#231#245'es do Cliente'
      OnCanResize = bsSkinExPanel2CanResize
      object bsSkinStdLabel1: TbsSkinStdLabel
        Left = 55
        Top = 37
        Width = 32
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
        Caption = 'Cliente'
      end
      object lblCNPJCPF: TbsSkinStdLabel
        Left = 444
        Top = 35
        Width = 36
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
        Caption = 'C.N.P.J'
      end
      object bsSkinStdLabel4: TbsSkinStdLabel
        Left = 16
        Top = 62
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
        Caption = 'Pto Referencia'
      end
      object bsSkinStdLabel2: TbsSkinStdLabel
        Left = 7
        Top = 88
        Width = 80
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
        Caption = 'Local do Servi'#231'o'
      end
      object bsSkinStdLabel6: TbsSkinStdLabel
        Left = 38
        Top = 113
        Width = 49
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
        Caption = 'Solicitante'
      end
      object cmbNome_Cliente: TbsSkinDBLookupComboBox
        Left = 206
        Top = 32
        Width = 232
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
        ListSource = srcCadClientes
        OnChange = cmbNome_ClienteChange
      end
      object edtCod_Cliente: TbsSkinEdit
        Left = 93
        Top = 32
        Width = 91
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
        OnExit = edtCod_ClienteExit
      end
      object edtCNPJCPF: TbsSkinEdit
        Left = 486
        Top = 32
        Width = 112
        Height = 18
        TabStop = False
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
        ParentFont = False
        TabOrder = 2
      end
      object edtPtoReferencia: TbsSkinEdit
        Left = 93
        Top = 57
        Width = 505
        Height = 18
        TabStop = False
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
        MaxLength = 50
        ParentFont = False
        TabOrder = 3
      end
      object cmbCNPJCPF: TbsSkinDBLookupComboBox
        Left = 598
        Top = 31
        Width = 21
        Height = 20
        HintImageIndex = 0
        TabOrder = 7
        Visible = False
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
        Color = clScrollBar
        DefaultColor = clMenuBar
        ListBoxDefaultItemHeight = 20
        ListBoxUseSkinFont = True
        ListBoxUseSkinItemHeight = True
        KeyField = 'CNPJCPF'
        ListField = 'Codigo'
        ListSource = srcCadClientes
        OnClick = cmbCNPJCPFClick
      end
      object cmbCod_Cliente: TbsSkinDBLookupComboBox
        Left = 163
        Top = 35
        Width = 21
        Height = 20
        HintImageIndex = 0
        TabOrder = 6
        Visible = False
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
        ListSource = srcCadClientes
        ParentFont = False
        TabStop = False
        OnChange = cmbCod_ClienteChange
      end
      object cmbObras: TbsSkinComboBox
        Left = 93
        Top = 81
        Width = 505
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
        CharCase = ecNormal
        DefaultColor = clWindow
        ItemIndex = -1
        DropDownCount = 8
        HorizontalExtent = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Sorted = True
        Style = bscbEditStyle
      end
      object edtSolicitante: TbsSkinEdit
        Left = 93
        Top = 107
        Width = 505
        Height = 18
        TabStop = False
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
        MaxLength = 50
        ParentFont = False
        TabOrder = 5
      end
    end
    object pnlConsultaClinete: TbsSkinExPanel
      Left = 1
      Top = 1
      Width = 663
      Height = 220
      HintImageIndex = 0
      TabOrder = 4
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'expanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clTeal
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      CaptionImageList = frmPrincipal.imageMenu24x24
      CaptionImageIndex = 4
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
      Caption = 
        '                                                                ' +
        '                                            Pesquisa de Clientes'
      object bsSkinPanel2: TbsSkinPanel
        Left = 1
        Top = 21
        Width = 661
        Height = 33
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
        DesignSize = (
          661
          33)
        object btnCadAlunos: TbsSkinSpeedButton
          Left = 483
          Top = 2
          Width = 26
          Height = 25
          Hint = 'Abrir Cadastro de Clientes'
          HintImageIndex = 0
          Anchors = [akTop, akRight]
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
          ParentShowHint = False
          Down = False
          GroupIndex = 0
          Caption = 'Atividades'
          ShowCaption = False
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00EB00EB14CA06C53CC707C141E601E51AFE00FE01FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FB00FB04CF05CC35B411A85FAB0E
            A264941F7F8E995354C99C5A4ECEA7149670FD00FD02FF00FF00FF00FF00FF00
            FF00FF00FF00FA00FA05C00EBB4EA630918EA46C6DD4B49F58FFBCA452FFA38D
            43FFA08A3EFFB19535FFB49732FFA94270A4FF00FF00FF00FF00FF00FF00FF00
            FF00D80AD63197627CD1C9BB8BFFCCBB82FFBDAB6FFFBEAB6AFFB8A45FFFB49E
            51FFB09846FFB49D4FFFB19946FFD845A477FF00FF00FF00FF00FF00FF00FF00
            FF00BD50AD96B9AF8FFFC2B68EFFBFB38AFFC6C0AAFFBEAF7DFFC5B57CFFC0AE
            70FFBDAA67FFC3B173FFC2B06FFFF01BDD2EFF00FF00FF00FF00FF00FF00FF00
            FF00BC16B85AB6AD92FFBEB390FFC4BC9FFFE7E5E0FFC9C2A8FFD0C397FFCEC0
            91FFCBBC88FFCDBF8DFFE04CBA73FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00F800F807C265B0A6C7BD9EFFCAC4B3FFD1D1D1FFCDCAC4FFC5BCA1FFDDD4
            B3FFDBCFB0FCF462E76FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00EA1AE5308193C5F26D95C9FF87A7CFFFABB6C3FFDC99
            C0C3F42AE738FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00B016C05E719DDEFB6495D4FF638BCDF8BE1BCB56FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00EA01EB1691ADE6F788B4EDFF78A9E6FF768BD2EAFF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00C414CB4CB0D3FFFF99C0F3FF8DB9F4FF6C94C6FFC505C83DFF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00B623BE68CBE3FFFFABCBF6FFA4CEFFFF51647CFF3E023BC5FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00F500F50A655062ECA5AEBCFFCADFFAFF8FA5C2FF3F4042FF6D0F6CA1FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FC00FC03AD40AB94797576FF69686BFF605C5BFF604E5CF1E309E325FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00DA40D867A0609CC3A752A5ADE414E330FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          NumGlyphs = 1
          Spacing = 1
          OnClick = btnCadAlunosClick
          ExplicitLeft = 474
        end
        object cmbtipoconsulta: TbsSkinComboBox
          Left = 3
          Top = 7
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
            'Descricao'
            'CNPJ/CPF')
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
          Left = 135
          Top = 8
          Width = 203
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
          Anchors = [akLeft, akTop, akRight]
          ParentFont = False
          TabOrder = 1
          OnKeyDown = EdtPesquisaKeyDown
          ExplicitWidth = 210
        end
        object chkPesqTodoTexto: TbsSkinCheckRadioBox
          Left = 344
          Top = 3
          Width = 138
          Height = 25
          HintImageIndex = 0
          Anchors = [akTop, akRight]
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
          State = cbChecked
          ImageIndex = 0
          Flat = True
          UseSkinFontColor = True
          TabStop = True
          CanFocused = True
          Radio = False
          Checked = True
          GroupIndex = 0
          Caption = 'Pesquisa em todo texo'
        end
        object btnPesquisar: TbsSkinButton
          Left = 515
          Top = 3
          Width = 125
          Height = 25
          HintImageIndex = 0
          Anchors = [akTop, akRight]
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
          ImageList = frmPrincipal.Imagebutoes
          ImageIndex = 5
          UseSkinSize = False
          UseSkinFontColor = False
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
      end
      object cxGrid1: TcxGrid
        Left = 1
        Top = 54
        Width = 661
        Height = 165
        Align = alClient
        TabOrder = 1
        object GridClintes: TcxGridDBTableView
          OnDblClick = GridClintesDblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcPesquisa
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = GridClintesBairro
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = GridClintesBairro
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          Styles.GroupByBox = frmPrincipal.cxStyle4
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object GridClintesCodigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
            Width = 59
          end
          object GridClintesDescricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 200
          end
          object GridClintesCNPJCPF: TcxGridDBColumn
            Caption = 'C.N.P.J/C.P.F'
            DataBinding.FieldName = 'CNPJCPF'
            Width = 90
          end
          object GridClintesTelefone: TcxGridDBColumn
            DataBinding.FieldName = 'Telefone'
            Width = 70
          end
          object GridClintescelular: TcxGridDBColumn
            DataBinding.FieldName = 'celular'
            Width = 70
          end
          object GridClintesEndereco: TcxGridDBColumn
            DataBinding.FieldName = 'Endereco'
            Width = 200
          end
          object GridClintesBairro: TcxGridDBColumn
            DataBinding.FieldName = 'Bairro'
            Width = 80
          end
          object GridClintesCidade: TcxGridDBColumn
            DataBinding.FieldName = 'Cidade'
            Width = 80
          end
          object GridClintesUF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
            Width = 25
          end
          object GridClintesCep: TcxGridDBColumn
            DataBinding.FieldName = 'Cep'
            Width = 60
          end
          object GridClintescod_emp: TcxGridDBColumn
            DataBinding.FieldName = 'cod_emp'
            Visible = False
          end
          object GridClintesData_Cad: TcxGridDBColumn
            Caption = 'Cadastrado em'
            DataBinding.FieldName = 'Data_Cad'
            Width = 90
          end
          object GridClintesData_Atu: TcxGridDBColumn
            Caption = 'Atualizado em'
            DataBinding.FieldName = 'Data_Atu'
            Width = 90
          end
          object GridClintesLimite_Credito: TcxGridDBColumn
            Caption = 'Limite de Credito'
            DataBinding.FieldName = 'Limite_Credito'
            Width = 100
          end
          object GridClintesStatus: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            Visible = False
          end
          object GridClintesativo: TcxGridDBColumn
            Caption = 'Ativo'
            DataBinding.FieldName = 'ativo'
            Width = 50
          end
          object GridClintesCod_Atividade: TcxGridDBColumn
            Caption = 'Atividade'
            DataBinding.FieldName = 'Cod_Atividade'
            Width = 50
          end
          object GridClintesOperador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 100
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = GridClintes
        end
      end
    end
  end
  object pnlnumeroos: TbsSkinPanel
    Left = 0
    Top = 44
    Width = 665
    Height = 32
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
    TabStop = True
    object bsSkinLabel1: TbsSkinLabel
      Left = 423
      Top = 7
      Width = 127
      Height = 21
      HintImageIndex = 0
      TabOrder = 3
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'label'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      EllipsType = bsetEllips
      UseSkinSize = False
      UseSkinFontColor = False
      BorderStyle = bvNone
      Caption = 'Numero da O.S.'
      AutoSize = False
    end
    object edtNumeroOS: TbsSkinEdit
      Left = 549
      Top = 6
      Width = 108
      Height = 22
      TabStop = False
      DefaultColor = clInactiveBorder
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clRed
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      UseSkinFont = False
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'edit'
      ReadOnly = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object bsSkinLabel2: TbsSkinLabel
      Left = 12
      Top = 6
      Width = 121
      Height = 21
      HintImageIndex = 0
      TabOrder = 4
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'label'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      EllipsType = bsetEllips
      UseSkinSize = False
      UseSkinFontColor = False
      BorderStyle = bvNone
      Caption = 'Tipo de O.S.'
      AutoSize = False
    end
    object cmbStatusCliente: TbsSkinComboBox
      Left = 129
      Top = 6
      Width = 120
      Height = 20
      HintImageIndex = 0
      TabOrder = 0
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'combobox'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      UseSkinSize = False
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
      Text = 'Contrato'
      Items.Strings = (
        'Contrato'
        'Garantia'
        'Manuten'#231#227'o'
        'Or'#231'amento'
        'Instala'#231#227'o'
        'Assistencia Tecnica'
        'Reclama'#231#227'o')
      ItemIndex = 0
      DropDownCount = 8
      HorizontalExtent = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Sorted = False
      Style = bscbFixedStyle
    end
    object bsSkinLabel3: TbsSkinLabel
      Left = 254
      Top = 6
      Width = 59
      Height = 21
      HintImageIndex = 0
      TabOrder = 5
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'label'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      EllipsType = bsetEllips
      UseSkinSize = False
      UseSkinFontColor = False
      BorderStyle = bvNone
      Caption = 'Pedido'
      AutoSize = False
    end
    object edtPedido: TbsSkinEdit
      Left = 310
      Top = 6
      Width = 108
      Height = 22
      TabStop = False
      DefaultColor = clInactiveBorder
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clRed
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      UseSkinFont = False
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
  end
  object bsBusinessSkinForm1: TbsBusinessSkinForm
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
    Left = 128
    Top = 168
  end
  object dspPesquisa: TDataSetProvider
    DataSet = qryPesquisa
    Left = 387
    Top = 167
  end
  object cdspesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    Left = 388
    Top = 223
  end
  object srcPesquisa: TDataSource
    DataSet = cdspesquisa
    Left = 388
    Top = 195
  end
  object qryPesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_clientes where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 387
    Top = 139
  end
  object qryCadClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_clientes where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 359
    Top = 139
  end
  object dspCadClientes: TDataSetProvider
    DataSet = qryCadClientes
    Left = 360
    Top = 167
  end
  object srcCadClientes: TDataSource
    DataSet = cdsCadClientes
    Left = 360
    Top = 195
  end
  object cdsCadClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadClientes'
    Left = 360
    Top = 223
  end
  object sdtsConsultaCli: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 444
    Top = 139
  end
  object qryos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_clientes where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 331
    Top = 139
  end
  object dspos: TDataSetProvider
    DataSet = qryos
    Left = 332
    Top = 167
  end
  object srcos: TDataSource
    DataSet = cdsos
    Left = 332
    Top = 195
  end
  object cdsos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspos'
    Left = 332
    Top = 223
  end
  object qryHistoricoOS: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_clientes where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 303
    Top = 139
  end
  object dspHistoricoOS: TDataSetProvider
    DataSet = qryHistoricoOS
    Left = 304
    Top = 167
  end
  object srcHistoricoOS: TDataSource
    DataSet = cdsHistoricoOS
    Left = 304
    Top = 195
  end
  object cdsHistoricoOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHistoricoOS'
    Left = 304
    Top = 223
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 415
    Top = 139
  end
  object sdtsBuscaObras: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 472
    Top = 139
  end
end
