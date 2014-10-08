object frmAberturaOs: TfrmAberturaOs
  Left = 0
  Top = 0
  Caption = 'Abertura de Ordem de Servi'#231'o'
  ClientHeight = 335
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinCoolBar3: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 664
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar3
        ImageIndex = -1
        MinHeight = 49
        Width = 660
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = -6
    object bsSkinToolBar3: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 651
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
      object BtnCancela: TbsSkinSpeedButton
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
        ExplicitLeft = -15
        ExplicitTop = 12
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 160
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object btnok: TbsSkinSpeedButton
        Left = 559
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
        OnClick = btnokClick
        ExplicitLeft = 727
        ExplicitTop = 12
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 230
        Top = 0
        Width = 291
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -1
      end
      object bsSkinBevel5: TbsSkinBevel
        Left = 521
        Top = 0
        Width = 38
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 393
        ExplicitTop = -1
      end
    end
  end
  object bsSkinExPanel1: TbsSkinExPanel
    Left = 0
    Top = 53
    Width = 664
    Height = 84
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
    ShowRollButton = False
    ShowCloseButton = False
    DefaultCaptionHeight = 21
    RollState = False
    RollKind = rkRollVertical
    Moveable = False
    Sizeable = False
    Align = alTop
    Caption = 'Informe os daodos do Cliente'
    object btnCadAlunos: TbsSkinSpeedButton
      Left = 247
      Top = 38
      Width = 32
      Height = 24
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
      CheckedMode = False
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
    end
    object bsSkinStdLabel14: TbsSkinStdLabel
      Left = 437
      Top = 25
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
      SkinData = frmPrincipal.SkinEntradaDados
      SkinDataName = 'stdlabel'
      Caption = 'Telefone'
    end
    object lblCNPJCPF: TbsSkinStdLabel
      Left = 326
      Top = 25
      Width = 52
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
      Caption = 'CNPJ/CPF'
    end
    object bsSkinStdLabel1: TbsSkinStdLabel
      Left = 6
      Top = 25
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
      SkinData = frmPrincipal.SkinEntradaDados
      SkinDataName = 'stdlabel'
      Caption = 'Cliente'
    end
    object cmbNome_Cliente: TbsSkinDBLookupComboBox
      Left = 5
      Top = 41
      Width = 240
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
      OnChange = cmbNome_ClienteChange
    end
    object edtNome_Cliente: TbsSkinEdit
      Left = 6
      Top = 41
      Width = 220
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
      CharCase = ecUpperCase
      ParentFont = False
      TabOrder = 0
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtNome_ClienteExit
    end
    object edtTelefone: TbsSkinEdit
      Left = 437
      Top = 41
      Width = 93
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
      MaxLength = 13
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
    object edtCnpjCpf: TbsSkinEdit
      Left = 326
      Top = 41
      Width = 105
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
      MaxLength = 14
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
    object btnNovoCliente: TbsSkinButton
      Left = 538
      Top = 37
      Width = 110
      Height = 25
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
      UseSkinFont = True
      Transparent = False
      CheckedMode = False
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 10
      AlwaysShowLayeredFrame = False
      UseSkinSize = True
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
    end
    object btnLimpa: TbsSkinButton
      Left = 280
      Top = 38
      Width = 32
      Height = 24
      Hint = 'Limpar Sele'#231#227'o'
      HintImageIndex = 0
      TabOrder = 5
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
      OnClick = btnLimpaClick
    end
  end
  object bsSkinExPanel2: TbsSkinExPanel
    Left = 0
    Top = 137
    Width = 664
    Height = 179
    HintImageIndex = 0
    TabOrder = 2
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
    ShowRollButton = False
    ShowCloseButton = False
    DefaultCaptionHeight = 21
    RollState = False
    RollKind = rkRollVertical
    Moveable = False
    Sizeable = False
    Align = alClient
    Caption = 'Dados Do Produto'
    object bsSkinStdLabel2: TbsSkinStdLabel
      Left = 13
      Top = 25
      Width = 70
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = [fsBold]
      SkinData = frmPrincipal.SkinEntradaDados
      SkinDataName = 'stdlabel'
      Caption = 'Descri'#231#227'o..:'
    end
    object bsSkinStdLabel3: TbsSkinStdLabel
      Left = 34
      Top = 54
      Width = 45
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = [fsBold]
      SkinData = frmPrincipal.SkinEntradaDados
      SkinDataName = 'stdlabel'
      Caption = 'Serial..:'
    end
    object bsSkinStdLabel4: TbsSkinStdLabel
      Left = 3
      Top = 78
      Width = 113
      Height = 13
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -11
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = [fsBold]
      SkinData = frmPrincipal.SkinEntradaDados
      SkinDataName = 'stdlabel'
      Caption = 'Defeito Reclamado.'
    end
    object edtDescricaoProduto: TbsSkinEdit
      Left = 88
      Top = 25
      Width = 561
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
      MaxLength = 200
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
    object EdtSerie: TbsSkinEdit
      Left = 88
      Top = 51
      Width = 245
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
      MaxLength = 50
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
    object MemoDefeito: TMemo
      Left = 1
      Top = 92
      Width = 662
      Height = 86
      Align = alBottom
      Anchors = [akLeft, akTop, akRight, akBottom]
      MaxLength = 200
      TabOrder = 2
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 316
    Width = 664
    Height = 19
    Panels = <>
  end
end
