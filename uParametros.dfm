object frmParametros: TfrmParametros
  Left = 321
  Top = 220
  BorderIcons = []
  Caption = 'Configura'#231'ao de parametros do Sistema'
  ClientHeight = 396
  ClientWidth = 552
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
  object bsSkinStatusBar1: TbsSkinStatusBar
    Left = 0
    Top = 375
    Width = 552
    Height = 21
    HintImageIndex = 0
    TabOrder = 0
    SkinDataName = 'statusbar'
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
    Caption = 'bsSkinStatusBar1'
    Align = alBottom
    SizeGrip = False
  end
  object bsSkinPageControl1: TbsSkinPageControl
    Left = 0
    Top = 53
    Width = 552
    Height = 322
    ActivePage = bsSkinTabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    MouseWheelSupport = False
    TabExtededDraw = False
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
      Caption = '1 -Parametros Gerais'
      object bsSkinCheckRadioBox1: TbsSkinCheckRadioBox
        Left = 10
        Top = 8
        Width = 281
        Height = 25
        HintImageIndex = 0
        TabOrder = 0
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
        Caption = 'Controle de Funcionsario por supervisor'
      end
      object bsSkinLabel1: TbsSkinLabel
        Left = 11
        Top = 39
        Width = 286
        Height = 21
        HintImageIndex = 0
        TabOrder = 1
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
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
        Caption = 'Numero de compra Padrao do Cliente'
        AutoSize = False
      end
      object EdtNumeroCompras: TbsSkinSpinEdit
        Left = 240
        Top = 39
        Width = 57
        Height = 21
        HintImageIndex = 0
        TabOrder = 2
        SkinData = frmPrincipal.SkinPrincipal
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
        Value = 1.000000000000000000
        Increment = 1.000000000000000000
        EditorEnabled = True
        MaxLength = 0
      end
      object bsSkinLabel2: TbsSkinLabel
        Left = 11
        Top = 66
        Width = 286
        Height = 21
        HintImageIndex = 0
        TabOrder = 3
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
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
        Caption = 'Cliente Padra para venda e Servi'#231'o'
        AutoSize = False
      end
      object cmbNome_Cliente: TbsSkinDBLookupComboBox
        Left = 299
        Top = 66
        Width = 199
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
      object cmbCod_Cliente: TbsSkinDBLookupComboBox
        Left = 240
        Top = 66
        Width = 57
        Height = 20
        HintImageIndex = 0
        TabOrder = 5
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
      object chkBloqueioEstoque: TbsSkinCheckRadioBox
        Left = 10
        Top = 168
        Width = 286
        Height = 25
        HintImageIndex = 0
        TabOrder = 6
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
        Caption = 'Bloqueia a venda de produtos sem estoque'
      end
      object bsSkinLabel4: TbsSkinLabel
        Left = 11
        Top = 92
        Width = 286
        Height = 21
        HintImageIndex = 0
        TabOrder = 7
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
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
        Caption = 'Quantidade de dias para bloqueio do cliente'
        AutoSize = False
      end
      object EdtqtdeNumeroDias: TbsSkinSpinEdit
        Left = 240
        Top = 92
        Width = 57
        Height = 21
        HintImageIndex = 0
        TabOrder = 8
        SkinData = frmPrincipal.SkinPrincipal
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
        Value = 1.000000000000000000
        Increment = 1.000000000000000000
        EditorEnabled = True
        MaxLength = 0
      end
      object bsSkinLabel5: TbsSkinLabel
        Left = 12
        Top = 118
        Width = 286
        Height = 21
        HintImageIndex = 0
        TabOrder = 9
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
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
        Caption = 'Valor pad'#227'o do servi'#231'o'
        AutoSize = False
      end
      object edtVlr_Servico: TbsSkinEdit
        Left = 241
        Top = 118
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
        TabOrder = 10
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
      end
      object chkLigaECF: TbsSkinCheckRadioBox
        Left = 10
        Top = 189
        Width = 79
        Height = 25
        HintImageIndex = 0
        TabOrder = 11
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
        Caption = 'Ligar ECF'
      end
      object chkCondicaoNaVenda: TbsSkinCheckRadioBox
        Left = 10
        Top = 145
        Width = 357
        Height = 25
        HintImageIndex = 0
        TabOrder = 12
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
        Caption = 'Mostrar unicamente considi'#231#245'es de pagamento na venda'
      end
      object chkVendeServico: TbsSkinCheckRadioBox
        Left = 9
        Top = 209
        Width = 160
        Height = 25
        HintImageIndex = 0
        TabOrder = 13
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
        Caption = 'Permitir venda de Servi'#231'os'
      end
      object chkEmiteEtiqueta: TbsSkinCheckRadioBox
        Left = 201
        Top = 209
        Width = 224
        Height = 25
        HintImageIndex = 0
        TabOrder = 14
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
        Caption = 'Emitir a etiqueta no fechamento da OS'
      end
      object chkData_Automatica: TbsSkinCheckRadioBox
        Left = 201
        Top = 189
        Width = 224
        Height = 25
        HintImageIndex = 0
        TabOrder = 15
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
        Caption = 'Data do sistema Automatica'
      end
      object cnkCadastraClienteSemCPF: TbsSkinCheckRadioBox
        Left = 9
        Top = 230
        Width = 160
        Height = 25
        HintImageIndex = 0
        TabOrder = 16
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
        Caption = 'Cadastra Cliente sem CPF'
      end
      object chkVendaSemControle: TbsSkinCheckRadioBox
        Left = 201
        Top = 228
        Width = 297
        Height = 25
        HintImageIndex = 0
        TabOrder = 17
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
        Caption = 'Permitir Vendas  sem informar o numero de controle'
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Configura'#231#227'o de Sistema'
      object bsSkinStdLabel1: TbsSkinStdLabel
        Left = 30
        Top = 29
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
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'stdlabel'
        Caption = 'Host Name'
      end
      object bsSkinStdLabel2: TbsSkinStdLabel
        Left = 6
        Top = 53
        Width = 77
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
        Caption = 'Database Name'
      end
      object bsSkinStdLabel3: TbsSkinStdLabel
        Left = 47
        Top = 77
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
        Caption = 'Usuario'
      end
      object bsSkinStdLabel4: TbsSkinStdLabel
        Left = 52
        Top = 101
        Width = 31
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
        Caption = 'Senha'
      end
      object edtHostName: TbsSkinEdit
        Left = 88
        Top = 24
        Width = 121
        Height = 18
        Text = 'edtHostName'
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
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
      end
      object edtDatabaseName: TbsSkinEdit
        Left = 88
        Top = 48
        Width = 121
        Height = 18
        Text = 'bsSkinEdit1'
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
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
      end
      object edtUsuario: TbsSkinEdit
        Left = 88
        Top = 72
        Width = 121
        Height = 18
        Text = 'bsSkinEdit1'
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
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
      end
      object edtSenha: TbsSkinMaskEdit
        Left = 88
        Top = 96
        Width = 121
        Height = 18
        Text = 'edtSenha'
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
        TabOrder = 3
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
        AutoSize = False
        BorderStyle = bsNone
      end
      object rdgTipoSistema: TbsSkinRadioGroup
        Left = 348
        Top = 24
        Width = 150
        Height = 90
        HintImageIndex = 0
        TabOrder = 4
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
        Caption = 'Selecione o tipo de empresa'
        ButtonSkinDataName = 'radiobox'
        ButtonDefaultFont.Charset = DEFAULT_CHARSET
        ButtonDefaultFont.Color = clWindowText
        ButtonDefaultFont.Height = 14
        ButtonDefaultFont.Name = 'Arial'
        ButtonDefaultFont.Style = []
        Items.Strings = (
          'Distribui'#231#227'o de Revenda'
          'Comercio e Servi'#231'o')
      end
      object bsSkinLabel3: TbsSkinLabel
        Left = 11
        Top = 135
        Width = 110
        Height = 21
        HintImageIndex = 0
        TabOrder = 5
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
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
        Caption = 'Nome da Empresa'
        AutoSize = False
      end
      object edtNomeEmpresa: TbsSkinMaskEdit
        Left = 127
        Top = 136
        Width = 354
        Height = 18
        Text = 'edtSenha'
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
        TabOrder = 6
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
        AutoSize = False
        BorderStyle = bsNone
      end
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 552
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 548
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 2
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 539
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
        Left = 417
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
        ExplicitTop = 8
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
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 347
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 76
        ExplicitTop = -5
        ExplicitHeight = 40
      end
    end
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
    Left = 377
    Top = 104
  end
  object QryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 325
    Top = 58
  end
  object dspVariavel: TDataSetProvider
    DataSet = QryVariavel
    Left = 325
    Top = 85
  end
  object srcCadClientes: TDataSource
    DataSet = cdsCadClientes
    Left = 325
    Top = 142
  end
  object cdsCadClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 325
    Top = 114
  end
end
