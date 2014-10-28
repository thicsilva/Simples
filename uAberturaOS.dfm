object frmAberturaOs: TfrmAberturaOs
  Left = 0
  Top = 0
  Caption = 'Abertura de Ordem de Servi'#231'o'
  ClientHeight = 400
  ClientWidth = 674
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
    Width = 674
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar3
        ImageIndex = -1
        MinHeight = 49
        Width = 670
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 0
    object bsSkinToolBar3: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 661
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
        OnClick = BtnCancelaClick
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
    Width = 674
    Height = 108
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
    object lblDadosVeivulos: TbsSkinStdLabel
      Left = 3
      Top = 71
      Width = 142
      Height = 20
      EllipsType = bsetNone
      UseSkinFont = True
      UseSkinColor = True
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -16
      DefaultFont.Name = 'MS Sans Serif'
      DefaultFont.Style = [fsBold]
      SkinDataName = 'stdlabel'
      Caption = 'Dados do Veiculo'
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
      Left = 539
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
      OnClick = btnNovoClienteClick
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
    object lblVeiculo: TbsSkinLabel
      Left = 151
      Top = 72
      Width = 498
      Height = 21
      HintImageIndex = 0
      TabOrder = 6
      SkinDataName = 'label'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = -16
      DefaultFont.Name = 'Tahoma'
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
      UseSkinSize = True
      UseSkinFontColor = False
      BorderStyle = bvFrame
      AutoSize = False
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 381
    Width = 674
    Height = 19
    Panels = <>
  end
  object panelProduto: TbsSkinExPanel
    Left = 0
    Top = 161
    Width = 674
    Height = 85
    HintImageIndex = 0
    TabOrder = 3
    SkinDataName = 'expanel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -15
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = [fsBold]
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
    Caption = 'Dados do Produto'
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
    object lblSerial: TbsSkinStdLabel
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
    object edtDescricaoProduto: TbsSkinEdit
      Left = 89
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
  end
  object bsSkinExPanel4: TbsSkinExPanel
    Left = 0
    Top = 246
    Width = 674
    Height = 135
    HintImageIndex = 0
    TabOrder = 4
    SkinDataName = 'expanel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -15
    DefaultFont.Name = 'Tahoma'
    DefaultFont.Style = [fsBold]
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
    Caption = 'Defeito Reclamado'
    object MemoDefeito: TMemo
      Left = 1
      Top = 21
      Width = 672
      Height = 113
      Align = alClient
      MaxLength = 200
      TabOrder = 0
    end
  end
  object frxDBCliente: TfrxDBDataset
    UserName = 'dbSetCliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Codigo=Codigo'
      'Descricao=Descricao'
      'CNPJCPF=CNPJCPF'
      'Endereco=Endereco'
      'Bairro=Bairro'
      'Cidade=Cidade'
      'UF=UF'
      'Telefone=Telefone'
      'celular=celular'
      'Operador=Operador'
      'cod_emp=cod_emp'
      'Data_Cad=Data_Cad'
      'Data_Atu=Data_Atu'
      'Limite_Credito=Limite_Credito'
      'Status=Status'
      'ativo=ativo'
      'Cod_Atividade=Cod_Atividade'
      'Cep=Cep'
      'Cod_Rota=Cod_Rota'
      'Qtde_PedAberto=Qtde_PedAberto'
      'razao_Social=razao_Social'
      'Pto_Referencia=Pto_Referencia'
      'Fax=Fax'
      'Responsavel=responsavel'
      'Cod_Funcionario=cod_funcionario'
      'contrato=Contrato'
      'InscricaoEstadual=InscricaoEstadual'
      'SequenciaEntrega=SequenciaEntrega'
      'Email=Email'
      'EnderecoObra=EnderecoObra'
      'Placa=Placa'
      'DescricaoVeiculo=DescricaoVeiculo')
    BCDToCurrency = False
    Left = 130
    Top = 218
  end
  object frxDbEmpresa: TfrxDBDataset
    UserName = 'dbSetEmpresa'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID_Empresa=ID_Empresa'
      'Nome_Fantasia=Nome_Fantasia'
      'CNPJCPF=CNPJCPF'
      'Endereco=Endereco'
      'Bairro=Bairro'
      'Cidade=Cidade'
      'UF=UF'
      'Telefone=Telefone'
      'celular=celular'
      'Operador=Operador'
      'Data_Cad=Data_Cad'
      'Data_Atu=Data_Atu'
      'Limite_Credito=Limite_Credito'
      'Status=Status'
      'ativo=ativo'
      'Cod_Atividade=Cod_Atividade'
      'Cep=Cep'
      'Cod_Rota=Cod_Rota'
      'Qtde_PedAberto=Qtde_PedAberto'
      'razao_Social=razao_Social'
      'Pto_Referencia=Pto_Referencia'
      'Fax=Fax'
      'Responsavel=Responsavel'
      'cod_Funcionario=cod_Funcionario'
      'email=email'
      'DiretorGeral=DiretorGeral'
      'DiretorEncino=DiretorEncino'
      'DiretorDetran=DiretorDetran'
      'Liberado=Liberado'
      'DiretorEnsino=DiretorEnsino'
      'NomeDiretor=NomeDiretor'
      'HomePage=HomePage'
      'Diretor=Diretor'
      'Local=Local')
    BCDToCurrency = False
    Left = 158
    Top = 217
  end
  object frxOrdemServico: TfrxReport
    Version = '4.9.105'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41706.281067442100000000
    ReportOptions.LastChange = 41927.950872071760000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 157
    Top = 245
    Datasets = <
      item
        DataSet = frxDBCliente
        DataSetName = 'dbSetCliente'
      end
      item
        DataSet = frxDbEmpresa
        DataSetName = 'dbSetEmpresa'
      end>
    Variables = <
      item
        Name = ' Personalizado'
        Value = Null
      end
      item
        Name = 'TotalLocacao'
        Value = '0'
      end
      item
        Name = 'CNPJCliente'
        Value = #39'0'#39
      end
      item
        Name = 'CNPJEmpresa'
        Value = #39'00'#39
      end
      item
        Name = 'NumeroVenda'
        Value = Null
      end
      item
        Name = 'FormaPagamento'
        Value = Null
      end
      item
        Name = 'Vendedor'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Duplex = dmSimplex
      object ReportTitle1: TfrxReportTitle
        Height = 113.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 1.779530000000000000
          Top = 0.881880000000000000
          Width = 710.551640000000000000
          Height = 105.283550000000000000
          ShowHint = False
        end
        object dbSetEmpresaNome_Fantasia: TfrxMemoView
          Left = 3.779530000000000000
          Top = 24.897650000000000000
          Width = 710.362710000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Nome_Fantasia'
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetEmpresa."Nome_Fantasia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dbSetEmpresaCNPJCPF: TfrxMemoView
          Left = 2.574830000000000000
          Top = 86.590600000000000000
          Width = 708.583180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'CNPJ.: [CNPJEmpresa]')
          ParentFont = False
        end
        object dbSetEmpresaEndereco: TfrxMemoView
          Left = 2.574830000000000000
          Top = 68.031540000000000000
          Width = 706.583180000000000000
          Height = 16.779530000000000000
          ShowHint = False
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Endere'#195#167'o.: [dbSetEmpresa."Endereco"] [dbSetEmpresa."Bairro"] [d' +
              'bSetEmpresa."Cidade"]/[dbSetEmpresa."UF"] CEP.:[dbSetEmpresa."Ce' +
              'p"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 2.440940000000000000
          Width = 190.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = clMenuText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Assistencia Tecnica')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 906.252320000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Left = 1.000000000000000000
          Top = 4.818800000000000000
          Width = 712.331170000000000000
          Height = 97.504020000000000000
          ShowHint = False
        end
        object dbSetClienteDescricao: TfrxMemoView
          Left = 5.118120000000000000
          Top = 24.559060000000000000
          Width = 332.441250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome [dbSetCliente."Descricao"]')
          ParentFont = False
        end
        object dbSetClienteresponsavel: TfrxMemoView
          Left = 340.378170000000000000
          Top = 24.905380000000000000
          Width = 222.511750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Telefone.: [dbSetCliente."Telefone"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Top = 6.039270000000000000
          Width = 175.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = clMenuText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ordem de Servi'#195#167'o')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 568.000000000000000000
          Top = 4.582560000000000000
          Height = 96.000000000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo6: TfrxMemoView
          Left = 568.000000000000000000
          Top = 6.582560000000000000
          Width = 145.488250000000000000
          Height = 26.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#194#186' Servi'#195#167'o')
          ParentFont = False
        end
        object NumeroVenda: TfrxMemoView
          Left = 568.000000000000000000
          Top = 32.582560000000000000
          Width = 145.370130000000000000
          Height = 28.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[NumeroVenda]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 4.779530000000000000
          Top = 352.464440000000000000
          Width = 314.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          Left = 6.779530000000000000
          Top = 356.243970000000000000
          Width = 302.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome.:  [dbSetCliente."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Vendedor: TfrxMemoView
          Left = 482.440940000000000000
          Top = 317.362090000000000000
          Width = 225.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Data de Saida   ____/____/____')
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 316.700990000000000000
          Width = 217.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Data de Entrada   ____/____/____')
        end
        object Line2: TfrxLineView
          Left = 396.850650000000000000
          Top = 351.275820000000000000
          Width = 314.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 399.850650000000000000
          Top = 356.055350000000000000
          Width = 310.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Digitell Games Import'#194#180's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 106.826840000000000000
          Width = 710.551640000000000000
          Height = 188.976500000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '1 - A loja n'#195#163'o se responsabiliza pela procedencia do aparelho, ' +
              'sendo esta total responsabilidade do cliente.'
            
              '2 - O aparelho n'#195#163'o retirado no prazo de 90 dias poder'#195#161' ser ven' +
              'dido ou desmontado para reposi'#195#167#195#163'o de pe'#195#167'as para suprir gastos' +
              ' de manuten'#195#167'ao conforme a lei 4.131/08 de 62.'
            
              '3 - Caso o aparelho descrito acima apresente outro defeito, dife' +
              'rente do reclamado, mesmo dentro do prazo de garantia estara suj' +
              'eito a um novo or'#195#167'amento.'
            
              '4 - O prazo minimo para o or'#195#167'amento e de ate 7 dias, caso haja ' +
              'um desacordo no prazo estipulado de entrega do apareho s'#195#179' ser'#195#161 +
              ' entregue no prazo de 30 dias conforme a lei ou devolvido nas me' +
              'smas condi'#195#167#195#181'es que foi entregue pelo cliente.'
            
              '5 - O APARELHO S'#195#8220' SER'#195#129' ENTREGUE COM ESSA ORDEM DE SERVI'#195#8225'O OU ' +
              'COM O CPF DO TITULAR.'
            
              '6 - A garantia do servi'#195#167'o prestado s'#195#163'o de 90 dias a partir da ' +
              'data da entrega. '
            ''
            'Concordo com os termos acima e assino.')
          ParentFont = False
        end
        object Vendedor1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 79.590600000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Defeito Reclamado.: [Vendedor]')
        end
        object FormaPagamento: TfrxMemoView
          Left = 3.779530000000000000
          Top = 58.913420000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto.: [FormaPagamento]')
        end
        object Line4: TfrxLineView
          Top = 393.071120000000000000
          Width = 729.449290000000000000
          ShowHint = False
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
        object Shape1: TfrxShapeView
          Left = 1.779530000000000000
          Top = 400.630180000000000000
          Width = 710.551640000000000000
          Height = 105.283550000000000000
          ShowHint = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 424.645950000000000000
          Width = 710.362710000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Nome_Fantasia'
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetEmpresa."Nome_Fantasia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 2.574830000000000000
          Top = 486.338900000000000000
          Width = 708.583180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'CNPJ.: [CNPJEmpresa]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 2.574830000000000000
          Top = 467.779840000000000000
          Width = 706.583180000000000000
          Height = 16.779530000000000000
          ShowHint = False
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Endere'#195#167'o.: [dbSetEmpresa."Endereco"] [dbSetEmpresa."Bairro"] [d' +
              'bSetEmpresa."Cidade"]/[dbSetEmpresa."UF"] CEP.:[dbSetEmpresa."Ce' +
              'p"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 402.189240000000000000
          Width = 190.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = clMenuText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Assistencia Tecnica')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Top = 516.031850000000000000
          Width = 712.331170000000000000
          Height = 97.504020000000000000
          ShowHint = False
        end
        object Memo11: TfrxMemoView
          Left = 4.118120000000000000
          Top = 535.772110000000000000
          Width = 332.441250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome [dbSetCliente."Descricao"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 339.378170000000000000
          Top = 536.118430000000000000
          Width = 222.511750000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Telefone.: [dbSetCliente."Telefone"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 0.779530000000000000
          Top = 517.252320000000000000
          Width = 175.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = clMenuText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ordem de Servi'#195#167'o')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 567.000000000000000000
          Top = 515.795610000000000000
          Height = 96.000000000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Memo14: TfrxMemoView
          Left = 567.000000000000000000
          Top = 517.795610000000000000
          Width = 145.488250000000000000
          Height = 26.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#194#186' Servi'#195#167'o')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 567.000000000000000000
          Top = 543.795610000000000000
          Width = 145.370130000000000000
          Height = 28.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[NumeroVenda]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 3.779530000000000000
          Top = 863.677490000000000000
          Width = 314.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 5.779530000000000000
          Top = 867.457020000000000000
          Width = 302.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome.:  [dbSetCliente."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 481.440940000000000000
          Top = 828.575140000000000000
          Width = 225.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Data de Saida   ____/____/____')
        end
        object Memo18: TfrxMemoView
          Left = 6.559060000000000000
          Top = 827.914040000000000000
          Width = 217.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Data de Entrada   ____/____/____')
        end
        object Line7: TfrxLineView
          Left = 395.850650000000000000
          Top = 862.488870000000000000
          Width = 314.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          Left = 398.850650000000000000
          Top = 867.268400000000000000
          Width = 310.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Digitell Games Import'#194#180's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 2.779530000000000000
          Top = 618.039890000000000000
          Width = 710.551640000000000000
          Height = 188.976500000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '1 - A loja n'#195#163'o se responsabiliza pela procedencia do aparelho, ' +
              'sendo esta total responsabilidade do cliente.'
            
              '2 - O aparelho n'#195#163'o retirado no prazo de 90 dias poder'#195#161' ser ven' +
              'dido ou desmontado para reposi'#195#167#195#163'o de pe'#195#167'as para suprir gastos' +
              ' de manuten'#195#167'ao conforme a lei 4.131/08 de 62.'
            
              '3 - Caso o aparelho descrito acima apresente outro defeito, dife' +
              'rente do reclamado, mesmo dentro do prazo de garantia estara suj' +
              'eito a um novo or'#195#167'amento.'
            
              '4 - O prazo minimo para o or'#195#167'amento e de ate 7 dias, caso haja ' +
              'um desacordo no prazo estipulado de entrega do apareho s'#195#179' ser'#195#161 +
              ' entregue no prazo de 30 dias conforme a lei ou devolvido nas me' +
              'smas condi'#195#167#195#181'es que foi entregue pelo cliente.'
            
              '5 - O APARELHO S'#195#8220' SER'#195#129' ENTREGUE COM ESSA ORDEM DE SERVI'#195#8225'O OU ' +
              'COM O CPF DO TITULAR.'
            
              '6 - A garantia do servi'#195#167'o prestado s'#195#163'o de 90 dias a partir da ' +
              'data da entrega. '
            ''
            'Concordo com os termos acima e assino.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 2.779530000000000000
          Top = 590.803650000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Defeito Reclamado.: [Vendedor]')
        end
        object Memo22: TfrxMemoView
          Left = 2.779530000000000000
          Top = 570.126470000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto.: [FormaPagamento]')
        end
      end
    end
  end
end
