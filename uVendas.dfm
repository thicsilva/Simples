object frmVendas: TfrmVendas
  Left = 132
  Top = 129
  BorderIcons = []
  Caption = 'Pedidos de Venda'
  ClientHeight = 587
  ClientWidth = 822
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDadosClientes: TbsSkinPanel
    Left = 0
    Top = 53
    Width = 822
    Height = 155
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
    Caption = 'pnlDadosClientes'
    Align = alTop
    Enabled = False
    object btnCadAlunos: TbsSkinSpeedButton
      Left = 483
      Top = 33
      Width = 23
      Height = 20
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
      PopupMenu = MenuCliente
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
    object bsSkinStdLabel12: TbsSkinStdLabel
      Left = 71
      Top = 41
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
    object bsSkinStdLabel6: TbsSkinStdLabel
      Left = 2
      Top = 90
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
      Caption = 'Forma de Pagamento'
    end
    object lblControle: TbsSkinStdLabel
      Left = 6
      Top = 65
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
      Caption = 'Numero de Controler'
    end
    object lblCNPJCPF: TbsSkinStdLabel
      Left = 213
      Top = 64
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
    object bsSkinStdLabel15: TbsSkinStdLabel
      Left = 57
      Top = 114
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'stdlabel'
      Caption = 'Vendedor'
    end
    object bsSkinStdLabel16: TbsSkinStdLabel
      Left = 31
      Top = 14
      Width = 72
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
      Caption = 'Data da Venda'
    end
    object lblVencimento: TbsSkinStdLabel
      Left = 281
      Top = 14
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
      Caption = 'Data de Vencimento'
    end
    object lblNomeTipoVenda: TbsSkinStdLabel
      Left = 31
      Top = 133
      Width = 70
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
      Caption = 'Tipo de Venda'
    end
    object cmbNome_Funcionario: TbsSkinDBLookupComboBox
      Left = 207
      Top = 108
      Width = 299
      Height = 20
      HintImageIndex = 0
      TabOrder = 8
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
      OnChange = cmbNome_FuncionarioChange
    end
    object cmbNome_formaPagamento: TbsSkinDBLookupComboBox
      Left = 207
      Top = 83
      Width = 299
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
      DefaultHeight = 20
      UseSkinFont = True
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'Descricao;Codigo'
      ListSource = srcCadFormasPagamento
      OnChange = cmbNome_formaPagamentoChange
    end
    object edtCod_Funcionario: TbsSkinEdit
      Left = 121
      Top = 107
      Width = 80
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
      TabOrder = 7
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtCod_FuncionarioExit
    end
    object edtCod_FormaPagamento: TbsSkinEdit
      Left = 121
      Top = 83
      Width = 80
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
      TabOrder = 5
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtCod_FormaPagamentoExit
    end
    object edtcod_Cliente: TbsSkinEdit
      Left = 121
      Top = 33
      Width = 112
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
      TabOrder = 2
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtcod_ClienteExit
    end
    object bsSkinPanel3: TbsSkinPanel
      Left = 587
      Top = 1
      Width = 234
      Height = 153
      HintImageIndex = 0
      TabOrder = 14
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
      Caption = 'bsSkinPanel3'
      Align = alRight
      object bsSkinStdLabel7: TbsSkinStdLabel
        Left = 54
        Top = 12
        Width = 83
        Height = 20
        EllipsType = bsetNone
        UseSkinFont = False
        UseSkinColor = False
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'MS Sans Serif'
        DefaultFont.Style = [fsBold]
        SkinDataName = 'stdlabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Caption = 'Sub. Total'
        ParentFont = False
      end
      object bsSkinStdLabel9: TbsSkinStdLabel
        Left = 59
        Top = 50
        Width = 78
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
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Caption = 'Desconto'
        ParentFont = False
      end
      object bsSkinStdLabel10: TbsSkinStdLabel
        Left = 10
        Top = 57
        Width = 6
        Height = 20
        EllipsType = bsetNone
        UseSkinFont = True
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
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bsSkinStdLabel11: TbsSkinStdLabel
        Left = 14
        Top = 94
        Width = 123
        Height = 20
        EllipsType = bsetNone
        UseSkinFont = False
        UseSkinColor = False
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'MS Sans Serif'
        DefaultFont.Style = [fsBold]
        SkinDataName = 'stdlabel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Caption = 'Total da Venda'
        ParentFont = False
      end
      object edtTotalVenda: TEditN
        Left = 143
        Top = 8
        Width = 69
        Height = 24
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = '0,00'
        ColorOnFocus = clInfoBk
        ColorOnNotFocus = clInfoBk
        FontColorOnFocus = clRed
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlue
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignRight
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 39369.000000000000000000
        ValueTime = 0.502512476851851900
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
        TextHint = True
      end
      object edtTotDesconto: TEditN
        Left = 143
        Top = 50
        Width = 69
        Height = 24
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Text = '0,00'
        ColorOnFocus = clInfoBk
        ColorOnNotFocus = clInfoBk
        FontColorOnFocus = clRed
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlue
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignRight
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 39369.000000000000000000
        ValueTime = 0.502512476851851900
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
        TextHint = True
      end
      object edtTotalLiquido: TEditN
        Left = 143
        Top = 91
        Width = 69
        Height = 24
        TabStop = False
        Color = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        Text = '0,00'
        ColorOnFocus = clInfoBk
        ColorOnNotFocus = clInfoBk
        FontColorOnFocus = clRed
        FontColorOnNotFocus = clBlack
        FontColorOnOverWrite = clBlue
        EditType = etFloat
        EditKeyByTab = #9
        EditAlign = etAlignRight
        EditLengthAlign = 0
        EditPrecision = 0
        ValueInteger = 0
        ValueDate = 39369.000000000000000000
        ValueTime = 0.502512476851851900
        TimeSeconds = False
        FirstCharUpper = False
        FirstCharUpList = ' ('
        WidthOnFocus = 0
        TextHint = True
      end
      object pnlRemessaAberta: TPanel
        Left = 2
        Top = 124
        Width = 230
        Height = 24
        Caption = 'Verndedor Com Remessa Aberta'
        Color = clSkyBlue
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
    end
    object cmbNome_Cliente: TbsSkinDBLookupComboBox
      Left = 241
      Top = 33
      Width = 240
      Height = 20
      HintImageIndex = 0
      TabOrder = 12
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
    object cmbCod_formaPagamento: TbsSkinDBLookupComboBox
      Left = 209
      Top = 82
      Width = 22
      Height = 20
      HintImageIndex = 0
      TabOrder = 13
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
      ListSource = srcCadFormasPagamento
      ParentFont = False
      TabStop = False
      OnChange = cmbCod_formaPagamentoChange
    end
    object edtControle: TbsSkinEdit
      Left = 121
      Top = 59
      Width = 80
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
      TabOrder = 4
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtControleExit
    end
    object edtCnpjCpf: TbsSkinEdit
      Left = 255
      Top = 59
      Width = 251
      Height = 20
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
      TabOrder = 15
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object cmbCod_Funcionario: TbsSkinDBLookupComboBox
      Left = 209
      Top = 107
      Width = 22
      Height = 20
      HintImageIndex = 0
      TabOrder = 16
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
      ListSource = srcCadFuncionarios
      ParentFont = False
      TabStop = False
      OnChange = cmbCod_FuncionarioChange
    end
    object edtDataVenda: TbsSkinDateEdit
      Left = 121
      Top = 9
      Width = 114
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
      TabOrder = 0
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object edtdata_Vencimento: TbsSkinDateEdit
      Left = 392
      Top = 9
      Width = 114
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
      TabOrder = 1
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtdata_VencimentoExit
    end
    object edtNome_Cliente: TbsSkinEdit
      Left = 242
      Top = 33
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
      Enabled = False
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
    object cmbCod_Cliente: TbsSkinDBLookupComboBox
      Left = 241
      Top = 9
      Width = 22
      Height = 20
      HintImageIndex = 0
      TabOrder = 11
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
    object cmbCNPJCPF: TbsSkinDBLookupComboBox
      Left = 384
      Top = 57
      Width = 56
      Height = 20
      HintImageIndex = 0
      TabOrder = 17
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
    object cmbRota: TbsSkinDBLookupComboBox
      Left = 207
      Top = 59
      Width = 114
      Height = 20
      HintImageIndex = 0
      TabOrder = 18
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
      ListSource = srcRotas
      OnChange = cmbNome_formaPagamentoChange
    end
    object cmbNome_TipoVenda: TbsSkinDBLookupComboBox
      Left = 207
      Top = 131
      Width = 299
      Height = 20
      HintImageIndex = 0
      TabOrder = 10
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
      OnChange = cmbNome_TipoVendaChange
      OnExit = cmbNome_TipoVendaExit
    end
    object cmbCod_tipoVenda: TbsSkinDBLookupComboBox
      Left = 207
      Top = 132
      Width = 22
      Height = 20
      HintImageIndex = 0
      TabOrder = 19
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
      ListSource = srcTipoVenda
      ParentFont = False
      TabStop = False
      OnChange = cmbCod_tipoVendaChange
    end
    object edtCod_TipoVenda: TbsSkinEdit
      Left = 121
      Top = 131
      Width = 80
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
      TabOrder = 9
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtCod_TipoVendaExit
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 208
    Width = 822
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 40
        Width = 818
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 809
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
      object btnExcluir: TbsSkinSpeedButton
        Left = 448
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
        ImageIndex = 2
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
        Enabled = False
        OnClick = btnExcluirClick
        ExplicitLeft = 447
        ExplicitTop = 8
      end
      object btnAdicionar: TbsSkinSpeedButton
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
        OnClick = btnAdicionarClick
        ExplicitLeft = -6
        ExplicitTop = 8
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 131
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object bsSkinBevel4: TbsSkinBevel
        Left = 366
        Top = 0
        Width = 12
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 561
        ExplicitTop = -5
      end
      object bsSkinBevel6: TbsSkinBevel
        Left = 271
        Top = 0
        Width = 95
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnCadProdutos: TbsSkinSpeedButton
        Left = 201
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
        ImageList = frmPrincipal.Imagebutoes
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 5
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Produtos'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnCadProdutosClick
        ExplicitLeft = 0
        ExplicitTop = 8
      end
      object btnAlterar: TbsSkinSpeedButton
        Left = 378
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
        ImageIndex = 1
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Alterar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        Enabled = False
        OnClick = btnAlterarClick
        ExplicitLeft = 580
        ExplicitTop = 8
      end
      object bsSkinBevel7: TbsSkinBevel
        Left = 588
        Top = 0
        Width = 127
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnCancelar: TbsSkinSpeedButton
        Left = 518
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
        OnClick = btnCancelarClick
        ExplicitLeft = 512
        ExplicitTop = 8
      end
      object btnOkProd: TbsSkinSpeedButton
        Left = 715
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
        Caption = 'O&k'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        Enabled = False
        OnClick = btnOkProdClick
        ExplicitLeft = 679
        ExplicitTop = 8
      end
    end
  end
  object pnlProdutos: TbsSkinPanel
    Left = 0
    Top = 252
    Width = 822
    Height = 55
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
    Align = alTop
    Enabled = False
    object bsSkinStdLabel1: TbsSkinStdLabel
      Left = 10
      Top = 7
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
      Left = 395
      Top = 6
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
    object bsSkinStdLabel3: TbsSkinStdLabel
      Left = 658
      Top = 6
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
    object bsSkinStdLabel4: TbsSkinStdLabel
      Left = 762
      Top = 6
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
    object bsSkinStdLabel5: TbsSkinStdLabel
      Left = 81
      Top = 7
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
    object bsSkinStdLabel8: TbsSkinStdLabel
      Left = 507
      Top = 6
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'stdlabel'
      Caption = 'Desconto'
      Visible = False
    end
    object edtCod_Produto: TbsSkinEdit
      Left = 10
      Top = 21
      Width = 65
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
      TabOrder = 0
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtCod_ProdutoExit
    end
    object cmbNome_Produto: TbsSkinDBLookupComboBox
      Left = 81
      Top = 21
      Width = 272
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
      DropDownWidth = 400
      DefaultColor = clWindow
      ListBoxDefaultItemHeight = 20
      ListBoxUseSkinFont = True
      ListBoxUseSkinItemHeight = True
      KeyField = 'codigo'
      ListField = 'Descricao;Pco_Venda'
      ListSource = srcCadProdutos
      OnChange = cmbNome_ProdutoChange
    end
    object edtQtde_Venda: TbsSkinEdit
      Left = 384
      Top = 21
      Width = 66
      Height = 20
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
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtQtde_VendaExit
    end
    object EdtPco_Venda: TbsSkinEdit
      Left = 646
      Top = 21
      Width = 66
      Height = 20
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
      TabOrder = 4
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = EdtPco_VendaExit
    end
    object edtTotal: TbsSkinEdit
      Left = 738
      Top = 21
      Width = 66
      Height = 20
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
      ParentFont = False
      TabOrder = 5
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtTotalExit
    end
    object edtDesconto: TbsSkinEdit
      Left = 487
      Top = 21
      Width = 66
      Height = 20
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
      Visible = False
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = edtDescontoExit
    end
    object cmbTipoDesconto: TbsSkinComboBox
      Left = 559
      Top = 21
      Width = 42
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
      Text = '%'
      Items.Strings = (
        '$'
        '%')
      ItemIndex = 1
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
  object edtVlr_Desconto: TbsSkinEdit
    Left = 485
    Top = 426
    Width = 45
    Height = 20
    Text = '0,00'
    DefaultColor = clGray
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
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
  end
  object edtLimite_Credito: TEditN
    Left = 358
    Top = 312
    Width = 69
    Height = 24
    TabStop = False
    Color = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    Text = '0,00'
    Visible = False
    ColorOnFocus = clInactiveBorder
    ColorOnNotFocus = clInactiveBorder
    FontColorOnFocus = clRed
    FontColorOnNotFocus = clBlack
    FontColorOnOverWrite = clBlue
    EditType = etFloat
    EditKeyByTab = #9
    EditAlign = etAlignRight
    EditLengthAlign = 0
    EditPrecision = 0
    ValueInteger = 0
    ValueDate = 39369.000000000000000000
    ValueTime = 0.502512476851851900
    TimeSeconds = False
    FirstCharUpper = False
    FirstCharUpList = ' ('
    WidthOnFocus = 0
    TextHint = True
  end
  object edtPco_Tabela: TbsSkinEdit
    Left = 682
    Top = 442
    Width = 66
    Height = 20
    Text = '0,00'
    DefaultColor = cl3DLight
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
    Alignment = taRightJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Visible = False
    ButtonImageIndex = -1
    LeftImageIndex = -1
    LeftImageHotIndex = -1
    LeftImageDownIndex = -1
    RightImageIndex = -1
    RightImageHotIndex = -1
    RightImageDownIndex = -1
    OnExit = EdtPco_VendaExit
  end
  object memoMensagem: TbsSkinMemo
    Left = 461
    Top = 494
    Width = 185
    Height = 89
    Color = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 6
    Visible = False
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
  object bsSkinCoolBar3: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 822
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar3
        ImageIndex = -1
        MinHeight = 49
        Width = 818
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 7
    object bsSkinToolBar3: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 809
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
      object btnFechar: TbsSkinSpeedButton
        Left = 716
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
        Caption = 'F&echar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 2
        Layout = blGlyphTop
        OnClick = btnFecharClick
        ExplicitLeft = 677
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object btnincluir: TbsSkinSpeedButton
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
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Nova &Venda'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnincluirClick
        ExplicitLeft = -6
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 431
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
        Enabled = False
        OnClick = BtnCancelaClick
        ExplicitLeft = 319
        ExplicitTop = 8
        ExplicitHeight = 40
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
        Left = 501
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
        Enabled = False
        OnClick = btnokClick
        ExplicitLeft = 502
        ExplicitTop = 12
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 571
        Top = 0
        Width = 145
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -1
      end
      object bsSkinBevel5: TbsSkinBevel
        Left = 300
        Top = 0
        Width = 131
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 230
        ExplicitTop = -1
      end
      object btnDesconto: TbsSkinSpeedButton
        Left = 230
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
        ImageIndex = 13
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Desconto'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        Enabled = False
        OnClick = btnDescontoClick
        ExplicitLeft = 224
        ExplicitTop = 12
      end
    end
  end
  object PanelStatus: TbsSkinStatusPanel
    Left = 0
    Top = 566
    Width = 822
    Height = 21
    HintImageIndex = 0
    TabOrder = 8
    SkinData = frmPrincipal.SkinEntradaDados
    SkinDataName = 'statuspanel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
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
    Align = alBottom
    Caption = 'PanelStatus'
    AutoSize = False
    ImageIndex = -1
    NumGlyphs = 1
  end
  object PagVendas: TPageControl
    Left = 0
    Top = 307
    Width = 822
    Height = 259
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 9
    OnChange = PagVendasChange
    object TabSheet1: TTabSheet
      Caption = 'Vendas'
      object dbgConsulta: TbsSkinDBGrid
        Left = 0
        Top = 0
        Width = 795
        Height = 212
        HintImageIndex = 0
        TabOrder = 0
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'grid'
        Transparent = False
        WallpaperStretch = False
        UseSkinFont = True
        UseSkinCellHeight = True
        HScrollBar = bsSkinScrollBar1
        VScrollBar = bsSkinScrollBar2
        GridLineColor = clWindowText
        DefaultCellHeight = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ColSizingwithLine = False
        DrawGraphicFields = False
        UseColumnsFont = False
        DefaultRowHeight = 20
        MouseWheelSupport = False
        SaveMultiSelection = False
        PickListBoxSkinDataName = 'listbox'
        PickListBoxCaptionMode = False
        Align = alClient
        DataSource = srcItensVendasTMP
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
      object bsSkinScrollBar2: TbsSkinScrollBar
        Left = 795
        Top = 0
        Width = 19
        Height = 212
        HintImageIndex = 0
        TabOrder = 1
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
        SmallChange = 63
        LargeChange = 63
      end
      object bsSkinScrollBar1: TbsSkinScrollBar
        Left = 0
        Top = 212
        Width = 814
        Height = 19
        HintImageIndex = 0
        TabOrder = 2
        SkinDataName = 'hscrollbar'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 19
        UseSkinFont = True
        Both = True
        BothMarkerWidth = 19
        BothSkinDataName = 'bothhscrollbar'
        CanFocused = False
        Align = alBottom
        Kind = sbHorizontal
        PageSize = 0
        Min = 0
        Max = 127
        Position = 0
        SmallChange = 42
        LargeChange = 42
      end
    end
    object TabGrade: TTabSheet
      Caption = 'Adicionar Grade'
      ImageIndex = 1
      object gridTamanho: TbsSkinDBGrid
        Left = 233
        Top = 23
        Width = 208
        Height = 208
        HintImageIndex = 0
        TabOrder = 3
        SkinDataName = 'grid'
        Transparent = False
        WallpaperStretch = False
        UseSkinFont = True
        UseSkinCellHeight = True
        GridLineColor = clWindowText
        DefaultCellHeight = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ColSizingwithLine = False
        DrawGraphicFields = False
        UseColumnsFont = False
        MouseWheelSupport = False
        SaveMultiSelection = False
        PickListBoxSkinDataName = 'listbox'
        PickListBoxCaptionMode = False
        Align = alRight
        DataSource = srcItemTamanho
        ParentFont = False
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBtnText
        TitleFont.Height = 14
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Tamanho'
            Title.Caption = 'Tamanhos'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBtnText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBtnText
            Title.Font.Height = -15
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 68
            Visible = True
          end>
      end
      object bsSkinButton1: TbsSkinButton
        Left = 7
        Top = 143
        Width = 220
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
        Caption = '    &Adicionar'
        NumGlyphs = 1
        Spacing = 1
        OnClick = bsSkinButton1Click
      end
      object btnRemover: TbsSkinButton
        Left = 7
        Top = 174
        Width = 220
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
        UseSkinFont = False
        Transparent = False
        CheckedMode = False
        ImageList = frmPrincipal.Imagebutoes
        ImageIndex = 9
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
        Caption = '    &Remover'
        NumGlyphs = 1
        Spacing = 1
        OnClick = btnRemoverClick
      end
      object Panel1: TPanel
        Left = 441
        Top = 23
        Width = 373
        Height = 208
        Align = alRight
        TabOrder = 5
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 371
          Height = 32
          Align = alTop
          BevelOuter = bvLowered
          TabOrder = 0
          object bsSkinLabel1: TbsSkinLabel
            Left = 7
            Top = 5
            Width = 58
            Height = 21
            HintImageIndex = 0
            TabOrder = 0
            SkinData = frmPrincipal.SkinEntradaDados
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
            Caption = 'J'#225' Incluido'
            AutoSize = False
          end
          object bsSkinLabel2: TbsSkinLabel
            Left = 208
            Top = 5
            Width = 58
            Height = 21
            HintImageIndex = 0
            TabOrder = 1
            SkinData = frmPrincipal.SkinEntradaDados
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
            Caption = 'Restante'
            AutoSize = False
          end
          object lblRestante: TbsSkinLabel
            Left = 264
            Top = 5
            Width = 97
            Height = 21
            HintImageIndex = 0
            TabOrder = 2
            SkinData = frmPrincipal.SkinPrincipal
            SkinDataName = 'label'
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clRed
            DefaultFont.Height = -13
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
            Alignment = taRightJustify
            Caption = '0,00'
            AutoSize = False
          end
          object lbltotalIncluido: TbsSkinLabel
            Left = 64
            Top = 5
            Width = 97
            Height = 21
            HintImageIndex = 0
            TabOrder = 3
            SkinData = frmPrincipal.SkinPrincipal
            SkinDataName = 'label'
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clRed
            DefaultFont.Height = -13
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
            Alignment = taRightJustify
            Caption = '0,00'
            AutoSize = False
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 33
          Width = 185
          Height = 174
          Align = alLeft
          Caption = 'Panel3'
          TabOrder = 1
          object imgFrente: TcxImage
            Left = 1
            Top = 1
            Align = alClient
            TabOrder = 0
            Height = 172
            Width = 183
          end
        end
        object imgVerso: TcxImage
          Left = 192
          Top = 33
          Align = alRight
          TabOrder = 2
          Height = 174
          Width = 180
        end
      end
      object cmbTamanhos: TbsSkinDBLookupComboBox
        Left = 3
        Top = 435
        Width = 174
        Height = 20
        HintImageIndex = 0
        TabOrder = 6
        SkinDataName = 'combobox'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = -21
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsBold]
        DefaultWidth = 0
        DefaultHeight = 20
        UseSkinFont = False
        DefaultColor = clWindow
        ListBoxDefaultItemHeight = 20
        ListBoxUseSkinFont = False
        ListBoxUseSkinItemHeight = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'ID'
        ListField = 'Tamanho'
        ListSource = dtmVendas.srcTamanhos
        ParentFont = False
      end
      object edtQtdeTamanho: TbsSkinEdit
        Left = 133
        Top = 100
        Width = 94
        Height = 29
        Text = '0'
        DefaultColor = clWindow
        DefaultFont.Charset = ANSI_CHARSET
        DefaultFont.Color = clBlack
        DefaultFont.Height = -19
        DefaultFont.Name = 'Arial Narrow'
        DefaultFont.Style = [fsBold]
        UseSkinFont = False
        DefaultWidth = 0
        DefaultHeight = 0
        ButtonMode = False
        SkinDataName = 'edit'
        Alignment = taRightJustify
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
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
      object bsSkinLabel5: TbsSkinLabel
        Left = 3
        Top = 29
        Width = 224
        Height = 28
        HintImageIndex = 0
        TabOrder = 7
        SkinData = frmPrincipal.SkinEntradaDados
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
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Caption = 'Selecione o Tamanho'
        AutoSize = False
      end
      object pnlProduto: TPanel
        Left = 0
        Top = 0
        Width = 814
        Height = 23
        Align = alTop
        BevelOuter = bvLowered
        Caption = 'pnlProduto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
      object cmdNomeTamanho: TDBLookupComboBox
        Left = 3
        Top = 63
        Width = 224
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'id'
        ListField = 'Tamanho'
        ListSource = dtmVendas.srcTamanhos
        ParentFont = False
        TabOrder = 0
      end
      object bsSkinLabel6: TbsSkinLabel
        Left = 3
        Top = 101
        Width = 110
        Height = 28
        HintImageIndex = 0
        TabOrder = 9
        SkinData = frmPrincipal.SkinEntradaDados
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
        UseSkinSize = False
        UseSkinFontColor = True
        BorderStyle = bvFrame
        Caption = 'Quantidade'
        AutoSize = False
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Observa'#231#227'o'
      ImageIndex = 2
      object MemoObs: TMemo
        Left = 0
        Top = 0
        Width = 814
        Height = 231
        Align = alClient
        Lines.Strings = (
          'Memo1')
        MaxLength = 200
        TabOrder = 0
      end
    end
  end
  object dspItensVendas: TDataSetProvider
    DataSet = qryItensVendas
    Left = 465
    Top = 276
  end
  object cdsCadClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 209
    Top = 211
  end
  object srcCadClientes: TDataSource
    DataSet = cdsCadClientes
    Left = 209
    Top = 239
  end
  object dspVariavel: TDataSetProvider
    DataSet = QryVariavel
    Left = 437
    Top = 245
  end
  object cdsCadProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 238
    Top = 211
  end
  object srcCadProdutos: TDataSource
    DataSet = cdsCadProdutos
    Left = 238
    Top = 239
  end
  object cdsItensVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    Left = 466
    Top = 304
  end
  object srcItensVendas: TDataSource
    DataSet = cdsItensVendas
    Left = 466
    Top = 333
  end
  object cdsItensVendasTMP: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftInteger
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'qtde_Venda'
        DataType = ftFloat
      end
      item
        Name = 'Pco_Venda'
        DataType = ftFloat
      end
      item
        Name = 'vlr_Total'
        DataType = ftFloat
      end
      item
        Name = 'Complemento'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'vlr_Desconto'
        DataType = ftFloat
      end
      item
        Name = 'Pco_Tabela'
        DataType = ftFloat
      end
      item
        Name = 'perc_Comis'
        DataType = ftFloat
      end
      item
        Name = 'Unidade'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'qtdeEmbalagem'
        DataType = ftInteger
      end
      item
        Name = 'seqVenda'
        DataType = ftInteger
      end
      item
        Name = 'SetorId'
        DataType = ftInteger
      end
      item
        Name = 'PesoBruto'
        DataType = ftFloat
      end
      item
        Name = 'PesoLiquido'
        DataType = ftFloat
      end
      item
        Name = 'PrecoCusto'
        DataType = ftFloat
      end
      item
        Name = 'MargemSecundaria'
        DataType = ftFloat
      end
      item
        Name = 'LucroBruto'
        DataType = ftFloat
      end
      item
        Name = 'TipoCalculo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Previsao_Entrega'
        DataType = ftDate
      end
      item
        Name = 'GradeID'
        DataType = ftInteger
      end
      item
        Name = 'TipoProduto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FuncionarioId'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    BeforeOpen = cdsItensVendasTMPBeforeOpen
    Left = 267
    Top = 212
    Data = {
      100200009619E0BD010000001800000017000000000003000000100206436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000A717464655F56656E646108000400000000000950636F
      5F56656E6461080004000000000009766C725F546F74616C0800040000000000
      0B436F6D706C656D656E746F0100490000000100055749445448020002003200
      0C766C725F446573636F6E746F08000400000000000A50636F5F546162656C61
      08000400000000000A706572635F436F6D6973080004000000000007556E6964
      61646501004900000001000557494454480200020003000D71746465456D6261
      6C6167656D04000100000000000873657156656E646104000100000000000753
      65746F7249640400010000000000095065736F427275746F0800040000000000
      0B5065736F4C69717569646F08000400000000000A507265636F437573746F08
      00040000000000104D617267656D536563756E64617269610800040000000000
      0A4C7563726F427275746F08000400000000000B5469706F43616C63756C6F01
      0049000000010005574944544802000200140010507265766973616F5F456E74
      726567610400060000000000074772616465494404000100000000000B546970
      6F50726F6475746F01004900000001000557494454480200020014000D46756E
      63696F6E6172696F496404000100000000000000}
    object cdsItensVendasTMPCodigo: TIntegerField
      DisplayWidth = 7
      FieldName = 'Codigo'
    end
    object cdsItensVendasTMPDescricao: TStringField
      DisplayWidth = 33
      FieldName = 'Descricao'
      Size = 50
    end
    object cdsItensVendasTMPUnidade: TStringField
      DisplayWidth = 7
      FieldName = 'Unidade'
      Size = 3
    end
    object cdsItensVendasTMPqtde_Venda: TFloatField
      DisplayLabel = 'Quantidade.'
      DisplayWidth = 10
      FieldName = 'qtde_Venda'
    end
    object cdsItensVendasTMPPco_Venda: TFloatField
      DisplayLabel = 'Pco. Venda'
      DisplayWidth = 10
      FieldName = 'Pco_Venda'
    end
    object cdsItensVendasTMPvlr_Desconto: TFloatField
      DisplayLabel = 'Desconto'
      DisplayWidth = 10
      FieldName = 'vlr_Desconto'
    end
    object cdsItensVendasTMPvlr_Total: TFloatField
      DisplayLabel = 'Vlr. Total'
      DisplayWidth = 10
      FieldName = 'vlr_Total'
    end
    object cdsItensVendasTMPPco_tabela: TFloatField
      FieldName = 'Pco_tabela'
      Visible = False
    end
    object cdsItensVendasTMPperc_Comis: TFloatField
      FieldName = 'perc_Comis'
      Visible = False
    end
    object cdsItensVendasTMPqtdeEmbalagem: TIntegerField
      FieldName = 'qtdeEmbalagem'
      Visible = False
    end
    object cdsItensVendasTMPseqVenda: TIntegerField
      FieldName = 'seqVenda'
      Visible = False
    end
    object cdsItensVendasTMPSetorId: TIntegerField
      FieldName = 'SetorId'
      Visible = False
    end
    object cdsItensVendasTMPPesoBruto: TFloatField
      FieldName = 'PesoBruto'
      Visible = False
    end
    object cdsItensVendasTMPPesoLiquido: TFloatField
      FieldName = 'PesoLiquido'
      Visible = False
    end
    object cdsItensVendasTMPPrecoCusto: TFloatField
      DisplayWidth = 9
      FieldName = 'PrecoCusto'
    end
    object cdsItensVendasTMPMargemSecundaria: TFloatField
      FieldName = 'MargemSecundaria'
      Visible = False
    end
    object cdsItensVendasTMPLucroBruto: TFloatField
      DisplayLabel = 'Lucro Bruto %'
      DisplayWidth = 10
      FieldName = 'LucroBruto'
    end
    object cdsItensVendasTMPTipoCalculo: TStringField
      FieldName = 'TipoCalculo'
      Visible = False
    end
    object cdsItensVendasTMPPrevisao_Entrega: TDateField
      FieldName = 'Previsao_Entrega'
      Visible = False
    end
    object cdsItensVendasTMPGradeID: TIntegerField
      FieldName = 'GradeID'
      Visible = False
    end
    object cdsItensVendasTMPTipoProduto: TStringField
      FieldName = 'TipoProduto'
      Visible = False
    end
    object cdsItensVendasTMPComplemento: TStringField
      FieldName = 'Complemento'
      Size = 50
    end
    object cdsItensVendasTMPFuncionarioId: TIntegerField
      FieldName = 'FuncionarioId'
    end
  end
  object srcItensVendasTMP: TDataSource
    DataSet = cdsItensVendasTMP
    Left = 267
    Top = 240
  end
  object dspVenda: TDataSetProvider
    DataSet = qryVenda
    Left = 494
    Top = 276
  end
  object cdsVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVenda'
    Left = 494
    Top = 304
  end
  object srcVenda: TDataSource
    DataSet = cdsVenda
    Left = 494
    Top = 333
  end
  object qryVenda: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 494
    Top = 249
  end
  object qryItensVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 465
    Top = 249
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 522
    Top = 216
  end
  object QryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 437
    Top = 218
  end
  object cdsCadFormasPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 181
    Top = 211
  end
  object srcCadFormasPagamento: TDataSource
    DataSet = cdsCadFormasPagamento
    Left = 181
    Top = 239
  end
  object srcCadFuncionarios: TDataSource
    DataSet = cdsCadFuncionarios
    Left = 295
    Top = 240
  end
  object qryPagamento: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 459
    Top = 416
  end
  object dspPagamento: TDataSetProvider
    DataSet = qryPagamento
    Left = 459
    Top = 444
  end
  object cdsPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPagamento'
    Left = 459
    Top = 470
  end
  object srcPagamento: TDataSource
    DataSet = cdsPagamento
    Left = 459
    Top = 498
  end
  object cdsCadFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 293
    Top = 211
  end
  object sdtsConsultaCli: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 472
    Top = 167
  end
  object cdsTempPagamentos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 210
    Data = {
      610000009619E0BD010000001800000003000000000003000000610006436F64
      69676F0100490000000100055749445448020002000300094465736372696361
      6F01004900000001000557494454480200020032000556616C6F720800040000
      0000000000}
    object cdsTempPagamentosCodigo: TStringField
      DisplayWidth = 6
      FieldName = 'Codigo'
      Size = 3
    end
    object cdsTempPagamentosDescricao: TStringField
      DisplayWidth = 44
      FieldName = 'Descricao'
      Size = 50
    end
    object cdsTempPagamentosValor: TFloatField
      DisplayWidth = 10
      FieldName = 'Valor'
    end
  end
  object sdtsPesqPrepagamento: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 564
    Top = 479
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
    Left = 640
    Top = 448
  end
  object sdtsPesqDescCli: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 592
    Top = 479
  end
  object qryItensMateriaPrima: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 487
    Top = 415
  end
  object dspItensMateriaPrima: TDataSetProvider
    DataSet = qryItensMateriaPrima
    Left = 488
    Top = 443
  end
  object cdsItensMateriaPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensMateriaPrima'
    Left = 488
    Top = 471
  end
  object srcItensMateriaPrima: TDataSource
    DataSet = cdsItensMateriaPrima
    Left = 488
    Top = 499
  end
  object srcCadFichaTecnica: TDataSource
    DataSet = cdsCadFichaTecnica
    Left = 348
    Top = 238
  end
  object cdsCadFichaTecnica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 348
    Top = 210
  end
  object sdtsVerSaldos: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 620
    Top = 479
  end
  object cdsRotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 376
    Top = 210
  end
  object srcRotas: TDataSource
    DataSet = cdsRotas
    Left = 376
    Top = 238
  end
  object cdsSaldos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSaldos'
    Left = 681
    Top = 523
  end
  object dspSaldos: TDataSetProvider
    DataSet = qrySaldos
    Left = 681
    Top = 495
  end
  object qrySaldos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 681
    Top = 467
  end
  object cdsTipoVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 405
    Top = 211
  end
  object srcTipoVenda: TDataSource
    DataSet = cdsTipoVenda
    Left = 405
    Top = 239
  end
  object frxVenda: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41706.281067442100000000
    ReportOptions.LastChange = 41737.871914560200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 256
    Top = 405
    Datasets = <
      item
        DataSet = frxDBCliente
        DataSetName = 'dbSetCliente'
      end
      item
        DataSet = frxDbEmpresa
        DataSetName = 'dbSetEmpresa'
      end
      item
        DataSet = frxDbItens
        DataSetName = 'dbSetItens'
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
        FillType = ftBrush
        Height = 113.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 0.779530000000000000
          Top = 4.661410000000000000
          Width = 710.551640000000000000
          Height = 105.283550000000000000
        end
        object dbSetEmpresaNome_Fantasia: TfrxMemoView
          Left = 206.669450000000000000
          Top = 24.897650000000000000
          Width = 502.488560000000000000
          Height = 18.897650000000000000
          DataField = 'Nome_Fantasia'
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbSetEmpresa."Nome_Fantasia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dbSetEmpresaCNPJCPF: TfrxMemoView
          Left = 206.669450000000000000
          Top = 72.472480000000000000
          Width = 504.488560000000000000
          Height = 18.897650000000000000
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ.: [CNPJEmpresa]')
          ParentFont = False
        end
        object dbSetEmpresaEndereco: TfrxMemoView
          Left = 206.669450000000000000
          Top = 41.574830000000000000
          Width = 502.488560000000000000
          Height = 31.897650000000000000
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Endere'#195#167'o.: [dbSetEmpresa."Endereco"] [dbSetEmpresa."Bairro"] [d' +
              'bSetEmpresa."Cidade"]/[dbSetEmpresa."UF"] CEP.:[dbSetEmpresa."Ce' +
              'p"]')
          ParentFont = False
        end
        object dbSetEmpresaemail: TfrxMemoView
          Left = 206.669450000000000000
          Top = 88.370130000000000000
          Width = 504.709030000000000000
          Height = 18.897650000000000000
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Email.: [dbSetEmpresa."email"] Telefone..: [dbSetEmpresa."Telefo' +
              'ne"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 3.779530000000000000
          Top = 30.881880000000000000
          Width = 162.826840000000000000
          Height = 76.000000000000000000
          Center = True
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000030200
            0000DA08020000009A5B6230000000017352474200AECE1CE90000000467414D
            410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
            FFFF4944415478DAEC5D07601455DE9FD99DD99E5E480209BDF722A0A820A0E8
            D945C576162C9FE7E9D9FBD9CBA9787A96533C1BF6828A0A62011411A443423A
            A4B74DD9B4ED6D66BE57666667D376373B2121CC8F647999DD7DF3E6CD9BF77E
            EF5F498EE308050421ED07B1CC21300CC3B2AC5EAFEFEF362A50A04081020511
            C0E974AA10C860881F90968F4F900A0DC250689002050A142818645068504828
            3488874283142850A040C1208342834242A1413C141AA4408102050A0619141A
            14120A0DE2A1D020050A14285030C8A0D0A0905068100F85062950A040818241
            06850685844283782834488102050A140C3228342824141AC443A1410A142850
            A0609041A14121A1D0201E0A0D52A040810205830C0A0D0A098506F150689002
            050A1428186450685048283488874283142850A040C1208342834242A1413C14
            1AA4408102050A0619141A14120A0DE2A1D020050A14285030C8A0D0A0905068
            100F85062950A04081824106850685844283782834488102050A140C32283428
            24141AC443A1410A142850A0609041A14121A1D0201E0A0D52A040810205830C
            0A0D0A098506F150689002050A1428186450685048283488874283142850A040
            C1208342834242A1413C141AA4408102050A0619141A14120A0DE2A1D020050A
            14285030C8A0D0A0905068100F85062950A04081824106850685844283782834
            488102050A140C32283428248E551A049A2DEFCD53689002050A142818645068
            50481CAB34A8A9F28F84F4D994C62057850A0D52A040810205830C0A0D0A8963
            95061DD9F16C62E682A4AC857255A8D020050A14285030C8A0D0A090385669D0
            816FCE4B18BA60E4BCFBE5AA50A1410A142850A0609041A14121714CD2209FAB
            29FBAB53B471E3A79DF79D5C752A34488102050A140C32283428248E491AD45A
            F17DD5CEBB19563575F94E5A97284B9D0A0D52A040810205830C0A0D0A896392
            06D5EEB9BBB502CA8186CE7D2161C445B2D4A9D020050A14285030C8A0D0A090
            38F66810C7FA2B7F9AE575DB40599FB62CF3A4D5F254ABD020050A14285030B8
            A0D0A09038F66890A77947C3CE2B7099E1B4C3CFCA515132101485062950A040
            81824106850685C4B14783DA0B1F7556BE070A2CA706AF0933561BD2CF8ABE5A
            85062950A04081824106850685C4B147835AB7CF623DB5A0C0B29006D1A917C7
            4F7F35FA6A151AA4408102050A0619141A1412C7180D62ECB9EEEC536181A1F0
            113F119F704A01A9A2A3AC59A1410A142850A0609041A1412171ACD1A09A67D9
            DAE7608151C15716DE3FEDA46FA8C4D3A2AC59A1410A142850A0609041A14121
            718CD1202E7F1EE1CA2538FEB6F9915E8C48BE9E1EFD72B4352B34488102050A
            140C2E283428248E251AC4792A89FC0981BF91280852226A0831A38424555155
            AED020050A14285030B8A0D0A09038A66850D36B44DD3DA22888A74118637F25
            634E8CAAF2BEA74156ABB5ACACACB1B1B14502BBDDCE20F443872A50A0408182
            418DA6A626B7DB0D16B2E39CFA242727DF78E38D8B172FEE7CEDC7140D2A3989
            70ED0BD020DC70F027E043C9D79359AF4755B9DC34087CABB8B8383B3BBBA4A4
            A414C162B1F477172A50A0408182E30875757560B37D0C2DF47D8A3BEFBCF3A5
            975EEA70F098A1419CA78828994A888DE548C92B41A86288C955A4CAD0FBFAE5
            A0417EBF3F272767DFBE7DFBF7EF3F70E000187CFDDD6D0A142850A0E0F88542
            833AE0D75F7F3DEDB4209FAA638706353E4C589E97FC2D10205C063F99EF9109
            57F6BEFE286890C3E1D8BA75EB962D5BB66DDB160EF5898B8BCBCCCA8A8B8DA3
            699A02FF685A43D3E05EF46F0F478BE34FCA3AA0A0F47E3F4319FF0A06242C16
            8BC7E3C19AA0803E8844FFE4C3001FFD6005FFFCF3CFBC5E2F283FF6D8638F3F
            FE7850E38F091AC4712C513A82F0D70A7F8B6F90013E6458488EDA1CC52922A6
            41606C6DDEBCF9C71F7F04EC07F76F675014959E9191392C136018FECDCA3419
            4D5D7C549946FB15C7A1B25C810211CAF81FACC03B73707F052B69FC177FBB8F
            93FBDED0D070D289F370F991471E79F2C927A5EF1E1B3488706E216A4E0FFC89
            9ACC7516088D2922B5A37B7786886890D96CFEECB3CFD6AE5DDBDADADAB92A9A
            A6A7CF9871E28927CD9C3933232343A552F777F72918FC384EA633050ABA8432
            FEBB83DD6EC3BC87A74104FE4BA0413249850678FF7FF0C19AC71F7B149777ED
            DA356FDEBCA0C61F1B34A8E16AC2F671C7832C7AE5247C28E92132F5A9DE9D21
            1C1A04CAA0073FF9E4932D5BB674EEB7B8F878D0B927CE3F69D6ECD9BD702B1B
            E0C34881823E8532FEFB174AF7F72FFA6EFCDB6D76CC7B300D227816244A8388
            01AFD192012B2EBD64F7EE5DA0909999595959D9A1B78F051AC4DA89AA348273
            C2B2D85856FA01413EA41E4A8CAEEC5D00A19E6990CFE7FBE9A79FDE7BEFBDB2
            B2B20E5F1C3162C4FC134F3AF1C4F913264C02E3ACBF3BABDFA02C63FD0BA5FB
            FB17CAF8EF5FC86BE9329860B3DBC91E681031F8E70E8BC53267F64CBCACDF71
            C71D2FBFDC31D8F2B14083EC6B8896957C59643F9CE49595BC66FC40987A9370
            BE3B1AC4B2ECBA75EB56AD5A65B3D9A49F07436AD1A2D32EBDF4D23163C7C972
            95837D280E7428CB58FF4259C61428E80B2834E8E38F3E7AF8E1077179FBF6ED
            0B162CE8F081638106352D263C5B096933A53221910F611A64B888C8F8AA1727
            E992066DDDBAF5C1071FDCB76F5F5C5C5C6A6A2A3EA8D7EBCF3EFB9C8B2FBE24
            75486A7F77CD0082B28C2950A0A0DF30D8D7F25EC3DE230D2264DA010EE46DE4
            652B2EDDB1633B28A4A7A7D7D4D47456DA0C781AE43B4C344EE878900B7E158C
            8450594D0C2F21E8E1919EA7030DCAC9C90104E8E79F7F2690E007D3A0A4A4E4
            8B962F3FEFBCF3BA76F552A04041AFD17FD3A8906940A506F32329188D72C8EC
            10C983E10BC3B1037CAA8C0E0379193B1ED087B6419006118805F5210D1AB068
            69699E39633ACED370EBADB7BEF6DA6B9D3F33E06950FB3F086737E1A1A5EC87
            10F810788DBD83487A29DCFA0588FDE076BB1F7FFCF1175F7C114C7FF808183D
            B367CFB9E5965B162F594A53547FF7C840C5A07E96063E06F75C260B4017516A
            35057EF12BF8450C28CCAF634AE4F7337E30A7FAFD3E50F0FBC57943E9FFFE85
            D2FDDDC16E77083488C486B3C7150DFAF4934FEEBDF76E5CDEBA75EBC2850B3B
            7F6660D320D646340F25B8E08084527B2042284BC910672232AB09555C44A7C2
            FDB07BF7EE952B571616168AC7E3E3131E7CF0C1E5175F6230F43E447538908E
            45A3414FD347956FD9ED4E7F1FE73553ABC898983E97A2D9608EB6DE0CE92EE7
            0293C9089ADDA70DF678BC6E4F20E8945EA7D568E83EEEA47E06C3B07687B3C3
            C13E9A8A01E3A1295AA3A1280A6C61640E5D01260DC08ABC3E9F0FFCFA7D037A
            2E5530B0D197D22007A85A10061D7734E88ACB5700F6030AA9A9A97575756042
            E8FC99814D835CAF118EDB838E70C1850E26D29CF013F70211774FF8E7A9ADAD
            BDF3CE3BD7AE5D2B1E898B8B7BF0A1872FBD7405183B589E262F0DEA90E84E0A
            BD5E1B171BDB97DDDA05DADAAD6EB7477A44F667C3A0D7F5350D0277CAD2DC1A
            7D3D186A952A3939B14F1B4C40996D9BCFEF17FF4C4E4AE8F2411D4C70389D80
            76F75DFD80B96A78D011396F22610F8BC4C0601221D56A15604E613E08E089F6
            7A7D1E8F5B4A6AFB0E837BE9EA0594EEE80E768783C09A5F641F441C4F34A8AD
            AD6DEA94C97E34C1DE7CF3CD6FBEF966971F1BC0340834AC7D02C11EE9FADD2E
            3562844086544389F43282A4C3B9BA6DDBB6AD5CB952EA09BF6CD9998F3FF1E4
            D0A143F1D78F260DA2D4EAC4C4F8A33F2EAD569BC3E912FFEC18795D0E2426C4
            F7B588CBE1705A6D41B2C30E1712D10519F47A93C9D8A70D0643ABC9D222FE49
            D37452627C9F9E7120C0D2DCE2F707891E85DB24FED99B6AD52AB556A7D522C9
            4F0F1F032CA7B9C55ADFD052DFD0DCD0D0D26E7582616377B8C1F877B93C1D26
            0CB074988C7AA351673419402125292E2D2D29232D296D48924EA7E9A67ECEE3
            F1385D6E86F1F7FA5A4242F148186CE8B3FBE9106810B692268E271AF4F9E79F
            DF713B2F49D9B469D3D2A54BBBFCD800A641BE9F09C75981C1216D6657418304
            1369E160C2478421448A31B0083DFFFCF34F3CF184980A232121E1A187FF79D9
            8ACBF0EC154C83228E88D80340C59DC71E188E802B88C280DC82328FC7D7A77D
            3C73DA187CBA76ABB5ADCD2A36039B4C90844A62571715542A755262022E5756
            D53735B7CB7509C386A6A4A5F2321B737D03D8910B5721891F4F40F3D70E0F7F
            4824C4C763358AD5EA3C5C5A2D5783C16A3A615C162E5BADD6D676ABF816B8FB
            312628306358F660CE91DED53F303163EA18DC993E9FDF5C5F2F7D0BDC2574A7
            90338B1A2A21BB5FE3BB9CAC489D4EABD3E9BA633F6E8FF770494D555503E03D
            F50DAD0D4D6D7E89F8ADD7484C881D3B7AD8F87199E3C70E03E5CE1FF078BC36
            BBDDE7F349C2F7CAB7D80DDEA5AB9718B00B597FE3E8D0A081C9A5AEBCF2CACD
            9B618AADA4A424B3D94CD35DDB1B0C601AE43C97F0FFD8F55B1C223B9D356284
            840CA96710A9077AA8DE62B1DC76DB6D802D8A47162F5EB2EAC517D3D2D2A571
            83C00BC3C073C84D83BA9006C5C6C480CD2C2EEFD85DF0D1675BFABA8F9F79EC
            9A24348383F5B8B1A9191F048C418D172404355C99A21DE27A83DE2888D39E7C
            EE93BAFA96E8EA0BE0813B2F1D317C0801D7575F65558D781C3419513874016A
            F49F2A82EB009F4F1478DB861F776FF8798F5C0D5EB664D685E7F2812BAAAB6B
            3C926C7423470CC7ACB4A0B8EAD537BF93EB8CFD8E21A9F14F3CF4575C6E6969
            6D094E41238E33FC82465F58D56A341A2D94FE683A3F4A804756543514165717
            15579557D4336CDFCE7229C971D3A78C3C61D6B8E159433ABC05B65856ABCDEB
            F38246628E3700178C01D8A4E30E47471A44225FC8E3431A64B3D9264E9808D6
            0550BEFEFAEBDF79E79DEE3E395069105B4AD8A776F31E137815F95067F32050
            4EDC4C68177759457373F3B265CBF6EFDFCFF70249DE7AEB6DF7DE771F8516A1
            601A7494A4417ABDC168E4894255ADE5F997BFF2F9FBD66619E0E1BB2E199E05
            A31F8111535DCD67AE555370315223871AE45343456F261C1F9F80850175E6E6
            C79FFF3CCADA44A424C63EF328BFBE025EDBD8D824BE051E798A060D87E61D2A
            7411E05FF8CFBB0101971F79F69386C636B9DAFCCF7B57640D4D26506ADED2D2
            802AD668320ECFE2A5441F7CF6EB8EDD85BDAB7F00E2DC65279C7BD65C5C2E2D
            2D95323FE8BD4551F8366127AE709C3101FB0177A7B31195D7E72F28AA3A78A8
            EC507E85C3E909598FEC484B8D5F307FD2497327C69874D2E34E97ABADAD0DE6
            3EC4022F24A144D7DFCB130DD6A5AB77503AA30738EC0E822484BCAA2AF2B8A1
            416BD7AEFDFB2DB7E2F28F3FFE78E6996776F7C9814A83DCF712DE77BB7A4354
            12896448E0439DC9907A1197D88540252F2F6FF9F2E5478EF04A0793C9B47AF5
            EAC58B0384A91B1AD487B641344DC7C6C6E2234E97E78955EB2C2DD6DED71E36
            FE71D3B2E993608C25A7D379F830DF21140D5724F042D13474B0A16975744942
            C0729590C04B56D6FDB077C3A68372B5FFECA5332F3AE7045C2E2A2A76BBDDE2
            5B2A68DF8A9B8F1657F87F049649A0C178950594F48955DFC8D5E0B4D4B8671E
            5A81CBE6FAFA868606F1ADCCCCCCA444A8DDF333CC1D0F7FE4721F0D4BDBA383
            A71FB8243D0D0E0097DB5D5C5C2C7D4BA582430DFB7161C0DBD4CDB40C1E109D
            0E6AC03A102086610F1C2ADF7BB02CB7A8DAEB9541E11525341A6AD14993CE5C
            3C2D2E363069B02CDBDAD6E6743A907855058314F15BF3DE9C62B02E5D0A64C7
            714B83AEFEEB353FFDF4130137E1F160A6D56834DD7D7240D220B691B0CFE688
            2EA633327010D3205F8009815729196270B2D546429D2CADE1D0A1434B972E6D
            6AE2C50663C68EF9E0830F468F1A1D143E9190D0208E6058587F2FB2A5F6042E
            B0110403343E2E1E6B6DC1195F7E7BD3A102D92C517AC6CACB4E39753E4C06E2
            F178B20F1DC207690C4420341A1A8C9E287D97A05C45CFAF07F73DFD65A3C516
            4D6D523C75FF8599E9903AB85CAEDCBC3CF13878D2D5941AFB496BD0D5686039
            5CAF1FF0ADB8583EE0C297EBF76EDC7248AE069FBF6CE68567CDC2E54379796E
            176F960E1A366BE64CDCCF07F32A5F7967B35C67EC770CCB487CFABE0B71B9BA
            A6DA6C0E180681BB0109B7063254788FF8DBD485D00E3C1D3A9D5EA3D176F0FC
            027B86DFFE2CDABCADA0B5BD0F5DCF7A078A522D3A71FCF9CB6649254360A036
            599A48B43780FA3FB5BAD3AA141E06E9D2D53B289DD10370DCA03EA54103B0FB
            C1558F1F3F11AC6BA07CCD35D7AC59B3A6A7F60F401AC4B99F26BCAB51B1C3EA
            CB480B022562246488E92816D23E40C43C2B7E3F37371770A0C6C646FCE794A9
            533EF9E493B4B43422288A34179C5A156CE340B5D0BA45CE6B9428C5E262E345
            EBCEEF7ECEFE7AE3815E571B292E3D67F639A74F2790C46BE7AE5DA85709B816
            A10509FEAFA1B55A4824A219E87171BC64A5BCCAF2D8BFBF97ABF11969F1CF3D
            78112E57565656D7480D83480D2D5C036472E02AB4E12BC50C06235874093400
            EE7AE2CBE656875C6D7EFEA18BD287405F3087C371303B5B3C9E98983869E244
            5C7EE383ADBB0E94F5AEFE0108718C01ECDDB70F4F4C18E036A1BB44F37709DF
            A6601A043EA3D71BB45A5D87C9BAD162FDE5F782DF771FE96B3782286132EAAE
            BC70EE8213C688477C3E9FB9BE8E6559A871461A681534878A6C3122650D6735
            0097310572E128D0A001886FBE5977D34D37E3F2FAF5EBCF39E79C1E3E3CE068
            10C7B610F653C1AE4938203221A9A18C4880443ED40D19626288C412429D023E
            969F9FBF78F16291039D71C6E9EFBEFB0E9876F9F3769B611ED220F0DA47B641
            068349A7E3378B398575CFADDE74346FC8598B265D7311AF54DAF1E79F0C0A9C
            0D0804B23CE51727AD4E435374AF9F14B0AAC5C6F24EE01FAFDBBBE1B702B91A
            7FE9D9332E5A16585F5D82460C6FB5699A0257011659F082AE42AB22C3359116
            79DBE1F2C6475FFE31ACEF8481E143139FBFFF5C5C2EAFA890F2B689E3C7A7A4
            C051EAF1FA6F7AE8738FB7CFCDC28E1A5E7BECA294A4180299E1E71C0AC8D5D0
            D48C6F1364DD5A68EF0C4D9EA5AE89E018E0401D2440C5658D6014ED3B5439C0
            A6AE9E306D42FA8D2B4EC4FD40A05D47434383DBE3044F166F84079564AAF0FD
            E007E5D2A5A02F703468D0C01B8CD75EBB72C3FA1F40212626A6A9A9495CE8BB
            6EFE80A341EE7F13DEB73AC981A49098484BF8504732C4F9201302C774F711A6
            E7F2F2F2962E5D2A9A629C71C619EFBEFBB6B46BFA85068159DE64E267464B8B
            E39EE77FB0398FAA45C8297346DC71CDC9B80C9804B6ADA1210DD24868105CA6
            7AFDA8E8F546CCF34057FEDF23DF34B7BB7A574F67BCFEC879E9A9D0CDCD66B7
            674B242BE041074B0BEF4604F57A5AB8C6D2B42ABC0D346050B18246ECBDAFF6
            FEF07B7138DF0A07579D37F3C2D3270BBDBDD72DC845C00C357FEE3C4CBC761C
            A87CE9FD3FE43A63BF63EC88A4E7EE3E0B974BCBCBEAEAEAC4B7C09AAFE26F13
            B83B14BA49B0A452C3DBA45651068391A2020EAE0CC3EECAA95EFF5BC1918AE6
            FEBEACDEC064A0EFBD7EE1947169F84FF038D499EB5C4E0732C553239B28412C
            44845E57648E1B34F096310572E1389406399DCEF1E326B990C9C195575EF9F1
            C71FF7FCF981458338AE8DB09D01AE226C1A84C53F1DC8903B2016F2B10411DB
            4AEE9938E95491032D59B2E4830FDFD7061B4C75671BD4773488525331317178
            08FAFDCCBD2F6D3E5275B4E7F7E9E3863CF38F25B89C9D9363B343AB1D8AA278
            619096D6D2884D6835BD7E52626378C94A4149D37DFFD92457CBC76426FEE77E
            DEF2BFACBCBCB6AE567C4BC5AB5AF0AA8A255B609DA5C8F0ECBCF53A5E3EC7B2
            DCD50FAF6BB3B9C3FA5A1878F789F38624C1B040502E921B908BA424274F18CF
            E70F7EE67FDB761EAAE95DFD0310372E9F75FE69F0D2C08304989F37D8470CDF
            26AC7505AF806F5350EE48EA744670D7A4B3737691F9ADB5FBAB1B8E86DF40DF
            01709C9B2E9973F6A963F19FA04F6A6AAB111342C651941A3B6962B150CF187C
            4B5734503AA3071C051A34A05804C0F7DFAD5FB9F2465C5EB76EDD05175CD0F3
            E707180D72BF417845E7FE2E9990D43C48CA843019EA2016F212AC0F143FFD5A
            75E5FFF15F5CBA74C99A35EF69751D456447591A4448F801C04B9FEF5BBFBDF4
            E877F888F4B8F71FE6C944416141730B0CE743516AAD6055A3D5F034A877A183
            D46A1A503D5C7EE58BFDDFFE512257CB6FBE60FA8AA53C75D8BB77AFC71BB038
            01EB08A64058A0A583AA311A7675981AB1D804B029078583871BEF7AF537B91A
            3C6944D27FEFE16398969595D5990372918913262625258182C3EDBBF0FE6F7D
            0CDBBB530C3480FEFEF299F392E3E083D3DEDE9E9B972B7D172CF8D8784B8B8C
            B7745A1DA2DC3A83DE2835C9AF6F76BCF94DF6B69CC1430D2F5D3CFE6F17CDC0
            6596652B2A2BBC5E374DA17FC85F0ED94E6326D4ED909537D3DD805A058E43F4
            29A93D0EA541D75F7FD3B7EB60DC35A3D1D8D4D414D2BD6900D1208EB311B673
            C15A2012208EE8E8E12C318B263AD1A00E6408AC8B3E8E73121C0BB8D0C4F9C4
            913262C68CE91B367CA7D5E9BA3AFB51A54146430C98F37179E3AE8AA73E942D
            3A5F444888D16E7CFE7C5C2E292931D79B09448330F9C1E6358805697A6792A9
            D79BC0F246208DC6B90FAD6FB5C916CA65DDD3E7A42542EF33ABD57A2837473C
            4EA208341A5E1306936AEA743A7021E1FA884978DB739FECFB6E876CA6CA775C
            3C73C56228064072913DA25C44ADA6E6CD9D87CD5FFA7124F405668D4DFDEF9D
            8B70198CAEFA06B3F816BE4DBCCC1119E41B0C3AB031D06A03CFA6D7CF7CFC4B
            F1873F177A7C83C7520AE3EA3326FCED8269B8CC30FEE22387C1B0D020E74C30
            6871942B825FB0BAAE61F02D5D0AFA087647DF7B8A0DA4C1E876BBC78E9EE840
            C99B57AC58218D90DC6DFB07100DF2BCCB79DE4745517BD19DA718DC2E0B521F
            A21313F24898908BE0BC608A59B79EBBF391E1DF7EFFCDB061C3BA3E7BB73408
            D028565E1AA4D3EAF53ADE81FC704DFBB52FFEE6F5F59300802476BF7201D897
            13BCB31574D4077F6212010D6B781EA40DD3B0A603626312F102BFABB0E1D6D7
            77C8D5EA69A312DFBB7B112E979695D69B25EBAB8AC41A16F40AFF072F6A2A5C
            1F31BDCE8457623FC39EF1E046AB4326532D92F8E999BF24C7C19ADBDBDBF3F2
            021AB1D42143C68E1987CBB7BDBE63676143EFCE3000F1E06533969F328A40CF
            D19EBDBBFC3E31DA05896E13B661A7755A8DD1684A4A4A950A81F616373EFB79
            7675A3BD37273E1670E7F269572EE6DDC700952FAF2883F129782604433C9028
            A836D9AD1190AC9E6203691953202F8E020D1A50F861C3C6BF5E751D2EAF5DBB
            F6E28B2F0EF99581428338CEC9D94073ED02F591CA81D4DDB88901B0C164C8DB
            810C9150B6E4034C0870993D05FF1A33F1BAEE1B7094A4416AB5C6648CC123CF
            E6F2AD7CF1B7BAE6FE0C79B2FEA9331363E0F26C369BCBCAA0D24A85681014A8
            20071E2C0EC27AA28840812B35F1B996FEF5D9C10DBB2BE56AF35DCBA789EBEB
            DE7DBB7D421E3102E52BC07ED7C8381A65DAD46AC8B0D368C49A78DEB6B3A0E1
            9EFFED94ABC1B3C624BF762B6F8A5E525AD2501FE06D93264F498887A105DBEC
            9EF31EF9891918CF63F4000BF8FAA7CF8C334291676B6B4B41417EE03DFE3661
            AB202A3121392929459C8B5D1EFF2BDFE6ADDF59D1DF57D0E778F9E693E64E48
            C5E59A9AAAE696661A0A32B15D1B0CDC05CD84D4DD180A0DAEA52B6A0C92A7A6
            2F70146850F4D99664C48D37DEB2F6CBAF0914EAAFA9A9C9680C9D1E7BC0D020
            CFA79CE76DC47EF0721BBEA718232143E28F575090D9496C24C479BDEC023BB1
            B6BB5DD4D1A14160349A4C8148898FACD90796DB682A9C3E3A31A734AAFC5C6F
            DF75EAA87448562C164B71314CE040AA5501DB20ECC0A3D3A9224FA8A1D79900
            1101051FC32C7F7C93C32D4F785FF0C47DF9C8524CDDDADADBF2F3F324EF1134
            4589864198C0812D76984F29F8AAD1C0F3B6E73E3BB8E9406D38DF0A07772E9F
            7ACE7C18AD9BE76D825C04AC7527CC9987A7A1F53B2BFFF34D6E346719503861
            7CCA7337CCC3E5232587C5401504BA83D02418B2544D7AFAD0B8B804F1ADA2AA
            B6673F3D58DB2C5BA0A6818CC418CDBB772F8A35425F0D96650B0AF3FC7EBF06
            C72C45FA42EC44A6EA52122BAFA3D8405AC68E43F469EF3B8E276990D7EB1D35
            6AA2CD06A5C8CB972FFFEAABAFC2F9D680A0411CE7E2EC57119C681584946264
            374C88E3E540123ED4810C8932212FC73949F827FEF1D9B90FFDC4E9DDB4414A
            8358F1608006E96548A66134C6A9D5BC0FF0DAAD251FFD129533F65FE60DD76A
            D4EBFE88CA7EE5C995F3668C8181B6ADD6F65CA4AC010F4C20EA208EE6A2D3F1
            99BF23414C4C2289BCB3F614363CFDD1BEE87B0F63FA98E4A756F2EB6B49C991
            86C6405462C0D578E723BEE590C4C1E0D1E1B55CA7376968C8AEBC7EE6AA6736
            BB3DF2F03630FF7CF8D0D258035CEDA05CA4302017494B4B1F3D8AD78C3CF4F6
            AEBCF263D215BC4BDC71F1F4C5B3A0021A2CF07BF6EE62C4047924BA4D146D30
            18468E18A5171E2B96E5D6FE5EFAD996C36C1FA7411D50983F69C84357CDC1E5
            E6164B797929940221CB366839AEA5517CC52E822B0EA6A52B7A0C84556CC0E2
            28D0A08133187FFAE997152BAEC6E5CF3EFBECB2CB2E0BABFD036100719E2F38
            CF872892885414D4A57FB3982903F321F14F9E0C91120E845E1D98036132C470
            9936EE678E88E9A20D21A5415127D3D0EA4C5A0D6F017AA8D4F2E49AFD6C149D
            9F1CA77BE51F277FBCE9F08FBBAAA269D51D974C3F757A3A81C2FC1F3808C90A
            0CC1CC4B542099D061994A2409B90824593108929597BFCCF9E39039A2AFF780
            5B2E98B2748EB0BEEEDBCDF805B282542DC8ED08B9C86B69681C8DB2758659B3
            C8DB7615D4BFF0697698DF0A8999E3921FB99A5FEA8E94144BE52253A74CC331
            8A5AACEE1B576D1D00CFA23CA028D59A07161B7470CC34375B8A8A2569624912
            F0D2F8F8845123C702CE8A8F599DDE173FCFCE2B8B4AAE798CE2BE2B66023284
            CB7979D95E9F17668041D1BA50C42E3884559D84B1F28E9481B38C1DBB00D38F
            10E713F20AF42CC35FB47CB0A1BEDB8737E0B89206DD7CF36D9F7EFA2581B22F
            373535C5C4C484F3ADFEA7411CDBC2D96F26486F80FD70A2A758D002468A1642
            A44420C4932126582CE41198901379CEFB1013F200C2E5E2EEF2107777D18C60
            1A84078694064599538CA6B53A9D1029D1EABEE77FBBA28C94F8CF2B66CD1C93
            FCDFEFF37FCD8E4A7773EDE9E3CF3D11EA6BFC7EFFEE3DD01A06D22021621072
            38077C42AB8E243D3B804E67A29164C5E363AE7B71AB5CCE3E605FFCDEBD8B4C
            3AB87CB6B4361716056252AB50AE721C9118C523C6AEF25498590AC0D2A3D3F3
            BCEDDF6B73FE94CF54F9B6F3A72C9A9E4120DEB677DF2E3FC37705E8DB39B3E6
            E2D66DD85DF9FECFB2C569EC77CC1D9F7AFF0ADE27BCF870A1A5D922BE0526E1
            A4A4C4B1632688B1A12B1B6DCF7D9EDDD8265B5CCD9000274E4D300C49D01B60
            EA0E959A207D2CEBF3B32D564F7593DDE33FAA8E695929A6976E3E110F0330A4
            4B4A8A7142600DA242D0400F673726D5D271AC8A2ECD5F5F405CECC9302374F5
            5C994023C2FAF451BF5815223D3000288C78A9C6712FBBFB3072B26118966159
            3F8B5EFBAE619D3BDFE1B043FAC3D3A000245F096A7948D21674361CEC533E1E
            15C9D93BC2E7F38D1E35B9ADAD1D94CF3FFFFC6FBFFD36DCCBE8771AC4BA5E23
            FC5B79D90FA7E63ADA06499FF640D0209E12914C5764C82332218E7304D120F8
            A3B613BFB344477FB190D2A068681078480C86783E5222C33EF9D1FE52735481
            E0164E4BBFE9EC49A0F0FAB77951FA16010E74D9225E2FB363E7769887044A83
            24344827C4B58BA45A534C12BEDEDD850DAF7E9B17C9577BC2CCD149F75CCAAF
            AF878F1435350992159250E3CC0C7CF468980344A7D1A8D45498364D3A7D0C20
            51A0E0F63237BFB20D2C8AB2349852A956DF718A5E2BCA4502BC6DE8D0612386
            8FC2E547D7EC8D72480C2800E687251C0CC3ECD9BB8B65031AB194A4E431120E
            B4FF4813A0F2472179C8B86171D346250D4B36A627410244774323C082D5D4EE
            0664A8BCDEFA476E7DB355B6E099E1741701A398EEF7F9BCD8C44D83424AA267
            3028A59A744F354000264ABB1DAA74351A83562B83FD8058ADE0B00BFE6291DB
            2E8BC8843F30A8D0078FC2359250DE0C66420D788D86EA81ABF0FBBC3EBF9B61
            7CF20A62C06655AF4FE870D0E974AA10C2A141A0490E8725BC73690C86043928
            6FA05B5CAE36BFBF8BA02A619E65D3A65F972FBF02973FFAE8A3ABAEBA2ACC53
            F7330DE29812CEF92016FF2002A4EE51238621D18B613E1444867C8258C8874C
            85ECD82A48508D79A01115779A9B58D3B1257D488348BD215E54CD7CBEF9C8D6
            E8E437F126ED63D79EA0471A87D5EBF2B24BC31AB5DDE1A42969579F29C421DC
            BFDBEBF592C87457E01350B584FCAE22482B46D160E2E6252BABBFCDCB2E89AA
            8552ACFCCBC4B9C2FABA6FFF2E861137A00405F388D11A7ED9D0E2F523EC3C62
            A4C19888A7833D050DEF6D2C0CE73BE160C698E49B2F9882CB8783E522D3A6CE
            C0A9541C6EDF1BDF44C5146B9AEC3206D74989D7634BA6DE01CCB7B72E9FAAA5
            E180B7589A005B0DD49C0C399038ED6EDE57FDF5EFA57D3703811DFAF8ACF819
            6353668C4D8A356A23FD3AA044F9E5CDBFE798C16B9F4E9319C9C647AFE553FB
            5555579AEB6BF060D66AA140538B822A4975BB7A7D1C5884FAB04191C3E7733B
            9DADA06032A586AF868E0660D564FC5E9FCFC9B07DCDA149407D685AA7527591
            53C8EDB0B73598DB1AEADAEACDB6560BE3F3317E3F681AA982195200998D4B19
            929091999491090A1D64780C03E89013741DAC550E42A4D59A68BAE33A15110D
            723ADBDC2E1B3E883F857F3BD409CEA2D3C5C9A84D035D61B7590009430D2284
            D342291689BC76C2A9E4EFB7DCF5E1879FA2E6D14D4D4D717171619EBD9F6910
            EB7898604A2504085FADF4B58B2F09AF6C3019F249C4425E81093944FB68F4EA
            C1322127B18621964A2BED3B1AA4D5F1620680BD458D1FFC7238CA4EBBE5FC49
            938627E2F21BDFE61754B54653DBE4E1097F3B9F4F749573E8A0C3016DEC71C2
            4BBC1FD56B75381D45F8635EAB15242B1EE681B777F965327AA5D5E4BF6E9CAF
            D3E0F5D572F84880AC8087850F7ECD4BB0B0CB3CAD0A6FAFA25607B6D7ABD717
            E495CB66A472FD5913668E8516E880B7EDDDBF8B6579DE0678DAAC9927C8720A
            AF0F74F26EAF4CE22B8087AE9809166659AA2A2ACE6F69E5EDBE539353478F1E
            2F4E9D3FEEA9FA213AB3B61EA0D7A817CEC8386D46865147F7F031FC68232538
            294DE9DA017516C77B3F15D5B7F4A1DAEEE12B67A52741218AD3E938947B0086
            D8A6286CA00746B2C9A857A39463045A9F0C06286A6DAE2AAFD8FF67DF35291C
            644E9B933A7A3C28B4B6357A3C2E0DAD4D4C8449D3CC4579758539BDAA5258F9
            54A41ADAF7190007A4B57A5AAFD7E88D1ABDC19090D8217887DF0FF66E0E2459
            91D9CA053445A33182C921485EE2F3359414D615E5B6D4545B1BEADC8E7085B8
            2A351D9F9E91386CC4F099F3D2C06640989BC02074BB6D7EBF1B0FC2681AACD7
            27811A9CEDAD05BF6E140F5A5B5B3986114D82B0128B14AE1017A6FF65796C2A
            BC71F50D15809190C851060C4294DC45DDA155A04FC00C4FA0F53167E337B6A6
            FA309B2745D68CB9C367F0132018392DAD66716E54218D233C31CA3A8C8F84AC
            D0EFF78F1A35B5A505AE86679F7DF6860D1BC26F4C7FD220CEB78375BD212140
            AA3068101BFC2A9221895888F34A9890E0301FF8814C8821D29DC416820C309B
            3EA24114A5D76AF915054CA62F7D7528CA5409F3270EB95C88BA06F0DABABC92
            BAF6682ACC4C31DD73299FA7BDA028AFAD0D32001A1AD92063631DA041C8E14A
            1B4176553C4D83C29EA2C64FB61C89A67952CC18937CDDB2F1B85C7CB8A0B985
            97AC8829E5310982EA301D5C407A56D84B01381098EC40C1E9F6FFF3FD3D8C4C
            BC4D4BA99FBEFE040D85795BE39192805C6468465656D60859CE72B0C4B2463E
            BBA2B444C38397CF94A52A309FEEDDB70B2BFBE3E313278C9F2CDE8E0D3B2B37
            1DE893FC187A2DB5687AFAC2691958112985CFE7B55AAD2E97C3E576BA9C2E97
            DB2555AC20CF00AD5E071E743D686D5C5C8274F078FDCC975BCBF6163786D98C
            4871C69C6167CF1B8ECBD939FB3C1E3718D2381B0C18D331262328A32501D07D
            C0F16166BA7D1FAFAED9D7CF3468C943CFC7A4A6836EAC3397834932213EC564
            825BF03F5E7DBAB92CDAFD5E9750A9A9D8B48C8451E352C74F193269BA4889BC
            5EB7DBDDDE85ACA3776701A7A1F55202E477BB6B73F7D766EF693C5CC0FAA28D
            AAAA8B4B1831EFD451A72CD5C5C48AED77B9DAB12D73EFC2F0A8D4BC0CFEF096
            1FF2D67F291E6F6D6A643C6E92E0C4A0E4A2390F3E8DD6147BD9FFBE525194DB
            EDAC3357A037490A0BB360640B68FF24D6060810AD817C9DF179FFF8EFF3E57F
            F626DDD0D4F32F9B7DF90D98085AADADCDCDA2030DE4C06AC47F507619E82889
            8E86EE905F7FFDFDBC732FC5E5F7DF7FFFDA6BAF0DBF3DFD468338CEC3DAEF21
            38B084D3C104481520409D7DE603DEF2848406F16408BA83053321E430EF9170
            204089DC5820E425EFF292B74BDA13920645ACF0064BB3561B8B879EDBCBBCB6
            2ED7628D2A9B4482497BC7F2A9581C82F1FAB779D54D51055989376A1EBC825F
            F64A4A8A1B2DD0D288865330EFB60B252BC88537CC9D8A5A1DD088813D747175
            542C4D8ABF2E1D3B65241483218DD84E71F78074F62A641A8D7FB4D8381A7A1A
            8757B35EE06D7B8B1ABFFAA35CAE06CF189374F9693C672D2ACE6F6D0DF8C34F
            9F36DB609047E2F2D12F87F32AA392084A01D6E3253387CA525563537D692924
            C12653CCA48953455D09E0407FE4F56607D9332835B9687AC62953D3A50F0801
            F79A9E96164B4BAB0570A09E6BC06221BE368A4E4E4A4E4F1FA693E4DED953D8
            F8F576D986871429715AD1E8ADA2A2B4BEB10E6C8891EF3C444CAC116E4B9062
            5AAB8B076B04E3F56C7DF816B0BCF54563C2446CD6C8F9F73C4DA095ACB1C90C
            BA6EC4F071E02EBB5B2CDB1EBF3DEAEA43439F943AFCB4B386CE5FA44679B219
            C667B33683590A059D8C34BE070F958AA21101128F3417E7556FDF62C93FC8FA
            7DE1D4C0844D62C0A986CE3D65FCB92B6834158085C66E6F63592F4E2A172917
            D2684C802283C2F6E71EB499ABC5E36D4D8DAC4083D0BF8E3468F4E9E7CDBE09
            BA0DD5D757B7B659085E0C460BF9FE34C2934B82891D8BF9BD76DBF6E71FB214
            1D8AAC89E892E7FCEDBE11A79E41A0C7ADA1A1069F91C06785AA44350A9845A3
            50EA54F8D2A0DB6EBBE7BDF73E24506AF0868686C4C4C4F05BD56F3488757FC5
            797F90F01EE187A73EF8B23BACBBA21C8593F021F147C826467A254CC88EA88F
            0739CC7B24022137A0374E723D47F2761B5DD12052A44160C18D347C22B8A75A
            6D2052E2E75B4B0BABDBA2E931D023D72D1B3F62489069E4EA1F0AA20C424DA9
            C847AF9A8DCB9555E57566B847A7D4387490408390995098F93400F3C3860B4E
            B7FF85B5D9724581D150EA07564CA79092D862692C290DC83F90468C121AACC5
            B9CAC123146683D56A1D98417079CD2F87CBEA653355BEE2B4311332E3092417
            D9B77F97748CA1F87828C6110D7DF1F038F1338CC7E3F5FA7C3EF0EAF7B3DD0B
            0EC78E191F1F0F9F7340AF5FF8325B2EB523C03F2E98921C0B275387C35E50D8
            5D38C7B03A96E3C083C381FB3165F20CD137FED7ECDAADF2454F1091996CBC60
            C1C894B8A074816D6D2DB575D5369BAD872F066907C8C00A211C5665658E4845
            FA028CDF0F99B74467DBD71DEEBD647A8C1EF61218DEA56587E18E9C52636BB7
            9818131ADBB46803DBB46F47F19A57FBA219E163E4F2AB879E763601E78D32A7
            CB6132C6640E1B01FEACFEE5BBCAEF3F3D6ACDD0C4254E58797BEC6868E00898
            506B6BA39A42DA9CEEB59C5D026CA6341A83D4E8AA39775FF54FEBEC95B22584
            EE003F1A6EDAF8A449D7DE1A3766223E68B5B5FA7C2E1A4749504520D8D2E9A0
            FCD25157B5F7D9FBA4C7DB210D72917835E56950802382FF4F7CE6CDC489D3C1
            EC9457908D346238F208F454D423EB0214B90A2C677160F881AF381BCD7B9EBA
            CB511B7156006D42D2ECFB9F4B18076D30FC7E7F655589DD6EE3FB9EC46A38C1
            CD0591203487A35687DA81832DF1A891939A9A20A35AB66CD94F3FFD1451C3FA
            870671AC85B53F84580B154C8078F6C30508905810B6FE015110275802497F7C
            C14CC829A1412213F26026C41013DCAA9FF0ACD7833488617A13455AA309444A
            DC51D8F8EBA1BA88BEDE19278D4F5D3223A3C3C1359B8F54471D72F7DE0B7909
            93D95C0398102880E78FCFA70169900ED3A0F0642B247E1A41E94089E587FDB2
            293EA60E4FB8603EAF35282ACA6F6B0FC83F40C3E0EE0112201A473902FFA08B
            5878338846138BEF94DDEDFBCF77F9723D0F3A5A7DD7F99371BEB6C6A67A9CA8
            04030B7EB1F51536C102FB2030D40003F27ABD90094116E4EF329020B826F0DD
            5933F96CAC39E52DDFEF91CDC2263DC170C3197C82333012EAEBA35DEFC1F66E
            CA9419A224757F8965A37C43823F05412C9C9A76D2C421D2ED33224055767B97
            29C902544754A1203D04B69E406E29624DD072888D31C50D1F3E5A94667DF147
            D9E13AF9DDFA569C3C72DC50A85172B99C87720F1238AD0D52F5C6C69A90A053
            A3D3F336B025AF3DDB7648B690A4BD01494E5FF5361D97E8F7FB0E1F2902FD36
            342333361692FE8227EE74D6C8963927ACB6A8D5A36FBE2F1ED99AD8ED56A7B3
            1D0912603484309D8C284A077EF08CC1B16CEBFE9DF51BBF3A7A5741AA32CEB9
            24FDEC8B4934C66CB6368FC749432DA81A4D20A1E731958AC6AAD29A759F9A7F
            FC46FA567B5303E77661236C5E1424B18AD6A50C99F7FE7AF077BBB5ADAC1CCA
            6E5528ED317410863448071D4D54944E178BF58FB62305B98FDFE96B8BD87AD2
            3466E294475ED426C3EC316EB7ABACBCC4E385BA115210E7F31C48CBEF109159
            127FEF54A14CA4B76DDB7EE6323E47F8DB6FBF7DC30D3744D6FDFD428358E79B
            9CFF80408028810089EC272C136992E73D5232E4EFC484444FB10E022137A041
            04E7F6920FFAD4B7115DD120929706C1800FE0D56088402946D1062C9F04A86C
            B27FBEA322CA6E4E4FD05D75EA28B5205B1247F1173B2ACAA34E3F79E3D2B149
            3150D489B7A1048AC1A31116699D5E878328AAC330D7078B3BADE1753D9FFE51
            5E65912D2BC22527668D4E83BA36C00F0E1CDC1DE84F440B50A4471C2E08CBAE
            E8705A8BBFAFD5F2B10CF697356FCA914D50316D78FC5F66F171190A8BF2ADD6
            802C504512A2531B4A2F0A373D8C9FF1201A04E1F3C2B0CBDD8C99A4E4D45123
            795D9B2C0340C4E2A969735148718083D97B414382BB8A7F095FDF3062C4E894
            14DE15BCACC1B67667A5BCF34D8C9EBA706E564662E0D9743A1DE51525DD1020
            BC1220BA83CC30310152610D0476D7C111E6F8B861BCAF3680D160CCCA1A858F
            3B3DFE77361F71CAEDE4BF70F29013C7A510686BBB6FFF4ED0512A153694A64D
            3126F0008265C9644A02AD656CD6E2DBAE21FADC43AA2718274D1BFE00D48835
            375B1A9AEA4153C78D190FDAE6AEA92C7BE8B67E68904A3DFA5FAF69D387819B
            555F5F0DC80F140823F3929E7743480864146D8CDA77FDD1B4EE53AFB94F047E
            3D433F7662D69DFF5423EFD1B6368BCFE781B631144EA812E289A369236011E0
            DA8BEFBDC96709B260B33635106E27C9754D83D22E5B997503D46056549581CD
            0309252F2AD073D0D916D12064621083D964EBCEAD65CF3CC0BA23F615485C74
            E6C87B9F50A1ACD5566B3B3817CB3282EC15722024CEE7D570304C1694E50526
            F090F61877DC71EF5B6FBD4B2023D1FAFAFAE4E4E4889AD70F3488F317B3CE17
            7902141002610ED4D950BA033A9A484BC8904F42860426C4398980893466426E
            4120048D84384EE7A6B67064660F19E623A541281705AF64B1B97D1F6F2B777A
            A38A97A5A1547F3D6554BC9197D65655576665F27291EFF6569734D87A5F35C2
            65278D188A1692F6F6B6A26298EA012C04B406CB5778DB20BD5E1B8E1F2C4D9B
            04C98AFF7F9B0FCB35B6F41AF5FF2D1D8723E93636D6975794067A9B24295E8E
            2AC8AE90462C4C5110E46D347F67015BAD6D952DCDEDC5F3B38627C361E0F3F9
            00A510071512FFAAF9FCAF1AACBF033D46B22C74FFF57AFD8004317E1FC376A7
            1123478C18138B2C2B5D5E66F5A66219934FDCB8646C2CD2CB586DD6C2A28046
            0C531F92E70D98338416B6C5C5250CCF1A89CB2D76CF27DBCB65746703483469
            96CF1B8E1B4CC0A8326C6D6DB5D95CCB75C11F49F11210EF51A1ADA61A992208
            D7233A148B740F55C341E9009C07E262139293F94CA87F1436EE892E5045674C
            C98C5F369D17F71ECCDE07A830890C1DC0F0888D8901EB83C9608C894D8277E7
            978DCD6FBD2EEFD92345F2DFEF88590C2D3CCA2B4B3D6E776C6C5C463A24FD2D
            1FAF695FF765B4B5F70A86B9270EB9FF11022613B5B5B4340A6B2A8522E0773D
            56294A2BDA41FB1B1B2C6FBDEECADEDF5F5D0AA09B3879C863CF021A02C65B93
            A51E2C3ED0E115DA0CF73CA19188A990EEA202F3C3F77478CFD6D040B89C2AFE
            29E63562ACE03F30EAE36FF563C601E69D5F90035E1129516B51087E688A6F8A
            052F7C6CCFAF3EAB7FE919828DF8114EB9F9F6946BFF0F971B9BEACD98620AD2
            57C12912CE87C84880CF1E137479A1A69A912327D4D743ABD6254B966CDEBC39
            D2161E6D1A04E35F399E26D85A8103519D08908403719D981029358E260426E4
            978885FC414C88B0A1B257123748FCC102210F439CE4A1D7721C2969A4488388
            C869900A8F485002DF5BB7BFBABE2D5A33C6D3A7A48D4FE78D8EEB1BCCF5E6DA
            1933F8E40CBFE49A0FD7474B83CE9C963E06991C819D746E7E36EA7D15AD01DC
            428703B88101AAD769D4A1F36904AE3DBBB275FBE1A6281B2662F2D0B8D384F8
            72054579369B68760DADEAB04F1BCFD8B438EE6EB8A93F106F831F0684F503F9
            8CA3F5B4EABA85A3B19A06DC32AC6AE4FB08107F30FBC27830F0B1D7E978D357
            30CC0061F2F9FDE017EB61BB0458BC478F1E873B39AFA66D6BA16CBE4BE9F1BA
            E52764E17245655950B2364413F0160D27FB0CE9850796EF11C34761EA0C2E6D
            EDDE6A8B2D2AFF800E4889D59E3F7398680DED76BB4BCA0EE3700F1DA012F90F
            12FC20C773EC08AC160F06055521049D9910B30F4E5B681E18322403E7C3B1BA
            7C1FCA6D2B0D9E41F024E272F6A1031E68D64A62BD586C6C2CA0CC0909293A1D
            9C855AEFBCCB972B5B48D2DE80A693D77EA932193D1E4F794509E8B3A143334D
            C618304F365FF957B6B1AFFCE94222FEE5973453A1B967655519D83509D301D5
            C1C79E402B2BD8FFE0E3A0D9AE75DF3ADE7D9FEB5793730CDD69A7C53EFC2001
            C5DEBE86865A0D9F6397EE61178A824C4155A9F5D5D7DCDFAFEFF0AEBDBE8174
            3AC14AAF120CA3059910418D1B9BFAE30FA02B5A5B9BABABCBB1341469A6B43A
            BD2E3E2E51AFE71DE3DB57ADB2BDF34EA4D7421A0C89AB56194E87793C01C7AA
            ADAD14DC4478B1AB1A59A4F3F91F3530FFA39AEA6262E9D93668C78E9D4B179F
            89CB6FBEF9E6CD37DF1C713B8F320D62BDDB38F7279D3890C4428893D0A00EDD
            11682A8BF850D00F1988A0E817B5638806F9D09F1EC14D4C1408B97926C47ABD
            EA57FCEA2B24E7E9421A14A6A7984663121FB91D25960273B41C656CAA69D1F8
            145C76BA9CF9F987C0FC3D5B0839F3C7114B51D43468C198A4498866F97CDE03
            D928AD1841F24929F8AC14606B103AAD985AAD1183777D975DD728DFB277F6D4
            F48C789DB485188852084E6D487387445774984E6DE079D36A797E9953D3BE47
            BE704193D2631608DAA582C23C9B3D604A02E3A16828D19A1BDB0312C8FDCD0F
            E3A98157681CDDDD6319638A4D4AE265121B0E99CDEDB24DDC0B46274DCA80BD
            01463B8A651CF08BC1E6BA709252E1FF2099E85935366448C0C7EACF524B7E5D
            B4A3548AF438DD1993876804BD67BBB5FD484931CB74A124227902A4C20150D4
            F82290C9059C7155BC3C88976E0573212174317CFC914088D56AF4B1B1BC07CA
            C65C736DD43B1C29B212F5CB26F3B6D8B979D92E17543D200D051D0395629AB4
            B44CA8116B6C6CBBFA6A19CFDB0B68162C887904CA5D2C9686E6E626D0933822
            942F3FDF7AF7DD5157DF7B68CF3CD374C71DA060AEAFF5785C58488C0C6E29E9
            68858A305A8F153D4C4383E3DFFFF61D8AD8E9A9EF60BCFD76DD5967113013B3
            056C4D717A4718054D4D7629D6027C0E0C67B050B55E7E39D7C91DD2515F4FB8
            5C2AB4D1E7034F09B518EFBACB78D34DE040797909D85B622B396C1C9D929CA6
            D743F306CEEBB5DE7FBF67E3462214382668D2520D1D1AFFBFD5F47818E2044C
            26D08EDE096D24B0384A3088E64342D08804759722A667FBAE7BEEBEFFBFAFAF
            C65766369B870C191269871F551AC4714ED6FE28C1B9241C880A920371D8569A
            9468C4A4771D3795C575752243FE4E4CC88F52AB7A084E2A1072771408412664
            706BB67164A6D0CE2EA441E1D020E469C98BE8CB2D8EEDE5D18ACD4D1AEA9C29
            E9349AEE1996C9CBCF75BB9D60EA3E61CE7CFC81BD952D458DD12E305333E266
            0C8DC717BE671F4A2B26D02031223378A568BAE77A3434AF62B77BFCEB0EC9A6
            5CD751EA8B670C2505C94A555585F816A90A085471123114EE880E33242B0543
            E3F34BF50FF9E696E8B2BC49B16CC290D41894ACDEEBC9CE39106830E66DC830
            084F3728CC23E49760A1054C88457E895CF78AAE8484640D124838BDCCD739B2
            991B83FEBA78C6301D0AFD6CB5B64B93A1C2B04C90FC40E7156C6E81227AF424
            A5070F8B48176ADA5CBF1D91533C906AD22E1D3F44CC35DADC6C292B2BEDA008
            E38D0E90D50F8A4202F69D900151303B970A1339280352612A84FE7588382328
            C5082CC36691DB1BC7C50A59628E34D97655C8990B76488CEE8C09FC0C9E5F90
            E770A035039991C5C418E362E39293214972ADFBCAF9D1FB329EB71730DDF790
            76FE0250282B3BE2F3FBE2E31386A4423996E3ADFFBA7F0EBD5EF61DD4C347C4
            BFFC5F506869B1B4B6B5089B0D286F10250AE8FEF38A30CF8E6D8E375EE35CB2
            A9C2E5814613FFEA6A75EA102841A9AB121D56C04CD1955C84D422734CEFFEBD
            B6671EEF5C9943A214E3A50BC20E2669FD2FEAF40C30ED600D38923EAAF57A1D
            8C13A1851B5AB6BDADFDEEDB7C070F1011829E393B6ED52BAA04E8D5E8723901
            0712B755501186F620349203E14BEBD9B3AF67C1F3E8D1136A6AE072B370E1C2
            AD5BB7F6A2BF8F2A0D62DD5F70DEADC8265ACA81A84E04086FC53A388B894162
            7001D1209E0CF93B31219FA01A7308E9E57D12E3E8000D1205427EEE749FEE33
            E1D45D4A8342788AA9256B6ABBDBB7B9D412A51B3398E7178F4A4E12D21A9457
            963509D2E613E6CCC32323B7DE5AD014AD85ECE844C31C4483000E64EFF3FBFC
            70F2A5F0524D234D135414D39A9E6810644E8245546193ED50D4322A11E3928C
            3333F8B0E80585F90E7BA06615A2145AC1CE06C5BB8EC0478CA678A9B8CDE3DF
            7858B6A5DA40A9CE993004B7C15C6FAEA9967872A9485A3006441D8B781BDCAA
            9268A94560BB1D37A0936362F8A41F872DF683F2A5211B62D22C1AC98BAFCA2B
            CA2C4D1285266A338A4E0983796810890344A8BB2E06CD331913B040CECB301B
            8B1B3D8C6C938C9E529D31364547F1BBC686C6FAAACA4EEE3C58E22EA8F06062
            0A4480286C318B92CF217AA416330C880F7E4F230789843460E78DB4A8F536F7
            EFF2D220A366D128518258202AF8409B63624C69691946237CBEDA1FBE9DA93E
            AA7E581D7B576F887FFD0392A6DD6E575575391893C3860D07C49763FC6DB75D
            CBD96533D8EF0DB49AC4B7A16512A0F28D8DF5D811013F6678B381F4A11A3E96
            DBFAAF9C6B3FEECFD6760FDD59E71B2EBF8E8002A166702D383710F845B43D68
            88A2010E1D5CECAB5FF2FEB9AD73558E466822AD929848E3388AD4941909AF42
            3E0D28238A9302B70260A6CFCA1C014E058E33E6DAF6FBFFCE545744DCF8B32F
            32DDF12049C1F5A2ADBDB5A6A64AF43AC20F260ACCC8FB8820BFF810C14D7A50
            8AEDD9B3F794934FC3E5D75E7BEDD65B6FED456F1F3D1AC431E5AC63150C180D
            6DA2D5C11C88120910C7A9C2F01463036408BB8991A29B989409F9B1C33CC96B
            C40241833AD220CEC5F9092FFD32ABB986E8150D020497A6F462F2D45FAB5AEC
            513B924C4936010680CB2DAD2DA5258170CCB366CDC1AAE2A266478125DA7927
            C3A49D2FD0A0DCBC1CB7CB0D062CCCD62EE4E7423C488B7437DD0E56B4D6F031
            C7365758AC1ED9DC5816662524E92117F4783C87728322F463FF0241AC82754C
            34195E4A2324F1E2257C85167B61D47107448C49304C4BE5C33B1514E43B9C81
            9AC1D38EF7405A1D9A9F913408ACD160E470A2456EF7356397525CFEADB2B9D5
            2D5BAAEA5969B123E2D0FE8F65B30F1D642459D6619B35D8625EC3C74ED06A29
            75B7B64138F7242E673758CBE44B1D0F4E786A263F18001A1AEAABA41453FC98
            8AA450003A24F451A30CEDC8D258900661BB68CC80A557118206A10F804BC312
            5FABC7BFB9A299900F99B1BA13D279BA0FC63918ED427F52B131A69123C74077
            C2DA2AEB93FDA97522A046EC34E3D5B710C859012C72A07B4722BF455FEE01FB
            EBFF0ABF1EB00C935A3CA97284DFCF819FB616C65C4D44B77B8C7FE3733003D8
            EDB6FAFA3A70F771F057144F150E023C32C19CEEFAEC1DCF1F11DBD2768456AB
            CE18A64ECD20341A283DF4F998C67AA6A682F0462B57260DC6B8E7DF22355A86
            6100D7049D8CDD603550E31F34BF81791A1CE13C9EB67B5676795E7B5303E976
            A9888E34C878F3BDFAB32F061F282B2F713A9DE01058E3B2B246D088BEF88E14
            589FB88B8BD4315EA532DE78A7FEDC15F82FF084363641CB65C109137220F83C
            6A686CBD801DE3438605EA8124DD7FFF432FBFF40A2ED7D6D66664641091E328
            D1208EF3B38E6708B69120E9EE3810C749728A915D864F248234623C19C26221
            269809F991220C945DD8491E3121BFE0308F05426E412F063EE3065B198EA1BC
            86ED9C7A42A04FC2A54160BBAC130354EC355BEB1CD19AC5A418E813D3F9DC75
            5EAF27AF204FBA32CD9831130FD6D236575ED4342851479D328CCF4B5C545C88
            C3CD093488D66159100AA2D8C322017624BC64C5EBFF35BA346752E869D519C3
            9370D96C36D7D406A2A3928852A0F0831A14DE02B20A5A48BD1412785F88CBBF
            56B6D8E44B4DBA70587C3C4A65E576BB73F3826C0E2864C9A4C5794A60CFA21D
            9E3A5C836EB1931D3E6673A56CA208D05FCB462661539BB6B6D62312C24DC0B0
            FA389626B4E9462301B7B93BAE498AF1570051D85ADD2AE3FC322DC534328E7F
            0CAD566BF1E18E2944E044AF22D5480F86E2C6A8118143B32D0AC302265DE4EA
            D67588DE90348840015A300DF231ECC6723969D0E878FD94645E9EBAFFC03E51
            26A8A654196919696950EBE4DEF0857BD377329EB41730FDFD216ADC14D057E5
            E5A52CCBC4C727262743E345C787AFFBC2CE7146C6C4C53EF9DFCEEB1FE7F530
            D5E5DE3DDBC04F2F9C92C898D8B8A7A199487B7B5B5353830A45E742FFB44603
            EF0CC179DC8E35AFFA0BB27B79FD80648F994CCF3A911A3F559590D479C040B1
            6E43ADF7CF5F3D3B7F23A248BBA1BFFC26EDFC45049CF7EAC01280A5DD587C22
            D202E44B8894EFFB77383FFC6F97F5401AE471AB84641A3C0DA2D409FFFB4E15
            13E7F57A8F94C0E7C8643465660EC7CFB577DF76DBCB8F11DEC85631D21863BA
            EB49CD3468B70AFAA0A6A6CA6AC3E26A3E1C17DE936835BCB9058D6244869328
            A387A772DCD88915155038BA60C182EDDBB7F7AEAB8F120D623DEB39CF4FD824
            0871202A9803A9052150905EAC5B1A24D5884132C474C78438688704E54024E9
            41F2A140ECC4206910E1E2580FF40921E7FB0C3F8AFA38893488EDC13608F371
            5C2E6CB465471D5A4DAB56FD65422A36D4000D00D4C46E93701D15396DCA34B0
            3300C5528B634F4D54C1A9016234EA7326F1B69925A525AD2D707D051B272CB3
            842C488F1254C0385ADD6A4244E3E85CB3352F6A1F7E1113534D33048D587E41
            3ED8B5886FA9C5E5194B55E02A0D96722ACCB0AB94C05CDBDCBE1F8B64D38899
            34EA7385CE04F3574D6DC0460A9C0DA747D02207319E044926B5500874724183
            35276AEB7B1119B1DA85823AA6ACACB4B92540B070846E6C71A5D7F10A066469
            D1759B214B50F1AC6EF391A626876CE656436375A78EE209B1C7E329282CF0FB
            8384617C3E266C0384A43FC80093D6609F698A4F12D9C3941A160D42D99608E4
            41F6454EB43151A59891113B11091119863920B1C6008BC7B8B1E34C4823C6B9
            9D9C3FB408902929707DB63AA2B3EB2FFB3FF5D8C9E17C12AC76305AB1C3515B
            57030A5999C3C188E0BC6EDB93FF087FD5D79C7C86EEDC2B7AF880BFA4C0F9CE
            2A22C2E549356C94E9B6470968BBDD0408BD0A5AD5685152B6386CB0CFDADA9D
            EFBFC4461E0119355AA759789666DE22C01EC2F938EBB079BEFFC497BDAB37E7
            02D7929E69BAE32902A6AD6D6D6D6D8139EEE16E0FEA92C4245F682F87223BBF
            FFB2BFA8EB5CB6F6A646D2DB8106119AE9F34C773F0BDE6D6A6A04888F8F1F3A
            7418AF2BDCFC9DEBA3D7092E320E0A5B7BE7D3EA3418340150ABAAAA4AB00924
            C408A5E8B1110CA2516218A49E0EB7F26E76B6FBF71F988F6CD4005E7EF9E53B
            90757C2F70346810C7D4B18E67110715391012050571204A4280A44AB16E4CA4
            09891C88170B3112268468103CE212D561826A0C0B845C82408867421CEB84C2
            5886F06B1E67B477F2E7E36910D3838934DA1DF2F3BEB9DDBD31D71C7D872E9B
            34245388085757575B5B1734DB82997CF2A429F8A92E69B26F2D8ED62F1DACC3
            D79CC40722AAACAA6C4416487CC276681B84B562906A74B760A34C7CBCE5D0DA
            7DD5EDF2296B2E9891916C42C9EADDEEBC7C696E07929757D1346F6483B64AAA
            B0398568C8B5B7A225A746B6C4673332E3E60CE7AD83F30BF2B0BF0F864A8DAD
            0269AC0ED3E1BD1D156E882314D183EFE46F0ED6B6C8C730168D4B19930A5759
            B087CB3994C3485CAEA0101B6BF190FC0A49DDE07EB43B5B46404DF1E554363B
            371536C8D54250E5C5B386C5A11041A091454545CE4E66ADD818082764C4132E
            B2C1C2C9217192A6103DCD71A16DEB4992C68B90D5EDFB729F9C11B14F9F3864
            384A320FC60C60FCE271701953A74C8D282F846BDDFBBEEC9D1174AFDE68BAF7
            C530B5C918F5F5669BCD0606F2F02C3875F80EED717D1D8143B5F1FF1E56670C
            4732831AC43E0964B8858224C5C6629984EB8BD5BE82C88C73E949B3F42BA0BF
            B4D96C7638EC603200BD171B1B0FEA04075997C3F9CE0BAC25F210A96A4A3377
            91E6D4BFA80CBCB80EFAD8BB5C6052F27861D07764CFC7C178603494D9C4C6C4
            8A7EB59EADEB3DBFAD8FF88C08A6BB5F50C5C603D25F535B0D0635DC3749EC9C
            08A48006148375DAEDABEEED2E9CA6C3D2846810C11BC12126645C792FB822F0
            6E6969494C4C2CF6AE0217E5FEE67DCFA6AF236D273579B6F186FB49E45906F8
            717575159E43B01408B922F091D2F0868A4232FBF00774775AB3871FFAE70B2F
            ACC2E5CACACAACACACDEF5739FD32068F0E97C8160AA25EA30AA1B0E24E69997
            8A82A4D71F4C80024C8883BC27C084A40221A71043C823C9B12A0A84DC826ACC
            050913EB8315B0469FF107829A450425D3E85A29265D991C6EFFA7BB2A5CD145
            4A0498919570AAE03062B3DB8A8B8BA45C10CBFCC78D1F6740B4ACACD1B6418E
            0C47B72C1987D37581E9A3B60E56A8826965F884EDBC8D74F7F934D0E207BFDE
            64757FB6AB22FAF660C41B34579F3C0A97EB00CC013A887DC4B47C020D1D6E24
            0CC013DE0603A97AF8A964CD1FA55657584913C3C195278D4C42BCADC3624660
            4B269CFF55A7C176E7E04F147F27BC488F2A1A77728BDDF3F19FB205AD01E7BF
            71F1180D5A785A5A5BCACACA82BB49CD3B7368693D1261E1F01EDDF72AFFD6DA
            3D9566F9AC82A60D8B5F24C8D8C030A81337067CA4435288094421F517ADE3A5
            EE28DE8A0A6724081D842D4CA518BE0B9516FB7707E4A441372E1AAB4761909A
            5B9ACB2B02F737C614939E968E491E6E1C7427EC2ADF9CC964029FE1FC3EDBCB
            0F44A4D1D0CC3C59F797CB081839CCE90F43DA44202902E8AEA4A4A4840448FA
            9D5FACF697841BCA4895986AFA1B94D9D8EDF6FAFA8E4976C15D1B3E1C522BCF
            F69F3CBF6F88A80FB5A79DA73D090675ACAAAE02EC04F406E89394E414687BC7
            F89D9FBCC65497465421803A3D4B77DE35EA647E4E06D5B65BDBED363BD32140
            43F0C001C42B3929198B31DC9BBEF1EEF935D2F302182EFF3B356A22E8E7D2B2
            32B42F8561903013C2713EF1EAE3DDBFDDFDD3E7DD55E2680634C823D806A1AF
            69B4F14FBF4F6A758060813B8EB3908261E3FCE8155F76B86A4D699FEBCEBB1A
            3395D6D656B08270628022214234782E71503764A1A50E33C38988EE28D384F1
            934A4A6092A279F3E6EDDAD54BA91B71146810EBD9CC79BEC6DE61C11C482DE1
            406A4108244A83A061BBD809B826BEC51D38106F108D9990A81D131CE6599710
            37C82DB88C7549839C0407736B100C072A60B9C94CFC0ED0B0606950671A448A
            4E070CCB7DF967456D4BB4F37E6AACF6CA5346E2591B9C37AF200F2534E0BB42
            859935A51E3D6AB4112525AE6CB2AFDD29434AA99B4EE7C30737592C15951504
            4A2B86371E1A641F8D052EDD8831494AB0DBFDBDA0616F896C0613278E4B5E30
            818F91939B9F87A5AC04962BC244C4BCBFA51E3F6128F0449835A31B87685FAB
            EB13F9A22626C568AE1352CA033659670EEC3B919F3685C24663FD9D169B6D86
            BDCB079DCC5B32ED286ADC7958B610C6E3D263CE3B810F150155A26D011D2B6E
            B3605DC11BCB6B709BBB8A1AA4124441B52DCECFB657C8D5425A4DDEB874AC41
            0B69ABCFE70323810DB61A41D17F54589C805BCB4FB88803859F9F326C1A043F
            73B0BC654B6E7D38D5868304A3E6FA25FCC8A9ACAA048FA1F816A552C7C6C582
            0711CA4850EB70CA3938754B266F913DF88B735CEB3F8CE8EC8615B7A8334743
            739F8A8A2EC32F750D98527E38E873D66577BCF144F86A14CD89CBB40B205941
            321B07C1872627F12F4D6BD2D320E5F5ECDCE4DD11598E4CC3CA07D4892960E6
            2C2FAF2050AC8161438762D9927BC3C7BEA28391DE177AF629DA53CFC57232D0
            E72D2D2D56ABA08C96A4A5C30C15698A03E3079C3D3535158C3FB08438DF5FC5
            B6452CB6D79E76BE66F6A9041275402F452C9445DB539CEE141B63383F7B9DA9
            ED761273345B485F100DD2CC5860BCFCEF8430E00158A7DDF9C1BF998AE2B09B
            86A0A6F417DDA099732AC1A78B6F686969157B86F7D314935EF3C9EA23CB77CB
            F77457D2A09C9C9CD9B3F830C2AB56ADBAE79E7B22AB545A7F9FD2208E6D62ED
            4F224F2E2C0AD2483810B689967220B58400E128D29DFA8BE4F562A494037560
            42121A4442A5189606F904F6E39124D3700B36D4D0590C09845858939F60E81B
            B8D8FFF44C83C47D21C02F076A77471D349956AB6E58360EE7F706282D2B6D6D
            C3B6C67C3F60176030D983F9CE688434A8C6E2787FF391DE9D4E8AEB4F1F9781
            04F26DEDED602D24D0D2A295645745D20B2DD5150D22C94090D657BF2F68972F
            FACEDFFE3201F786134956C4E70707BD13DAA6C56DA3911350781593A20CEF97
            8375BB8B65330C3A6D6ADAC96204BCFC3CD1D987408B19CD8B55F83683D6C38D
            5178F9B9C4290FE08D0D85CD76D942535EBC60C4C44CE82708C6794E6EAE9461
            80FB2AB419120B9C6791E62374776C3812C908C947B7951FAE934DCF78EAE421
            0BA7F2E1950145B03407F16C64EFACA278977E8D8E676D1A0A672692E6490D89
            30B462A210F1E703B57BE48B933E6D44C2F942E6E082C242973B10981130B9B8
            B8583CBC710E589F1706DAEC3073C7C7C7C5C7C3FB08D67B7F7941F8A7268DB1
            86EBEE47E63E4EC04B78B766ACCFE8B137404FA7A7C3FBE23BB4CBF3FBF7E19F
            51FFD7BBD4F1C960BC555454425D1289ADB6503C4B95CAA0D7631D967BEB77FE
            DCDDE157AB4A4E375C0ED39959ADD6C6C62614DB3A031B0F780FFCE1DDF16384
            F784D42EB9909EC42FB46D6DEDCDCDCDFC72494AD80F8A828355AE7C825E0180
            B880C72601DD14C0C03C9BD646D80040C21661E1564D6D2DE0BE984FE0CD08B4
            75837690246B6D757EB0AA874A781AC4A78981AF862B6ED78C9F2E7E806B6D72
            7EFC1FB639324E0F868DFEF25BA94CC8DDC1AD042D04E387E04376C1B900CC78
            14CDC789E5DDE2292A8287517A67555D889F1F7DE4D1679E790697CBCACA468E
            1CD99BAAF1B5F4290D621C2F11CC114114A4918A82040E8475619490560C3121
            8E247A3291C603117C88E9C48418121220E4450F53ABFA01B321BBA041BECE34
            88839F7412AC1F7E0932219289FB86D39CCE1182524C174483A4CBD2A1B2E62F
            B69685EA8CD0B8E89491B3C7F296AA603B0866FCC0D910B9865B2568634B6764
            64606990B9C5F9FAB7F9BD3C9F047F3D7DEC04B41682CD596131DC13A0ECAA5A
            61F3A10597AFD541D7EECEE318AAE9B03948A3ED7F1B8AE41838106989FADB2E
            9882CBB575B5E6FA7A290D12ADED60DB50F2572AEC3C62388C3B817630CF7F99
            6373C8A611BBEBE2A94998B7399DB81BF93342E2850DBA1199C0B9CF34B42A6C
            6B0CB193EB2C8EFF7E1FC122D733B41AD54397CFC4EC16CCF2155501C9224910
            02D7D462DB4CD0725A4377E7D7A612B28CB5DA3D2F7E295B4C5E50E5FD97CD88
            D1F39E77F98585D27771960F2475A7B4022DC6EA303E3351445BCF50348894CC
            C8AFAECB6D68952D8AF425A78E9C81C28E43327A486A0307ADF4002D403B69CC
            1660165E382905D790929242A9D59CC7EDFAE085887CACA8192769E6C3B5B6BE
            A1D161B7E35CC538B7148EAFDDDD17E36263718A21F7B7EFB2F5D5619E4E959A
            A1BBE826029395260B261301AB768A32188DD8F6C5F5F14B9C3D0277137AC159
            F4D479041232399D2ED0692929A84B6BCB3C1B3E8ACCDA1ACC7E8B2FA4C64EC3
            77A4B1B11154888F0B997971584E1C901CBEF2C9F6888E99584C4623B8B45EDC
            1700F5C4D9DA85E712700234833D15CE3B81B226F2231CBCE53BF8876FF7961E
            2A71B4021AE455891A31BDC974FB732AE12966EA2A3C6BDFE49C91F95BA88664
            EA2EB9598542A47ABCDE9AEA1AAF243A2296032177585A0855A0EE72ED08FB76
            74B1BF9D347162319A6367CD9AB57F7F5499E0FA9006B1DEED9CFB23C4753A8B
            82000DE20B821C88E285403C0752A12BEFD06D38B08AA0118392219614395010
            131264429C83E4C349FB04CF7931B56AC05B5EA0412E82F3601A045F89914CE2
            164E9D8669904E4283A4B3617D8BF3A5B5873CFE68DDAD678D4DBEE68CF1B80C
            A6FBC2A22256726BF03A8A74AC3458915252530D483A6569773FF5B10CB9002F
            3F6DCC7C94B40B3C6C790505F88C7CA4634C3590792C5C023B4D8BA239C8D77F
            946D3B245B86F6B3E70F3F63369FA13D2F3FDFEDF1083B549C6100F95B210284
            9535E1647EE53B5358B04B6ADB5FFB56B6DC4C59A9A6BB2FE1F758606F04F6A3
            E25B2A64018AB745D0F10E3538128D5860BC7DFF67C59683B245E83E617CEA55
            4BC7E2724949A9D526094D19DC669CE1BC87368B2DFC655FF50FBB6550D4624C
            1E9170D3D99370B9B2B24AEAC5466035318A8A08A36822A373DCB19813473AEB
            8614068923A7A9DDFDB41CCF1D865A453EB372AE1E69FDDADADACACA2B246784
            7701D120ECF706E308B3084135A8D5B131D0CBCC7F38DB17A1D84373DE4A7512
            0C585C515985D2DA23028479899AEAC19F19D020F024B2B676CF576F847F3A7A
            EE526A32F4A9AE339B5D2E37E65BF8E2F0F2AE41813998866AEFC608621B927A
            A3F6E2BF9114EDF3F9ABAA6BC05564650E0335737EAFE7EBB7386744514548CD
            A2F3D423E1A8F3FBFD75E67A50A7703B4828F7110291630F442CC9EA90958E13
            80F32883239E5FBE606B23DB2DABC7CFD49C04B365F13488C2615735D8F48D37
            3CFAF61DAEB527A9A4A3B599F47B79136992A0A72FD02DB9980F71579AE7D9F8
            11E98F6C1FA81E375DBBEC0A92863A7ABBDD01DA268E4681D452BC7A5A900385
            19C4A43B74FE7A7E7EFED4A95371F9D9679F7DF0C107A3A9BFAF6810C7B6B1F6
            4710FFE84114846990C08138753001EAD1441A9321920D66427C260D5135C6B1
            0EC88A38BFE02FE6419EF3220D72890221810641BD1887891343B09A4BD98435
            9D681029BADDBABDCC731F1F68883A2D7952ACEEE1AB67E3791039C2144BA5E2
            58DC8AF219D038904F62622216F65A1DDEFB5747E012D21DCE3F79C499F386E3
            B31FCC815B7912B9A8087A319D012EDD28AD58A7DCBF2A44D541B73DF8D64EAB
            5336C9CA132BE7A626C03E77381C45878F88761BFCF22C88A974280B2078D8C2
            DFF78BBCEDE35F0EEFC8958DB72D5F386AE91CDEC826372F5F9A930BB9905058
            9CADE7FDEEA0D76B984DC6027802CDADFF7C7B778B7CC9DA6EBD68CAE491D00B
            1D4CF7B97979D2C9003A1B0B2418CBE101CB50A9035ABC0E6D17F5F74FBEBFD7
            DC225B768295674F3C01D98781C710F4AA74F9C72B28363C0FA81A91DA0ECD9B
            11EF3D43DA0689EFFEB8ABF2FB1D15725DE3D45149B75CC80B3ECB2B2A5B5B03
            61B7C044436B000D8A13F57D6A4883382238CA268E8F0D0A9E2D6BB986700533
            10B149BA7360CC589BDDDED8886533241F6B00BD76E7D54C22A53928F80BF6F8
            B3C38FD7426A2FBC91D49BFC7E06B02E4C1AC42513B3583E58DA1F1BD8EAC3E1
            5F07356B113501FAB580ED87D56A4B4E4E8A8F876EEDBE9C1D4C7E049A3558D5
            D413C10FFCAEDF5F5B5BE7071C48203798F2E078E43416615142865E616C4897
            545CA6511A22DFDE2DCC919CC85A32E3146A12A48CD5D5B58006E1FC89F87934
            1A0D5023D666F16E0C6107E6686D014447C52BF208DD05375219236102B8DC9D
            BEED3F74657AD213E81396507316E38BB5589AEB1B788B02514B88A57A385B22
            D68445E213D6353AD3A0279F7CF2A9A79EC2E5E2E2E271E3C645537F5FD120C6
            F93AE1CF415C47DB4114C47174300742BA30CC81484A622BDD21AD58076F79DE
            551E898518127320DE495E221082C9347CE85DA95ECC2D310FEA200D02348809
            D0203FC1C6BDCEE8AF43344827BDDFB8FCDABABCBD515B968007E89F57CD1A33
            948F45515D5D2335908459E80815DE78D01A0AFB59C7A08CD3E04DB787B9E9E5
            DFA3BF5F67CCC914A502D939875864EDA8E57396C2A74EAFE38313765A27F8DE
            28A86C7DEEB3882D10BB4356AAE9E9957371B9A6B6AE11BAA5F03C07A626852A
            67DE871F9B2E5161BB9D13C262E663985B5FD9EE8A3AD8B788FFDC725222D288
            D9EDF623C87F813F1DCCD443E16D1CB6B3C221B9433B7007379A40E2AB273F92
            4D0861D251AFDD76325EE72C160BD8434BBB08100C2130378EF4A8D50A1BD01E
            7AD5DCECBCFFEDDEBB6C7400D862BF71FB29787BD0D2DA8AE3A489803625C29C
            8BBA975717F41C1CA807F44C83A40FFE7D6FEDAC6F95CD0FEED6F3A7CC9DC853
            BD43B9F9522F30403BC1A5994C3148F90B2F0F6A583A4DDA78FCB32EBB77C39A
            884E4D4D994F4D84E62F75756687D3490AB98A71647614D4AAEB3B8E151FA0E0
            FEE553A23DDC489E64EA30EDC20B08E852D4866DBC20AB807710AAB68D0603EF
            1D5296EFDBFF5B04976188D59E792518B260EF0178A4065A8B67C10E7158BD3F
            7F42846FF48D5AA839F57C288E6298CAAA1A3F92946039345280A9B12B220E7F
            8C535B040722273A3054F0AE06CDD5BE437F32C511FAFF9F78A67A1834BE2929
            2D031B002458823428C604BA0A6E117DB97F324521EA74B4611A84688A294EBF
            E21FA0E0DFBBD99FBB9377E80AB33560FD5978018584646004826919DC44F11A
            C53D09851D78357CC05255AF9EC49038E1843905486B316DDAB49C9CC8C86567
            F4090DE27C7B58D79B04A63EA406398805D3209E0351882175E640149FE22710
            3A886F2419E42086C5427E894C48CA847C4820E4C05935040BA10E39C53C020D
            72719C1B09879C04EBE3FC7C4DA0C0B1B14CCA36563D2660222DDCD7F53B2BD7
            FC12A1697D57B862F198E5A7F06EE1ED566B90C73262412A7ECB0B65413AA852
            D180C6E01D06C372973EB529FA369C3C25EDCEE5D37039BFA0C0E38166CE38B9
            2A9605603D0E5863C84ED2205C58BDA160D37ED9FC87A57D929B57E0F37979DB
            44D41D522905F6120B7FE51317B3DD850D2F7C19EDF323626256C2D3D79D80CB
            9555D54D4D01335EB08EE02836D82C5A8F0231871F2E88402A0F5C78EFC7A21F
            F6C8A66F3A7DF6B09BCFE1F54DC5874B6C128D18DEA3635EC1D320A86C0A126E
            4BA70EB5905B43AE870263DAA8C4C7FECADBA89696958BD32E6E238C794053D8
            9D512358702377DC5E28C4F82BEA314EBA5A64FC8FACD92BD735C61A346FDD79
            8A06C9729A9B5BA41A318237CFA26362A06D901E0E9D2E22B983D50DAB5DFC45
            FBFDD97F447476CD392B55A658B0E497944257231C2D53A441C846A7EB0EC13E
            DB501AF15304AA2B7AEEE9EA51304823202B609201A7D323988C46AD70694C43
            956FEBB79184EF23E92597A853601605B3D9DCD66ECBCC1C6A421E24DE1D1BD8
            EA92B0EB810112B57FB99AD4418327B02BE06D7E85355E0D6368E1505FBC1448
            92AC5D04D76149058F8C1E6DA17DB93B23954B69CEB85C953804DC1DF0781242
            0C7A80E4A444F00A4EE459FF3EE10C613E85A4415E4C83E899A768E62CF6FDF6
            0D5B96277A3984F3A890A638ED9957A9929145BCCF0F46294EFD4B088A3064A8
            20042C457DA4EA3EDF4EA4E8C0C50F1F3E3C67F62C5C7EF2C9271F79E49128EB
            979F06719C83B53F8002F604D3A0AE454114A2412A8103517C66B1A0388A52B0
            4888279221BFC884489103F134C88BCA4E090DC20956DD127F31B72010126990
            8BE0DC6262560EFDF8C9D94CEA169DDE88EF376E477E45F3C3EFEC66A34B7F43
            2079F8532BE761B121D8CAE4E717F9257B17B4EAC37D39DE306904FB38B03E09
            0E3BC4458FFCE86722B3BCEB8C69A3939FBE7E1E2E17161DC6439CE7F5582480
            D6EF0E3408CF0E046463EC35FFDA62952FA0DFEABB166524C389CC6EB717151F
            21844517F9044969909867272CDD335EDD71F9B94FF6FF992F9BC3F3DF2F98B2
            6CEE70DCCEEC9C5CBF604C8068AC4A74F1D0607B26AD561D366FC3669804523B
            5EFBDC9636F97CC4C01D07F79D40032F3B3BC8A8998FF4189006E9345ABA431E
            31D1764D25EC7761AF7EBAFFCF3CD97AF5FC0523AF170C830E66678B261A040A
            D905665A2CAEA4057F4634F9F65E04CF75BF248816A900F7BFF56761A56CE962
            AE3A63FCA58B7857F982C262AB35B0AAE1E10AAE3126C684C55D9DF72104525E
            639B62F777EF72CD1184AC245387628D584B6B6BBDB9810F8326449EC45ED95D
            7E118C042C1DF7EDFD0D0A15C204F8D6E577901A3E1A2A1C639D3603FE9243BE
            5D9B220A7A444D3B899EB308146C367B65551520402346C0279131577A7FFC24
            A27B41CF5D424D81D3605393A5014591E51361F17220A428D4A0689C2A324C31
            0AB8835872E3FDFD7BA634324B44DD1577923ABDD3E92A2B2F47FD8785CADA8C
            F43428AFAAAFF66EFC28642552DB20FD8ABFFB766CE4EA2A84785BF8BF105065
            8CD49DBF923440E333A7D379A4A4D4FBFFEC7D07601455D7F6CCF664D31B0924
            A1B7D0127A918EF4A662EF58B0F1DA41111014451110444144C182820A2A1D69
            0925B44012120804D213D2486FDB77FEDBE6EE6C49B2B359C4F77BFF438C43D8
            CCDCB973E7DEE79EF39CE7E86D09D1381686478E5CE6EC84ECA4D90CF955AB56
            7DFC31C9114B4B4BEBDEBD7B4BCFEF761864D67CCD194E83DD02843EAC9C63E4
            3C2B48D1B82B08D75B95F1C9628DD5D31054D26068A618A6349B1C85C60CB8B4
            2A404276F9625A6B963486415AE80D826556398B37C8C498F41283D747AAD037
            E90A5A5EA37D6EF509F0BD857DE5E329DFFCF6E8605F38A180070177E43502C6
            3E4BA517A4FC96172EFC90258D9867F853D3161E683923A77DA8F7F7F3489D5E
            30CAF1B61B5F172F33381B0BB1012C43926EE0126F94BDBE41B4EE5663D6B1B5
            CFE6B746E1E3DCBCFCE2E21286DFA9A31C3119D15225A0107A299CDC75D0C5AC
            4E6B98B9F86F83B1A5F0919C562AF963E978B0AD6790E2C0B56B164E03618012
            DC8629E738DF4AE264AA3CB84722549351F6DA7AB7757280B772E7FBE331FE2E
            2A2EC9CDB57232A109574E11301A03B6C1263A75201D4B0283662D3D74ABDA6D
            F9536FCEEA3D7D683B70A037182E5EB42A02855D4114062194A9903A51A6B109
            6BCC1B044EEBE94162E2A72E17BDB7D96DAE204FA5F4B7C5E3711E1CD87B5C4A
            B1CAFA84DB77B90506E15083FD49BCBD61750B73C52DEDF6B5A2AEAE18310DAF
            FA1999D91A8D8665C942CB97906BB4862058D7C1AB0445877F5AC5D5395BCC47
            D2A1876AE2C38E7BDE6830E7A41B924E996F89F3284BDA77574E78183C74EC32
            311A8D6D23237C7D51BEFDEF1BCCB7442413B05EBEAA475F07E81AACF1E93C19
            11BB9FA92E39E660499A54FFB35952C1CCE981068FF6B7F5E63231D557546ACF
            D990F95B5151995F70936589589ABFBF7F50204AD102B8EACAF9664F535F518E
            12E61956A596A8BD99CA521EC139058364D1C394931F63516659794545666636
            E6E7513210150722B142943F8743384DD68916F394AD5FEA31A3475DBE0C0165
            5454D4952B6E489476330CE28C97A06634F403D945C418942F86C01076054184
            E41803492D304838E038210C323582840C560E21006EE077873048E80DD2A2EA
            63C81BC4347046B30506191993416292F4F7E814CFA22C6B93C93C67EDC9E44C
            378804AE9A3364646F228872B3B0283FDF6A0AA0C2B8387B428152601039408A
            6B5CE08F4D5E78A0B4C534053F2FC5914FA7E2E3ACAC9C1294E504158489BB45
            C12FE14ABACC80C1EEC1B761F9B6A49DA7DC2642F8E2B4A8672676C3C749C997
            B45AB83544DC200029589C23A6A01E219476EE945F976531AF101CFF159FB3EC
            177171FA266C54EFB0957386E06300224B4B2DD42EECCBC17DC877237C868C73
            3AAAE011E0AD24B0653F27FE753AC75D6D7E706487B71F88C6C729A9576A0545
            EB24B8EAAC5221406F186B5A75339D3A3C3C3C7050A6A8A261DA22717A774DDB
            8657870FE802CB76025C9E9626D062806E122976BF531804FEEABC8FCDA13506
            83BCBCD4C4EB69323FF8D1919C92961633A6F6E8D84EAFDF4B82D1D7D26F9495
            59A96222DE0C8641DE78F048ED0454C09CE0ED0DFDA6BAF803863362E2E3ACC4
            F3C525124F2FBD5E9F76351DAF6A7825C3D976B46283EDEFB1ACBF3FACFA6C2A
            C8D26CFFD2F90BCA078C91B5EB4A7ADA082656A3B9BAC25C52602EBD69AE2C15
            5B3E0C9834A2B36AD673608546C28FB935D53560BAEC11D50D0C6053519EE6E7
            35A2CEA61CFF80BCF7600625245620963AE603114202F203613650D3E7E1E837
            64BE90DE2EE74CA6FA2F1680B5C4F9F6C87A0E544D84D2DE605D282B2F47B42D
            E87169D736024CFE509271C3FB9CB6F95C047BF9445C5D95C29F26D870CA298F
            29874FC67FCBCB2FC8CFBFC9F0BE19615298826743638E1ACD9513FB409DB19C
            9C9CBB8691C976F1E2C54B972E6DF939DD0983C0DE80AB7F933383CD81CA5144
            4C0E13C450F23C46458270181F1D136220565858835C0131A3CD764808BB7F68
            68CCC0FFC400E10E824188286D1414D3A00C211C0BC330081C37002404B62604
            4A1118A436B73AE5E14B72A1D7ECBCB4F5A81B140B1F18D971DE83317CD77165
            65E556CF82D47F61913417DCE362C910C274431B14FCC1594BFFCE6971295370
            B1B35FDC8BF98979790560F3C190DAA5727E0957E2B00EA5FD63E20883823513
            DEDD5BE9BEF4A5DF168DEF1006F7730D0D9AA424017D072D7E4A7EBB4AD2D81A
            4F66B131A47F43D4AE9F5B159794E93621E64F9F1B3C36261C7585F9DCF90B56
            35B9D04A268441500046E26CD4DCD353856BE81A4DE6F1F3F7B831116FCBDBA3
            7BA11C31AD569B70C18ADB8E2AB1CBE4FCA3C7154B24F66DE647AB8F8F177694
            9E4A2D7A6D43BCBB5A086CFFC75342FC200A2C2A2ACEC8B470E6C00601B982E4
            7428E0BC5C712A41F6E62863DE4BED49B71C7F9ECAFAC87DE859AD94ED5C3231
            083983C153389F90289C01886F06A17E2F2F2F7C9FF6AE2E1F6F6F3C42EAD72D
            36578A18D2B24E511E8FBCC2C0EA6025854545785EC13B2EF45FA3A2561E2AA5
            8F0F8C8F68F76D335C14474572A3C93AF550CD7A8655C0DECBCDCDC784EB9090
            E088F036B06D7B7F36248A198A4A95D71B9FB07205D4A642801BFA81E0444BFC
            40B40A84332559E83198B3438261157A63E655CDCFEB44DDA0C7432FC8BA4088
            7C2925D56030E2AC05B5DAA373A78EE087C61BA99A6D1B9C390F2AA6A1750106
            A91E7A5179174CD7C79E36B04291CFB3965898A0736458D6CA613FB4D084A75D
            BFFEAB4F967F8C8F53525268DA7C4BCC9D30C8ACFD8E311CE4380F141113E688
            611824435A41F2465C4128408631104BBD41022D6996668A718234314120CC81
            43C80033BF58C48CB6720869ED6010098A2118D400ABCDA3BA64F0045047F107
            CE6316A648C726E52FFAD60D09EA1D5AFB6E9A374E291751CBB0317BE693C3E9
            F96E602AEC5E3E1D273A151515F17C49295D6948104AA9A0DE203F5F520131E9
            7AE9DCB5712D6F00367F2FD59E4FA7E3E3BCFC9BC2E420289BCA2F7EC83F0129
            DC7200079D58FCC047FCFDFCF0EB949E57F9CCA76EE0956353ABE4A0C198E27A
            ABAC2C2D4DA09A2858C9681FCA5149792797EB80007FDCE6D3978BE66D70DB92
            131AE0B9E3C3A97C271764675B656041470BD17121E88DB4B9116F5060803F1E
            097BE2B33EFDE582BB1A096CFF8A193E6AB8C68331997EDD520D0A9155E596C1
            4962762DA564DA7B83E892CF40E1CA3AF0AED5BAAFFCDC4B337B3F7237F17A5E
            BF9E515868C5A962315B193921300CB277CF80D6B66A050B6699F232EBBFFA50
            D4D5550F3DAF8819CA4051AEAB1A8D16CB0529E8AA26973516FA0908F407C382
            33996A97BDCA88D3E3719B29464D564EB88F45BEB182829B45C59811C576EBDA
            D9DBDB0B56555B3A97D18B08CECA078CF098359B41880AD59666D1A64B42A384
            A22AA2D345D5CB4BED8722749ADF371B2E9C1071872A0FEF855FB072796D6DDD
            D56B704A81BE3A992C342C34B4154C2AD46CFBDAC9DAF50E2BCC5B513C1BEB93
            BEC3BC5EFB8041CCFD94D42B0CFF5B58260963203E10267398A4E22E74213CF3
            CC19D35253A1BE68972E5DAE5DBBE61616B6DB6010674AE71ADE613825C77830
            D803448841F61131390F83A82B48CE511D45963FE01AA148B31C554AB4464206
            5B871080300C2AAD4AE26206010C12D283B037A80117174330486B8141CA174D
            3EABC12E1FC0A0BCE29A97571C6E79F15430636F9837A12D7278B4DC5E5F7D34
            35CB0D8E8D6F164CE8D01A0A49DFBA557605ADE5A83EB35C49DD2F68D1C17B44
            80488282481DF50D3B9376C68A50F868DA46C4842F7E66183E4E4ABE545D6D71
            74A1083DE52E90F6B0CEC54184EBD9273F9C3D9290DBECAF3869D38777FCCF83
            249B094C1615E596E4612C70ACB084F1D07CEA347F05FC92BFBFEFED68F383E3
            BA3D37937837131212EBF8A40F869F6D898C1D6D7363D510D1EC111A1A821FC1
            D60357BEDFE736394A609B174E8A0C85AF495151F15501E30AD3E471AA3CCE67
            944156664B27441B1804CE1F1418807FA2D39BE6AE3A9C75D36D1542C243BCBE
            7D6FA20CBD4DF5F50DE7CE5FB07605C1DDB61C871B100CC22A353627F1F4F408
            F087EFACE6B72DBA137F8BB8BC5CE1BBFC1B56A56A68D0A45EBE422262C805C8
            6B703B8E88C9A492B030582EC6907AB17EE36722AEE8269384B4F67C70B6AC2B
            9459023D96939B575242B8CCA0DDD1D1BDA122CE95A4FA0D9F8A3AADFAA577E4
            51D1E0841713938D4623720549A17CA48C76882B5BD636AD43A1C0815E57FDCE
            1C51B04C317C3CB84D7090939B5B5C4C6E103423AA7B571811D369E1090D4E39
            E0210CD26A2404FD10579070CA6CE2B5F159BE51DE0DBA5B2E5C4CACAEAEC19A
            7958C89702A0C63010E33E1844BD41376FDE1C3572383E5EB060012DA6D14273
            0F0CE2381357FF1AC315329C1CC1201A1153F0E46861444C8EAA96CA78D0A3E0
            FD40B618C8CCB0764131F0CF266B2464E291901105BFB068104E1933B09C0506
            A1B898901EA411D283303708B3A439B306D65805A767067101C74C6628DBCA4A
            E4AFAFF83BAF4484B87B6336B44FF8A801EDDCF2FC806D3B7039FBA6B32CC526
            ECA35746477783135C55557512CA1BC22F1E9F36A2242441341D80F917F31081
            CD5D7E20CB1D0DC0F6E2FDFDA68E845A582693E9C4C9D3747CA2AC19A9252193
            CC4E0A2717BF90E0201CB829AFD6CC5EB4DB2852D5BE09DBB4784AEB1044C9D4
            6AE34F5B25C44A51444C6E89DDD0220F4E9DD9DFCF8FE498184C8FCCFFA3E5F8
            9BDA17EF4CEC18EECFA0BC8F3367AD08BF28F15586DBAA2022B0726923341124
            92CBB6694DF86DEB7F4DD877524C7E7273F6E96B637B76827BDF92925B60B5A6
            3FA7F51AA943C8C621EF9A0961103833C04074F15BF9C3E958F7C150601FBC34
            AA5F14E9B70B1793494D4ADE905CAA948C71B90CC020A88B6DB760B56A158C69
            22D5AFCDE66A454034F9A0E15E2FBEC920E7C7CDC222147091F08A38C4F9E7F0
            177D7C7C30F0AADBB0CA70EE1F8D88B11E6AD5B459CA09D3305D57AF37DCC8C8
            406B338309BBE01DEFD8111696AADFFCA5FEC41151E7F6FB663BAB50D6D4D4A4
            5EBE8AFB5F2011A410AB0188272D1F6F6FBC57D41EDCA5D9BE45D4CDFA2C5D2D
            6DDB01AC3BE7132E9A8C2694C427F1F1F68A8A825951BA33C71B367EEEE4A9EA
            4A4B200CE2188B2BC8691824EBD5D76FCD770C22E7255C48C4A98B7413621F08
            B3EB07377B83B66CD9FCD90A0270131313636262DC737EF7C020FD2E4EFB0DC3
            AA384E858841D81B448941C21C3139CF0A9259BB82300C92610C64B6E48BD964
            8AC1A09804492612F28E05065187909177089950310D130F83F4027A90D69A25
            DD8013E6B17410824166C61CCCF9257092D6603D06C3F1AB6D174F25BA731EFC
            B7D9EB4F0E1D39004D220D0D67D1D2C8A212CD74B1C1C738F41018E88FAB79D4
            35E81E9FBFC38D64B8B50BA6B4454EA9F2F2CAA4640B318866CDD068345EFC9C
            7105A93D3D020389EF6AEBEEE41D87DC905C806D60AF360BE68CC2C7376E6464
            E758047C699401C220DEB7828A3C38E5BE8285215B87E229E64C72DEA7DFBA6D
            C96913E2F3D5E269F83823333B2BD3C26D67719B157261C809AD018EB6C2E8A9
            83164644B4C13F58B7F5ECD1B399CD36C0797BFB99BB86C5C0E467BD5E1F773C
            9E061B08B214F4AD54E60691120A8300B6006B2A9DDFF71D4FDFF4BB3B837DA3
            07B57FF5F1A1F8B8B8B8E4528AAD0B0DD1746478DF01EED253ED2995DA52D4C1
            021419110E9D1F89176B9788934EF15AB4443100CA93265C48D2EB740CD963E0
            F7ABA9D72ABC4D6B808D39ADA6F2F147189DDBE8804D9B343C42396DBA72F458
            9627698155F9FA8D0C2AD4CEA2D272EDDB45624F55D5F3CF9A8B45E464495BB7
            F1FD7A1383C8D179F9059826853B0483429948571007D63016B607F4A4B9A1A1
            FAB9A7B95A11F44D59EF3E3ECB96334811FB5A3A7482225D1E29BDC1DAA5EF1B
            2E3A9BAE585F52A288EECB15159AB3B32806123EDDA65F1B9F2F3728478C6420
            584F2A2FAFA0358C692CACA97E70D3C24077238F3CFC504A0A5C143A74E89091
            91E12E5D2237C020CE5CC9D53D8D78392A18F6C2FC6807C420FB8818720B3172
            812B08E6CFF31848862B270A3B95D652B54642461E09E9710D0D415CAC81401F
            A8A6A8B7560FC2F4204C0942FAD1C41B540F6110B888FA20271F852BCCFF7938
            F5F7BFDD5634F4DF694FDDDB77DA68A8D1623018636351181BFA996572C19E9B
            F00419363CBC351E9AE72F81155A4CCCBB4993CB243FAF7C08C7E03333B33305
            2BB484D04114F425C44AFFCDBE09603E0A6F13865B5B53AF7DF1FDBFB43AB7B9
            553E78F5EE1E9D602D3630488E9F881716D060616E3FAC2F0836930ABC5CA358
            8393DB4A4F4FCF5621C1F878E577C7CF248BA990D0A43D30A9D783934944ECE4
            A9D358238E7432A21E0BE026C69A8D2A3D62DCD0A13D298DFEEDEF09074EB84D
            3B11D8F431DD9FBCA71F3E06DB62EA32E1C36196F1E018A889354491F6F25283
            9EA7B71C773EF3AB9FCFB8CF7BC884057BAD9C3745A542F2A7D0E519AFD15885
            4B301916C120391EE91E9E9EF6C3C6CFCF373808CA3ED52E5FA13B24C2F9C1FA
            F804ECDC0E804F75754DF2A554CC7845AFB61CFB3F68FA858D817E6ED736121C
            680F1FADFB585CD4C9059375E9A21832483178A0B46B17FA38409BB373F2AAAA
            AAF9BEC2E26A102574EFD6C5DFDF8F339BCBC74F654C22DE71C588BB7C962E66
            9088685161316605E1B80FFE2ED6D108DE0BB087F1F141791EDF6D69D8BA4DC4
            2F4B247E9B36C83AC01DE9858BC9B5B5B548E95902B058FFFE314AA5D25C5D5D
            71DF43CE4B63D71797F87EF83E6B32D5BEFD2E1A44B69A8FCD24CC77ED127070
            0F409935B5B5A74E9DE173099D0D14BA0509E1FE2F29299E38613CFEC9BC79F3
            3EFDD46D23D00D30C8ACF988319C84F806C2200B3F9A570C52407F0F514D9491
            1C311211C33048C6C320B91D06C2BD6C5D4C83A704A1E8184F852630C840FE4A
            88D20654611EE121584ACCD0080CD22195450283C8B16209A39A8F6BE35D4A2B
            7867E57E3F5F6F7775FABFD3668CEBF1D80C22CD79E8D0315C4FC36645C43B45
            9552096010FEE4969D09FBE3DC061023C27C572F20FCE8E4E4149EF988A91252
            8AC4E8FAC73A91761E121C88E723603FFE7961CFB1ABCDFE8A93D62122E0D379
            53F0F1CD9B45B685C1A5324CE816E0360522473B0583424343BCBCBCC081466B
            7876C16F7A83DBD6E135EF4D6F130A2947353535274F59B12C8591111E6A3685
            35F1ECD1A53351FFDBBAEBE2AE2369EE6A27305F2FE5C665B3302C063B751CB0
            C0D509A8CB0A07C85CA36ED8DF4E50506010EF3804B63736ED873FDC56BD04F5
            30FBD11B933A4606E2BFA6A45CC9CBB306B87C0141017A9629952AFB47D0BE5D
            A44AA532EB74258F3CC469444866784E9EE2F7CA5C06ADFA858545C895C252B6
            6B13AF5508805D41B0E5658B17EA2FB8D33D6663FE0BDE53F4EE23F5B1624F56
            5456E5E4E45200C458A46B5848D89549A3FBF4021D62BA75ABE4C9C7455D4E3D
            6D9AEF8B2F3348B0BEB4F416CD81E2D92FA2875680BF5F5818125CCEC92E7BED
            554E2F4257D673CA14BF97E1D3292A2A49BB4A73D6A4FE017E7D7A434654FDDE
            3DD5EBBF72FE847535D5E17BF683D9B368DA64735111632D7DEDCC6414B8FC53
            AF19B0044A62D2A5929252210C129537E7B26118B4ED979F57AD5A897F72FEFC
            F9010306B4FCCCA4135AD84ACE98C435BC0A9E1DC04008DF78580B270A236272
            3E048672C4E05F79CF107105611824E165A669B2188541C23431A304D2A56D1C
            4206C210A20E21C80D42E807C6C5F482B4799B64B106860F8AC12FE968C6F377
            FC08CB2BEB9E7DE7179DCE1018E01E46F3BFD6460CEAF4C22377E1E32347E3B0
            5A8F20EE406803606DF7F7F30B0909C29F9CFFC9AEFC22B729EA76EDD0EAFD57
            27E1E3D367CED3DD3F9CA6A532BE0D949DD77C85764F0F0F1AB2C929285FB86A
            6FCB85BFA9BDFCF88861FD49C58F93F1A7AB2A8513B484329984F9144ED67900
            337BA78E1DF0CB1F9F90F9D556B745C422DB047C328F00CDB4ABE999822C745C
            4F8AB696B45C26639B8BFD835D38BEA93F0E26EF3890CCB8D55E7F66F480DE48
            14D8643A7EF2545D5DBD8491C82D613BBC5F8705475B782170AA366D5A5B6AE6
            30CCAF7B13771D4E69C1291DD82333FA4F1D43AAA8161515D94815303CE2C7AF
            1AA94A8080A9CDC7C03AD4B913449F75F1274AD77C22AA0DAD97AE5045F5349B
            CD274F9D31180CB41202F63F49658D8A9176E9DC1934C854539DFBDC638CD959
            6F847AF0F0FAB3E20670D0EC177D2691B8AD56AB2DBD5556525C5A45684056BA
            35E845C3E23EB2FEFDA2C10FB569A985EFCF177539EF3113825F04AB18733131
            B9A2A20A0BF7A30836FC2316612319EB48D036B3567373DEAB8622118290124F
            75C4BAEF00FE03A3FD54FC595CD408B547D2AD6B670CAD0A17BEA54D17B3D988
            EAD3FADDF7417B2A776C2BFBFC13D62A59DE2918240B6DDD61C77E8942D1D0A0
            39167B0209A15912C49AF845F74A07CD99F35C0A2A1F161919999393E3AE8818
            D34218C401FC51FF2467CE2730885309D2C46CF8D1F6C42061440C398A389999
            AFB0C14B2CB276DC208EC19289040919050E21A3755C0C7A863873BD1D0C1226
            8B6196347202416F50033C908432EA232C0B418FD1647AEBC3DF53AF16A83D14
            01FFD761509FEEE16FCE212EC71327E331F7909748E775E491907C78786BEC5F
            A9ADD7BEFCDE2F6E6C43EF6EE16FBD40DA101B77A2B68EA4E30A573E19CE6372
            C2B3023ED6BE7D3B2A7CF7FEEA3D7937DD207A89CDDF57BD7AF12C7CF2AAEAEA
            E3272C45B6A1E615ACFA29E51B4C7C574882DFA9D5DAD7D7072CC9F878D53787
            2FA5B92F2236B5FFD47144AFEFF0E1D8068D2522466231580C9FD60D68927383
            678FAE5D3AE375FA5442C6373FBB2D428AAD57B7F0B7F9215155557DF2D469B0
            7E53262F6AAC4CDE8272AAD88202035AB50AA1733A58847EDC7136F68C3B037C
            C086F6EBF8C2E323F1B146A3397AEC84308ACA307C7C478A62A9729C2D8FCB57
            D952D4435B85B44289D337577F589728A252952C30A8C39A2DA0AF6EDD2A4B4A
            4A61688E18445D3259E36510D46A4FAC585379786FE90F5F3B7FC5F62B3715AC
            586C282D72FE57146D22DA7F0A45712A2BABCE2758BC71BCECB1C5092491B208
            0381355A19130D0776F5C9A3C54ED387B1790F1ED1FA95790CF206151516B330
            474F8A775C482F5104C2F6F6F66EDFBE2DEEC3A2F59FD59C1657F73AF8B1E702
            26CE60908002AE2E87EF153C9DBB860D062D32DC2AC97AFD1951E7F49BF386EF
            80A1A0499C4E9BFEC82473753523284FE1E43B13F6CABCE0FB9F60A088D1E59C
            9C3C81ABB899840FB70021F0ACCBCACA66CE9886279C37DE7863D5AA556E382F
            6F2D8341BA9F18DD5708FA78A29096CA2E4DCCC61B448941323E478C46C70036
            920B5C41525E49C80A06B1040699AC6110AAA24A2BC95BF2C51C7A83EC73E685
            DC20F0BAFFC948488D928D5BE37EDF93002EEAE9A1080CF07563BFFF0BAD6D44
            E0D23767E2E3336713907806AAECC87BE6C9CE5426EBD2B92316944BBA9CBBF6
            5B511919CD584CCFC8579FBD1B1F031854CDD7574229571406913CCDA6776918
            0329F86DF4EE43C97FEC776774E3FE69FDA78C250C9BC4C4E4DC3C6179764658
            6890E496CAA412A7B795EDDA46E2F4FEFA06DDDC853FBBD183B572D1034181F0
            CC151595C78F5BA01BAEDC829B4AE24DE86937CBB9011348870EED7CBCE139B3
            726F7DF0F96E377632B6979E1C3D308678DD0A0B8BC0BA28D42CE1AB7D4B9C89
            90DA9BBFBF1FC0132AA592FEA4F856CD861F8FE5E6BB0D3163EBD4BED5FC9727
            C965B83C9C19EC34CA2BAC0AB3238A0E2AE129936118C42F340EF86451DDBB29
            954A537DDD95D79F828ACC4E5BC8A47BC3D07A967C29B5A8A898773E4905C9CF
            8E97B58888704C45CAF8F89DFA0C67E3E09EED3B775EF459E1AF5B6EFDBD4B54
            77759CB7CCAB5B4F30BA8E1F8FD768E1CCCC12572AAEE44932B7D11F98AE84B3
            E5C1C74AF6FE5EFC87B85262CAB0F06E1F4139ECFC829B972FA7E16449EC656C
            542AC291F9FBF9520C54B87DF3AD43E2DE05559BB65D96AC0623A0A14103B655
            E0ADC70803DC1E18A2D17D7AA1BBDB51FC87885AB6326FDF76CBD649E5A4F874
            D1F6CD377FDC2014E2711206C97CFCFAFCB047A6F6D2E974070E1EE105C7654E
            3013DC3277B17FFEB973ED1A826E4F9F3E3D64C810779C963FBBCB3088339732
            753310DAF3E0BD41345BDE264D8C0A27DA7883708E187114993999C53364C140
            4221698E77F9502464400C21238E8BF1C289060B3D88AB277555593D2FA268B0
            4E16C348888741AA8F59C5BDB84F4E9DBBFEE1AABFF0759137E8FF380C0AF053
            AF5C4A2AFE5CBC988C290B122824AD40FE0C3EAE2397F6E9DD0BBFEAFB8F24EF
            D8E34E8A40649BC025F3EEC1C7090917B1983583758D790700DE25A3A5A1D1D7
            2F2838282CB415C549C99773D77D7BD88D0E5AA552B66AE9C39E1E70EDACABAF
            3F74E8A8B07A8E04200AB03D95937EC3D2414D375868A0D93D7B46E189EAC499
            F4EFB7BB2D22D6A16DF0C23766903EB9949A9169C9EAC2750350763F093BA235
            51DE749D12D4A55C9B36AD5B8540CF84C1687AE9ED1F4C6EA41323039B90C56F
            CD0C0922EED8EAEA9AA4A44B75F50DBC8F926062948227E2B48101FEA1A1ADA8
            4234BA1D2E2EFEEA6FBBCFEBDC47A2C716D6CAF7DD57A779A9C9B52E26250BE9
            FFE411B010EE632C42873A5EE96D162BB5DA13C0207070EBC4E1DCAD221C33C0
            7A2C5EED11DED664321D3A7C0C2FB43254BA19FB7D1B2D75C7B231D1BDC06774
            6525A90B5E72FE72110FCE6E35764A6DC6D5F4150B45B5D3BFEFD08E2FC0947E
            D051D7D26F50E5622CA58F03795281B23EE8AF9818B82D2939B62F7FFB66B10F
            A8E7875FAA5A8581353E36EE2472372AB043C8C90C44F09988F036388D0B8CA2
            BC6DDFDE8A13575546AAF4E8FEDE0A5528F4012724241697405A24C67C6074F7
            EEDD134C68E02757DE7F4D5324C2371C3C6A62F0CC4771774199CDFABA0BB3A7
            9B50FD38D272E71FE543CFB47BE245D8862B57D3AEA65B73A79A7118B7D040DB
            5F7FEDD54B9760C0BD4D9B367979796E2EDDEA3A0C6A788B311E431E1D028350
            B6BC42008368500CA78909F8D1429E102147E388985C904DC68B4A5BCCCC2321
            230F83F48821443C403C12A2F420EC0D4207444B5ACF7B83F47C35311C14D3C1
            4FCA67B01EEFE327575058FE9F053F34687046E8FF040C02B3E1C655CFE2E3D4
            CB57D2AFC3822152566A811F687BAA56AB7BF52445BF37FF12177FDE9D810330
            AFADFDE8090F54F242A3D1C41E3F595F5F8F6A0AE295813AA4648DA55CF9F878
            B50E0B038DA43FB99651B866E3016171F296DBF851BD1F9C49B623E7122EE4E6
            5A4D4C5289455E8CC78E32E7A336414101EDDA92DCAB55EBF7A65D17511EB269
            7BE89EA1778F847B4A30C2F7EE3BA8D15A1294D0728821A602ABC661075673B5
            CF20FCF30FF0EF84F45A802D5FF357468E8822E74E5A582BBF05AFCDC4B89341
            DE948C8CACDCBC7C307BF15E0C99BDCEB543F3F2F20AF0F7036D562A14C29F17
            9556FDF8EB89EB992262374E5AA0BFD7FCFF4C0FF4273916D76F64589588E11F
            8004B98204C274C48308267C9B49BA6DDB48B2287EBEB42643044DC4232C227A
            212499161414262625D3CC709A15D5D8EAE2E7E7DBBD1B54F32A38F867FE9EED
            CE5E8F95F4FBF86B858F2F67365F78778EB14E84E81AE88CBE1F7DA9F00DD0EB
            F5878FC48111CBFB7E2458AB068221F847C24B1BB383064215D3B20BF137B67C
            21F619854FB93F62F22C709099957335ED1AF285CA6891ACA67FD7DBCBAB4387
            B678CE311B0D5900039D8D13DB80AECFBF15D007727EF3F36F5E4C4C622C0470
            981A3276CC0870D7F53773533E9E27EAB43DDEF8401616C1203A7CCF1EDDC109
            337FFC2A6FD77617609044A91AFAF50EA57FA0D168DCBDE700F84E27B8264089
            D91D9BA2EAAAAA871F7E009FEA3FFFF9CFDAB5E24A08376B2EC220CE18CF3480
            25D383030008A2164F47A24136D9F2328B702271055162102647E35FA4F5C564
            8CA5CA18832B880964A3495298202E26A40711963467AEE3619011118084C962
            1A2B6F90A423ABFE8E850D63345AFDEBEF6DC9CDBFC53BF4000C52FE9F8741C0
            BEF864368620E09DC1794F608E4134417EE32D9705050775ED423283967FFE47
            56AE9BD7BC9993074E194F72A4C19E352B3B3B3B2BB7BEA141002C6468B1B0EC
            D25001704F30530704F82905D10DB8B93F7579C7EE337A83B3744E67CCC7DB63
            D97B0FE38EAAA9A939F0F711C6BA181C5159E53B4D46E21A8C93730E586F30F5
            AAA6A6E1ADF77F749F0419F3D9D2277C7DE0645D5A7AEB58AC156B01464670A3
            916634069B4E560F00B7D937A60F7E1C478EA7FCFAA73BCB8A510B0AF09EF3D4
            F8769121F4273083A1BCA2F4565955558DC964C08A56F68B16C0122A0F0F0F95
            CACBDB2B30C0DF9E6E5C5452B9FFF0C57317336E4731C8E0409F375FB160A0BC
            FC82F8D3676C2E84C361D01B473A1E8312F025C12A533602D303FAC7800F682B
            CBCF2C7A5954633A4C7FA8ED7818F83E7DE67C4969A90457C7946336BF0C6B61
            38FCC52E5D3A0507C388D8B9656F36143B8BCBFDBBF58E7E65013EBEFAF3D7C5
            67E244B5B6DDE459ED1134B998987CF366217EEBD1A894F18FDAAAB583070D00
            9FA8CE4A4F5CFDBED8C704D6F8410B57A9FC611EDCD5ABE9000C09E17563BFE5
            A1F268D72E1267CF01D394955CDEBCB62E2FCBC98B526B3FE5FE7693EE6390A7
            33EEF849B3094107342CC01D8747B4C111B18C5DBFE41F1611685306060F5DBA
            AEA1A1E16661517CFCD9FB67CD04D3A3AEB23CF6A5FBCDBCA080283E5DBB89F7
            F67AFE2D069601BE9E702151CE4FC94D33845AFE561D3CB8FFCB7504FA9C3871
            62F8F0E12D3DA3B5B904833803573F913117360283ACB94156D9F2729E18C41F
            536E102406C9041FE305152D446954491E718304C12F14172334209325118CB2
            A449500CE7CCDBC2203E2EA6832A479EDFB19256F8FE567CB1F3F8292C684660
            90E7FF060CFA70C163AD42A074614E6E2EAFA0C85A3935E4F236ADC33A752244
            8DB7176DAEAE6DBEC4B128031BBDB9CF4F8DEA1629FC21C0430D0D1AF03EEBF4
            7A96C12E71A867AA5281054E2573A4715C5A56FDE3B6A3D73345A8A83969CF3E
            3E7E60BF2EF8F864FCE9FC7CAB4C1028BD438C049820CBD239994706410A9CF0
            028E634FA66CDBE936C671D74E6DDE7C85041CCF275CB89121888801E82691E1
            95174F6D582BD62956049A407AF68CC2AAE255D5F5F3976CB93DB5A521A0B96F
            FAD0B123A31DB582D3E9745AADCE68C4B3048A2648A5607828ACBD3E422B2AAE
            D877E84242D2F5DBD4E09060BF375F99E9EFEB85FF0A9007409F2693EDFE1893
            C9A4A47803790AD8E781D77AE12CEDEFE7D7AB570F70907374EFF55D62046918
            66C492B5AA80209D4EBF7FFFDF1C2A320510854C4A705063643BD09021830782
            7FADB9997BF6D305CE5FAEE7A3735A0F1A818F6F5D4E4CFA461CAD55E9E33F7C
            E95AD02F151595274EC6F3E01C6221876504FBC6F402FB07A3A6E1D8FCE75C78
            58FE9DBBF77D713E78080C2A0E989D9503E035A9AD667D35D00A000A5BB50AA1
            4AFA9CC9547036EEFA5FBF9874222A66606B3378648F479E679046E8916371D0
            FFCD90D25D901C2D930D1AD41F5C0E8C81934B5E05D8D7F93377183FBDD3D407
            C1B479E2447C4E6E5EFFFE31D17D60B191A46F56E61EDDC788C440F0F312E9DD
            6B7FF20A0B379BCD7FFEB5174CC93893B8B9B9A2A56FD7A2850B70442C3434B4
            A0A0C02DEA1856F7E50A0CD2ADE3742B21F4213008F181843048A89DE81806D1
            34319E3384BD413659F4168710C3BB820CF8BBA07A06A50719AC58D2563008E1
            24221D641048076950CEBC9EF5FC889192B2507B0E9EDBB879BFCD23F4844131
            3FF776FDBFD0DE9A7B5FE78E30385D54547C2C0E7A0B50160921F962C7466464
            44A78E0406CD7D7B83DEADC1266C4AA5FC91592307F5EFE65AEE4F4565ED89D3
            978FC42519DCEA04C2D6AD73F8EB2F133051565676F06F6B8638C4131229C971
            9609F5E69DBC95B0B0301A605AB1F6F7CCEC62A77ECD097BEC81D1C387C2546D
            3085EDF863975E28010C379D52921F2CB338BA9D69339E3FC2C25A51F5A055EB
            76DE0EF449AD7387B091C37BC7F4EE2856DB975A4D4DC3A5CB5949291969E9F9
            B70900C13E09F57FE3A57B7C7C487CB6A8B83836EEB8D1683B265952A709A265
            998C881892B80FCBEBC70A5AD9B55B671C113BFED9C29A9B79CEB727A043E761
            FF8162D3199959302A87A848C83035A8D1D046AB90E0A82848454ADBFD6BE6B1
            7D4E5E0E6C53262E5B2FE3A9572683E1E07B2F99F5E284A7FB3F35372C1A868A
            8EC6C6D5D5D6E342C512D437F61F06F352646438FCF0876F359497BAF0C8FCDB
            751AF0EC6B4A2F026E00AAAEABABD56874469391451E534F4F0F2F2FB5904F06
            9F6CCA856BFB7EAF2B71259C1A12D567C033AF81E780F4574FDD4255DC71463B
            223E49D51E1EE3C68D0687E599E9A7D7892BA135EA9DE5DEA16DAAABABB76DFF
            DD6436AB3D3D1F7A7016185D7525857B5E7F120C2A17A6D7B64347DFF51A949A
            CCCCCA060DA6BBA6261C422D7FC566DD370347C45E7AE9A5AFBE12A199E4A489
            8741E602A66E18FA1D3130C84A3408C31D05472362941F4D8265321E00519210
            830ACDA38017C425069E0384E941461E0651D544028350C2BC91FC90D50B84A4
            2DD241ACF26189EA51DC0FD7AEE72D58F29DD128DCAEFD0FC1A0E79F9A12130D
            17B3CACAAA7DFB09C5CFBA8A9EBC43FBC84E286F16D82B6FAEB3DFDABACBC2DB
            048D1E11D337BA934AA970E6F3606D4B4DCB4E4CBE7E2D3DDF7C7B1637954AB1
            68FEA301FE709604AF25E8A2CA2AAB626A90AA2095E0EC63FC1F5E679C4F3689
            89E9E58B2262159535EF2D155787A809030DFB74D97398A27BB3B0E8E8B1589B
            7FE51D58289607F7DB08BA39B15DC4DC70F02B43870EC28BD395B49C2FBF1197
            16E482A9D5AA2103A2FAF7EBD23A34107475B39F37188C25B7AAAEA6E75E4AC9
            CCCA29BE1DF12FA1F5E8DEEE992727E2C82983FA3C36F6B8D14EDA98F23FB01F
            082221E49B41CADD0C0DC7D0D6821E1E317C1874CC14DF3C2CC631032C7AD613
            1D878D0507478EC595C3E516ECED5954314286115863CB58749F9E4141D01B71
            E083373455154E5EAE4D9F01839F7A051C346834B8F0CE99CDEB0A53C5655404
            75EA3EF2E577C04156760E806E14293A4C600C0AF4C72CE96B87F75CD9BFC3B5
            07E7E91F1835E9DEF0BE831B2B2E4B4D57577BF35242CEB91395F9D9CE9DDBD6
            DA0E1CDEF781A77102697CFC99DC7C4831A4D970880B25EBD8B17D6FE4FC4BFC
            EDFBEC33B1CE9FDCB775C4B8B79731B0DEF3E5D8B81398600E064F8F28C8108A
            5BF361F6B9E3AE294C4C5FFE755007E80EDFF9E7AEAACA6A34D3C13F0EB1A95B
            5EB4FB679114E663C78E8D1E3DBAE527B431F130A8E131CE7814E11B210C52C1
            28980006D94A48DB66CBCBADB3E5310C22FC688EAF482F101692F0BC1FAC9448
            BD3E46010C325A100F5550E4EAF8CF370283647D249E8BF0D3AAAEAE7B75FE97
            1515358C30ED87C0A0FF89A0D843B3C68C1A0E230E1A8DE6B71D7F300C094E13
            C22CF29CB76BD7B65BD7CEF8F3AFCFFF52A3152190EA8281060405FA86B70901
            A828AC558012568F825E0A93D16C309ACA2B6A8A8BCB8B4AC057655D9D9BC373
            F6F6CC139307F4EB868F5352AF2426D96ADF61355B0283607FC1554D22619C74
            6B2995CA614307E3E343C72EFCB1CB6D11B11EDDDBCF7D8138B14E9E8ACF10D6
            1123A9F2B858108D8FC8C47AE27AF4E88EBD14C03E5BF36B66B6DB98DD4D1BC0
            0A8101BE6DC282424303FDFDD428682201B39AD168D2EB0DB7CAAB4B4A2B4B4A
            2B2A2A6B6F37F4A13661DCC0195386D255213FBFE058DC71871B065CD394F704
            213C2285C417A88783B821E4737CCB4360E23474E95DDAB7F3CA913DCE37095C
            E89E0FBE507979D7D7D7EFDAB38FA191507C4D69A35AC960308C1A7917B897D2
            8CF4235F2D77FE8AC39F9E1BD11B92FCC01A3C7A140C8D6527C49FF96593D8CE
            9C32FF63DF5058D871D7EE7D66CE8C83620E99CB00398C193D1CDC8CAEBEF6AF
            25AF9BC4E808D898CACBA77DFFA10111EDFC5A477A87B4C2A8CB6C36D5579455
            17DDAC2E2E2CCDBC567CFD4A4B4654CFF1337A4F82AF2438C9850B89E93732F8
            27C5E04C38848965C3870F0B0CF087059D16BFAA6FA873FEFCD1D31E881A3319
            1CFCF1D7AEDCDC3C7062D033FE7EBE0F3D783F3828CBC9F8FDDD175D8341E1BD
            FA4E5FF81903F5050AF6EDFF9BEC9ED04072B8716AF97BF7F0439022161C1C5C
            5858289335BFE7116B226190F16FA66116C778DD3618843F436190827886003C
            E2780F9045305A0883A882A2C14A3AC80283703D0DBD153788F593787DCAB2D0
            6B0D26CD251F7D977239D3EEA95118F47FDF1B3465E290A9938631C8D5F1C34F
            441751102E8103BE4D9B302C5306ECC34FBE2F2C2ABBD3ADFE876CD080A8A71E
            9B8C8FCBCACBF7EE3B6023E76359D2A0101DD19F85AE20E17AD6A4B56B174143
            4BCB57FE9497EF36FAF9938F4E1A3C10EE29C17CFACBB6DFAC54FB50594DDA6C
            04DD64A4D9CE19DE357878780CBF6B085E9C6E64E4AF5EF7EBED7A12FF620340
            F2F187270CE8D79DFE242333EBC48953B8348DD0585E041013EAB157062742B1
            24BBD9D2FF744AEA1BD307AB26EEFC607E5DE52DE71BD6A67BEF71CFBF060E2E
            5F494B4EC6AA890CC613F07943D2B1638765646478CF1E3033F4CC6F3F5E779A
            E3AC50793EB06C0D1853B7CACA0E1E3C3C7DDA145F5F1F5D43DDAF0B5FE33871
            FEE36EC3C70EBAF7510611A56FDCC880AF9504415D470EA19E3DBAB76D0B13A3
            E2B76FC938E736A5094C54373B2D9CDDCCD918C9E0071EEF32040A6922B5E833
            B97979FC3FE14181A7119997977AC2F871E0E7F957928F7D2B2EFD6DD6E2CFD4
            FE815AADF69B4D9B0D46038362AF00D4DE3D764CE7CE1DC155FEFC78415E8A8B
            526AF7BEF749646F5879E9AF5D7B8B8A8B3112C22E64079F6E190AD2E975CF3C
            0D95AE9E7FFEF98D1B37BAE511D898481854D79F31A703AC83D08FDB8362F6DE
            20052F2CC4329CC9DD30C824512F66A5EDF09DFDF0F3BE9D7F1DC30FAD8530A8
            7BD7F6AD42FC6FC7D37268A5B72AD3AEB9E895B5B1E143631E7970023EFE79DB
            AF3A544F838FF29004968000FFBB86915CF1AF36FE7E39CD9D15C5FFB5D62BAA
            D39C67EFE105A94D7FEEDA53651D0EA30A1F163C81431B12C6793C316CE8209C
            23567AABE2FD65DFB8ABF1A01D2B3FFE8F0A05687272730F1F3926FC572C784D
            1E31EF901029C1430CAC97989C016CCBD6BDE7132E8B3FC77FB1F9FBFBBCF0EC
            BD91E1A1F427E7132E24253B28C781557030E2C1DB0C294E81C23A383625A519
            E20D922BE477239A48494EC6AEB51F8B6ADB98C79EEFD40F3A1A77EFD957555D
            CDF214721C866BA26CDCD0A183B13762EBA2D7749A7A272FD76DF0F0110F3ECD
            403989846BD7AEF78D89EED513A2F0BD5F7D569821AEA89F5CE9F1D8D25572A5
            AAA6A676F7DEFDC236DBBF58DE5E5ED8F3545E54B073C5E2163ED0DB61328572
            EC932FB48D82C13B9D4E772CF67849A985C60431100EAC2384DAAD5BE71E5110
            831EFDF1EBCCA4F3CE5F25AC43976973613031EDEAB5837F1F361A8D5899134C
            E021C1C1F7CFBA07FC352F2D65DB076FBB7617A1ED3B3FB9FC4B7012D0F85F7F
            DB49C5051C6E9F5AE80D3A7FFEECFAAFD631B0D2E5A1BBEFBEFB763C143130C8
            10CB68EEC6BE9FDB038384DC20390A84D1A47A0649481B191217B30F8A398641
            9CB9B6311824F17842A220590CE7CEA77EBCE2BB469E1A82419EAA007FA76050
            EBD6C1EFBC35DB856A7C2E5B52F2B54D9BFF70CBA9FAF4EE32E7D959F878C7CE
            3F31F1054ABAF1523DE0FF9E9E9E13278CC39FD9B3EFF881BF6F4B76F4BFCABA
            776BFFE2F30FD0677AF254FCD56BE9D639F2A41205DDD9CB30298884369CBA8A
            5AED89677060FB0F9EDABBDF6D1131E1633D72343633CB51444C4A273211453F
            18C62A80AC54A9C68E1E81C1A256AB03EF5459599593E7F96FB72E9DDB3EF3D4
            3DDEDE9EF8AF0683E1586C5C7676AE838FF2B52020258B0220D4EF681164ECC7
            0C9E92DA454662A1E4133B7F4E3D298226225328667FF8B95CA9ACA8A8E42362
            7C001751911A23477B7A788E1F3F061C645F4EDEFFED97CE5F71E62B6FB5E9D4
            CD6C36FFFAFB0E8D46171C14386D2AF4A4A69C387AF20F71D96DC0463DF0788F
            A1D07772E8F0D1D2D25B248AD708E56E40FF98F0705846F0E82F9BAF9D3FEDFA
            13BD0D1618D666DCE3CF06B586FEAADABABA43878F5457F15A4ABC0200190A10
            0849EE1E37C6D7C7C7A0D37EB7F00D934104FD80F6D89EBDFBAFA55F073088D6
            8B05EFF8E489E3DBB583CA645B16BD5170DDC552D3F7BDF62EBEC4DEFD073333
            B378BFA254C2DA42EA16C2A08D1BD79F3F77362020A0B8B8D85EEDC22D260606
            D54E65B88308D9A8AD6150CB12E69BCB14E348B258B3146911DC20563E44E241
            AA101716DD7A63DE670D0D34D1D1751804DECD77DF9EDDA67548B39F74A3255F
            BAB6F15B17F98036D6B143F85BAF3F858FF7EE3D70B308E63EA0D474CAA394C9
            24B2B16347E1520F9959F92B3FFFE19FBCD97FDE3A776EFBCA0B0F2914E4F5BB
            7031F1C2454409B2C641B82AB8D41266801319EB342B8841752BB1421DB0A5CB
            BE2E2E715BB4F1D9D9F7F68B817B4AB0367FFFE356A320B98F25D203F4F1E222
            622EF98290B56B4B966A06D6842FFCECF3EF6F1F89FE5F622A95F2BE99E3860D
            8DA6CFBAA6B6F6C08143E5150E729B692C0C97C4C2E54A300C92605700E38867
            8A66A1E1C387060705994CA64D8BDE6AA8AB75BE85DDFA0D9CFC244CC94E48B8
            98920A5D74B8008594F04FA46C23D2385DBB74C611B1BD5BBEBE9EE42CBBD9CB
            D7EFD9A52BC01D1614DC3C78E830C6740F3FF480A7A7474D45F9B74BC4D53D05
            16DC3AFCF17796307044E5C51E3F21040A0E1E87423561C238306119F4BA5F56
            2E2B2F76BF1EA60B069E6DBFD1E3874D9D8913F2719229AEE887870D7EF8D845
            8763A3FEFE7E3822969670E6E04FDF397F2DF0CB2F2CFB5CA556D7D4D46EFFED
            F7CA8A4A83D1483258110C6AD3A6F53D3360E5DAAB0967B6AEF8C0B53B0A080D
            7B7DCD2670CECACAAA2D3FFC0459A44466C9CEB3C859B36DC59856A37D67FE9B
            5AAD76F6ECD9DF7D27A213C43D1D676190F11A53138500894A0883EC54A4EDE4
            1331ACE1E51385E5E59BD30D9223F423E3EB6970BC2BC82661DE28C814739C30
            CF2B28F22AD292D612F59B2CBC10A3D3E9DF7A67656E9E30BFD7751874FF7D13
            C68C1A449E9F566B5337D1E6A42E2C34C276A93D3DF1B63B39257DE326F7F030
            8283FD3F583C171F1F3A722C1349CBE039877038918F2326BA0F960E022BDCFC
            F756D7D7DF766EF29DB28E1D22E6BEF4A8924F554B4C4A3E7BCEE29AC60345E8
            C7C63D050B674829BFC3D9E73C76DC285C99EB6661C9B2E56E0B8183C6AFF8F8
            4D0CE36EDCC83874E4A8F05F51CBA594272B472C11FBFD5CD366F3C20C1A3420
            9CAF0B1B7F3A71EBB6BD6E7B1EFF3EEBD5B3CB230F4EF6F3B3D45DBE9191111B
            7B42A777B077271521302148826B824A2558151943E646FA1D74B0A7876ACA94
            89500538EDF2EFEBD7886AE4AC17FFD3A907C4A63F6FFBB5BE1E06B6B018337E
            AF61B18E4646E9C409E37C7D7DF45AED17EFBE6E6C7C36B3B18163C78FB9E701
            0692A38F5FBF9189EFFAAE6143BB77EB0A7EB8F9930F4A0B44E4F9637BECF577
            C23B7602236DFB6F3B341A2DEE375923725C1D3AB41FD01F3257CA4B8B7F5AF5
            B1F64E4F508161AD273DF404683FFEEBD56BE9A74F9F350818DC824AB1E40FF8
            4974EF5E51519064F6EBFA35D96922E2CB9D7AF59935074EE360BE3A7FFE4245
            6585D168428E6A5E11522A9B39636AEBD661A03F3F7BFDC592FC5CE74F2EB4FB
            9E7F65D8C4A9E0E0EF43472EA5A412A63DAF77453FD6126F506A6ACAD7EBA11B
            72FFFEFD93264DBA4D0FC8691854FB3C63F8D60E06299043C8F9621A562AD2BC
            D7A73115691C17930974834C8DCB279A781864B42EA621944F44BA41AC42A27E
            8B9504E0DB5ABD664BEC719BFACC9C834C314F8F66B94151DD3ACE7DF971FCF8
            6B6A6AC0EBDA140CE2B89614C40676DF3D334351624E4A6AFAFA8DEE29F3AE52
            2AD7AC2259B8274FC5E38D2381F9FC1A0FBE8585858E1C7117FED8DE7D717B0F
            88F0CFFF1759BBB66D5E9BFB04D508494EBE7432FE8CFDC770740383090286D0
            44C034BAA839303F1F9FF1E3C7E2E3BF761F3978C86DECCE81FD7ACD7E9A44C4
            F6EEDD9F9D2398F2F8C917FB2470A2365C14252247A6F514A290CB264CB81BBC
            32F8AF07FF3EF1D79EA3E24EF8DF60BE3E5EB3EE9D38A07F2FFA13BD5E0F16FE
            6BE9D7ED3F8CD130AAFCC0D06AA034FE88FF308D0750C184D4AD6B17B0FD00C7
            7FFEF06DEAF9338CD3E6A1F67A63F96A70BDA2A2A25DBB91EA0FE1F293585C63
            2AC9BEBEBE532641A6E0A573A777FD286223FEDC3B8BC32260D9B22D3FFC64D0
            1B9040B62422227CD284F1E05F8FEFDF7D7C9F683D859EFD07DDFB34746881A5
            FD62621205710E1B6F3673C3860E6E8FE23EB919D7B77EB1CA6472BFBC993326
            93CB474C9E3664EC44BC65850582E24EE4E45ADE411BEFA0842F13027E0C908A
            975A5D5F5BB3FADD3745F1CAEF7B7A4E8FFE03C1C1B6EDBF5556555554541A8D
            46210C028D691B19317DDA14F099F371477F5CFB996B77E7E3E7BFE4EBEF952A
            555D5DFD868D9BCC66B3DB61D09F7FEC888B3D068662696969133AA82D34E760
            90A994296FCBC874D6304889BC411ECE955655F0C5C2504D31466A554FC3AAA6
            989C2F2F2FE7F5A385A5559B2EA661E255A4010C3223DD2061310D00838C52CF
            67247292C7B1FF40EC868DF6B5881B83414DB19EBDD49E8BDE7B058B8A72489E
            AEB8B829E1BB96C3A059F7CD0C0B0B0307972FA77FB9E127770D88756B966015
            96840B8967CF4280C8A2700F264AD3D913CC8F98CC5B5FDFF0EEC2CFF47A6777
            8AFF2D76D7B0FE0FDE3F950AD25C4AB97CFCB863B20E9EB9304094F21EEDA657
            357BEBDDAB2756A803B670F1AAB2F24A77DDC88B731EEDD31B0E789D4EF7CDA6
            CD2641B60B7662F11C11195D57C48E4C5BF729C78197E5EEB163686AEB5FBB0F
            0130E4AE3BBAE306FA69ECD86193268C54A92C955B0A8B8A0E1E38545DEBA06C
            16297A857C6CF46DC21D4F4010DB7C2EE1E449E303FCFDF53ADD27F35EB392BE
            6CCE068E183DFD114800883B7EF24A5A1A755E528750638F3B26A637E6E7FEB0
            6EF58D2BCE7A238242C35E5B0255FE323232FF3E7C84E1DDA572B9FCF1C71E06
            2B595141FE57CBC417BB90C9E67DBCD2CBC70720899F7E86EC22DCFAC6D4ADC0
            45274C18171C040B80E466DCF8F5BB8D3595CE2A1EB9C5E40A45FFBB46DE75F7
            045F7FB2E54EBF7EE3D4A9D31AADC6EABE24741B450EF00B18121C3411A1C6B3
            7147F76EFFD9F9EB2A94CA773F5B0BAE5E565606B6E2E0D5ACA8A8C0F5BF3037
            886CD218E6D1871F0C0E8631D605CF3F5571CB15B54960331F7D72EA43308F0F
            C0BBF8D367300CA297A0E61A12026D5BF6C1FBD5D5D54F3CF1C40F3FDC46F685
            7330A87609A3F9809774C63048C907C5300C522218A4E26190801B8400902067
            5E58615E46D8D0C20AF3161824E55D41B443CDC8096476505A953139AC2986B9
            41B4C2BC443146A21C8FCF752D3D73FE3B1FDB8BBA62DC63D32B3028D6240C7A
            E985C7A3A37BE0E3E4F8ADC72F560A6B523A20CF2325FB963CB9FBEEBBA74D6B
            0883AEA45D5FFB85E88ACA8DD9C71FCD0F0A84777AF94ADA91A330A5086712D1
            BD23764777ECD07EC8E081F8570E1D3EB163E7FE965CF45F650A85FCB147EF1D
            3C2886FE24F5F295A3C7626DEB40D1B58D84F37986075FF151D445674E9FE2E5
            054B2EE4E4E47FFC89DB64523D3D3C567EB61093BBAF5C49FBFBB075448CFAE1
            89335B1C399A9AFD1C0286776868E8D8D123A9ECFD91A3A776ECDC672331F0DF
            687DA37BDE376B52305F468A414EA053F1A7932FA5720EAB48F2D457BCE051F4
            41CB82627F46D3D0136C39664E87D187E484735BBFD920AAC12FCF7FAF7DA7CE
            26B379F3961FB45A1D6989C4E28E6AEC17EFBB77A6975A5D5B53F3E15BAF3AAF
            473A61C6BD774F9DCE50D7A380F63B76CC68306F807FFAF89DB72ACA4553DF26
            CDBC6FEC14C8683974E8486656367DE31CF61C18690AB96CFCF87121C1C1E0AF
            0DF575BF7EBFF94A72A2D88BBA602A0F8FBB468F1B3E6EBCDA9B1492030BF9B1
            D8E3365577789544964A2440472CEF421E32686037C4145CF7C987B99922B271
            FB0D1EF2F03373C0C1A9F8F8C44458C1B7BCA202E0099ACC85ABCD3388F83575
            0A0C331DDEF3D70F1B44F0DF85E6E1E9F9F9E6ADDEBEBE6097B576DD7AF05DCA
            5BCB1D42F9F9795FAC590D0E76EFDE3D6DDAB4DBF6C49C8141E003A5E10C5BC4
            C320B93537C883C31A42161824B30B8AD9278B49EC92C5A4881E24E1E3621809
            616E103533C24026067FE18818A9A46197486F534C83D5B3D20E52CFA7F189AA
            AB6BE7BEBAA8ACACA2B15BB6E9147593DEA0BBEE1AF0C4E324EE505694B66FEB
            DC1AC92083348C74316B21C1611728E30E6FD0BDF7CC68831818696937D6ACFD
            D65D0362C1BBAFB46B071319B2B2B2FFDABD9711249508A90CE078FAD4C99828
            6D369BBFF8724BDA95EB2DBCF4BFC1DAB70F7FFAE987425B05D39F5CB89878E2
            64BC5D2D4CF2382544E78C843950BA33CB8A0987010B0C0CC4D10760BFFDBEF7
            C811B745C4860EEBFFD413F7E3E31D3BFFCCB58988F144049ED34D48092DBF2E
            078D8988081F336A04DD17A6A65EFDE6DB5F74B7596FF3F659AF9E5D274C18D9
            A54B47E10FD3D3AFC7C61EAFAB27BA7636F3066BD104266230129213CFD2D887
            331DDE37BA4F1F545CF3EB35AB2E272735FB796AFE81411FACFC1C5C222B3B67
            CFDE7D7C08067AA4307C6F0CAFB76A1582C764DC91433BB6FEE8FC15DF5FB12A
            38A49556ABDDF4ED6680BD2CCE27A9AC73A78E63C78C029FD9B96D6BECDF07C5
            F6BF5F60E0D21530BA575858B4F3CF5DC2A8A2FD87C1F8337366F0E109E3EFC6
            DB4560278E1EFE63FB2FCE939CC49A978FCF980993468C19A7F22011E1BAFAFA
            8B89492997528502E2FC04618985E168297D53C01D3DF2F0032A95AAECD6AD25
            6FBF2EAA0D2FBDF17654EF3EE0F6BFDDFC7D5D1D1C96951595461E06092356E0
            FBF3CF3EEDE7E70770FC9C471FA8AE7231A973DA7DF7CF7E11CA859F3E7DF6E0
            A1C3140649446E05ED6DF7AE3F4FC79F625030D1A680897BCD0918A43BC3540C
            23AE19705F127963DC2014F0429E21DBA018F8B9D49182A24C50645EC6C7C5A8
            4348C22321862FADCAB03C3D086120231F11335955D2407F85A2418C910F8A19
            19895AE6F512CBC2D10996EDF7162E4F4A6EC2CD6BDB2B6A75A330282424F8FD
            456FE0C2E646BD66EF8FB32BCB0AB56C6483BC3FDFC774D45B39C05D5B6E68C3
            66CE981681F242D3AEDE58FDB9B80D621336F7E567FBF4819EF0A2A2E25F7ED9
            8E7F28859265D8052DC54808BC4AAD4242264EB81BBF510D0D9AB55F6CCACCCA
            715733FE7953AB3D674C9B3872E450BA3F0653F9818387321D6DC5A0270FCD26
            3CFE21FF232B9EC8473B7040BF1E880B0946E6BC773EACAAAA76D74DBDF1DA9C
            A828C84B6D686858BFE11BA1881F96EE9321B78454E80A6AE1B8B4FC00FC888B
            8C88002B1FF509DD2C2CDAF4EDCF0505B7B1E298DB4DA1500C1D3260DCD811A1
            A1C1C29F9795951F3D7A2C27D78AED4B7B81E5F73F2C1FE9B0303F50797451C1
            C70766DD07B61CF575756FBC34C72C26F36ED2F419F73EF81038D8B7FF60FAF5
            1B0CEF02C4EEA82650EFB0A143A2BAC328EDF2258BB36EDC70F2721D3A757A77
            E987E02025E5F2E1A3C7A81B0CBF234A95F2C9C71F0587E957D3562EFBD08567
            F1F21B6F46F783F3EAD69FB7555656511CEFF0C370FCA1FF6262FA0CE8DF0FAF
            CAA525C587F6ED8F3F11E746302493CB7BC7C40C1832B44F748C9CE7AF545757
            9F4FB878F9CA15ABE765B316F021319B49233292F0A8F6EDFAF3AFDF7E73BE25
            5E3EDE2BBFDC007A382FBFE0F7DF77E22B56228AB45C2EC7D2181241043626BA
            CFA489E3C1A5B7FFF4C30F9B5C142A0367DEF4F3F656A1A146A371F59A75B5B5
            B51406B5704FF5D9A7CBABAA2A193755E468C29C8041556F339A550893602424
            771C148342D22A1E06C9782169E4107290332F153887A4342E8688D212221B4D
            90904D500C13A5CD8DC020213F1A1386EA116F9A95AA9F62A5247B65CB965F7E
            D9B6B3C97BB6EA15D0024FB5A74318049EF4C2F7DE68DFBE2DFE6BC2E14FAEA7
            1C301859834956AD98C0A1643461C4178F79725A9786086DD98C6953C16E1B1C
            5CBB76E3D315E204469BB0D94F3F327C385447ACA9A9F9FA1BE264126695106F
            1092708D8EEEDD378694FBD6E9F41B366CBE9472C55D2DF9C70C4C0D60919B36
            6D2265F532100516EDDAB5B7BAC696EAC1AF6D184548687CC1353F108310D5C3
            0FDDEFE909F566D2D3333EF974ADBBEECBC7C76BF5AA6518822426261F3A2CA8
            020B872223E5492A44E9910FD0B8C5F040359BB9A0C00030D5AAD5A4C2A8C964
            3A70E0E8EEDD070C2DA875F0CF98BFBFEFB8B123478E1C0620B2F0E760853B79
            32FEF295B4468B46E27D0EDAF4C06F52A920582AC209840D6CB4707AF3F163C7
            B67C2BAE18C587CB3F8968DBD66030ACDFB0110A25085C8078E83AFC2DD0C427
            1E7B047B23DE7AF53FCE5FEE91C79F188FD279B6FFFA5B41C14DBC5B90D22BB2
            9229532602640CC6C0AB2FBE807D15A2AC57EF3E6FBE035501932FA5C4C61DA7
            89558D7526C0FDD02D64320705074E1C7FB7BF3F99C3C1E4762236F6645C5C41
            BEE89C356ADE5EDE60FA8BE9DB2FA65F3FEAFE615032FCD973E7D3D36FC05D07
            1E21783C08B64FC2D1609F4F3A6EECE8CE484D7EE1BCB70B0A0A9C6FD2D87177
            3F3E7B360353B70EA7A4A4E2EB02BC68321A0156C3BB58BE2DD0C0D437F7E517
            BCBDBD017679E4DE7B341A8DF3D712DA84C993DF5EF01E0395BE937EDFF187BD
            43C8051C535090BF69E306977F5D943901830A3B325C3689881118A440F53468
            C23CADA7A18254687B05452414C4278BC91CD183782710844152DE3FC4360283
            280632F3188846C44C427E34C37383A4AA4912455F7C8AD3A7CFBDB77059B3FD
            22EC16D010B5A767406080FDC7EEBB6FFA8CE9A4C0426146DCA9FDEFEB0D2C98
            DE0112AA910E324A82F166884573007E5D3151B2E541B1A95326B78D84D12B00
            833E5EBECA5D03E2FE5933012060607511E3CA55242F572AA5911F195DF2F13F
            8D193592565A05B31B58DEF6EC3D68FCD7AF70D8944AE5881143278C1F1B1212
            447F08EE22FEF4993367CE39A07A50850F9EE54161906B7E2006D5669F3E750A
            3EFEFE875F8E1D731B9578DCD8514F3CF1103EDEBAF597FC021B6A82442A0871
            B6C815D498A1D818580C3C94AAC9932786F215C71888324B7EDAFAEBE5CB69EE
            BC9CFBAC43877613278C1D30A0AFD4BA883D58B9210D2839A5E9BA0A8248182B
            453048C0FC609CAC594BEDAEBB86620966972D2D2D6DCFBE032CF54DA130285E
            851D7EBE6D64E494C9135DBE5C4D4DEDD7DF6C028F5EC2970BA193468FA8A851
            2387B7E45EB00160B7E1EB4D4693C9663A121A9EC3A13FC80CD0B819DC6EBFBE
            D13131D178CB812D3727273D3D3D273B3B373B1B7CAF6F682AB53E2424243C22
            22221200B988B6EDDA75ECD449D88160DEC8CCCA4E4D4DCDC8CCB2AC1EFC119D
            F925284F8F0E037B76BC5C267BE699A7E42DA89C055AB2EECBF55A5403009CBF
            B2AACA6432624A036BAD85018E870D1D32FEEEB12D7F22B4CF577FBE164A5C12
            A2A4849240C49EEAC8E1BFCF9C8E173ECADB67CDC120DD25A624861732C409EC
            12E401F21204C5EC85A4658E92C5648EE841342E2615388458723156CA588989
            61706DC65C69C40AB2908478CE102506116F9044DE53EA3115FFFECD9B85CF3D
            3FB7AECE1949784BC74018A4560704D8C2A0AE5D3A2D5C380FBF09DAFAB223DB
            9EACAFAF331858B0E9329AD87AAEBD561E859345293512C37FFEB42DF2064D9D
            3CA96DDB487070FD7AC6D20F3E71D780983871DCE38F91B573E5AACFF548FE44
            C247C4A4028227AA700217B9A1430647F7E94DCF505454F4DDE6AD57AFA6BBAB
            49B7C3828202C1CB3F7AF470A1070876E68D8C6347632B1A4F2AB1ECE805D9AD
            2CEF077281F63E62C4309C8F0326AF975F790B6CCBDC758F8B17CDEF8A8AE082
            BD2F98166D64AF497A1B2CE34978412EB8B2A835368D60921087382283070DEC
            D72F46B872DCB891F1E75F7B2F5DFAB7D4DC50A9543131BDC78F1F432BBB5103
            5BEA84840B1713130D06C7109FF22D185E4381DFEB933C200B35504C2783D962
            F6D34F7A787838FF2BF6F6EB6F3BB2B3B249888E77E836A10E357EFCB8AE5D3A
            BB7CB9B3E7CEC7C6C6E14D03CB036DDC276AB5E733B39F6AC9BD503B74E84872
            4A0AF56C394C432107188E9B0818EAD1B37B9FDEBDC34243EDCF595252929797
            A743926FC0A8EC72707030403F0EE92960CB9793937BF5DAB5EBE937747AEB0C
            3E3443B22CE1C0C3C180843418EA0472D4FFA0E7718E98CB76FDFA8D1D3B4961
            6CD02DE59595669309E741082F8A07AC52A978FBCDD7DDC8BC494BBBFAEDE6EF
            79E8EBA243087C78E3862F2B2AE03C1C1D1D9D9424820FE782350783AAD731D5
            AFF20008BB692436F534840A8A829C7961B298CC113DC8262E869110BA861009
            D96AAA520CC4095C41264BFD795A4D0C894733AC8F4CFD38AF94A89B33676E46
            4696D30F82EF2396056F6FA0B53748A5F2F8F4D30F83838917E1CCDEB945D949
            0693440F6090092C69ACD6E4572B1F423353290CC273614BBC41B86500066141
            74B096BCFF7EF3FE2D276DC890C173E7BE808FBF5AFF3598FD193CAD5B47C458
            9ED900737F38AE4F9F5E2386DF253C4F5ADAB503070E252626FD6365BD9D315F
            5FDF4183060C1E3C10E0039BFE07E8EDF0E1A33942123135964CE824A8CF3FCB
            A67775CE18F855B8C8A1392825E5F2279FAC74D79D0604F8AF5BB71ADFE39933
            670F0B2362F08EF8500566C9F289C76E87410C5A8DE0226486FF0506C1D884D0
            2D042C33336BFFFEBF1312128DC63B23BBE0EDED0DF0D9C081FD7AF488B257EB
            CFCACA3E77EE3C78CB9A50C265F96FAC839007F189E0AE158B353D3D3D7BF5EC
            C9F731F46B9055BD91B6386824C7C49F3E6DE6D9CA343990A66ED85BBFBE31B8
            1FF08363506889735A0BF8F2E5CB151555562F0B3FF501035B26A552094FC9A0
            A8916B0AC32C53555575E54A1AF1C53A720809BB08B61EF984F03804970C0C08
            ECD9AB47FB766D01C4115BB41C6C0ECBCACA0A8B8A333332B373721D3ABF69D7
            221CC00F01DE29D4C45CD1B163079CDD46A45B68E7E327E0848156DD2C2C6278
            BF35A6484BF8EC2D010C22075151DD435B85C01D2DB916872FEEA2B14C5CDC09
            002279B28014AF77A2CE515454F8E3F724FD79C58A156FBFED62ED33679BDC4C
            FB4A1F67B43F5B884152A671E9209A33AF70C492960AE841C2B898D4CE2184D0
            0F414234224628D2382E66C14024404605158D7C440C0B0B4964EA4758892FBE
            95A54B96EDDB7BC0F9AEE104FE4C2F2F756060A0F05FE7BEFAF2085E423027F5
            97CBF15FEA0D5200832031C8086190D124AD948E64A44AEA43B16884B823536C
            CA94491DDAB763100C5AF0CE22770D889E3DA3DE5F4ACEB679F3F73832CDD211
            8D5DD082ED17C7CFCA61A1ADC68C19CDBFC0C44A8A4B8E1E8D3B77EE5CE1CD3B
            2969DFAE7DDB5EBD7AF6EBD7B77B5437FB40405E5E3E58E7AE5EBDEAF85D6005
            EB17F503A1EF2C0DECBBEA47898C88BC67264904FDEACBAFE3628FBBEB96A74D
            9FF2C4938FE1E36FBEF9B6B0D0C24AE6894DC2A72975412E48684D4F23182BA3
            451C66CCF78D89B96BD8101B0F476D6DDDE9F8D3274F9D4EFF47FC88A0033A76
            6CDFBB77AF3ED1BDBB76ED6213FC62D052979C7C090C8CB2B2F2664E651900AC
            0D0CA23911F443AE772F5AC54D2633EEC626A4071A7B1612C1E8C511BA66AF0A
            A75713BAAC095E526CB3E9159133CC82534CE016E0094D189830AEED94F0EB28
            7C1F6D9A6FDB2BF0321CEE3F8E7420BEA98080805621C121D0820152273AA252
            1968A11120089351A3D102DC730B5A59E9ADB2DA9A9AA61B4627044B0C94C7C3
            CE0F021450468FDC4CD09B486C4272D12A898A3471CCD8C320D80F7854A16B81
            1B669A00DACD3F163E078E7704BA30EEE34F9D38CD47C4D2D2D2BA77EFEE5A63
            9C6D7333779BDB83E1AE5A0090453AA8116F9025598CB2A465D6F42029EF1092
            F2C5C56C1C42121E09410CC483216C0800414A10D151C418886705F15AD22CD1
            57947A4C95C8DAE3DFD46AB5E7CF2734DD17C2AEA0C778F2064F53ADF6A2FF0A
            B64AD148D115586DC58D337F3DA3D31B0D0619C0407A2300408CC9CC9A4CD22A
            B69F591628E1E981C2AC489761903028864939F5F5F569692E96C7B337B5DA33
            0AC568806DDFFEDBB56BD7185279CAB26A5247082348C7C07CC0E83E7D003AC4
            7973422B2C2C4A4C4C4ABB92969595D5B4B0A45B0CECA1BB74E9D2B51BF8D3A5
            7397CE5892C7C6C0DB9E9A7AF9ECD9F345454D4134CB22475E6D32ED12FF368F
            915C6BE7C409E37AF0BD0D1A0346A9BB7A008C0D4C082DAFA858B3669DD51D61
            F71E1FE8E4AB9ABBE2CD72D670648CCCEB28362191F68D891E3A74B0FDA3A9AE
            AA065D9192929A9292E2DEA1028057784438D86DC3ECF35EBDC0DEC6E1C74A4B
            4B2F5C484C4A4AC2EC0AC726584BE04BCDB33EE8A69FBEEFAE63646BC36BA100
            3A340A4A1C4EE8C45585C3737800377745EC0A42CBA219AFC1AE2CC2828470CB
            BDC0F91BDC09FCC3BB99C42FBA829C733C8C9DC07596C98A7828D1C0C49DD612
            BF356B211E5B722884FB278289C48C04ECB582C8043D00B1CDA3991C95955045
            1AC76599466010C7836B0C86486FB80A4FB1EF1CCE91021794F3E70297DEB279
            134EE0EFD7AFDFF9F3E75B9E7BDF4C939BEA5C002932D58CCC680140B639F34A
            47C9620AEB02ABD60E211E0691AA1AC403444BA8DA2321C69A22CD200C84FD40
            66010632914AAB8415649428FA4A95839DEF88C6301030BC1572189E37997409
            7B9EAA2ACBD11B254683540F73C40000624D6689D92CA965BA6825915426846E
            0AF1A95D5F7550F3A64D9B62CF6070AFEDDEBD37E1C24586C1E5D3F1A8A66926
            96BD17877D42FC34AD54287AF7EE3D60403F3F3FC7E547006ECBCCC80478086C
            B0CACBCB2BC09FF2F2B2F232BD5E9CA28C5C260F080C0802DB37B8850B0206FE
            870D6CEB1A4D1E319B737272AF40BB8AEB2B39369ADCC1EB1CE040127EBB29E1
            9171A9361C3600435E7AF1797BC8E85E8B8B3B7EC4BA8E182B580E31B4253778
            3BCDE2D8E75720CC578889EE3360407FB00B77F85B60F79D939D939B9B9B9797
            979F977FB3F0A693E945608CFAF8F94440466B44646464446404380E0C0A6CE2
            57C045C076027C555434EBFE61F9FFD3A4410283F07C4DC31FC24FB7A8F71886
            C67478F789386F9010C75BDAD6DC33135CD1B565D89213CE582FBA9CE0CCCE6B
            333AB8840509496C6E8A6BA497383EAA885B617114113CE6602170D099561D6B
            81411803D0914091900BB33DEE18044A70204FB4E179AAA2B21286A8047241F6
            77816F96789EF8DE71EDA1581E0D3FD1887D03C072F0F356A219BD64C992458B
            16DD5118A44F67F2BA13F483015033C9620AEBCA62326B11459BB89894274A13
            84C5C3209647423669620C1F17E3841888AF3C6F243C21048358691BA9C75451
            BDEF1A0CCA4858997B6507E40319257AA3D4085D41F0CBCC819B95D473E10009
            59284182F075CBB941D3A64EE9864A15DE3E3B7AF418A23AC27182237BD4A36E
            B3BD13AE70D88B0E8E3A77EAD4B76F4CE7CE9D9C0CBDD7D6D68217A0A6BA1ABC
            8846A3019CC36832E2DDAF941769C72AA89E9EEAA0E0205F5F5FE7FB1060ACEC
            EC9C6BD7AE5DB992D614FAC177CBAF73123EC6C1934B2D0B1FD3E205AE73E78E
            F7DE33F3B63C3981AD5DBBAEA4A444F8137E9F867D7B52FB55CA456B6EDEE4E8
            6ACEE1291E82661CED69D3A67574749F9E3D7B36E6A1A1065EC6DA9A9A6AF055
            55052011187126B3093D1CA94226F7F6F1F6F1F505DFD45E6A679E8E56ABCDCC
            CCBA7EFDC6D5AB576B6BEB9A7D2B8552A882FD36F9867106DEE15876FE6EC297
            785114AEDC4D76B55DCB11FCB5715438F33C2906726D19267D62D70DF8B93342
            328A6BC692D16BEF0D6A6A834F92C84887520CC45090D4D8592886207FA33E1F
            2112122788D05423F9FE714D7D1DD3FDC04E13C020419CAE511864D9A3B498D1
            C96F202D53A6F3273C77F6F4850B3074037E3B3535B55BB76E771206710D27D8
            C251D447E328594C611717935BD383E47671319A2F66EF1092089010C240AC23
            8A34C7A7CD9332AB7CD9798B2BC824510C605905FA0026509B893BDE84CD88FF
            07FDB21C89AC711CEF5242916BE22485E3903543382EF3F0F401C7A85F4843B4
            9ACAACA44D7AEC04324A0C180699256693C4CC818E95EA38BF32738C6599B101
            0E2DF306F5EEDDAB755828C39740335BED71DCC34A062B041885F85842324CA8
            0BC12A35C3668533F3F405F07FB95CD6A143FB4E9D3A013C141414E45A4B5CB3
            9A9ADA82827CB0CBCFC9C92928B8696A5C77CE3A7BC242F510C83DC1D1482191
            F0575CEEEDA8A8282C7920E8461A3A62D0A06DD1F919B4CCEFDF6F25D7CBF28A
            C63456DB345BD64973B291E48EF8680447F79EE808B4A16DDBB61D3B76001619
            1961CFD7718BE974FAC2C29B00FA5CBF9E515050202C5AD9180CB273FF58E2A4
            D42DC86F72F8B1E10E2790A56196208513AF77E36A46C2404DF317C5588171C5
            37C05994D659DA2DF6ADA4D45F97CD3AECE8E02ACDDFA0D57D0AF2EC1D9F81BF
            840D9A20B8D83A6350701517CCB661627B866F06D85BEAF47AFBA6D98F01C113
            71030C62E893415772768A6098DF7EDD865513C1BEE8D225580FE48EC2A09A1D
            6CF103C415649B2CA6B08B8B29ACE94172BBB8189F2F66E510827961D6A13109
            63491363EC46368F41881FC86C0987A1FC794180CC88D2C71A3846CF990D6693
            DEA0D7EB741AF4A741AFD782BF198D3AB359CF703A587595D1729C1E7C875F66
            232207A2A264460083C053F0F3F40C86953CCCA4A487C9C4EA0C32BD516A2030
            486A344118640630889370F04BAA337B1719A225822411CB6DB4D81B24F82B83
            83C766131FDA358925D3353F4EA4BC460E6507DBA466585E1F8EE41CF01B0BBA
            D4714AA5B255AB56AD5B87812F607E7EBE5E5E5E6E19E260BDAFABABABAAAA2E
            41565C5C525A5ADAD0A40A88D5EDD9AD7324BF83A4FA5880913DD5C33D1DCD51
            34C021FF9789278288E6A50A9F88FD1063590BA5947F9EAC93EB6253D7629CA7
            8ED0C587330BB2C8F0D831F3AE0E809E2323DBB66BD7B655AB9060C85E0DB6CF
            E172C6341A0D1A11A5F43B18244DA4F75BF5035F1CD78A046D05852DEE41FC51
            1627C5B83BC2285C459AEF65AE717A90ED5133E771F68A8EBA527061B6E9CFB4
            70CDB53C32FB0B3971664EF049BE254EC100322108922818C770CF5518E4F42D
            34DDCAF2F2321DAF21246CA3C357DE3D17155C9D717AB861CBCDCD397CF86F7C
            BC7EFDFA3973607DB43B0A832AD6B365AF907098CC3E594C65575203D3831482
            B818520C225AD232428EB671084124844363ACC02744B513B1D14C3186BA8258
            CC1082FE1B0E85C3CC96E8185F4F83E31A00B8311BF54623403E5A301AC07AA9
            D5690C06ADC1A83799741C80418C0D0CD23984416A1E06419F10C7988C121DE4
            44032424419289529359029010044066D60CEF0B1E64698638CCA66E51A6988D
            D796E1CC24A4CB6715A058833B47095F3CCB124E9138A417F0DB551E03317499
            E31DAE367B2DACC9E4ED0DE0903732F83FACFB2EF0A7B218DC511E5F4383A616
            5A4D6D6D1DFAAA7559B0915FCF2C110EC6C2ED20DB7D7EC3E928CCE126DF1BF6
            0399CD963C169CB6E1ECC9B9C67E6A3DC6585428572A788A482FA865457EF98B
            8971DCD3D586B1F5C473661AFDE1688E360416FEFE7E8101819EC0D4E08FA797
            975AA5F2C0A004E32793C90806463DB406FCADA2A2B2B6B64644ABD05BC90A77
            FC641E17A21F3B9F1005916276BDB7CFEE78036843EE7403C4B4B5714CD604A2
            B325093579E63B656565E560D1E33D41CD37F8F699335D71F4E8A1FCFC7C0689
            78DDB871A3756B58FBE18EC2A05B4BD98AA5166E90D49E25ADB4A607C9ADD583
            64D67131CA10B273084136B415124244680A83AC29D2C409C459612094426FEB
            0A62A18AB4C964003048AFD7E9755A8D46A7D36901203218A12B08890CE9E817
            C769590086200CE2481ABE99C0209685308823300836C164647506B91E2221AC
            152435C158980C86C3CC1200F5C08C0A8EAFD70C6458C71E61D751106335C310
            1F822099161EB8750EE2D995AC85EE6D979E2A689B60B72FD8E25B963786FEA1
            1B5C27366D8E8063B3EF95FDAF582D7264BFEF6055B3D63773738CC3E1DDE12E
            C20F91E6C88AF975FB1F3A186390D96595C6CC7BB9DC71132EDD3563E307320B
            E2BBB651134E94DB499CB154CDCBC2F36019568090AD47885584C9DAD17B3B9A
            E742C7DEE936DCE916FC5BFAE18EC3A032B0EA5939AEEE040672A62B2A2A2AF6
            EFDF838F5F7AE9A575EB488AEB1D8541C56FB0D56B2CE8C78A256D430F5258A9
            07398E8B1118C43B842C84233E34C6F24848C27F61651A4B1708009099D083EC
            31104AA4470A8A14061960144CA7835F1003698D463DF2036157107102719C86
            C50726DE158458D7669394657DD59E211C0AC4214791C46894E88C32BD410E93
            E40D0009C94C6609F8E260504C0A009019FCD5C45EAD8CE61889C3F5DB5D4131
            BC7C12CA294ED7727AF914315048D607CBB21269738AC342AF8FD00F848110C5
            40FCA2E6D422E71806396CAAA3D6939F0BA293C2458E11F87B1CAE73621E872B
            26048B66125114939BC3393CA75D8F216F10CB939C708DCF269FA4B85B10FF2B
            74007016ECE30803E18F58FF8AD31DD19459D606CCE214FA7F18C12071049719
            37C147D77ADBFDEFF87F9799C49498FD5FB6B2B25B60DDC3C76E84414DD79311
            6B068361FFFE7D5A2D2C6AD6A3478F4B972EDD266AA0436B1A06BDC954AD6165
            9C154B5A62430F525AB3A4EDE362021864EB10920A4263AC2324C4385291661C
            61204E100E33F1AE2070506B3619001232E875E04BAFD7990C5AA30953820C00
            00B1281CC6602710A765580DC3E9712C0C6220E86F624D06D0065F4F7530403F
            282E06FE89D3430CA4D0416210CC11D3EBA546807B8C901564E4204BDA88F843
            99551D354607C92F6EE40F1065354164E1B64C918428CCB3659A6BBD605CF17E
            20CB0267CDFCB3463F8D7BA739A6790AA4D507EC3DC04226A5709D6368F2ED1D
            5BE7482FF142AEE2F293294AB07904ACBD131F21219ACDEC462E6F4BE0202583
            DB0220CE0AF750EA86CDE51C1D39326B1AADE0C6ADC010ED28A671C4CC9FC1F1
            BDDC71078033E6DE65ECFF9B58BB1D9B558776EB1680414401EBCE7A839AB0D4
            9494F4F46BF878D7AE5DD3A74FFF27AFDE340C9ACF54AD64259CAD2BC8961EA4
            B48B8B09F3C564B648C8C210A265E4AD9110AC26661F11C3C6E7CC733C12B260
            20CECE1564E2380883C09711D283744683CE0C309049CF710000E9110C42EE1F
            46C3B15A96035054C3988D66132957CFA1A01886411E1EC18C09A01C0C83589D
            1E60201962494BE0975E6634494C10FD489084B40466CE1B99EB15ED35464F07
            7DDB321569EB8C4ECEA24BCFB34EDD3F502CD102D6F9D5D3B2BC59408F303266
            8B7EAC5B6EC3046F3428D648531C44C16D9631DB4D3F3D16334DB8C91B64B5FC
            3B843562DBE0B0C72C7C5E428271932FC8B9C866D3F740CFC33B0A053E227A11
            4B0693F0C29C83639B1BB70E4EB354EB8EEF16CBBFD8E4543176B8F976778553
            BDF55F80B46E6F0FB4207BE07FCA6E130C6A49F6868DD5D6D61E3D7A040FE921
            4386C4C7C7FFC328AD6918F42E53B982C5C95B8EE9410A4769F3342EA6E0CBAC
            DA3884648E42632C41424435918221FB66510004A363761888B3B88200188230
            08C01A3D0C8D997426E407E2A9D0069623AE20FE4BC3002404D374708D320E9C
            CF6C64CD06807E000C0A41DC20F0059D3D3ABD4C8B9090DEC0A29C79294D9837
            C2E47970007ECE5CBB15516F702038D4421864C30DC25B508657BFB81D13A470
            31C0CBA7D3F926C4F7C3D0B99BB372F9D82C72829BB23D8D8344109B16DAB4D9
            EA17AC335DA9B7C7CE3FC488B8378671D39A275CF819718957B6FDD0749759EE
            9A152EF14D9993CA6D0EFB81928BA93791FAA02402BD1DEA636404CE2AA1670E
            37D7C299E70569A448D55250B882D2BE054281D4874954DCF92B59A122263838
            5862ED8717F64CDAD5AB29C8512F95C9707561F05DEDE52597C930DB0A4BAB63
            550919A9D6463E87C4AEE0C9CE9E3DA3D1342514AE542A070C1CE8B8BAB8A5B3
            2860877FADA9A9C9CBCBC717064D936183ED944B712940F8739AD7692B724147
            0A2615A2D211C6FA86FAF2B2B2AAAA6A2C6B8E6ED9BA9E0EAAC9CB1764213F93
            CB70157319B8B2542AB7942094CA244DBA8F8940115133817BD6FABABAF2F2B2
            8A0AA8FB67D30772B94C429E81DCF234D00D8323B902D64295CB1432B91CFF4C
            069B2A4E1C54F8E6F1E30676604E4E6E7D5D2D3833AAB72A572A152AA50A3C32
            25FA9FCAC343A950D89736037784E818F01BACD96A3450A7277AA470C0835F04
            E704DD9E9B9B535252A29029D0B3449D874C22E5871EEC679907CC140017F4F4
            52C3FF39BC3DD0753ABD015CB6B8A4A4BEBE018AC3903EC4EF000BFA49A5522A
            948ABA9A9AB4AB69393939B08CC69DB0B367CE949696E2E3D8D8D851A346FDC3
            0D681A06BDC7547CCA4ACD0EE841BC7A909D43C812171310A561610DC401B242
            427C688C152021C9FF6BEF3C009B28DF3FFE5E76D2A64D3A692914BA80324B41
            4001177F1454F0C750401499022AE2F6276E401C0C11640928222E866CD09F20
            7BEF4DCB16DA02A5BBCDBCDCFF7DEFBDBB5CD6256D03057CBF2DE19A5EEE2E77
            69DE4F9EE7FB3E0F3F530CF03084857948289F087806A2F90242D82B4DBB3010
            8AE794330E3BC3D8D09C79878561D8CC175A19CD93A70400A2903188C520339F
            55E3CA3132348A06391CE13A6D0C6B9A46F3BFEC76B9C5AA325B95169BDC6243
            A120968420FD00D45DD54AB1CDC580D50E8EE5D531DB555ECE6DF0A241FCFB99
            7073B33E278A468E4A4F83147D5E770EF3AE33805DC80E780CED0CE37D8F5E52
            6594EBFFAE1FF439BF99E8E988C6C3AA5D11A6FA24E47A4199CA1F49A01669D1
            590A28B6C148162CF67304783FE24589A23CA263729E06E7B69D932D19E7F9C1
            661EAE6021770F03542A5583F446972E5EAAE439F4A98C8C8CE3278EE7E65E11
            4511D16D42ED84868DD20FECDF1FC846925392737373FEF9C7E751190D116969
            6967CE9EF57FBE2954742A34447FF9CAE5ACAC53369B1588229AF04C4418238C
            C6C8EBD7AFFB3D2ABEE7070F906CD7A0B0F0B0307D38FC556969495E1E3CEA5C
            B3C524FC2189AF97F3FA891C76702125B5415151A1D5E2BF2EBC4CF0AAB16333
            C40BBD3E344C1F16AAD7330E476151D1D5ABB9B9B97956B6793BC5133C7EBE2E
            B3BF5DFC5B547C42024486E2E24ACC1394903E4C9F929CBA7DDB163B6DA7F819
            142C5D51421111996B014778FC9191D1FAB0305345C5959C9CDC9CCB39393979
            57F3CC2633224DF85999A5490854F084B3EDCC62EAD4A99B58AF3E449EBCBC9C
            0B17CE41627612AFE8ECCA7861C414FFFDC03B8DC68888C8288D4673E3C60DF8
            8A853A78F0E0C50B17E08B042218445DCCC94A952A3A2A3A2E3EBE76ED84D4D4
            B4BA75134DA68AECECACB367B20384214790BC59F0E5B5FF00F717D4B973E73F
            FEF823289BAD942431E8EA3870E32388252EF62059C07931A751DA5740482632
            095122C292F1431E4B3F8CF0E6231C2A0E02393C18C821A4C3040CC2B3C6D84E
            AB168A9B14862788999D18848C413823667536AD6727DDC32DD156998309D768
            6211063132786BB5295152CCAA345BD1B4798B456EB1CBAD366061CB495B2006
            A1E6620C24A1DD1713BD0E69D58D06DD92C0FB4D94376387D73AA34EFF740033
            C5DC5610DE2519D7D345B9BD9157F3A9DC94D35305BFB1978D78798DDDDC096F
            37697BDCD5C3CD68C42943B7CF0378D58E0F3CF0E3C205E7CF9F0FCA31646666
            F6EAF5D49FFFFBD3EB6FBB76EDBA74C9925DBB76FADDCE238F74B9F7BEFB36FD
            BDD1F3574AA5B275EBD625A5650BBE9F5F52E267E46ED428BD4F9F7EF0891E38
            B0BFB4B4D47305B95C7EFF030F8EFDE4232115523585871B2096B569D3B64546
            8BECAC33FBF6EE0970808C888C84E3EB37D3BFAECEDEA1A2A2A29B3469D232B3
            1564BE63478F1D3E7430C0BF0BAD56D3EA9E36E3C67E1CACD4E12BA35F2D2D2E
            3D77EE6C20BB6ED0B05162BD7AA74E9DDAB17DDB9933D92693A952FBAA57AFFE
            C39D3ADDDBEEDECB97AFECDFB7B7A8B828904741A6494745D84377EFDEB577CF
            9E2B572E0B492B885FA8DEBAE4A950ABD56DDBB6EBD5FBA9E4E41488F57B76EF
            AA7209924A099E9CADDBB6DAED28E6073FBDECD9B3A779F3E6B760BF6E92C4A0
            1B7341DE08207770F62099DFBC98CA594711D28FD328CDD30FE229CFD4984C14
            1312F7D0605B90BA995E9DE513C553C6DC1888E11808D8298841002F5B7843B4
            8D9F1D66627F346124E2300812AE8041766EA618C4209A31682106B119310662
            100220251B1092596D72B35581624236D457D5CA2D001C0DDA7521E16660D06D
            E10C08C621B8C01CE32D5CC047867C9D31F1A970E51B8ADBBEAF60D16D7522AA
            7D089E07517DD4AEFC61DCDC5321CE9FBA3F63FEA7A4E424AD563773E68CA0EC
            51ABD5CE9A3D67D992254545C55E57888A8EEAD9ABD790C183FCD6EA4C484898
            3173D6A48913DDFE78535253DBB56BF7DD77F3776CDF2EBD85A4A4A4A1438719
            2322FFDEB841A21FF0430F3DF4E79F7FECD8B123286700AA56AD5AEFBE3BC6C1
            30CB962EF5BB32FCBB7BBA6F9F31EFFEB7B0B0305807009FF89831EF5FBE7C79
            C386BF843B25BC41DD9FFCCFECD933B3B3B383B27708AFFDFB3FFBF3A245D2AB
            41967DF0A187A363A257AE58018FB33A0CAA0B0979F7BF63C2C2C256AF5AE997
            A2A2A2A31FEDD205B2CEEFCB961E3972C47385403008AB59B3E6DFCC98B97DDB
            D64D7FFFED77E52A36F8106F8161F6EEDB5B58C4BD4EA64E9D3A6AD4A86A6EB3
            6A92AE22BD065C7A126190600F92FBCA8BA94518A4F61D10527AA4C628571212
            3390A4459A5B76F07E20CC408C330EC45615E23188AB0FC4DAA2856533074018
            8618362386DB7208D120B602911D25C50C5A6D2C4E8AB1C620A5D9A2B2DA1466
            2B4A8A4124621D42149E3C6F41B7C06603561AEC3C1B7F533008DC167539821C
            9162247EC3F89829263C4C02766E2E0ADC3661B980DC5495D81C53F9773A3192
            726E1DAE0B1DDFFB52943FE02C3CBCCB875F05B5A4468609399F27C1BFA2842D
            C904CF89D87EA2404E183814C5C5C50D1A34902D9412048D1EFD6A6848C896AD
            5B55AC1D046513D0025A542955EC82323333F3C489E35F7D35C5EFD67E5BBCE4
            EF0D1B850635B5E26A0D1A3478F396CDDF4C9F26DD32B656ADB8A1C386B5CA6C
            F5F7DF1BAF5CC9512AE4F030B0F3053961E097127E9656AAD46AA3D1585A5AFA
            FE7B6382F2F405E9F5FA853FFE74FEFCB95D3B76CAB9BDCB591B103E2170D7F0
            0B1D429DC4BA4B162F5EB16279700F203E3E7EEEBCEFFEFEEBAF13274F72F61F
            64D151713E20E4D051217F8E4613532BF6F0E1C3D3A755371685053978E18F8B
            D6AF5B67315B94EC595669D4702F5A8D1649A7D141660981FF422D162B7C0D6C
            DFBEAD9A7B6CD6BCF97BEFBD7FEAC4A913274F2804DB13CA9FA1A7AC0B0DD5C3
            9D858686858787C07D87861E3B7E6CCAE4C990757C6D30100C827F66A35E193D
            62F888C91327062B8CEA5767CF9D3D77FE1C5EEED6ADDBF2E5CB6B6AFE9A744F
            B103E05C1B941413EC416ED3E6DDF3622A3E35E60C08B938845C0242320F1292
            E14C990880BC164D12E6CCB3D120CE13ED8C093943417C1D45FEDB4A512C0631
            187D6C14A860C342F0BB826DA9518E96ED0EAEBD9803CDA94749310BF20669B4
            319081D0372A2924B3DA1526B3CA625343E23123BB34AAA368B602B6A2B40C05
            87D880D0A6133176A6662EEDCD1699A951B3AAFEA7313FDBAF76816CA7B959F8
            026E467B0F6789C8FCE1EC65015C8D1FC06912A1306FF1BFEB707FC7A54B97EE
            DC199C4048A346E99F7C3276EA9429CEE72203322073B16A53141C7F870E1FFE
            D69BAF9F3E7D5A7A836FBCF1A6D1605CB37A355CCEC86CD9FA9E36D3BE9EBA7F
            FF3E89878487870F787EE0830F3C083FA01F3C7400A705298E30B993C2BBC329
            854CD1A377CF375E7FFDC68D1B413903623DDDA76FC70E1D16FFFA1BC577CCC4
            275D26F2BE871BC2DBB46BFBCACDF94CFFD6DBEFA8952A781E84F32FDA355BD9
            554E414AE9D6FDC9112346048D835F7D2DC260DCB275B3D0591AD3273281F38E
            F4366DDB5EBD76EDCB2F3E976659C0421584359BD5EA357608B73F78F0902E5D
            BAFCFACB2F37F26FB01F0504271285895FA9E41CDA1083DA77BCFFD75F7EFEFD
            F765D23BBD7AF52AFC43868F35B1F25CA176EDDAD3A6CF50AB9433A64F0F3C88
            55CD378782C2C283870EE2E584848443870E45464606E5925541921864CB05A7
            1259CBB203D18BCC1580BCE4C50487909A6F38AFE4A78CF9488DA17961AE2404
            647C5808487EFAC700C4F6F7F2C2400E8A3339DB7806B2A150108519C8CA4786
            4CEE1804D7A7797672608B34EB0D72B0DE20D4C0832D1D44A30890C9ACB1D110
            86E0B2DC46CBCD16998D066C580861909D06E566B0F964B4CFD37B9387312269
            0571C2275115C480209FFFB8B8F8E62D5A7CF8E10712EBC0B7DAA8E8E80037F8
            D65BEFAC5FBBFAF2E5CB7ED76CDCB8C93D6DDA0E1B36447AB50E1D3A8E183972
            E1F7DF777BF2C9E3274E7C3B67B6C4A8A356ABFBF4ED0B3F25EFD8B663F7AE9D
            7400657EDADD7B1FFC282F312EC26D6666B602EC18E6601C15E5E57979798138
            A9A13A76ECF8D4537D7E5CF883C43AFD9F7DF6CB895F5EBC70C1D70A751313EF
            697D0F3E009BDD76EDEAB54B972E4A4432C41A3E6264A82E64DBB6AD12EB74ED
            FAD8BAF5EBA43938292959A90AA83F5D6C6CEC0B2F0C9FFEF5548911FFC9FFF4
            D8B367F7B2653ED38590CC1E7FFC89F61D3A346CD8C841DB6907834DCAE7CE9D
            39B07FFFC68D1BCF9E459623C8221F7CF8515E6EEEBAB56B1D763F7F1AFA307D
            9F67FA8D1B3756E254C30D42226CDBB6AD56AB832F33884110C2AC16CB818307
            E04ED7AE5D53C0B272F7EE4FBE3BE6BD9F172D3A74E06020E724282AAF28870C
            64A791FD08E2DDA64D9B3A74E870CBF6EE29490C820870CC0064662093CE8B09
            751479FAF112105279A4C6641E24C4F6D0106008087312DC9A69007700129088
            E273617C0121F7501062201B1F0AB2F01864411D581976C23C1C1AD920905088
            1179832CAC37481B8B01083514B329CD569515598214162BC220B34D6163F362
            161B65475D572109314565B21DA78D3578756FAA823E8C11554AB74152F43612
            7CAB183478E8DB6FBF595050E06B1D3820CDFF6E81DD750EB684CE6467FDF5D7
            5FBE7EEB36560D1A3A180EC02B964B2583743ADD9A35EBCE9C3D3379D2A49327
            4FF87E2E54B7EEDD9F79A6FF91C387376FDC14E007F43043D813DDBBBF32EA65
            89755E7CF1A556AD5A97B22E6C8552A945FDD974E1E1E11B36FCF5C5179F4B6F
            7FE0C0415191519BFFDEE46B85A6CD9AC914D4B7DF7E2BF1BCE6CE9D9793936B
            B7D9E1F5526B3470D7D1313156ABF5B557475FBD9A277D003367CD5ABB6AEDD5
            3C6E3587C7FB4FED84DA2D5B664A73307CFAEF7FF0614141A0D1B295CB97E316
            575EF5489747B34E672D5EFC9BAF15209A7FF1E59767CF9C397AF4E83F972E09
            1FBD144A4542429DF4F4C62D33338F1D3B7AF0C0813E7DFA2C5BB62C3B2BCBEF
            21C1C70E193A74EC5829067AB44B9701039EDFB963C7A993274F9D3A65369BB1
            0D039EF0060D1AB4BEA70DBC58B366CE4849494D4E49993D73467171B1DFFDBA
            A9CAD90078B90F1D392CBCAAE11379EFBDF7AAB6A96089920E6D31596D8175BF
            97BC98CB7C31A1BF98609456793884C4012199C824C4879818711C4880212C71
            6A4CC888011706E200486020876B3A8CA628139B0EB3894241560F0C421931EE
            A10EAE3519C2209B8C7618B4BA58C440C81E44B13D349426B3CA4ECB2A2C728B
            151551B45881C526B7DB015B5A1AD8ECCC3FF9CA2317437D9E5B328CD5A8FC7E
            E4FAD7CAC154AB271DF2F7C864402E930314C7A758AB0FCA58C8F97E2CE8D7DC
            FC6C610230CEB4206390C84024929C2F5423E3CAF1E0923C6C5518B942592721
            61E9D2A5D29694612F0C8F8F8B5BBD6A95DFA780AB6FB1556AB003452557B2F9
            08CE88835D22EC7FC813A3869FB3C30C86B4D4B4FEFD9F292A92B2068F18F9E2
            B773664B4CC379E0C107870C1E9A9B9BB37EDD7AB3C9A480FB455564D8140CBB
            73361DC31D06F204A16340CE9866CD5ABCFDF65BE779B385A7D2D2D23EFBFC8B
            CF274CC013BE84777EAD46F3FE871F3EF1C4E3707C92387248903BB76F2B2B2D
            45B3BC95EC546F05DC333C0015FC2F2424242E3E7EE890C136DF94D9B76FBFB6
            6DDBFEB06081DBFD7DFAF68504201DC2494E4EFE7ADA37D3A74D85BBE3AE00BE
            06A8780FAAD9A3D168D3D3D3870D1B2261CD86EB2F58F0C382EFBFBF76F5AAAF
            75E0E9653D4EECE565975843106B0AD222EF9156A70DD185C02B1E191579E6EC
            B98F3FFA50E2B0E14BAE678F9EAB56AED8B56B276D7789E7E1AE4490051F7AE8
            E1C47A89CB962E85802E179C406CF127196BBE52C865F01AB3DDA7E14D684A6A
            EA975F7E291D155BBC64197CD8CAE52B8E1E3D929B9B6B36991994CB70D64E8C
            8989796EE04008528B7FFD15DC42C1D7DED1E3C7CACAB9EC216BE7FFF356F6CD
            F02A7F18746904289E072003E169F36E793199D05FCC5740886523AED9AADC35
            3526179110F60979C988B13C243A5CCAD522CD05811C7C9B5507970E1340C625
            1D66F51A0A62679095A19A8A6C468CCBA43984BA4178A698518BEA0671193137
            6390CD2E47012108516CD120941173004845472FA82E5ED3D4EC05BE79729068
            508DEA66CD16AC564F0C5CD45BC64D6D07428144C10DC41720779602045C1D40
            D6E4E3F407E1559C35135D8D282E251129BD3EAC454673E9692649494953BE9A
            3A75CA9440A24115269383A645966D887088BFB00305FBBBD9E28432CE27C2DA
            A7335BB72A2A2A1E376E6CD5CE5E8B161923468E841BFCEDE79FAF5FBF4EF11D
            7029C12E8E6F581AC477523C14A63568505C523267F62C89EDCF9D377FDDEA35
            173C0CB04D9B35AB5D3761FCB871128F7DF8E14ECF3EFBDCF7F3E7C9043B3BBB
            77A1C2DF430F779A376FEEC183077C6DA156ADB899B3667D3161825B3121B899
            9746BDF2F2CB2F7A9DFC8F0577397BCEB7DB366F3973261BFBE29D74CCD58A54
            B46AD56AEFBE7DD21CFCC2F01129C9C9BFFB9EEF46B1888E0A3152729BDD2617
            6D1FBBE33997B40A915FDB76ED5E7BED55E994624444C4C08183EE7FE0018D5A
            03F9EC6A5EEE996CF49573E50AF722E2FA55F3AF29A10611B720C79F0DE07E21
            3041DA0DD3EBEB2426BEF1C6EBD2AFA58C8C96CF0D18909EDE18BEDA2F5EBC70
            E9E2A593274E1C3B7AB4B0B00004A9934615DE7F1C0EC7E9ECAC223EF2949191
            B171E34683C150FD83A9A6FC6150FE2C90F30A8B41AE7931371E920A08A9BDA5
            C664221212B6257386850010F190FBC9C4174104400E27008983391C1809CE68
            5FA120E40A4218E470B8CC14C31669789F053E7F61C23C45A350904C3006D990
            4F48213606A19EF3768841CCF693BAC272EF9C7B5BCC78FF378B18B36A5A41EC
            693570C8E04993274BE408A03EFE642C1C15FC6E2A2424A4A4B8F8CBCF3F7354
            BEA22E1CC6DEFEEFBB13267C2A41035E9594943C72E448A3D1003FBE5FBA78B1
            B2FB55AB3583860E79E9A51725C2394F3DDDA745B3E68B7FFD457CB4F5EBD76F
            DDA64D5979F9179F7F2EE1298E8C8C9C3163D637D3A7951479AF61532FA97EA3
            C64D267C3A5EE220274E9C7CF8E0C1A3470E8BEF8C898DEDD1ABD78F3FFE2811
            DB802CF0CE3BEF42225EBD72A5AF750C4663F71E3D5F1D2DC5C1B1B1B5A64EFD
            5AEEB542B7ABA22223D7AD59F3E71FEB25D651AA94CF0F1EF2E2C8117EB7C66D
            332A2A35352D2535350529353232E22C64BAACAC03FBF607581908EB9E7BEE29
            2A2959B26471202B43DCA957AFBEC168A85F2F29BD717A93264DAD56CBF163C7
            8E1E3EBC67F7EE5B5319481064A0AC33D9C57C59ACF4F4F4CD9B37C3D3722B8F
            C1E789F28341E5BBC1998E5C34C8332FE6344A8B67CE7B0D0809A931B90F1272
            FD66BCF655E5CE277BE0E21EAB3817E670652087687698433214C46290830B05
            B94C98C71864933B182387413445D30AC118546191DB6C324F63909D062633B3
            76BF0EF5DFB81B45FA32D6AC08460B6ADE2243A5514958522AA56FE7CE83C3ED
            457F73861D3ECE3F1CEA9EECD9F3F901CF06586930363676E8D0618DD2D357FE
            BE5CC22D24AD5EBD9F5AB17285C48C33B8971F162ECACBCD65ADB2A84EB456A7
            83DC73ECD83138D8EFDAB54B62E3E1E1E153BEFAFA7FEBD71D3F7EDCEB0A7299
            6CC4CB2FBFFEDAAB12E19C4E9DFE6FC080E77FF969915C260F0DD38787854744
            46A6A6A59594944C9A3C51825F753ADDB8F19F16E4E7AF5CB1427CBFDBEB7FC8
            D06193BFF2C3C1012A2D2DED830F3F9EF8D9045AD2FBA2D7EBFBF67FF6E59746
            566D2F70F8BFEFBEF650F0D57BEAE489C5BFFE5A5414100C3DF4F0C3172E5D94
            B6A0B9493C61BE59F3E68F74865F8FC4C7D786AFF3DF972EA9F24C11BA320F84
            7B3973F66C6919F70A494D4D850C14171757B55D075DFE30C851018EC400B995
            9B2FE656475126BA750908A95D6B08A14E1AAE2621992B09516CE56885A8ABBC
            040601D73EF3380EE49581681FE9302BFFCD8582E032433BF807E1C6F2CEA498
            DDA67008E513F98C98CD8E4A485BED5E8C4190812C36E65A21B5F598DAE78925
            C3588DCA41CEBF87705FD7EA6C01A7A8B07F07B97670505F86FB4EC9F8165432
            2111C0E69B645CD324CE0084BFF887C9E47CE24981EBF5B04DAB58730C2B955A
            0D47CA81039FB7056C7C96509F3E7DDBB56B3777CE1CEEE950942E44A7C43E0D
            CE8583DA48A1948856838AC540A080FFF4A161A1FA3043B8D118111E1E66B5DA
            A64C99F2AB28EEE255701C1D386850972E5D572C5BB65D5438917138E013E4ED
            29F80B3E5D6E9115CACCC02F8D1AC28C363A26068E7363C77E22B12F38E8C221
            8761FB76D9ED7441C10DA840DE82222222274D9E74EEECD9AC53A7D984909015
            4276286495D169EAD5ABFFEDDC6FFF58EF3376024FE3B871E30D4683C3C1D8ED
            76B8F3DC3CD4E5E1C0FEFD577D7B74A01A366C3866CC7B278E1FDFB37B37CE43
            A9D91BD4C10B1509D2E08A3D0909095BB66EF996BF6AD5D4FCEFBEDBBB7B774E
            4EAE16B70953A3671A827C39FAB0B0307D98DE6030188DC6D0D0D0B2F2F2E12F
            BC0051B23ABB83AFDED7DF78F3D1471FF96AD264ABCDCA5D5A9480C37634153C
            C9F0D4454446441A23626263C20D8623478EBEF0C230DCEE2D1079AD1BD4A449
            D3D97366D7AF57FFA99E3DFD56FEACA6E04782B3E7CFC1D3857F4C4C4CDCBA75
            6B9D3A756EEA4E2B25CAEF1F0393D5199837039983C320AF46692F012195F7D4
            186AA0E14642D8318D4948E64142C0CB4C31110651AE85A4BD301067F611A7C3
            AC6EA120B8024750B4C85DCD26C51C0E8AB6CBB9F289FC54790BEA26A6163262
            B862909B31E8F43FD4D10BFE03B077A808C6D5AC6EC66C7F86A9D636D926A772
            ECAE103846E85485C187B343E056A414E5EAF3A0581BB59CB5E3706668FC70C8
            3CF07FAE63286BC3C18E0D7893D6A0C1A79F8EDF1F58572F69C5C6C62E58F0C3
            9877DF35B3B555E0B00B8728EC8356F238A2E430448521401BA2651B5CEA5816
            0A3546465AADD6850B172E5EFC9B5F2C8383F7A2453F7F3777EE9EBDBB459700
            7901306B28F9428D6CD146D4040A611F0B456C4B28383E4318D3B6CC6C3564C8
            A02ACCF4F1AB76EDEE1D33E6DDBF376CCCCACA128E4585A18C4512F8D421F9C1
            3B5F7DF595E0EE3A2D2DEDD9679F6BD5AAD5FC7973AF5CBECCD97194C8102D38
            96D189D7EA2097242527078B83FBF6EDF7D8638F2D5AB850ADE65BA66AD5702F
            188320FA8487410E31C07F4A157A6F379BADDF7D377FCD9AD5D52CD43477EE3C
            BBD5B676ED6A6C4092F3171A2EC31D1B21774518200845C5446B341AF8A776F1
            E2C51933BED9B9736720CFDA57F9C4FAF5EBEFD8B16BD68C6F56AE58E977236E
            0AFCFD071EE1F98BE74D3CB4C5C7C76FD9B2253939B9FA172B880A0083AE4E01
            79EFE06890D3281D6840489C1A938B4C42729E84C4302417C110F01110729210
            0F404068AA2A24C87806A2794B102D1D0A424DB469AE8106A21F071B3C62A341
            2C0629842AD2E28C189E2AEF5631081B836C76B0F1A0EC46A9AF6816295A53C3
            AAE6904F544D0585A25352525AB46C291D08095C53A67C75601F52151E9BD1B2
            E513DDBA6DDEBC79E1C21FCAF94FBD7E3564C890CEFFD7F9E30F3F7254F5D5D8
            F5B1C74E9D3E0D87E1A09C0141494949C3860D8BAB15FFEDECD9F9F9F9126B8E
            7EFDB54F3EF92427E74A50F69B9E9EDEA64D9B7BEFBD2F342464CDEA35FBF6EE
            F5FB90E7060C58FAFBD26071F0ECD9733E7AFF83C0032DD131D1F0BADF7BDFBD
            28BDF8E79F7BF6EC09A4CA94A7207EA5376AF4A3C71C3A5F6A9ED1A2FB93FF89
            8B8F872FB90D1BFE3A7AF4A804074B5491FEEBAF0D7367CF3EE123DD597D5598
            4C17FEB9249890E019DEB46953C3860D6FD2EEAAAC0030C874129CCEE0318837
            4ACB81788E972820A4722D2A8DBFE54E9310C21D4F12127D733004F89E62EE24
            4189E6CC8B8240E2C9626206A25DD361B46B28A88C6D356FE36A0CD1FC04318C
            416C58C841CB9CD120DF1931B672B4B36250693958B5EBEE740571AF0A120CAA
            5191DA9B32B9ECAD77FE3B6AD44B12BD48298A829FE003D95AFBF6EDBB777FF2
            AB499303DC3BC37BE31A346CD8BBCFD3478F1DFB76CE9CCA76D192CBE5BFFEF6
            DB964D9BFF58BBB60A67202626A677DFBEA3240B055556AD5BB7EED1B3179E4E
            B5DF1F85B4EFD891661CDF7FFF7D75F6F8C8238F242527D7AF5F3F23A3E5B5BC
            BC83070EC0EFCBBE4BF56061704C4D6BD0BA4D9B8F3FFE48624D9C4C0BE448C6
            8E1DB767D7AEBD7B7607B2B2585AADAE49D3A6CD5BB468D2AC197CBD9DC9CECE
            3E937DEAE4A97DFBF606484543870DD38784AEAA640792D8D85A70A7CD5AB480
            2FC28A8A8AACD3A7E17E8F1D3D06F72B6671090CDAB76FFFDB6FBC2194620A5C
            8164038A4B4BAEE4E60A6BB668D162C58A1575EBD6ADECBE6E81FC63107ACEC7
            1A00FA828B515AE65A44D12520A4F29D1A53F07669399F1D93BB22151F01A2F0
            042BDF55A419FC36E4F0F8F6CA40B48F7498198782C48930B44C7318E4A02946
            C0205D8C3823269E2A6FB333A8569095B2D13814C49CB8000E9E91C220328CD5
            AC1862F116A9CAD10841B87B989CCB6271257EF8E23F94C80E84E77FA39F1414
            F70BB91C554FE55A15C8F879C2725C2A081751419581704515BE9181B251A346
            8B7EFE69ED9A351247F5D6DB6F77EFDE3D90C82B6DB7BFF5FAEB906350D687ED
            90C575EAE2E748B31D9D50D72CB546ADD368343A1DFC689BDEA4F1FE0307667C
            F38DAFD10E0E8A898989C77D7FDACECCCC9C3D67CE3B6FBE75E1FC79F8914EC9
            CFCBE6DA97096DCC7017315C2948A9601D4AEA873A75820C54B5F083F3C2C964
            F0089393932108DED7BEFDF56BD7FEF7E79F278E1FC78938A1871A3A00057726
            D873A00E0B3734486F38E0B9E7244EEFC04183962E5922C1A900756D1BDDB75F
            BF711F7D7CFEFCF90A3C7853144AFF396D50C22475CE20C5F9754242DBDFDFE1
            B9E79E93D8BE4EA75BBA7469A85E1FC8A980F832FE13AED801DFAC4E26572A42
            4342B4BA109D561BAA0FAD9D502736263A2C3C3C3B2BFBF7655EAA756B359A84
            C4BA75EAD4494D4D6DD5BA755979F9CC1933D6FAC3DCDF162FFE7AF214C82BFC
            0C7AF43F323FE990E0F127D449A85DBB76ADB8B83FD6AFDFB1DD4B81A5C8C848
            B8D3BA89751B364A6FDABCD9D1A3473F1D3FFED2A54BC03706A5A7A76FD8B0E1
            FF1E7C28403B7FE082FBCA2FB8912F2A64DAB367CF050B16848484047747C152
            601874693428988531887308B90481DCA68C0918244E8DC95D4808C7845C4848
            E64E42CE5B4FB959A4F1B28DC51DDA958168DE12447BA4C3CC4228C8E9AEA679
            0C622DD23C06291C34C220E98C186E25868D417FEEB15FAFC42CC83B4FD51F38
            89AAA32046E3D8CE61D5ED1D869B3AF10620EC06E2EB22CA70014567CD1BE157
            7C011AB6C92AFE1586288A12ACD27299027FE16A720A397209190C86E898E891
            23A5E6E9346DDA74D2A4C92F8F18213DA5053D7D7E05E43B52294518C2172864
            9B87C2450D0B2051D1D1F7B46D939B9BF7F5D75325FA883569D2E4B3CF3E5BBE
            7CF9DCB973250EE0934F3EC96C99F9D28891A82998422100906006E7DCE04A6E
            11034193A64D4F679D96981F0747D2D1A35F55AB55CE6BC40DAFE87FBD5E1F11
            11111515056F8B8A0A2184EDDCB1F3C8E1C336BB1DD767C4BB177993D83EAAD8
            1684BE350F3EFCD0D871638536B19EAA57AFDEE2C54BA64EFDEAC71F7F9478FA
            70685CBD7ACD2F3FFDB47EDD3AEEC8E115E6E887073FA5E0D1622B2622EFB2B6
            6DBB76CB7E5FB6469283DF79E71D9D56F7FDBC7912C31CFBBC946CD04885B7AC
            C61124045BBAD010640C42A50BC3C20C86F010BDDE6030C23366341AF7ECDA3D
            67F66CE962CA8D9B34193474E87FFEF3A4C43A5DBA7419356AD4948993B813CF
            79C194F0CC18C2C3C30D06788D62E36A41ECCECACA6ED1A2C5E4895FEED8B65D
            62832A8DA657EFDEF937F267CD4275A47C6110BC3AF0D3E00763AA52C159827D
            6D765BEED56B6651FD850F3FFCF0830F3E90C964016DBA2614180695EF03A73B
            0085C3C528ED161072A921249090DC3526A4F02421C0C81917D3B5D769623291
            2B080097BC18DF679E63201BDF4643B00439449620DA6B28C8597091AF9AC8A6
            C6200389A241DAD8403262761A14953A7EDF62973EAD24A954B322DEAC1A56F5
            FE00C67CF8017C6F950884C0F7DCC58B17C3F10F7E6A0F648370F80FA439001C
            959EEED737BE76EDA953A74AF851E0A8397AF4E8569999CB7F5FFE68D72E7DFA
            F491DEE6EAD5AB674C9BB67B57A0E9183818BFF9F65BCF3FFFBCC4CB78F8F0E1
            8DD3D30F1F3C24DC23BCD59BCCE6C2C2C2E2E2A292A262BFDD40BD0A25809A37
            1B3F5EAA5010FCF4BF73FBF6AE8F3FDEAD5B37E9AD3DFDF4D303060C80201878
            ADA65AF1F1CF3D3FC02F077F3A7EFC5B6FBC4907562047BA88367AD61919CF0E
            786ED5AA550B172E84903779F2648BD93C7DEAD7BEBA6D408C1B3478C8E9EC2C
            89BC6142420264A977DF79C757461522518F1E3D5AB66E3569D2A47DFBF6C165
            C8766B56ADFEF5975F4C26EF33BC2030BDF9F6DB6FBCF9E645B60695570C1A3A
            7468B7279E78ED95D1019EF000555A5E762D3F5F785942A6842F83DEBD7B0777
            2F4157401804C59C6C03AC8758FBB22820244E678961C84B6A4CEE838458FAE1
            AC4240044340B2990610C581685110C8C1CF0BA33D1888764D87D99CA1202102
            246C808D06B11824E330880957A9E3DDAA268A3362E2A9F27B4FDA8E9EBDDB47
            59C27135AA7F33C63DDCA9934CA9902E140447D65181F539572A9570F41D3A78
            48A964EE461BA2EBD9AB778B8C163367CEDCB06183C49ADDBB777F71E4C8D52B
            57AD5AB9D2C138A64E9FFEDA6BAF9D3B774EFA21AFBDFADA0B438698CC261080
            5E79F5D51F162E3C74E890AF1512131367CF9A35EAC5972CD6401B86072EA552
            35EED34F070D1E2431D1BA57AF5EF777EC38F18B2FC64F98F0D5D4A9D2C6738A
            A256AE5CB96ECDDA35ABFDF739C1FAE893B1EF7FF0BE744270FEFCF90D1A3408
            646B105BFFDEF8F7A42F27FA5A0182C59017864252993871A230294CA552BDFC
            F2CBFDFAF53B7DEAF4BEBD7BCF9F3F7FEDEA35F8CEA8D1686AD7AE9DD9BA754A
            6ACA37DF7C239111839B9D376FDE8CE9DF1C3DE23DA8D6A66D9B67FA3FB378C9
            929F7EFA49B81312D89831635A346FBE7DDBF693274FC2FD9695962A140AAD56
            D7B051C356F7B4B6DBED1F7DF4D145BE0EA72706C1BF8E375E7F63C8A04165A5
            558160E0EDFD8776380A8A0A852E198025BC152B56B46CD9B26ABBB8950A1883
            AECD0139A3580CF21710724F8D890342725712C273C778F4E1C24200B8DC7A46
            D204FA011E00440B91211103D1E25090673ACCFDA15C637954309A8B06D9140E
            102E57C50B7DC4243262E515CC6F1BCD567FD318FFCDC3D8EDA06AA681EE0EC1
            3FFD6ABE0E71370BDED4C377FCE2B363A2B9F272DC494CA6900B93E6D16AC2FC
            79A16010DBB542C87FC971C682EDD88073425A9DAE5E72D2B3CFF60FD65F101C
            D88E1F3BB6F1AF0D2813A2520BA571B8FC0B5B20A74DDBB6492929DF7D377F85
            6B113F372525258D19F31E433BBEFE7A6A6101F7E1BEEF33FDAC36DB575F4D91
            3E0C381C1A8DC6F7FEFB2ED7B2814D7EB9347050B2EE24B5262929D964318D93
            EC7D01B7B66AC5CAFDFB7CC6AB1887834D863AD832070AAE1C80923703E15C20
            CE1689EC396A0D123C1BF3E6CFDBB871A3AF8D4744442C59B2F4C511234A8B4B
            3A3E707FB3162DDE79E76DE9A7DFBE7DFB69D3A6F7EFD7AFB4B4047569530975
            82B02548A5D1A8E17F2865A5D5356BD674DF81FD907282F202888A8A5ABC78C9
            A7E3C6417AD0A032041A8D4A859C47A121FA50BDC1686CD4B8313CAACF3EFBEC
            C891239E0F0F090979E081071A376E9C9292121AAAB7D96C1515E567CF9EDBB2
            65CBDEBD7B2486D78C8C8C71E3C62F5FB6EC4C76B6D30AC69E7BF83413EAD6BD
            F7BEFB76EDDAF9F5D75F7BADAC0849B743870E69690DE0023C4510494B4B4B0F
            1E3CB079F3E60BAE6524C51804FF605F7FFDF5575E19DDA35BB77CC936209552
            697979417191F84FB24F9F3ED3A64DBB4D8A44FB55C01844978023F580ACDC4B
            4048EE6A94760684E4229390C2838464FC2C7AB9332C84A1C79D87DCC4054E45
            0004442063E57C3D2E0C448B2C41B44B3A8C2721A73708379647182463A3416C
            DD20C64029E30573B44446EC70B675E7316B20A7F48E16A1B89A5595DB3BBB6C
            A4DA062F0A3796627947211449C46D90644EBE71564B147089E29088F53F5342
            0145BC4021238A1C7B53500D15E49191E3F1B96EBDFA13267C9A9575BA9A478E
            D5BAF53D039E1BF0D9F8F1ACE1452DD872D56A76E855A9E11098D6A0C1AAD5AB
            D7AC5E25D17C00F2C133FDFA3FDCA9D377DFCE3975C2A518341C26C77CFCD180
            E79E937EA78D8FAF3DFD9B19BFFEBC28EBE429DC3C54853ABA221462CBE5A8B1
            4D58A70B69DABCD9ABAF8E36997CC68D3A75FABF473A3F3275D24489DD31EC2B
            8841461C8AAB06C4D7EDE35C383C8A096D64110369355151D1169BFDD34FA520
            ECADB7DEBE7EEDEAFFD6ADC72F91C9D3A60F1EF4BC448D69AC8F3F191B151939
            E9F3CF558843B84BA1C6261D96C0905947A733180CB56A27BCFEDAE860952E7B
            E79D77AD16F3FE7D7B518B56565A1D82A0F0503D64119D5EFFD34F8BA41B6B54
            56F035DEBFFFB34F74EBF6F38F3FE6E7E7F305A2D8B3AD50687421192D5B5AAC
            D6D9B3679D3D7BA6FABB1330282E2E6EC284CF939393460C1B56525C529D6D0A
            271F625F61499145944F8C8989993973668F1E3D8278C66EB602C520F4CC2F0E
            0785DF7B0908798906B9A5C614C0593A88F344B37824E4D5DC6008083CE4E3A8
            856962EC824B10882F1AC4FD284E87D1A25090431C0A7226C5581872B04D3300
            4E8AD95152CCC64450CADA8239DAAD6AA29011335B1DBFFCAFA22480BA214119
            C688AA2E62F1AE51D1551AC39292521293EAFFF4D38F5578ACA7E0A8F3E1871F
            FFB4F08702D19416410D1BA5777CE08143870FFDB17E9D742199CCCC563D7AF6
            3A7CE0E08E6D5B696F33109FEEF70C5BDCE5089054B76EDDE1A666CFF846E23D
            F9A14EFF77EAF449695BD298F73E9C377BA674F9A22A23C4730307CD993353A2
            F34393264D1F7FEC89EFE7CF13EEE9D4B9F3F5FCFC3FFE5827BD65088263DE7B
            7FFA575F49D71DF84FAF5EEBD7AF3B7FFE1C08869A366BDEB5CB630B44472B7E
            22BDFBF69D34F18B60313756CBCCCCAE5D1ECF3E7D6ACBA64D5E239A7D9FED1F
            1119356EECC77EBD4A010A621045518F3EDAE5C1071F5AF2CBAFA74F9D0CCA66
            1D0C535A565A5AE1F232BBB38240822A8341E633E0440B20B7790F08794F8DC9
            BD91901886542212022218023E42415802FD003700E21BAC0A0044F3F1210F4B
            9088819CD120F61E1683641C06D1146D9397DBA270520C428FB88F985B46ECD4
            05EBFF76DDDCC2E4B789AA368C11054BFFC2D30F3F43777DA2DB8205F383353C
            3CDAA52BC580831E4811171FDFBA6DDBCB972F6FDEF47779B99479C2688C78FC
            896E728ADAB679B344B423B15EBDC49494C5BFFE2C7D3C3299ECC597479D3C8A
            3A5F7ADF5D44448BCCCC5F7EF94962233D7BF5CEBF76EDD4F12AB627935693A6
            CD4A4DE57B76FBEC41A6502A478C78F18FD5ABC5D5FCF461FA2E4F749BF6F557
            7EB7FF44F7EE06BDE1CF753ECD340975EAC4D6AEBD764DA01622692995CAE123
            5F5AB76A654991F7DA83C969A91DEE7F70DFBE3D3BB66F0BBCA6A2578586EA9B
            356FD1BA75AB1BF905FB76EF2AF05D755A26977778E0815AF1F17F6FFCEB98EF
            8978012A2121A14EDDC4E4E4D4E3478FECD8BA3558ED542B4CA692F25231C6DD
            8941204195C0208002422340E1775C408885216751699738909B49482E222185
            C040FC447A85282C04F85F01175710062346FC49CBE98F6629078818C82D14E4
            C1408C0B00B9B45375B0CE681C0DA2B9A498C5A634D9A2E5AA381BAD702B17E4
            5635F1C7B525C5E5018519FE85C3D86DA57F79342E1845B4295CDC07CD646793
            5EAC8187ED23C6B7C99073C6209431134C4142AB0D766DE401627F2153A29F70
            A516B644905CAE5429E12A2AF647F89FD96A5BB264B1B4D738704547C73CF964
            8F95CB96B29DBA50E245A9561AC28D75EAD5BB7AF5EAEEDD3BA51DD3F0505BB5
            6A9D91D172F78E1D39FE2AF7C0F3D1ABDF33DFCE9EE117E06AD74EE8D9FBA9EC
            5327CB4B4BB127468DF3556A54AC088EDB3FFFB448626E17A484CE9D1F5DFDFB
            EF12BB40F501F8ABAFE0D35E2A95331526F8817013333C7B5CA3D568D4DA2B79
            794B96FC26B1F17BEF6B1F1315BD6DCB66B7FBBBF7ECF9C7FA757E4B1C69B4DA
            679F7DBEB820FFEC99B36A0D9E998FF7ADC28582CA2DD6453FFE1094BE1950F7
            B5EF989A9C9475FA146B09D26A35EC0C793DEA98111616166E34441823424243
            CE5FFCE7C4C953470F1FCCCACE2AA84CD30C7816232222A363A29393D3208EE4
            5CFEE7EC996C87DDAEE0AA002047908A2DC4A0E22B336843744683312A2A4AAD
            D51514159E3D77EED0C18317CE9FAB1484858486464644C6C5C7A5A535341A0D
            9BFEDAB87DEB56DA61A740752BFAC2178FD96A293755D85DE7F4F5EFDF7FCA94
            29775C1048502531C872199C680C64662E2024F3971AF34F42723E2C24C01010
            F110705D008231885F7003205AF42D66203B970B63433D1CFA30C0AB459AC520
            19B0B3D120F86D97555854E5D668A5264E080509E668DC470C574DDC79A462E7
            9180267ADC05223DC56A56D5A9DB14946BC71640E45847D449153B7EF8D2737C
            1D20A161AA427043B3F42317847B86B16CC4D60A54C8E1E820E7860AF89F9D76
            9CCACE2E2AAA5C996609C101EFD8E1C31515151A34066AE0C8115B2B2E541F66
            B55A2A2AFC67B5E1C34B8A8B4F1E3D1AE08568D7BE83CD6E0BE4B3381C7F136A
            D786832E62001680108868D410150B0A8BA4A3532121FA037BF798248F9FB546
            A317003CD9887FD40203B13523B12949F048E1DE61904474BA92B2B26BD7F3AD
            9253CFE26AC5AF5FB3CAF305161B17572F29C562F1FFF6085927AE56DCC1FD7B
            70F354B4770DDBC255ABB33B98EBF9F9BE66895741104D4E1E3BCAD60A621D41
            88B442200419C30D46032AD713151D15151D035F84454545FBF71F387D3A3B37
            37273F3FBFACAC14BE724C2693D96C72B06673A18730DC1A6A3A166E401C6534
            D2767B614101E418F8DC95BCE75D25340E532971B94EDE82AE8204161505C929
            26B6562D444EB979870F1F3973E6ECB56BD70A0B6F54F08220883FC960AB1DFC
            90810E3C1C951982B71111111673455E4EDEA993C72D166B5E6E6E7979390398
            EA60107C8E26B851B3C9AD0A57E7CE9D274C9870474C079350E530089D8E4B6F
            8282692E0121AFA9314A1C1CF24A4272CF6F519379017D3CBB930A6F259C3FDA
            038068D16431DA0B0389D3618CA856101B0AC2B9302E1AE4A06C7685C9A2A8B0
            C628B5714228483047B34931D447ACB08C9EBFA230F08823293F58C3221857A3
            AAECE9C7B3CC827A000CC412E1473812519519231C345425FE84916B5C518946
            CB368FB9A67004A5647E0E91615BB80774FC957FFF81C3B4DF7568DAEEEBB404
            F270415EC3664A748D82D9A148E2687D095E05084DECE4455CD85C810F89E165
            B36259E03F87C4C62B198D4633E5346A5C5A11B7180678BF0ED48E8076D06887
            168BCD82F6EBF6D795CB6150152108529E19429CD5E2860AAD5BB7FEECB3CF1E
            7AE8A1205E919A52E531C8760D1C6F0CA8129F01214A140DA27C91909C9F482F
            C620202C301CFD485591A69CA1205A983F2F3203D1BC27DAE68581C479319AEB
            238627C9031C0DE22DD266ABB2B45C63652254DA58619EBCA7397AF9DF45A72F
            06BF44C76D2B4211352B82D135AC7F7752B5C6E5206F40018BC5A0B22A540881
            9068B1D92C3677244D4B4B1B3F7E7CCF9E3D834BA535A84A631014737D3EF8E7
            45AEB786446A4C264A73B9909092710290C21709F1CB5E45BBDE8A1784C96278
            6EBC070331A26890282F264C92C7B9309C14B3D10A8B555E56AEB38208853A4A
            98276F43CDE4913F1A9BA3CF5EB6FCFA67E57A679061AC864586B11A1519C66A
            5624A95DB3BA95AF7F1C0D0AFC932B3C369BDD66B5DB3D27B2A5A4A4BCF9E69B
            03070E542A95B7ECF86F81AA8241504CF6E3A0FC2F9FA9314A8284B0335AC9A7
            C03C6108B8DEFA925706128240763F0CE43A4D4C3C491E950BE22DD2E51695C9
            AC325B5536C6A050C708F3E485CAD1769A2A2866E6FE7EADDCF42F1A56C91856
            E322C358CD8AFC09D4B0486BEA800531A82C000C42193D942684F8E35EF481A2
            A8AE5DBBBEF4D24B9D3B77BE9D5B83555955C520EB6570A225A08A5D0242420A
            4CEE961113CDFD92894B2E0A0932E0316D1E788B09892F8F5B40C81380F8E090
            2F0662F85584D961FC37F206A1308F127E9B2D4AB34D65A5F50A9414E34241CE
            79F2766AC1AAEB17732A3783978C61352B3286D5B0C81856A322A1E81AD7ADAC
            629F9BC37A837CBCE9391C0EBBC341C32F6F2B180C86C183078F1831223939B9
            A6CED52D5015310848A7C6280FA3B47899126A4CCB5DC342C075DA3C705D10E4
            39598C8B09B932105B2391015E18881125C5C4B3C37034887546DBED0AAB4D6E
            B2A8AC5688410A8B235CA58D114241C23CF9FFED2AF97B5FB5CA71DE9122C358
            8D8A0C63352BD289A566453EC6544AB93939620CC2566E07FB4DFBF606646666
            0E1F3EBC5FBF7E3A9DAEA69FC14D57D531088A39D71794FCEE921AA318776F90
            4F121287850418021EA120E99962808F0001F72090340389F2620C43717E20B6
            64228E0659AC4AAB4D69666F2B2C9495312AD4B1422808CF933F75D1F2FDF26B
            55386F6418AB599161AC664586B19A1539FDFF2231CC15B699069AD88FA61232
            D2237ECB962D7BF7EEDDAB57AF9494949A3EF45BA7EA6190C304B23A01CB3EC4
            4014E36212922621E00B86808887803F8BB410FE01DE010878A08F1B03F133E4
            B9D961888A3867B4D52A375B54169BD26693975BE416DAA0D2C58A434197AFDA
            A6FF966332D3E0DF2792D4AB5991B34F4444E42246F89FFB12DE253C3BCCBB49
            A954DE7FFFFDDDBA757BFCF1C7EBD7AF5FD3CFA406542D0C02C824940B4E7704
            8E4B426A0CA09EC5BE498872B50A7124045C2DD24AFE1E0909F4035CE6CC8B19
            08A7BDA41908DDE9323BCC4E2B2C36396D57949BD4563B2A9388FA6630E12A5D
            8C100ABA72D53669D13F6515FF46062222222222BA53E41583424242EEBDF7DE
            0EACDAB469A3D56A6BFA306B52D5C52028A6E20838F32000657C40489284006F
            9A760B0B012132042A39530C701120005C82404C25180830CE061AD819CD27C5
            80C52A375B15760A7983702828F7867DD2C2CB85A5C169CE4244444444447493
            8431283636B651A3460D1B3684B7907B323232147C3DCFBBA6FC4F9515040C82
            628AD7810B4F01CA8A19C865E29867400888C2426218026EC121415E9B690097
            F00FF0014000F89A26C6A6C3642ED1201A85823867349B0E335965561BAAA068
            A7C2549A681B0D6E1433DFAE2C2F2821712022222222A2DB42A8AA35ABF0F0F0
            888888C8C848786B341AE102BC4D4B4B833F52AE121E4B3028381804C5946C04
            177AA398905712A2444120F19DC01586808887B803F4A85220F88BC5F40378D6
            011E4120869F1BCFB83210C35509627FEB9C1D66B6A86887DC6A575A2CC06C53
            58AD14BCB503835A172153D74E7FF08390F03A357DD5888888888888FCABA2A2
            02B7FB2318E44B41C32028A67C0F38DF0D380A051272C98EB901907B468C5F10
            638F542F0DD76546C4406E61210F87902703A1681043E14418BAB5E37418A422
            99C52E335B1434151A53FFE1861DFEAB54EB6BFA92111111111111052482417E
            154C0C82624C27C1B9AE80CEF14242405460DA67468C5F00A2FB3D25609038FC
            037CE4C57C3110C35509420FA165669BD26A55DAEC32940EB3E374981C7E5BEC
            94D9228F6ED0AF49C7B765F24A3447242222222222AA59110CF2AB2063101463
            B9082E3E05CC875C4808D71302AE61214A3223267D6918D1AD5B5ECC138080C8
            13ED8D81EC0EB9C526379B559881EC344E87C9501331BB2221E38DB8464FFFCB
            BDF44444444444779C0806F955F0310820F78E15E47D00F2A7702444F19515DD
            A6CD8B83408167C404B9A5C6DCF2626E4120869F17E641429081B02DDA41B396
            202BB0D814161B8A06A9C31B24B6F94417D1D0E170100C2222222222BAB34430
            C8AF6E0A066131A51BC03F8381E30A474214E3344D031F3004BCF1902F09AE20
            E09A1763DC1D428CC03D6E24C433104D2BCC9C3188AD106D975B694D4CFA4B71
            8D07020AFE962618444444444474C78960905FDD440C8262EC37C0E5E1A07405
            5752880D0839C342400443C04746CCF302311ECB8CAB51DA0D8030F488194894
            0BC30C64B12A2D76256D07663611A634B4AE73CF586D78126EBF423088888888
            88E84E14C120BFBAB9188485C24257C700F37E212CE4058680B7D498AFAB231C
            B25B40C8D524E464202E1444F962201C01325B64725DB2B1C148436277FCCA20
            18444444444474E78A60905FDD0A0C02B80B55F15270ED3D603BEB424220D816
            69E02D08C40833E4D98D7A3090CD2E07BAB4F09451FA84AE1425736BC64B3088
            88888888E84E14C120BFBA451884C5307650301FE47F0EEC9704184207C12F54
            C222EDF0F891C1BBF00640424C880D0BB93110D0350F4B79595BABB3F06A2018
            444444444474178860905FDD520CC2427B2CDF040ABF07A5CB0030013E26E40C
            0E814A5BA411FDE065CC3DE2652111C63290C5A6A41D1464201B555719D35D53
            EB3F2A4353E0DA359D601011111111D15D2082417E5503182488A14B40F16FA0
            680130EFC4C7C2DEB23794E8A8DCAE11FF1B0E7D847B04E8011E41200070EB78
            9A96D1B24859440F79744FA5A18DF8F2130C2222222222BACB4430C8AF6A1283
            0431B65C50B18DFDDE0A2C470125CA7879BD40C22173811F51F807FFE80A4040
            1147EBDA81903694BEB52CB41525F3520C9A601011111111D15D2682417E755B
            6090580C5D042A76808AEDC0928D2C44B67F007DD5DB7A3CFA083F0AF7C8A280
            A23650C603752A08698BE8479DE07FBF04838888888888EE2E110CF2ABDB0E83
            3C856A52DB2F231EB2FE031CC580B1B1DF766420A2140028D1AD3C1A710FFB4D
            C9D455D90BC12022222222A2BB4B0483FCEA0EC0A05B23824144444444447799
            0806F915C1204E04838888888888EE32110CF22B82419C08061111111111DD65
            2218E45795C6204C0642AF894A2D40D9ED7607C20ADA6EB5D9ECF0CB66B7D3F0
            162DD96CB4DD8E5780B7702DF87B075C93FD822022DE1AFC91BF769478477051
            2657281472B90CFD438BE80705FA6217542A9542A944CB0AB952A9424B4A257A
            8DC89128767B5E3148A3D1483F47F2622222222222BAAD4430C8AFAA120DF2C5
            01F016120CE41AABC50C4FBDD964AE282FAB28878BE5E56565A68A72788F99FD
            67B55A6D1083D87F2CF920E8C182C0816FE1FF0E078349C4C12E01170C62F88B
            E77E301485AFB80C21914C0E9721DFB098037F8020046108D311E41F08426A95
            4AA952A921E568755AB55AA30B0909090DD568B5F03F78ABD16AE03A109CE08F
            70BB4012F58888888888886E1F110CF2AB6A61104616C83725C525C545858505
            0505376E1417169694965494959B4C1566561079AC16483C56883B38FA43DB39
            E2B1A35B0C3D1CED38FF83FB81F0C3D2155CC215845CC9031F0CF064114440F0
            1BDE03AF3D7CA40C7D7170C4FE27933BBF782A922B154A968C2015212106D268
            745A9D2E34C418199950BB4E98C1106608D7EBF5BA9050B81ADE1A2018444444
            4444745B8A60905F5525290631C56C325DCDCBFDE7E2859CCB57AE5DCD830854
            5252525E5E66AA30992D4828CE83233D2CF2386836B6C3230EE0FD376E293661
            17554BBAF95D00C08599F8E811274C4972942093A19C995C86984881A8C86034
            C6D5AA05C1488742457AA3D1181D13131B17572B2E1E82117C00498A11111111
            11DD6E2218E45795C6200837E7B2B38E1C3C9075EA745E5E4E616111A41F0C3F
            5614EFA1F994165709DAEFF66F1EF45496905CCE0BFE2D1B8392CBE56161E131
            B1314A368FA652A9755A75684868B8D1101F9F90DAA0416AC3469093C88B8988
            888888E8B612C120BFAA34065D3C7F6EFDEA557B77EDBA9C73A5ACACDC6245A9
            2E31F454D637737B6210776CEC1A14250BD58746464672D123E43EA2940AA546
            A30AD3872525A7B46ED3E69E7BEF53ABAB52B6918888888888E8268960905F55
            1A834E9F38BEF4979F77EEDA79F5DA358BC58AEFAC326704F8D8DB0A83C45EEC
            109DB65E6262FB8E1D1FECFCA846A3A9E9AB494444444444E414C120BFAA3406
            E5E55CD9F4D75FFBF7EEBE70E16271494985C964B55AECEC8476E9B9F4BE7467
            6110EBAEA614C830A4D469751146634A5A6A46ABD64D5B642895CA9ABE9A4444
            444444444EB91D64A20000033849444154110CF2AB4A6310C49DFCEBD74E1D3F
            7EFAC489CB972F15E4DF40E6E88A7293C96CB15AACAC351A4F7F67F8B9EE1425
            B597DB0D83C4666A3C174CA19087871B626363552A955AA54433EB753ABD3E2C
            2A2A32A16E62726A6A42623DB55A4D5E4C4444444444B7950806F95515CB2742
            959595E65FBB96979373353737FFFAF5C2C282D2D25276B2189A278F1CD35C65
            2034598CAD0CE4C045811CA299F18CEB943161176246A95AC146FC40AFF7B84F
            10635F21F00B571652E0F28BECFC79A54AA946ECA3311A0D7171F1789A98C168
            888C8C8A8C89898E8ED68787AB942A86DF5A4D5F4D222222222222A70806F955
            75CB27C25B9AA6AD160BA49F9292E2E2C2A2A2C282E2A222B85C5E565E814A26
            9A2C163382223E5684AA45D3E292897836BD8361AB0739384672E02FC0964DC4
            6584DC764DE14A429EE5137926A1005F26889D0C8FA6B5CB28395B311A578DC6
            8514E18D929D03A6E26A0629D56A8D9AAD18A4D5E942F4A16161E1E1C688F8DA
            F1FAB030AD56077F05394960291040E28F8888888888E8D68B60905FDD94661A
            886DECA85386C56C8608643255404EAA282F374124C21515CD68C166B559AC16
            1B0B47341B2E62E346368445FCAC7B06139103C59080078171CF411CF20140C6
            8777B8400F8EF220D651CA705B0D542751A156ABD93A89A87EB446AB853F22F4
            0909617F4677A9D46A955A051F88CF1269A6414444444474678960905FDDBA9E
            626E5B109C43B88998D042838D12E126628886E0D1B114440B8FC55B83BF1636
            EA56CA99B53173F50C310129F8061AEC3D0A5C3C1AFD884B4CB3AF0FBFAD5509
            061111111111DD592218E457C1EC290602C320B74DB97983F805AE9B06CA71A1
            7890D03A83DFAC43B47D99EB8E188436DCD3E3AFB7C03A32FE579E0DC2C44725
            3EBC0031A8A62F251111111111918B0806F9555530E8AE945F0CD26AB5357D8C
            4444444444449510C120BF2218C489601011111111D15D2682417E45308813C1
            2022222222A2BB4C0483FC8A6010278241444444444477990806F915C1204E04
            838888888888EE32110CF22B82419C08061111111111DD652218E45704833811
            0C2222222222BACB4430C8AF080611111111111111FD4B453088888888888888
            E85FAAFF07D83651DC1093FFAE0000000049454E44AE426082}
          HightQuality = True
          Transparent = True
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = -1.220470000000000000
          Top = 4.440940000000000000
          Width = 175.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMenuText
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8 = (
            'Pedido')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 512.000000000000000000
          Top = 4.102350000000000000
          Width = 197.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data Pedido [Date] [Time]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 105.480210000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Left = 2.779530000000000000
          Top = 5.039270000000000000
          Width = 712.331170000000000000
          Height = 97.504020000000000000
        end
        object dbSetClienteDescricao: TfrxMemoView
          Left = 5.118120000000000000
          Top = 24.559060000000000000
          Width = 555.433520000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome / Empresa [dbSetCliente."Descricao"]')
          ParentFont = False
        end
        object dbSetClienteEndereco: TfrxMemoView
          Left = 5.118120000000000000
          Top = 42.236240000000000000
          Width = 553.433520000000000000
          Height = 15.897650000000000000
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Endere'#195#167'o.: [dbSetCliente."Endereco"] [dbSetCliente."Bairro"] [d' +
              'bSetCliente."Cidade"]-[dbSetCliente."UF"] CEP.:[dbSetCliente."CE' +
              'P"]')
          ParentFont = False
        end
        object dbSetClienteCNPJCPF: TfrxMemoView
          Left = 5.000000000000000000
          Top = 57.362090000000000000
          Width = 553.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ/CPF.: [CNPJCliente] ')
          ParentFont = False
        end
        object dbSetClienteresponsavel: TfrxMemoView
          Left = 3.000000000000000000
          Top = 70.362090000000000000
          Width = 555.110390000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Responsavel.:[dbSetCliente."responsavel"] Telefone.: [dbSetClien' +
              'te."Telefone"] Celular..: [dbSetCliente."Celular"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.000000000000000000
          Top = 85.362090000000000000
          Width = 137.063080000000000000
          Height = 13.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Ponto de Referencia..:')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Top = 6.039270000000000000
          Width = 175.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMenuText
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8 = (
            'Dados do Cliente')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 568.000000000000000000
          Top = 4.582560000000000000
          Height = 96.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object dbSetClientePto_Referencia: TfrxMemoView
          Left = 143.000000000000000000
          Top = 82.582560000000000000
          Width = 415.370130000000000000
          Height = 16.897650000000000000
          DataField = 'Pto_Referencia'
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            '[dbSetCliente."Pto_Referencia"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 568.000000000000000000
          Top = 6.582560000000000000
          Width = 145.488250000000000000
          Height = 26.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#194#186' Pedido')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 568.000000000000000000
          Top = 63.582560000000000000
          Width = 145.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Forma de Pagamento')
          ParentFont = False
        end
        object NumeroVenda: TfrxMemoView
          Left = 568.000000000000000000
          Top = 32.582560000000000000
          Width = 145.370130000000000000
          Height = 28.897650000000000000
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
        object FormaPagamento: TfrxMemoView
          Left = 568.000000000000000000
          Top = 80.582560000000000000
          Width = 145.370130000000000000
          Height = 23.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[FormaPagamento]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 23.267470000000000000
        Top = 366.614410000000000000
        Width = 718.110700000000000000
        DataSet = frxDbItens
        DataSetName = 'dbSetItens'
        RowCount = 0
        object dbSetItensDescricao: TfrxMemoView
          Left = 59.574803150000000000
          Top = 1.369820000000000000
          Width = 340.393700790000000000
          Height = 18.897650000000000000
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbSetItens."Descricao"]')
          ParentFont = False
        end
        object dbSetItensvlr_Total: TfrxMemoView
          Left = 652.000000000000000000
          Top = 0.369820000000000000
          Width = 56.692950000000000000
          Height = 18.897637800000000000
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetItens."vlr_Total"]')
          ParentFont = False
        end
        object dbSetItensPco_tabela: TfrxMemoView
          Left = 557.000000000000000000
          Top = 0.369820000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetItens."Pco_Venda"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 2.000000000000000000
          Top = 21.015460000000000000
          Width = 714.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 2.000000000000000000
          Top = 1.015460000000000000
          Width = 56.692950000000000000
          Height = 18.897637800000000000
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetItens."Codigo"]')
          ParentFont = False
        end
        object dbSetItensqtde_Venda: TfrxMemoView
          Left = 406.000000000000000000
          Top = 1.015460000000000000
          Width = 58.929190000000000000
          Height = 18.897650000000000000
          DataField = 'qtde_Venda'
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetItens."qtde_Venda"]')
        end
        object dbSetItensUnidade: TfrxMemoView
          Left = 484.000000000000000000
          Top = 0.385590000000000000
          Width = 38.677180000000000000
          Height = 18.897650000000000000
          DataField = 'Unidade'
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          Memo.UTF8 = (
            '[dbSetItens."Unidade"]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 21.062770000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = -1.220472440000000000
          Top = 3.165120000000000000
          Width = 714.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = 14211288
          Memo.UTF8 = (
            
              'Codigo    Descricao                                             ' +
              '                                              Quantidade        ' +
              '         Unid                 Vlr. unitario         Vlr. Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 121.677180000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 1.000000000000000000
          Top = 57.661100000000000000
          Width = 314.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          Left = 3.000000000000000000
          Top = 61.661100000000000000
          Width = 302.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Fill.BackColor = clWhite
          Memo.UTF8 = (
            'Nome.:  [dbSetCliente."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 2.000000000000000000
          Top = 8.661100000000000000
          Width = 575.149660000000000000
          Height = 16.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          Memo.UTF8 = (
            'Total do  Orcamento')
          ParentFont = False
          VAlign = vaCenter
        end
        object TotalLocacao: TfrxMemoView
          Left = 579.000000000000000000
          Top = 8.661100000000000000
          Width = 136.370130000000000000
          Height = 16.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalLocacao]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Vendedor: TfrxMemoView
          Left = 490.000000000000000000
          Top = 78.031230000000000000
          Width = 225.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Vendedor.: [Vendedor]')
        end
      end
    end
  end
  object frxDbItens: TfrxDBDataset
    UserName = 'dbSetItens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'Codigo=Codigo'
      'Descricao=Descricao'
      'Unidade=Unidade'
      'qtde_Venda=qtde_Venda'
      'Pco_Venda=Pco_Venda'
      'vlr_Desconto=vlr_Desconto'
      'vlr_Total=vlr_Total'
      'Pco_tabela=Pco_tabela'
      'perc_Comis=perc_Comis'
      'qtdeEmbalagem=qtdeEmbalagem'
      'seqVenda=seqVenda'
      'SetorId=SetorId'
      'PesoBruto=PesoBruto'
      'PesoLiquido=PesoLiquido'
      'PrecoCusto=PrecoCusto'
      'MargemSecundaria=MargemSecundaria'
      'LucroBruto=LucroBruto'
      'TipoCalculo=TipoCalculo'
      'Previsao_Entrega=Previsao_Entrega'
      'GradeID=GradeID'
      'TipoProduto=TipoProduto'
      'Complemento=Complemento')
    DataSet = cdsItensVendasTMP
    BCDToCurrency = False
    Left = 102
    Top = 217
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
      'Responsavel=Responsavel'
      'Cod_Funcionario=Cod_Funcionario'
      'contrato=contrato'
      'InscricaoEstadual=InscricaoEstadual'
      'SequenciaEntrega=SequenciaEntrega'
      'Email=Email'
      'EnderecoObra=EnderecoObra'
      'Placa=Placa'
      'DescricaoVeiculo=DescricaoVeiculo')
    DataSet = cdsCadClientes
    BCDToCurrency = False
    Left = 134
    Top = 217
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
    DataSet = cdsEmpresa
    BCDToCurrency = False
    Left = 162
    Top = 216
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 24
    Top = 80
    object cdsEmpresaID_Empresa: TIntegerField
      FieldName = 'ID_Empresa'
      Required = True
    end
    object cdsEmpresaNome_Fantasia: TStringField
      FieldName = 'Nome_Fantasia'
      Required = True
      Size = 50
    end
    object cdsEmpresaCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      FixedChar = True
      Size = 14
    end
    object cdsEmpresaEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object cdsEmpresaBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object cdsEmpresaCidade: TStringField
      FieldName = 'Cidade'
      Size = 30
    end
    object cdsEmpresaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaTelefone: TStringField
      FieldName = 'Telefone'
      FixedChar = True
      Size = 13
    end
    object cdsEmpresacelular: TStringField
      FieldName = 'celular'
      FixedChar = True
      Size = 13
    end
    object cdsEmpresaOperador: TStringField
      FieldName = 'Operador'
      Size = 30
    end
    object cdsEmpresaData_Cad: TSQLTimeStampField
      FieldName = 'Data_Cad'
    end
    object cdsEmpresaData_Atu: TSQLTimeStampField
      FieldName = 'Data_Atu'
    end
    object cdsEmpresaLimite_Credito: TFloatField
      FieldName = 'Limite_Credito'
    end
    object cdsEmpresaStatus: TStringField
      FieldName = 'Status'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaativo: TStringField
      FieldName = 'ativo'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaCod_Atividade: TIntegerField
      FieldName = 'Cod_Atividade'
    end
    object cdsEmpresaCep: TStringField
      FieldName = 'Cep'
      FixedChar = True
      Size = 9
    end
    object cdsEmpresaCod_Rota: TIntegerField
      FieldName = 'Cod_Rota'
    end
    object cdsEmpresaQtde_PedAberto: TIntegerField
      FieldName = 'Qtde_PedAberto'
    end
    object cdsEmpresarazao_Social: TStringField
      FieldName = 'razao_Social'
      Size = 50
    end
    object cdsEmpresaPto_Referencia: TStringField
      FieldName = 'Pto_Referencia'
      Size = 50
    end
    object cdsEmpresaFax: TStringField
      FieldName = 'Fax'
      FixedChar = True
      Size = 13
    end
    object cdsEmpresaResponsavel: TStringField
      FieldName = 'Responsavel'
      Size = 50
    end
    object cdsEmpresacod_Funcionario: TIntegerField
      FieldName = 'cod_Funcionario'
    end
    object cdsEmpresaemail: TStringField
      FieldName = 'email'
      Size = 50
    end
    object cdsEmpresaDiretorGeral: TStringField
      FieldName = 'DiretorGeral'
      Size = 50
    end
    object cdsEmpresaDiretorEncino: TStringField
      FieldName = 'DiretorEncino'
      Size = 50
    end
    object cdsEmpresaDiretorDetran: TStringField
      FieldName = 'DiretorDetran'
      Size = 50
    end
    object cdsEmpresaLiberado: TBooleanField
      FieldName = 'Liberado'
    end
    object cdsEmpresaDiretorEnsino: TStringField
      FieldName = 'DiretorEnsino'
      Size = 50
    end
    object cdsEmpresaNomeDiretor: TStringField
      FieldName = 'NomeDiretor'
      Size = 50
    end
    object cdsEmpresaHomePage: TStringField
      FieldName = 'HomePage'
      Size = 100
    end
    object cdsEmpresaDiretor: TStringField
      FieldName = 'Diretor'
      Size = 50
    end
    object cdsEmpresaLocal: TStringField
      FieldName = 'Local'
      Size = 100
    end
  end
  object cdsItensTamanhos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'Tamanho'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Qtde'
        DataType = ftInteger
      end
      item
        Name = 'IdProduto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ItenGradeID'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 584
    Top = 400
    Data = {
      800000009619E0BD010000001800000005000000000003000000800002494404
      000100000000000754616D616E686F0100490000000100055749445448020002
      000F000451746465040001000000000009496450726F6475746F010049000000
      01000557494454480200020014000B4974656E47726164654944040001000000
      00000000}
    object cdsItensTamanhosID: TIntegerField
      FieldName = 'ID'
    end
    object cdsItensTamanhosTamanho: TStringField
      FieldName = 'Tamanho'
      Size = 15
    end
    object cdsItensTamanhosQtde: TIntegerField
      FieldName = 'Qtde'
    end
    object cdsItensTamanhosIdProduto: TStringField
      FieldName = 'IdProduto'
      Visible = False
    end
    object cdsItensTamanhosItenGradeID: TIntegerField
      FieldName = 'ItenGradeID'
    end
  end
  object srcItemTamanho: TDataSource
    DataSet = cdsItensTamanhos
    Left = 616
    Top = 400
  end
  object frxVendaPersonalizada03: TfrxReport
    Version = '5.1.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41706.281067442100000000
    ReportOptions.LastChange = 41916.337535752300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 292
    Top = 405
    Datasets = <
      item
        DataSet = frxDBCliente
        DataSetName = 'dbSetCliente'
      end
      item
        DataSet = frxDbEmpresa
        DataSetName = 'dbSetEmpresa'
      end
      item
        DataSet = frxDbItens
        DataSetName = 'dbSetItens'
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
      end
      item
        Name = 'Observacao'
        Value = ''
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
      LargeDesignHeight = True
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 113.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 0.779530000000000000
          Top = 4.661410000000000000
          Width = 710.551640000000000000
          Height = 105.283550000000000000
        end
        object dbSetEmpresaNome_Fantasia: TfrxMemoView
          Left = 200.283550000000000000
          Top = 24.897650000000000000
          Width = 502.488560000000000000
          Height = 18.897650000000000000
          DataField = 'Nome_Fantasia'
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbSetEmpresa."Nome_Fantasia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dbSetEmpresaCNPJCPF: TfrxMemoView
          Left = 200.283550000000000000
          Top = 72.472480000000000000
          Width = 504.488560000000000000
          Height = 18.897650000000000000
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ.: [CNPJEmpresa]')
          ParentFont = False
        end
        object dbSetEmpresaemail: TfrxMemoView
          Left = 200.283550000000000000
          Top = 88.370130000000000000
          Width = 504.709030000000000000
          Height = 18.897650000000000000
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Email.: [dbSetEmpresa."email"] Telefone..: [dbSetEmpresa."Telefo' +
              'ne"]')
          ParentFont = False
        end
        object Picture1: TfrxPictureView
          Left = 4.102350000000000000
          Top = 13.763760000000000000
          Width = 195.385590000000000000
          Height = 94.228200000000000000
          Center = True
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000017500
            0000D0080200000077396676000000017352474200AECE1CE90000000467414D
            410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
            FFFF4944415478DAECBD099C6D59551EBE8733DD7BABEA0D6D77034144045AC0
            81801A7F2A10D0F04B048D088A24F9AB0812C0091C3062408D8AC4181445C111
            0D188C1AA041948E32A9118D8A10154444A64640BA5FBFF7AAEADE7B86BDF77F
            7D6BEDBDCFB935BCAE6A45DA5FB8FDB8D4AB778773F6F0AD6FADF5ADB5F567FF
            A7EB57B6366A50F408C6AB42853268A574AFB4A7DFE8A0F2837EEF54A0671D3C
            FDD56A4D3F98805FE1B7781BBD71F2067A8DB5FC5AE5B5C127287E0ECE18FA46
            FA0723DF2B6FE57F0AF4A946D11FAF7C70BE77CED1EB8377FCFAE983BE591545
            690AFA12EBF9BD5EE183342ECCE09F95F1E9CAE9D75E8FB7C2CFF847137F61E4
            DAF9EE3EF67CF0F9CA8FC3AFEF8715E680D788F6C17BFE9FF7580F21605D5943
            3F1B9A259A5D4513876542AF9635416F928FC50B06370C9DE285810FE74755CF
            8236F86C9E7159573CBF46D695E165A7C735134E75BFB4AEF9C63C2F45BAC481
            96223DD32D4C6F3C7DBBB2BCDCB0740D5D95C5DF75A168F738AFF911979977F8
            04EDDBB6CDEB193B26ED1A4B3FD10760DD06BE626D6DA90B9BD6B0D2FC4A8C21
            7FDC300CB4356888E837B8547A7730349E2A7EA149BB2CEEB5AAAA7089A6F0B8
            47EC707E91CE1B61B25F8E98E5533D7003573DE557F68B397E56DAE922A81210
            832FEBF2B7C8E762D0650FF36FAD2650E1F9739E3E87AE3BEE522D57E835A306
            DDBF6C5D1966A5ADE00B7DDB1429A6D764304D013343A3E67A9ED160AC7CE674
            C51BC6142D2B55615E8D8C177FA320E304B97810E5E2197A822CA03476467DEC
            71FCE3B8A5750CF278CB738E17782C331809AC13DA0B34F5DA146551148AC1C5
            6305F5455907E09056E999AC0BBDBD308C4780A601F31F9CC62A70A6A8688669
            A3285330EC68A08EDE9844B182F92FA7B9DB085BB2140DD071707DE77D5F5A9B
            EF3BEE055EE781D6B9C11DF1EE658831E3D8F006C6D5E393DC804B5558FF261C
            1C5D5EED5A3E966FB02080210BEA702F5E60575E281043B635606CE9CFA01304
            3351C052A7CF3FF09C90BDA44BE51D1436878777F5A1199FCE724683A3D7838E
            2313FF7AFE69AFD82F16D8A8DA386D03F88B65E07086F7731E05CF0485DEEFF8
            AB2D3DFB840240E541F84EC617C251DC1570DD08B2C07619E12F81C7C1A42B1E
            A1D3C41BF09EA6019F3CF08B69009DCA38CC9F2C37694DC9DF8231A369A0BF07
            CC631E9CC44E746428FC7D13BB31DAB78FE1CB951EC7AEA7A3B62DAD9C40D63E
            38DE4EBC6578DBC01A14052D095B54F40CCE42F30CF2EBAAAAE11769DE398C23
            B2F68414003E68A581CFF2E6A3D5E0C8E48001D91228A3AD1B57F5517B834DCE
            C9EFD7F356059320AC042AF66E20FED22BF068E650D9E433102858B8C2302333
            BC75856715428302C301DD83AC6ADC4C7FE4E8D9B200ADC04633FC69842F845F
            76185F1A572CEF4AB04220B88BFB85BEC2303BE43BC88C4C7E060E12AC7B6C4A
            B6C940192DFB25517BD96107A77B8A03F1228E590F93ADC76FDC7ADA2BF6EC16
            3E004359C46908BC09C378271150F5C697E0BAE99668D0E9B9509B7CCFCB7E86
            CB22D350941A73C0FCE580D90B26BFD70251E93369C0E8633DF313F6984C3179
            71BE430D7B488361803158BB4519A127B8345E6995C9F5878D499AFCFC317CB9
            B5878C9E3E9ECCA407617C596826EF030C834C09BB33B037D8B598E7C0988385
            6726839F4D341395D0939FCE8C80494CC0A701AE946B3163D66A862A5A57BC44
            D9B4E8A3A6F274FCD408778199A4E547E6D3F5B8123F181BAD97EC3836D77825
            0876E62F9A772C5D6770CCBFB0ED0900C0F4E997FC7B82D823AE911118BE8482
            E534B6D2E081ECEFF0C699D86FB9028F57C18BA0D1218685D196DDC7A3E86518
            A723E0191F098EB52DC8ED22F32C5FEA8040697EC5ED3B6AAE33D538D17AA1C7
            D6D36FD8B773BE8820CE9DE09CD73E7F7AF61D382E93BE875EC9D6895C200C19
            D8EC948E467C111AC6000F74D70C13207B7ABAC383CA6C0273201F38E0F3125F
            0BE2272AB5010470F08DB86D023140319A5F8B099D60B056FAC815E627C3F731
            7CB9E26363496D06C2C2E1D786302C157B3E0C07BC5779FB1555E3D93D08716D
            E1F730D164A2F257E8090F712E7D26F672E0380E3ED6C1FEF3A4E36369FBD187
            086C4DA6D24C2ED8ABD33D62FC85418BD764DF614D3AB7F92A0D38A305D7D026
            2A041C35F31B71E7C1BC1438BE92551D5C0AFD8543EC8557291C2B76FAC0CBAC
            AC61A61F822F7ABC11863F98F6E835F16604B1E37016E20FD34B4D665EEBF18B
            2C360B583FB13FCFB81CA613ED37F0254C9D27FEFFFCFAE9B31A710A53367BFA
            6FAD8A85D212DFE5881A732A84B7F2A78F7B9BFF6242BC37CFD30F0A33308E78
            95994BBECA14C3214F51DB0ACC0DBFC1A0A4EB904D2E10C306CAC92CFA789562
            94A237BB092EF8858C7B50620D2D208686CC07993FAD46E23779FB8667A4363E
            337B791F7B1E9FA71033B59F2A6EC270208EE854BFE61DC5D638ED99D118B0A7
            8DBF9AC36E8B57538E4D2F1340D1C11608B5D05EF503A8045E16A9274D3A5963
            029A22F8BC9192F32206594CDA09EF576E56A77512065E93FCA553A0D5623E99
            959733CE49642BEB798FB0B702BF8EB649CFF7E5311A206361E373C6C509574B
            97B5B5858417430E2986D1D2C60DA875FA6B60A78CC337C4B3E86AE99AA3FF71
            148AC5AFA371B38658BF2D079F7F29F6E09009D17E4483311C7C60DE379F8925
            CD9EF93BAB620B6F961BE15DA9C521D2116175A617112E1288312B0BDD00B26A
            E9973DD60128D424B8252B89D7160D59603EC9785CA665E405E323730101C6CF
            0C6460A33C478E9E18BB751EB11849A201353A46D04288649BDCCB6A167DC61C
            EB11E41ED7EE5121858F7A9EE676F99C6D44B6046A639F79CE798038785A0FB4
            543D99FA1EEB5B56A94590123197C2766D9FB88C8E33A8B49A5016445A366624
            308EF0334C6CE0F006392BFB0A494F83D5024CB10231F4452121CB3444A24F35
            BF91AA6BD84E5A9F4803917FD4D27791870754932C124813811E7D69D179CB44
            86C708A880586C6154B7DA4F8485D944F40903DB680C5B082964014747336D31
            705EB41E1256E2D7F48943EFB2E945B4110E8E4479E2D50ADC008E07D5095DC2
            662E0C27DABCC4804CF26E64635ABE6663EA39F0434660C4A02900FA9156C65C
            B03AC45E0E3EEBF977FDEEB2147C89911D13D3C9FCE68DB88EF1826A699D19C6
            178F3B6969D8831A113A859113E9D0882C1989EA05CD29BA321A09C6724F702B
            1C529848F46E65810584F38DCE9F6C529212A814E204848CD392A52A2AA54A70
            6641B48CDC278B207CEC71E8B169D3529221730F0E616A84F95D60E6D2C7F942
            48A2887104892C681DB7A23EC44947F2BFF945CE4F9D59AB9DD1C3E03A646D02
            DB332B38A2745549DE3AF052815DE14DB5F9A127BA5F78D98898FA82F1C5756B
            DEBD2E5EB6C57D4934977EE8BD8D9B3CC63910C4E5EC47C7C862628877FC74BE
            5BF9858EFE23C34BC5A360E20E12C4A3370E2DACAC4FE40EF844184D9CAEC2A8
            CBEC6813BD0AFAC6CE61B839F7C6C1D504B0123CD2C9BC267C516523880F0620
            56843E2D457BD30A98CE93BE356CE1CF38F35DAFBB5C6EC7C00A42C94AF42A83
            4D1F38FA89139C118684C4511F43BCB2F8A25792DD109D5C32229044614AD63B
            680C136E44EE83D90A8099BD535EAA093026845022B81C9F973C9F97EF5536CE
            B756E305C033B4309B9CADF02A99B28FE1CB6D7B1CCEBEA530799C2BD94B842C
            3423F0AE5D345F2C4D521C4770C24C09F7934C2131D043B6720A6429B610594C
            F29E4A6B9CE4657D8A6888DB55729095F69E453404581352B05F9F380483EF64
            7802AE3942128289D0B5F80A090570B2C28C4968E35250D9C8D590DD751CB2E1
            BFF0AFD306916F8040C7C7558B500802AE2C4C298568886A06EF61DD907C9416
            950DC78480E3F45C559C633339531AF374BD37DE390987FB41BE92676A88F738
            0D2FE0076C4F894FB3AA83AF39667636C726EBA14E822F577DCFEB2F965B5EE3
            13818901D938FABF1E7173D6FA645A100967BC795C9217890A27C674B230CC94
            4780542C50B2A012C28A99AC7A93426EC8D889772A331142541D442F5D3EC360
            B9B0A728ACDAB9DEF74382733FAEC27CE79EDD7B42344092E5FB30F9CAD5C73C
            A153EBEBC658E9E835EB689335EF8130644EAE25E90370B14664538EA9BB2E4B
            518D8D0BD6EB8C356AF45A7D9EA3F432B646C270F9AF802E6DB004BB8EBD068E
            E6D0BF5A596FBCE42489A91C5B667FF2FB8596C6185EEC842FC4C67A4FDF2238
            053B57925F14D8EF887A08F67434BFC148FA9996B473874D59BC532DEA1C265F
            05B2EC9A055CE2C98DFA91244DE4DC3D742BE28722D3CDDE035375244F605235
            47BEE803697F39E00B66C5F165307364A5609830C19CAA93244CA1386FAD98F5
            73181EDE68CE6DEB91C78CB373E5677DF63FBDE112F88B44B668AA7DC1BEA5D3
            E600BE4CB14CEB4402C9809057485EB76AF5A8E4D1933809C40E4581C82E0604
            F04340ADC8B9D4A29A1A7ACF0A5DC6EBEC8C0A7961DF07374CE0DA28F676AC44
            FC7CCC34B97E982A027CE2583A3AB6088F176C6D826635D74411737BD8B7FF58
            9EA79951C9F4C9389275E1DF40A0048B2DEB18AA5372874136457CCD53215E92
            8A39DD115F425AB5322F23CB083A0A518417B0F6525C63B24A3D599B92D577FD
            D0BA414CB496580C6F1232461C0F4EE42B729993EA77110381FA165A73E3FACE
            F56402036BB8E883403702A3242E50D61D348122F919685D6B0EB8E890F25FE9
            AEE5769CA8015978C179E242402D3F820C29C4325060685BB32B56B0F494110C
            983380C55BC29712579B62ABD89EA1174B80BDC93AB231F6ACFD54C912370511
            1916F240525494A24EA29D2909ECDB8E2FE7BEEF772E5667B2A64481BF3027E3
            59896EABDFD0D706E339E3CF7AC401F923479EB0EA593D3B6ADB4495407340E0
            42FFF31A030EB70D936374EF5856E05C56E862558A7E5150D6884F6498B910BE
            48E43DC6DE69D66116E99B7BD1174CF2412CFFB3966D2A2D1304E1C8AD853290
            8D92EC16C4993EFA79997F24CF1BF6D7B368DE4719E4C06A5489CD637FF09661
            0B2F4E10914CF1733580BE1892BE9EEDBCE1589A49982516D84F688D6723EF51
            6760B25221F0EF0788C23C7427F837DAD3036DB621B127E45CB17258EFC65762
            46943CC1FDC652069004079644AB741810B22D0ABE4ECB7276117D719E36F469
            47F49E65781C9465AF101097F99AC486380B0BBE22FE6321850E910C8A672411
            001FDD195DA11EC2C4F2801494219C6A5B4E6870BCC64CE189198220BBC09077
            9B3B055179CED1C0EE1A5DC9583338730656236241F78B490907A4213EAF04C4
            8B8F7FD6E79FF5865BAAB32186BEC5895531F53DE6A74D9AFEF1D365F653FEA8
            0731CB0C4738AAE4710ACB5A695C65C81168FA3FF26623A63AD0CE18554AF163
            B158B43E90D5B65C1D50C4EB890A021117B0AD089C239F0C1C83673186A5587D
            234E9678B0297F36C9A5852B66DAFE5F7F9E3EE2BA8CF802AF21489E8553CE64
            3A98A7E812F3248A5C9DB2D13A2DA968846C1AF911BD36D5973E2A3EB4CDAC7E
            8CFC8AB013EE05AC3A6D21B098E89270AC4D63FD20AC606DFAC613DF2F6125BD
            8B6B1A08A39C781958D10C5531A267E3676AD6FBF98EF53E43CC7E4A8041D480
            A33F98442892AD278A87306D4C03C57F8A39A0B8CE79DDD22B39C21224142519
            0D2665008E10F359AC5FE4AD2709D318DC822706B4E2FCBA1B523C6172BF1223
            CFD96EC6655124A72B3F1C200FA906E84ACFFADCB37FFB96F2ACCAF892E75E27
            55EB349FBBA108F2822F8A3C149F93ED1261E590154DAD296D59B8200EB6457D
            1022641CE7EB563163972F7EE2BAE313E8F6CA0ACFCC5A94E832434690780D9C
            B7730163E7478861D402E58343AE95943D16955C929A46130EE4293EF638F943
            E642621F6266210321BA00D53924088E53814656AA94E0F843031E831169FF67
            6DD651F371E077B085BCBB589AC1F18BE0D75DDC9F8A332C6581791FF1E5140F
            1836097C2010C33FD8A96737FDD92BE4897828C4FE694EE2C87A8E8FC916A595
            8CB56D148F55DCE1FC62D83F4249D60AE36544970AFEA5114B9C6C611A3DC23E
            04227B5EFF9AB533369AF3F19685F28B7EA76F13CA27A99E4FDC215E499486A8
            B2D655CDB560537049B2C3938DA7DEFE2FBFB75B9C19DF9EC7EB88D9CDA3E912
            82127C76ACDFE5E5E57DBCCA683440AB74927E4BB690E34D3D67198638A62A29
            C4259A2B2906D64AC5AB42749D09A168136510E56311340C0C3F0AB6AB675991
            20D4D06F2802B464A0348D1AC7B11898433405710E0ED5671FBBB20F8DD747FB
            118B37AF386B7FF7C7519F8FD4C610E7453683E28A44B293022BE2EAE6B988FB
            2D6C48B6943AC42F268FBC459395E6DF387CB8637CA11F84C09660AAD89FF407
            1685F94B042FAB4EF5D894D54FFF41142EE2C6285160416FB28CBA0A1D92DA53
            C53B8AA218BE0C50038E2712BEE8A49A13D5AFA4531170E0F1A4EB2DCB8871F4
            69052F73BFE9B18ABE591243F443CF02110B2910B3C5E93445110EABEF441CEF
            626E371CAA3436294B42FF558DE6FD22E1CB713A42D818A2A373B25E6FFDD01F
            EC95DB132DE68104E4E4217E32D76D4956127948BA5CE8A6A53E80AB24E0D130
            B824158C928C73E00A5AD7475F5D6570512973ACA7C487150D914CE2731C678B
            2412AEA5F08473CF83CBF13029241D753426C4A198C8902372215C5F888A200E
            56AAF73D38D66A7CAB3EFA6FB78FC711F838CEDADFC3C71FA3AF0F9190F2BF16
            453627B0A8C90C84EC14647C8952D471654F2A83D327273F45A5F91D950A7878
            CEDDF858ADC3FC4297A04FD14B924512CB9D0F65C16FFD86FD04E926065C4224
            49B7852CB1AC37C87355DA3613F30EFF2246C8656D6B53062BE973FE1DDF3947
            4958DE22816A1384F749443C86238F99F6B8F83DD70AE4F6113597956B335A71
            C9760D6CA4DD906A1D181BF4A8CD89497125AA1C7A2AE86AAD2D3D52B7228B17
            87600A10475B625419ED3CE70F2F13BE1C1CD903F832BE5F6EC672CD219A6208
            9793C40180B93425576130D7CA5D3C4034C83DEE5976154445EB55D6C509B48B
            8F06361B7B67C44818AF0CA80FC40E6437AA448D7F0C89A5518626A2E7D4A08A
            FB2DF7DE40F84AD6A2896E39EA47212666D7D74EEEF4F052DCD019A661BA7D21
            CC47D6C133C7E34BDEF9DA980C13BEEB75DA1EA9418792ACAF92F2B5640065A1
            3A371CF9F9B41B630E68FA4B895F267C8199618C336519375B0A9486515776DA
            D93A5CF5AAE5424DAC6084BD847CCE7101812CE224499F5CAAF4BB89A5529A57
            5DC01D19E6FAB1A302A2B94203E185412C666DEEF9E20357391F7995767ABFFC
            3991FE94DCB1443268991BEAD856893648BC722FE639D7034FA7DCC66A274EB0
            E8B230AC2F41B88386DA4CEFF36074C664B43AF3C37F74005FC264D6558CBA98
            03B117904ECE910DE4CE89EA81E1D630A708DC864A56954D33C19E54F24ECD01
            BB2417C5350465CD2E8B95CFE1043E13637A7B3247D12BE6D92BB8EF8C502A15
            ED00D7AB8B6E92BF256A258531F954145740B1AE635E30A48568D2A46E2EE849
            923EAE3E7DFB429713E24B3826B2718247EC9E712016AAC3465FA86CF189D88A
            1892BF35F5D30841B68D882BA6F8E28FBB7E89629A8DD11EF1851FF4ED8E89AD
            2D8A8DCB556AA2783A2D8F3B125FD0A3463259C4C111F87012F8F352C8B8F9DE
            A41B12DB09A144A50B1B6BC735279D23EFF6C04797623D9C6813418D4B407985
            0BD549A8124D6CC429D6019695B446127E435F8BEFA70792223DDB7B69FCE0B5
            DAE0BF72E5217B3DD82FA5E14A08C5FDABAC9E96F01D11FD959DA2777E04F832
            5D73B1B74E984440BDDEF0AF746C01A5C6604A6097AFCC164C960B5B1816FEBB
            3E2AE80E94AEE587612D1C8F3EC34EAC1C051F1942744791AA2E324F89A5A255
            159B864D8259B4707B009F8361F1A91E4B2771B44A2CA6446557A4A0D2F86A52
            DA1FB220588D15E9932BBE3D06846FDD48A779BC0D287305A583E16409776E49
            99E6A1936628B107D86455F07886189DCD2ADEE3E28539F392E31DE91EF1E15E
            504F0B7FD1095FF267E62AED53DFAF3938943A7358CD4D6D509124990DDC8F3E
            CABF8E0E136AAC0B238B8D33E58E45B4B92211CC25163441929875FA61627BD5
            711033B9C5FCAD50BD4835033CB2C21429FF0DD989166888CEC720B57EDEE823
            4ACC4592130B6B0031156B9AA4054298BCCC287570F18941D1679EFBC7537C61
            583D84DCD377C632339E54487706CE2E2BD17DEBB408D27778D6560E601F52D9
            A54312FE9B78DD3179C9F56F501CC8D40AE24A313EBED436E574E9708B1E17D3
            7805005F20262208DE3BA0A6495600438CD169A5A177030F8024082545C5C07C
            04BEA4BF4C17E8281EBC9D3DAE802F07FE49875340CC953E762A899E62440FBE
            69623B31F197535FB1B15E71D49E05E78EFE82DCF787D789B8CCFC5725C16371
            8DB958C469DE48F10375EE02F5F773BFD1CE73A0048AD028CF955650F02F265A
            6779D81840056A946CC96249342D4EAB231E7B3193B8531173E88D0E9539BB74
            6B1029143EAADA34779F810724F9662BA6143740FE1DE2C12C54C37D90E18778
            C7609BF9EC67E5BB087A927A435CB54C051FE37D1E892F3264115F360777CA5F
            8E1AE910298C383E713A27D4D4C46E5D1CAFEA5AE9EA92435FF1EA73851B6432
            25B7622D727744286562279E20F22109B58CEADE4446901F55B134A9481411C0
            C47D5D63340BD9EB10F3DE91D785D8F3413A8FC1B36B721BE034509BDC788A2F
            E13611808FE823E42CD80958CC6DE52F477DD0245E3BF970C4CB0A686126EFE2
            CE1F366597C6ECE1C40538148D0E316A261580637C2708BEE48CD210F9CBC85C
            CC8651FCBBDCAF28F9633D846861630E41892E54F1121F4723E72BB0BA4AE977
            2BE9D4C408583DE4591018F3CA92D737A91589D9186DADD5B1FC6E9495647C91
            CF67FB9A3651616336CDAB84D3726BD0F77A64D6DB1C1B36515E3BCD16454D1A
            8790D0C54904785918AD36654BE3D59DFDD1374DF1C58FF9A32B979C32E56535
            34EA8B0AEBE2D20E022E3C072CE66176A3459B28124FBCC8A6AE659A91157DBA
            7410FD2F63C7A0421A7ACD715C384446471E2E4A0051F3F5A9E605C19842DAA3
            82BCD94802413ED941D3EC23E3328D30A021A5A2E01B17D5969F045FC68A1BAD
            C771984E31DFEEE1FEA61F95E771372467FA848F937FCBB19F204E4A5A8B697B
            3BD5F5115F42DC85D90EABC3F81275FD87F0454F77AC1EBD6F59FD31F99DE80F
            3359C9DF2621554A8AA7BCD56DBADFA8FDE70236DFB72D275F523F363668D267
            78ACEBD3A9472FE14635639146C1FDFA78F572D40511691AA28113A9DC5942B0
            1883C96530B29B2679A82B71C871F0F97ED9363BAE03D6A8FF14CD21DB51C52C
            06BA6763726819BDEFD6FB4A4F2A450FF84A59CCA162316059D73EE97A43740E
            F50818F9AA777EEC4D47E78FD415F16512278F2DF3606308DCF8EEB82F77D41A
            79690E0F7A6A05E7C07958505B55A214D4ECB71B748D01E4A025789F984B6A31
            2F498471EED35CD2DC79D13B382F8A61E66F1AF0615886ED9D467BC3414B89B6
            44EC391E1F438C86E5E40E723E2420C4CE6C74249DACF74CBFFD317CFEA3F498
            BAA51B7E4A8E481F58A931437CA22AD863BAFF5DE1E133BE4CF6AA89738A7F1F
            32399538C31121CC9052B346475D82A4873C97118710F70C360F830831D9BA3E
            342E2ADD66CA8A6EDE978E325B15525C2E464CD2F8483F10E202AC4C49D15CA5
            92DA2561AB8D3DBCE3B7227B5073DF7FEEA1CD11EE512F436F59AF242CA0A45F
            AFF40C8D6B7233FAA9D22DDCCA0A98DC97821E4C1004BD2287D4768F2E528628
            2FEED8BAC11BDFBBA1F35D9F8BAD5320ED501E3A3A7DC0445BD5F80A96072739
            EBE6A23CF3BC3F99E20B9B8313E34B187BA08FBC94F5D14182BE022EAC94D978
            37BDB6AC598A320AF064C747A164D0B1AA0268917135BD77F31642EEC3E8637F
            29405211ABE3B8490D2046AA39F8BC8838B44162E691AA144A43CE84083F434C
            9AECA92E4B8F5F1A8ECED77EB41E47A7D48FE84830EADF8FF9A0E366FC34F8A2
            195F20D88E5E739868C962D43FE38B14CB797FF4371AC674DE1E9AF185BB1A48
            C281BDAD8C2F7DAFE4108BA307E594F32599470E02282E598CD94F973AB14D34
            415CF0C68D19635C0F223AE99E9DBADE98894A2BB72211BFDE48147CC3270AE6
            E08C5E195F0E4F9A8FB1F3A81E70C9CC170543A6D5F1248F4814B8D87A88BD56
            A2FA594F32EEF23091F22B11C77312566E1349A5244D9E5ED7D91F7F33FABF4C
            6F641A7FD17975A437C4661F123B8B6A7DCB191C8F80F410FB00CAED715F638E
            2745F481F6905E49A33A9B4BCB8C5CCD1591C5858CEB3A53B829BE1C33BC5159
            9788B1A90BF1B67494CE39F19CE12EE944BEA25B2B81E732DE26E14BC982A268
            3CA521F9211DC4ED2DBE9BFA2D32499EE82FA6694425F63647018E1CCAE378F8
            29F0056D0A185F6235A932A32C25B327974A9678995873440246491182D67139
            457CF1A92121B357E7229D693B9DF0653378913FE8A8C7710E881FB4640C6845
            F6831A0B5054EEA13B06838C8E113A5EBA86F32C2A9D9F13127341FC54C2AEF4
            CCF702B571D279A96397D458FF79C4DD1D35FAD2B389A1C1E914948C52FB24F0
            D526A66255941C8778E298E38C70AE4797E8988F6993F4155C6FCD18A48ACA96
            1517CAF3D498627A8507F1251C88BF1C852F2C720BA9C24D8992D206748BF7A2
            A07361530E9024867C7014422DCCD3F2A60D391914CBA6CD46A02EFBD8C78D67
            52404609A330E78239676A3D2FD1F2C0F5D63169CDC44AEA0E382C6627A97E6B
            584D14368FEFDA98C0DBDF230E90F66A5CFA5E4F7BFDF1EFE5042F1C2D733A49
            C829FDA361CC1F65272DFB41B98D7E66D43A8CEAD7CDBBB2D11BA5F7667C911E
            488A50C9A263BEEC93B633B4A8727FB6F113E4BB6F9DBF6CF86881F32958515C
            45295DAC743A6565736D4B763A46A0A3E424069EBC4AB979599CD2969CA38A51
            802A9935953DA3237D22733A7C11CFCFCB9150D29AD74759B3547244E7A09CE6
            FE226542D4B90F0282D11E78ED376666A31F106EB92688E1847AEC1C96D32FFA
            ECF3DF72B9D89E5E77D0FED00E9AE6AA43BCFAE8C3F91857EF3A9F7B974B8229
            C4F5E45592E722170C79AE1CE992C7DDC71054CA11645DB940460A795C6170C7
            FCBA64ACA56717E3B49582D7749E0EFA09881847560C777990B47C2A44D252B1
            6A580D154F21D8A822CDFBE4F6E5226D8EC8D8050A79043919830D0F7A74D962
            50A7C597D33DD0ADD6DADC0D23FE5225FE12CF1518F145F943D812431936FA47
            07F1451DC4970EF892BE68722563E0FBA8EB3C4AC0C635D32A2A5CB0D342524D
            79D1956EAC42591B5A4BBF44D9B42171F3C8B6401FB89D1D7B28AC33B653CE12
            2462ADD5045DE2351F9B6139748F93476A78C0F43CCA4B6594B3AA03178CC629
            E2C4F954F7209D3D1149E8595912331B29DA28DD6939741C6571DC901CB1CB78
            A6959E5EDB417C113DF2ADE08B8EBDB70421A50A83FBC5F3493763B305B91EBE
            94C04DB150B858C63597FA06C5B689880F71E917530EB5A9F2CE4AAAA3915B24
            39297921522BD4894AE52EE47356BC060E0449CF9A8EFDB85490A6A4B4D78E24
            997B20428FA345EF644555AC469678FB02978D5DA4735DAC5763650AE7532D77
            7DB38537F61F005FA6F501690B454F8197F8E81F99438716C5ED27FE919CAE57
            B28283F1453EEDEF8E2FF9919D0589FAA37B252D927E48CC25EE57AD5335D098
            B5B141F215A535A91E7A6C70E9537449F4EB48E0546559775E6ADE7CC8B1E4E9
            F84C3490FA0825F1D1F7B8713B412C62C83D5F7857F18E939A1E7C7FC980C89E
            A929A398281655B3025EF6C8A42D29EF013DC6A133C41438884AA3F4619A754D
            F83291D3A8A3F045E53B94C6E8E9D57CB04B905AA96EECA2E253E65C275E2019
            E8A20CC6C65E3B024CE219C9B072BBB323462D4604A74184E98B42843346D6B8
            3E24CC1C8BEBF1EDA9F988929687A8961CD8C9E4565556E523EC2667538842A7
            AA650DE9D43556BEE2D4E52C1FE9879ED899E854F39D8A4AC025AECBE77F059C
            80D1787D9A90CA293D4222D818335B88D06852747B30FE128388D374DC746C25
            7CC03AB18C2FD25D4DC16EA00BAF641889419B1C7F995EC949666A6C7E146248
            0EFD895CDA5A2AF5FD985445F3B334B5C4FF57354BC04D3C1171DC22F9E423E4
            3701B9E87E67FA205DAF26B9F0DCC13A7D91DE18F9D3E10B575A6B2EC4711245
            32AC29312CBD8B7D79434AE1C3B457320E46F681779A93BFF0956437E5FC74C4
            621733F153812FF727D0E96856EC9B732F78F3E5E24CBEBE78AC9A3A842F935F
            8ABE980317C078103FE9EF2DE6C84FBA2EE014598F2208F81A686886C3036465
            70CFD6C8D644BFCB6ED15444B75193628E5C265E6A60706F526DC4DF8B85AD4D
            D775ACEEE35C55C9860564558EA0C518FBBECBAE7552638798B088371B741DF5
            0BA91C3C9ECC209370FAAA962B3C62974051001D58C8D3F4CDD16A94783D497A
            2F284F83BD6A47C4670D41449966BE21561E3F27E94DFE8E5DA9927FE43364CB
            78725D5FF48F42AAAC4E65C41C7BDE18D5E8624BA56F5163F9A3C36CCC4FD386
            9503AD217198F0976347693A5C12E9F093162DB1A10C73F0E56E3C3B4D4C7798
            E430C5D99743786CACFA2BEB9917215072B4E34A96A807224DD6D6F0D6E9527B
            BA0753257B96CE1BDAD00D8CC711A52F3D62A55D499D1492B3CF3D92C492C771
            660F275602C7DD574A43159D0EE790054846B95FAFA40971CC798D0BC5477C89
            9B226AB2F5628BBFD7723704ABCFFFE45B727C371FEAAC520FE70964658C57D2
            6D14DE6937C492709457C1AB4B4DFA58DB27050DB4B10B24CAC5E1CC8743FB9E
            5BDE7134DB7094042EAAF7073CE171AC8E5E2ED31E5C1B0E8B4D5D0EC7AE315C
            88A162282BBAA6589D3DE323F71E9E56A94BD81F8400E50795E19584A3081822
            BD619B9B2C8096E0D6463F21353D5F7DC3610FD38D2D7E2F178C71612B9E2D99
            9B5853AAF9F5B9C162609696C514519D814A78977ABFB1EB30F4A98E5C8F403D
            BAC531875A88BBCA1A8D489E637FB9D83951A57EAE21B6233A31BEC4FCB4894C
            CFA4532F445D22270D2668E16C96CEDF9B85D4E35C70BF059DF025771EA03D2B
            F88241EBD67A822F074DBAF3A31242A548AAD1A2FC4CB12A248F43EF62491DE7
            1F73A73EC3D6974838DA097B16DD93CD47EA4432413E6520E2C273DC350E9E08
            1FFF46AEDC5870C40D9CC2145F8E71B76FA526E06045C2916B6CFC6413F13AE4
            8B8CBB83E849213A63E65F52F39D8353D899BC96B8188819308E4A39861822B0
            8076B4DC2D1CF872A9DC56DA8F19F803FD19623FBAE8C5E6660BB16C7AF0C967
            F392C5926675D20015F357D5BC4438521D223DC16BA48F9634B9C885D4C78FA3
            9A424CE637473C62F28B9DE058C43446C2510852C6B226390B59026F70353B15
            8F6E481F9B95D1A0C035740A9A319E0DD7A05DC8C250C9711C4552C7BEA293AC
            DCC679BBE96570DC5035DFEBC1F3E95BE9BCCE38A6E26218DBCCD8708F0C3CD6
            9BE8083BA23FE24E65ECBA72946C63ACB83A157A0DC8204AE94F2CFC4D1A496F
            8CF1818CC6C91F195F0E3BB32AF9473EC9ED22C33EE097C7385DD4D74DF3D3A6
            0046781DF575A233E8D6C7E8EB84D6896646C67CEABF87D801C4C9F9AA7DBC30
            76074C96328CCB8B37A79CA44E949C5939A4E388B1702D32ABCC511AD3F38614
            BD091FFD813A6FD67620F6623F82C12F75B2787618E5662C1D241E50E1769CD4
            08A656FA1C8219E410212D5C4CF94D7B990CB320A6E5EECB00AC529FFBA9B75C
            647DDDF80673547F29495349525D7A620E439A9B14B28B2B474E4E41621C4212
            5370AF86A4B3F2ECD1C88794854EF5D06312FA58DDD7AD0EE9740BB13F985BEF
            08CA70A027BBE8391E1CEB95D6CBA4C5F41B9C393E8A1445029781FFECFBE472
            2496180EE9D6A6FDD9A6AAA2431DB3635F619AE3AE8B6789E9B4DB422A1EE3F2
            29B3D88201B293784154862324A938BC0D15A68B75BDFCECA69EB3966E093665
            3DA0342D8568385127C57A9F34EC07B8CF4916378D603F98B1BE3184497DA392
            646DD243464595D6C75AE3515F570BBE8C95D3DCF9C5E8187F81FE25697F261E
            DFE6DF7318352D5B3EC13EA064B11F543A02411AA3E4ADC82F943C806358E1A5
            6B1026CF7149E9CBEFB88743909405FDA966717E4C5272C54E6CE6B6A0F6C91F
            C7CDD7B4AA28FF867EB75A8E1DADD8E38B1311850C5E22959CBA667E2786C14C
            227D21EF05252C4611DF3CFB33C45F7636AECAE438D341AA8F7523F55D5297BC
            412AD4785631170D9A12BBD17B09A4E3F483C4C7F8520A7E0D9397E98152C7E1
            CB89E3A9CCE7D9224D63C59C044F85AAE415B025840BCA8D33C83B6BDB15FBDE
            3EAD303FCD82B107C3CD50B9A3B0F8FF2969A922B938EC216F9C137690BF843C
            BB3A4510095FD8A9C146B37274B1C88D4CAA0835AAA9381A37C1171E35C895E5
            C08461F0D2A04CC5A092DE1483C59CBC496111CE94F1B11B36F7220A3AADFEEC
            300A2F3DD9F91E8AFD5F6BB2BE8EAB00D1873D48F6013F0BDCEB985ABAD2FC1E
            852FB1F38B45FEC8480B1489BF4C8F373972E54C0475867D523EF59CCF099266
            0529086A94DDF890981EF0482C56E87F383D548B3685E5C50C8969C7E211D413
            16D30ACF893EED0A3AC6BF9FC795F94B1A009D7F206C8D02BCC2AAB2A1450EBB
            EB7AC8F052191040375BAFF13BA4F833C1BA914A25397DACD2E77EF6FF5E2A11
            9289D59023930F7983195616734F2007D617FB21E62EE42A8521F8139027E2B3
            6F34B4895E32380C2E51DEC3DDA974550619E59354701DEC1DA7D4150278ECC3
            9B5877AB326C4574036F8F7DB0C68D47FE0EA815DF5A9F3B0625848DF948392F
            C54A7D178ED7CA57B2D1FA581CC9A9EF961DAE444626E7BDC473D7C51722FF88
            4507AC22486C917B25E21D62F19A58B4952E4CC47FC10C4E433E3D4845FB3889
            126F945CA992B0A8348255E335B33DD08C32CEA75592D7434831A25374DFF7B4
            0AEDD8FF2564EB2D15AA41F43813A3120E4CF0E80B8FF50188E5096307C0F811
            5F647EBBCE8EF9E923C3E1C94F1CB3335C0C175B14C1AE9811F6438AE59BB185
            2B12B1AC7029A49DF4C1B63521B78F436FA7B2AC2A1C30A937596D5EED1F45FE
            32BD8CC4F4213D95BC75C1C14AB3111B92E446A2082C683E90533BD83193D7DD
            F99F8BFC45F025A4939A23770D115C62FB5BCF5E65C8CAB4C915C723E0002EB6
            945359B5B003B8774350937A68CB3201A742C8E72AE80DFE7CF871227C999C61
            6A924FA82710C3D116E75317C28A7714EE89B674550E2189141CAB1ED4C44FCC
            5915C64A8890AB3AE695949C5610559392199B5EE681FBD0414D990EEF3DCF1F
            8AA5E9DA355D007D80E5A3A494D4821B8B5CB2E53D3FAB635B0989DB73F2CBF0
            F9A188E9C6A4AF1D4FAA0BB1204B64A6D13FF57EDC80F232EEB64533E7E570C5
            D4C07174FA4440746BE7DDC833F849DB9BD89F01D5AB585928517116557C6866
            C0294FA92EB4293B7D4C3E8E6E76608F37D637623024CD91F1855E35745D31E6
            A7CD81459298A617F59674AC9D343FF331A3AB63E24773CC3BF6AFD565CC25D1
            8CD7339D7D2B35159E59F45AEBF840D8B2D4717FC6C653D3BC417CDF4758DF70
            AB7A8203C86895781203878D3A16C454655578EF13227056283D509F19D281CE
            7226B7DEB8C720C51157BD30F2179949CE448CEA4F8B1739838918B87B36DC22
            29FC906E345E27B1B09613F3AC1D55E1D81B8615508EC1251E27C5FDD37DBED0
            CDFD7F1CBE1C4E9A1FAE6FDE38952E7A301BE59732AE3D7A9283E0919F24C765
            21D45F947CD0E010531BE88A016F3C7BC982DF216A21714EB0448B65B5497B8A
            141F3D882F9358AC287C0EAE7E161D005FFA6EAD7A1A7007956D149873CEC81A
            28E2886434B553B14D9CE51E8A8A3D56D7AF12DF09316A6204DFB94237E5897A
            2719D37E5A802400C3736ACBBAE2B23E1DD2C9E77996AF7CD2CDF45971FD91B1
            523F2DF1B8C0DA07F2652CF26F3816B197CC94E08BF56A1A7DD9301E38FE19D7
            58B0FE2517D3D3AB0AC3FA17EE0241F8427C212D0133FD902C57177A12355003
            0BE131144EFC1C5966CCB31CF7B25649F85F725F6EACDBB2A87D6EED0C484A66
            CBA71A175E15F037B9D9823E746EC13F4CDB66736BF8327DF088CAC9EE9E3C14
            D7B5B4A278B76AE946C04193E80CD2C28099C269DCEC54722F08DE207292474E
            3C31DFBBE6E7DF72B9D899DEB3E3990BDCD694F105EA4FCF092A22938603F1EC
            BD072FF12A2B8E43656C692721BDF8695C97443B17D9179466705E97073EC665
            D86A717B6156F1A7DF5CF9391C3E5750E21AE914BE20D9C4F41B9DDECB49253E
            197DE8E40CD09ABCCDA2200AC39D61C090C987762C5EF46EB0D937502A552A20
            FBDE11052678479C0FA904E9253349F08F7337CDC1E809B8C4D516A2EA092B95
            BEB16B7D8F2B29D37110ECFB727EA7405D28ED7FD87EEFE55C2814E7F61D4D33
            41383021052662BE194A2E9C2E468C9258BD0F9A6E93E095485C89034C53FF73
            16D10E0E478ECE16F35874C7CDD62442832E6BFA5426175D604B1BCF875509DF
            63C529C750386E92BEDD3BBBA917CF082DDEDD009A46EBA7148F5BA7F67429FE
            C2A7C4F67D35A99F8EA0A998ED7040994F4D4D2921EC23667C9EA65849752557
            A825ECD0D6C73935884140C35542209A1E981099408FD2E36ED592CB5FE2A852
            61FC21162E869CB48E2B30A87F885337F531E7054AB048903DFF862FB690BA65
            1E5A3434217769E8DBD9F6164B6668316827D12A3E74D32AD07C6CEDA1E7DD8C
            0569A2CF19A23A9FBEE4CE2F7EEBA5622143C6BE71B46B701CF864680E3A2229
            65432E29E2635C30454A6CA987819C153597513A271138C3AD6BD6EB35CC278D
            BB659920F7A70BB149979AECBD5B7F0E9328A2543DE5851B494A90F83DF6039B
            5CFE8F15E68887CA7B3DB704A0C1A2F5D8E38CD1D220DCCB254F08D895E47BCA
            31B7BD404CAFE554C214C491D5D72A14A4A31DBE9CC7529881FB4884D4A42A57
            18C25627CD586CD59693D6FC37F26811B9D588BFB8F51A09913021D21871CBCD
            A14BAE87E280B46C5CDA21DC3D8B0DB20B366437939574C80254CD1CF15EE8DA
            60513BDE424451FC729FD6076D3229BF90438B3C07C751DC59957CBE723CB11B
            2B2E05CC0FD49D1EF99074AF08D2B3AC264761F27DE5AA5CCDEDC004BD73AE2B
            69EFACACB120069697BF8FEC3BC8D11072087CBC918D6EBEC6E7BEE32E569511
            1003C4D16F0C98CE7B830D6F4E3C254074BC0A58418FFABDD84F5F12495C2850
            B0FA9E00BB03B4357C2E7581CD37D179A7798C59AB1C03D7E1142BFF23FFAC62
            1A2648E06F904E1474775DD759C2CDAAA12DEFE44445CD0154C4BFA57610E62A
            C0BC015F722FAEB812EEFAE23FBF546C8944225616E4D020E4B980184D7FA0C9
            808248D604BF4C6414A083782E6BE929175D7DE431703035AED88229C7DEA2A9
            03A64A67129CF05945B5A2AC98519391F0C584CDAA563F3188219DC126DDBA52
            B4330AA57985A9ED660E64A13F884BD3509075F20564EEAD4EB59142C7706B4A
            B7C472785690A144A8BCF046CBD19B7EA397A6E2BE7C29D919E2E91CA2DD8CF7
            C52E27F475B456D71C7F610497B41A017D83FA54760D942FF1036ECEC0D3E9CD
            403F03B011B6D7519DE825E482735A5102AED833724CF9E8190147F2FB5CA7C1
            7A6039E2B61497529A69702F58F904E97B34E8B117F774608FF367891D08E7CE
            CA1A35992F0185F809E91DFC571D8B46A258C020EC8716095AA24E21A9EF450D
            19533CACE3107C298C3D52FF1DBB3F210F8D464A0A7157CF387EB0475CD4BA8A
            9A9ECFDB417F45648B6CFE4C2D86464A8DF9ED2820167411DAE2C778E2A1BCBB
            C9C2A88FE8E334FBCB8458E81DA4B71EC70A90662723CCFC05356BACE2E1866C
            1C081737132D22390222025F41EAD8469116F53D7EF1AD97ED42AA8AA4E7B0E3
            99E63E068109A427CC978DC0891FC68EC0B22736AAA2FDA7B96D87C1A03A14B4
            91606FE0F3C04B1C9EC250644DC288787AC969F1259D94E2F3E7A828E8501B9D
            AE123B983A7D917925454C2C284A38E807B720882EEC8C2C37E89F23ACA11F2A
            441607CF5DA984B838E824688586CE983EA81E4B9F38006AE0032102E75F9CDE
            3CBD24447D46C8F8927EEF7937D13B80D2F41B3285EB15228E52F26F50E5D094
            555DA1D452AE9C563BF612944E9E7C8392BC06D893D46D9617B791BE5C5810A6
            1BE004D2D7ACFB01360A5E0F6C6E65106362A9A14B163B8C39026E5006D65922
            C37A40A374AB2B9B5ED1B62B7A25ED377FA0CF76C69710114AD01614890914C6
            93E58F038F78CF5CBB0FC259244BCE3E97C96A8868360C68B4C17A3BEA213E92
            C38922B871CD3DA1697388705CC20A2A522DC9EAE37CFB82909DCDA708AADC24
            E1E5870E9EA6773697B66012759C896032CCFD63C097B82AD341F6186C417AAC
            766E838B684CC5278EA968CB3954C2BC0C29928EBDA58EFD00B93B56667DEA4B
            FE82F0C570CA54D4D0AC6B7643DB69F99B88E8A026E5E001144D580420E92C72
            218C0F3CD9B9609447BEA757923F8C93D260D16DC688434BF164FC6D73E0C650
            2F2F50C9E60ABED828703F38816230256124735F188E5D71D71F3B0C755110BE
            D09FDAAA52EB0AA23A08D9C0A2119CE8410361F343175C1B6C8F3DE03A344746
            1B1F2232B4D6BCC8ED75EC8AA852FE5B1C7B1DF52F4ADAAF6745A2F847E4EF0C
            ED9AD826E1037D72D5D4B3B2A90A90100267DA39E4C5314385F92D1C6C45AD54
            09B2811933F290189865C832BAC7746A4299963EDC131B62299DF67CDCE82096
            9FC3514EE6176CC58BC20E8E12CD2F9E597BAA0E251D8E7FF8BEEDA682A65C7F
            3085A7E9A91503B7831F22BEA09EB1A35B529A119C5026741E8AF4EC814A8601
            5168135D2D834340543C5F691AE997C637C1D09A44CC05A12B991056DC72A981
            A82D5CF4DE8089966B56621BA008AE265F3F672C06893B14FC186F506D14C14E
            EE7763E9E71DF891780EFAD4FE51321E59D492C2B4A8FDE2BE7170556173A68D
            A9781E02E33B7A3F89D71952BD1B40E3FEFFE3ED7B8C2FD8961EC7A0B1CB805E
            704272E43B6C1A1D21BAE8E88DE38AE229AB1251477480365BD7D137015C38FB
            CB15B42E75093CA251C50915151B310B35028E4EDDADE052F0413C96FF05BC5E
            5E9027D88F12E1C869D9DA880A9A18017D08C14A5D168BAA6C08ACA171F37509
            DBA451FDBF6E7B203496BB73AB01DE106D8695F7ADD744F60037DC5EC8F3E90D
            D80C21EE28E6586E83BFC4230DA5159BE3D858707DEFDA358809C7EDCBD2CEAB
            19F89407D211D094644871C6766F595047CC85A3454A0E18435B77160744DCC4
            E5219CD6112D1AE2D695C00C66AFE078047F2D1A0FBA2E6AD8A2DD91BA44608C
            E5D31DF0A993E35FC67D720C9D411F529316D0669670A4302304980ED7A168CB
            F6C017D513883A1E551F7A604D689DEFA47287A9272FEB6045751F54C4179BD4
            A313E957CA1C29C4DBBA5E2E4C08E5C06C14DC535BFA169E50CD7922C2D546DB
            D44E5CB4C2CCEFC4A7061764D7559A9E088AC5FBCAC51F07F165B371648CDDFF
            9DEB48AF9C0339F1EBA3FD8B8723C56B157D89841D69E5CB38B066300ABEF916
            BD14C121D21D068CB04458917B55FA9FFDF2DBF7ED021187C09170F2A6680BB9
            DE203C279E884F53C51F42986D395E2BD411D4DF222201D91E796B8876112F6F
            1AF236B837879CC62402D55CEA76CAF13DD0BC2B4678F9AA246ACDC994507047
            C3827DEA127889C522DD323976112D86FCC673EDB50BE20E86DA1A72CB696F97
            3A2CCA7A5117331C7812889E11E2D07B6875AED76BDAABC0181FD603A230C468
            DA1056DE11C4108BE990E468085FB8BB8AC41D62B467722A666C42C1C71948F3
            21C7790D85916F5BBAFEAA30F379434E03F9F4746135B9A078AFD32C2FE620B4
            A7C52FF8928FA4E3383A1EC2F97BCE07D11522C8CF0D0D69EEDA6E900EF50869
            5B80295C0C0FCB43B72509140EC7A462541D595189F3AD829CA42673C071F38D
            DFE467AD72FF2DC367106A8E0D892A47E799E5E889EC04EC6DA25AB46D236DA1
            110E0428BA03D684B553EB0147974B20861E351B15EEC0A944EB46D75132D688
            998916484788914E0EE4F53B7E78D4D272280D5E96A565CA1489280C3757A4FD
            C3FDE564E3996819F0356DDB72E806FE42515738EC55F29EA3082D5A4D1F0EF2
            B5E9AAD61FE1FC5138251EE5F686D1D54EFE9D8D010835247FD0887DAA6B662A
            3AE7AA6494185F5CD2B204FD805FF9ABFD82F085AC3702BAB0CF3D8D605FC033
            9044A09758556C30C6015DD41317ECF823D405C5147D32D94087951C2ADA921C
            8F742264CC95D91355823835271DAF493E3FD6A41B2FA7E3A1AF0DBFAEE26845
            819A2A6CD50AAE8D63CD7B98AE6CC97FF3FE416687581D9FFF0271379C4F7A47
            186A659AD26CD7353DD3A75515762C0D6E87A8129E57C464886F3B4F4675CDFE
            51EBD52AE8160B19A797231623C917E19946E7460463C15FA07B48AB5F4094EB
            1B09D1C847DB6AE80E5CE17D6D8A86EBBE354A7B3B6B7C89D86BC08136805456
            66E0644BC4174B1618094DA0C97089B1F099A68869B620334828D6654386A8AE
            9050C544E0A42DE4B9637E4CC5C6F7B9718246452C2298ACECB5314A7FA5FC68
            4473C7679C0AA647072231F3490E853C2033C0B8112C82BFD04862601D7EA0E1
            5DD250D3F242273E2DE9823902F09050200BCEEC8FA61EC8C07940DE15E9C4A2
            49C58D67AA4F33D8F72DD0050E177868C7811E07E58111F3E05142C9DB863BD6
            C17B7303CB4B7BEEFAC28731CAB988B1A2379EF025C9FED1EF3886AD7FA4F1E5
            D4CF8C2FAC271477494FFB3DC533216906381B0D3B52CFB8350FB7BC8D9959BE
            7D441B0639410454F1F37FF5ED842FF0F099BF005F3A04D8A55D4AD0B1175E88
            DD3C43B358E07425EEEB112F82032F6DB7441E04B95EB4094C54AAE8B94E2CE9
            29C7AADF7C98D3491E07358F89FDD26D23BECC9E02EAE439800F9451AE86714C
            C677B421319E2A6957B6AEC441BC3483211C69B8BCCF0C03394ADB4D499B9C98
            82E00B61658BBDE956EB6EB96EB1F489B10FFD0AF812BA60DAA0D7C41774C175
            9B258D683CB741548B290A708089C9EEB552118DCA00473734AFAA52B98AAC74
            019242A3495FCF072178821EA2666511F185E82CBD1EE088FE46B0DBD3FC1D07
            5CE06BD145D0A5A2A916D1810E49475800C2A4AA220A0344464F12F056429890
            E2B16863CA2665407341A04A8C65464F67E2ECC435AAB257127B7D8134D370F3
            993BA61765C078FFD9CF822F69415E7A7043C29AB577E02C212C41ABF4CA3982
            980E840C71741A9305DD383356B4634723003014AC0100200FA61E8F2497BC18
            A80EBAD00EEBAEA511E0D3FF0C7D5D073B113AAE5F757C92D7401723CDFDB594
            96E13C8CA16BC10443286B1AB68646C473C9578899C1CD0459CE767B7D385331
            2EE1533E4E1E5339E5E78ECD25709D5E4E221B1512A27883E29366A123164FD3
            054F9C59B01D7B3C93DB0E3D6DEF870831FAE1FFF36D7B342FC188C48306BD5B
            13B8AF4BF4FD577C901027AA689563582B1ACEA22AC52543EC96534512614653
            B4B2E68CE4B48FE4C6E3368CEF58E5AC366A20259E47CB9E0C6B0D4706572349
            1F6656BE42A94253F0AA523152A3102A61D7C4A1C54ED93B3B38622D9D372DD9
            DA058D97370DAD5262D0DDFEF9334D5584A682DF21398B5B2EEC1A3B27AE7E61
            B5077C21A76940254607930B235CCCB606659C07DF1E6291B0C4A75D94DE8FD3
            1F8FE6E0FD409B844F48A1EBB7C80C573455046D7628426F5D4740D8A80A9952
            BABB2254A5237F0EA85ADA59D1589E6A9A05C3DB88E6972605C9BBBA182022D4
            1C33E2190FB62722D0B76416686466F5BCB46553566E5815B6E57E42E0FE83E4
            E1F59A2F789BCC94532B1A1F091FC7AE315E672B97F025B6E990DF10DB2003DF
            AEE92EAE4125A9B98593577CCEAF1EC66A20AE5501BE38BD22D82EEA8BCBD5DA
            F955623104DC8432ED009F94E08088435DD899720D634A89DE1F107742A36210
            322B4BF4E7D3F9E87139F2598DFD58D76D4B10D3F68EA33CC48F88C5D80194B3
            A48502C409508088236F58A1B45AEF13C2D0FA277049203A8AB959273A899226
            909DD89193E28B68C7A672F6788C918B19D203E7C0C9E93DF937F2F3B47DC749
            77592C23DAC8EA2AB5A1C352723C2E3FD6AB4E5C69940A17366F55FE656CD983
            45F88897FDF95237E89BC36216A4EC7A1CB8AD07B0657060C3D96F14F401B1E0
            AD5A489EA4EF29D62A3A452911EF8A719B5CD06D7C1C8A1AFA24F11E055496F9
            70494CCD8499310DA11B6D48EC4FDA84B48A593847BF863FEEA5DC5E8303F481
            9BE77B657B5FF73DDD8225BBEE0B5AD2ED5631A37B9FA9F2FCD69C36B609DDD6
            CCCC89DEB19F41A8B16A076D9A0FDC74614D43CC2B75058FD3035394ED10109D
            751AF8C2F1D498F2104A102B7A36CD8B914A720370013E6A6484134AD25D10B2
            ACADEF09D16B72D4385B32233C28BD763DCDC6CE7C4E2E4E760138A281A38465
            39D25AA3E9471B123E9DA5C71950C82881AC157CE61300ADD859ECF4FDCAA87D
            BA70E3892DD16BB814452FF902179CFE5B2B0E61622FD9426234EC464DF5EF0C
            19C00EE270B3AE5F6B1A06675D7B8EDED52C963EB4F457DEB3834A0E45F41A83
            5DF77E3D8476F07B1D79862571968B34BE0C312BC45F003103E21E250DD19655
            B50AE84FAD55AD01BB0D62AD502D55704F6986072923A2BB9C545B717E8AD0B4
            6D971D1112848D7BA06731200A53B41CBCEF3C17C5A8549CE52013A59D8FA862
            914E8C4B8DF2056292FF6E5200600C2D1F785CB91F7056241E5030DA639A99FA
            E4076C080BCDB433C809F1E55676E2C6BD102B45B608E1BA9465339BC16C3914
            C4EB2FBBFEAD2BD3707F162DFA37D4EAD2BFD0C669690741FE5F91AF5E952609
            0482D1990EB5B40068835605516D9D1E5716779EF4863721C6C5564B237FB188
            B9C027AA802F9680A4D6C4620CB2CB563566C0D6B1E46114723E498A3872665F
            A3246BF0563AF091916F8980BB707E71AE2130EE5733F272E0330E7541FBD9D6
            0DE7837C437ED1CDB75C589C397F61BF5FF5C37EBB5A752BE08B29C87B1F7439
            04B28186F6A7486306E99908053CF045BA1F4C5BAE92EB82724F2E0484A36704
            5F0837C9140FA51A6C7095F2E4EE352845D05BB3394BEFF5CE6231AB4B880568
            CB16A6692A0F35A0EBDA5EA3CB4D03C362F5DEDE3E111EDA0C70EE906537035A
            3BD1252F6BE484884DD89D66BB1FFA4277358D1A790B9CD2662CDAE7B5D4B0C0
            7572FE390762E4C8709D0E0965DA12327F71034AFCBA7EAF281AE5B66096CB25
            E27A763E29264B3693E66250CB969C92729FF0A5ED89B3EC3BBF3F0C2B870CDD
            0AE405E2951EAD50D1AB7ECB90FD50887C1BC47AE979869F5D69E03C9636E46E
            845A95C27C73BD053962EBAEDF5FB7F45DBD533DCD5D2888EFF55E7C5E04803C
            FBFD8AA50C3412B4CEE9BDF3F95C8D98A2478D55C80763A748679ADFE9463820
            C83AF261E2D194499B37F9F9E49B454D5BFE9CEC61AE882F07B6B36841102D60
            87D1401613FB84E76BD652C6F698EBDFB6B433C3B5143EC227CB84C84DEAD6E4
            B193834B8B3575968CFA4566411A5D99B83D278D3B4ED293A1DE4C619E448E35
            7D1C7E2327C88396DE5F11BF38AA0C6E4CBB8E6C976A0028AA52BA01B8D06AF3
            8BD295F899766B69C278BC8B14887BEE7BD9A3A310AD27108D8E3906F91AB342
            57BA9F957651D6F3AAD46E906E13655D5EBAB4D645D90DEDE525614AB31CDCFE
            6AB5EC5B1411A040030670458045CC28305FA0A5CC56D4C3579253CDA48B6624
            A39677270E8342F916746C8C892062A66BAD72CCFC7177F3523768500FC5EABC
            59CCEB9941C754D3D4B6E1A6056490B9B6D28A9051DA1810626EEDE8DD65687B
            225586866CCD316AE4DDB4ABAB92257084430D6F975056481A89E3E37146EF3E
            4B9D6AA99989513CCD2E9F5518581A97A94E32165E826CD228F2BFE094B27DBA
            02ADE6B31218EBAB209540230FA7D7D3F09A8B973B22297475EBA02FEC2FF7E9
            D545B9BB6E0962F67B045F38571DB85853CF88B0203E6539BF660962681CC8C0
            903D283150F1708BAC4B8E6B4963E30D706CDDB27334592DE10BD903624F1C50
            A33F03EBB3D999E50F40C8C613BED047D13AF7227A09A2D24EC1FAE3BC91CDCC
            DAE484EA2BEDE7DC0EC94CDA51F3A11A4768E3C81848DFB1201A23238762304F
            38850AE6D8EB397223B3574C5B6860C546AFA1A5208429396663BC889F11AFB1
            FADF5DFFD67531277B992887E1825632513D572E4154801AB998CF8F53A5B9FF
            16FDEB6AB54F2B7ABEB5E5C2C6D5DCE6C7619168E00C27D733457E0E26C0D5F4
            842F04048D35334BE64BF3F202A9A145B628065A6715522D56FA0F8DEDECB82D
            1078B2776B3E737270A6EDCB66568561B7D0C3D9D9D68CC60BDE56B55DCF690A
            7EFF7FBFF5DA3B5D7B974FBC6A77B9E4CCBED9EF88B187754B2C06C696B5BCBA
            5796FE8ABC354B367AEE5BE45955D173C2328474EEB5E00BE7BF684990BB5317
            648D114D0042906B362CE12569A28E765EDA196D9E92AE47D5F58CC0A7B667B6
            E6668194310ED52167A8AA9574CEE07E8C317A6E0BB55C2BBA039AC05507F51E
            4DAFC319ED2D99F9AA84C466ABD9D9BFA4E6159F4FA5535E3748DDB6D86F846F
            38EB8667C74CC5A39082BB94E9A3CF8727727171372C1A8DC248BF57CF1BBAA7
            6E20EF558BD2C1E768027FF2AA2533A82FEDADF77BE78B62B7ED2F773862660F
            233C1094F3CEE793FB68451AB5801521EB82580C93171CD8D9D84028CC448F97
            32EF7C9D9725D37348227BCCFB1AB9C362D9F92E18029A95800BD3CC00C3E039
            F389654EFB80FC234E6ECCA50A25B0B50B282FD5D37D315DFF21964A9AD80EE3
            403EF498F59FF1254761BC9F06CE8FA85794EB149599443FC9AA498EEF14F9D9
            E3F7E306B24CD464560708D9BB357A6955B496EA69CD6454D37CD52BFF62453B
            34143A1E1B1A6489943A89F058702D9DD1F31748CF57328FEBF592EE63B6B5ED
            628FBC54AF6CC2ADE5C34E743F797C5DECF366581C8590AD05F491612F88B92C
            4A3B2FCC8CDC8482EC3CEE87FED4D657C8B648856E98B45F46FD2799A90E8259
            84A787C1F6438D0892DEDD5E14445B68F5CDABFACC6C67EFA2FAAD1BDEF8ABBF
            FC6BE73FEEFCE39FF815F7FB8C7FF2E15B96C445D6E0D2A1EBC3BA4770788D10
            314132BDAF27FF24C608C9F3F2C8473948B91015F1A2B981F5F3E01AC15705C2
            4390CF99D020E7C9E1DED01187827D26CFAC287153A5027F2910919DD55B0407
            8415377D40BDEB9DEF7ACFBBFFF2A60F5F78DFFB6FDABDBCA4879456D36793FB
            D42CAA4FB8EB9DE7DBF55DEE7AE7EBEEF349D7DEF13CCD5CCBDD3DE85A085FAA
            22AC57E165BFFCFAF51E5D0B2E0565A858BB8583509EE842CF5C463C672BD631
            F314A9FC48751B722EB316CB0AD900E2D7CE54ED577EF5C368C85FFCF3D77BDF
            205A45A0E44B3C4B052AED65D35E7DC7C5431EFA20A7CD7EDFAF0664FD777BBF
            DB754BA233FDB0EAC99141088D8D27590C388CF08C4C01028B122DE29E9EECCA
            1C6BC090BFCE498DA8A48B7B03822EE8475703F9B47DE7C921B2FB1D0D885E02
            6ED81EB09C41169EE123A5D1C97EF0AB1579697E365BB0DF253135E4B69DF8DB
            3AC641323F0DA93D953AD001E8D6F6B3642A055F1454278354CC79E9E8760CBE
            A0DA1B5A64CB6D670AEE9A759AFCF4A466E5A08E46142E13B4929F0989910B61
            8641D74B304FF8A25237F8AC7BD25FFB6BEF207C31DCBE3E97116A80534C7DCB
            2916CE8DE00264E5B32FFC00F4825B319BC53AD78C5B9B4AAAA39EAFF4187346
            DE678A28DD1B5891830E6822309BD1DA2AF4A23202316CEA8138F47B829BB222
            43AAA32A312638B8B81CD950720056822F1D8195991111298BF5D91D42ADA1D2
            042E679797D58B7EE67FFDCE1BDE4C7BEFD2E50BE7AE9E7FD5D73CE2731F742F
            E21B7BFD1220D2914DB66496570437D0DD0D6BD7F6C675900AE86100F1F64309
            853E84B71C240E51C9ACE4900B23392F04264BD674408FABFA05ED164BEE5E55
            730DCCAC3408E416D516FA27A877BC75F7D5AF7AED9BFFF84FE9F269A656ABBE
            2ACE42D92B2EA47430E13ADED57AB9B3330706AAFEBEF7FBD47FFD250FBFEE3E
            5B729E7255BBD9CCDEF2E1D5377FE30F5CBE89C06B87180C8E1F667CE1F91E52
            971F33CD5358EEBA8C281DA2EC21D69D725886239DC8C70F6D474818C871AC97
            AFF8B5EF2637E4510FFF761F162CD325576D46362F758BE9BCDDBBFBBDB69FF6
            9DDF50CEE634AA1756FB6B045FD41E5C740386D8C167D1E9FCA612DFDE33BEA0
            02A541984D6D55AA2A3CF82C84CEE45322CE9DD2E4B12114D75CD11C8175AE06
            0CCAB227FC522BF85F5C2261C6E3A2B9ADAC96102AE10B119FA66944969D0BA3
            8610E146D6683C7A4B829B07FA74C4BFF90D8DC2A1C7466B61298E436696BB26
            1DB58FE8DF21F8414F910E6DC471C65B54CC9F465F377EFFAD285D193B0C375D
            A1A5E99D5AAEF6E8B96EC843AA619326F8829F9FF41BEF5C130DF746A7E44CEC
            3BA736EAD9F8D4794DE0485CD116BC82F9BC2148FA42A8EB9A5660EC5D9C6C1A
            4B1F42F6DB8F7A3EF63FA3A2BE964FDCC67F75597BF8442676D484961FEAD5DA
            129410ACD01FBD20E642400371B13953CC697F92D7509AD83468145E68EE6913
            106058F76BD44A39459E4E5157C4E78D46FFAEABCF5D73D3DF0CFFE345BFF13B
            AFFDF3A1AD691FEDEC6C5DDAFF50D5AC9FF88D5FF1599F7BAFDEACBB8022D0AE
            B7044F2D99DC01ED12569ED0C6B1AA823EDFF483F5A172C17488243A51C4B851
            8805E642B780B4847206B269471E4763FC560D8F0F27FD996266CB59556F358B
            BA327FFB81F635BFF9BF5FFFDA3FB8F9A6BDC6CE10058650A0EA5B9CAFC31EBB
            139411253B4D0DF9010C17C3BADF3F776EE7219FFFC0877EE1677CDCD598D3A6
            51FBBBC3BFFFEA67B6FB345C57B5EBC14AF9286785D8B278A9A8E6BE713E2F09
            1DF573D2BD8D0737B0BF14ACF472A70577F1E2859D9D1DA76FFAD5573CBDAED5
            231EFE7DFD7A1E54CB285AC74435961BB99517EFF969679EF13D4FDD5DAD4259
            EEF7EDD2077294F6C9A373B4F989F478290A97E22A4226AB3A04A77485D40279
            C7A55AD4A078A8502DEA9A8B2A7448192A76E783943221EEA696AE5B76FD923C
            AF8EDC225A06843B01A5F086DDE740B360543C5397F1A545F8BF6C6A295C47B1
            9207C40C589EF8F89E2BF5C405762A568187B1AB99F4F5536AA22D3CEE3F877E
            1D7C93448A093502C1863DEED58871D09C218CD829F829A891904FB8D2771CFC
            EF149590E9B853F262C976FAFDD53E7D6F332780A986A137288E49FFD1CAF9C6
            57BFB335359A1705955A1F6CF82F610436718B08565D612DE125CDC1DEDE1E4D
            39F11709779DAE124BFC7813625534F737235E4D8BAA2E9BDE75A85E2B4DBBEA
            D0DFC7D22E1D580BCECCC80D305FAC6FA9F4405B71AB2A88C534A59E17684F7C
            969E823A7B4EFDE6ABFFE88FFFF02F2A4B2BDB4BFAFCF2EEDE9933E776CECD1F
            F36F1F4C4E38B9D66D4F0B78D8DAD9F66D3FAB674D69772FAA1FFDAFBFF0F63F
            FDC0B05A283FE3E334866AAEDAFEC26CC73DF8A1F77BCC573F8CBC7253945EDB
            0FDF7C29585CE2C5BDDD015405DAB00E2E082D3B3B00688254000BBE70CF010E
            DA69D425101B2C69FBF8BE424E9DAC3192EAF3C29F99D136211653CC8AD999F9
            59DA427FF1B68B2FFCE997BCFD2FDF53950B84D51C274F421144C867B49E5072
            D1DA10B707C217DAB97636AFF69697C8DFFDB4FB7EE293BEEED1575D5356B5BF
            E5C2F2EBBFF67B7C7796FE5DAB8A1DBBC0E70870DB269F1A0245C5CA814066E0
            7D1BC4832E10662DBBD6B14AB127AE4E0057CD2F5FFFEA67749D7AE4C39FA9DC
            59E7570C43753A52822E1B61967BDEFBEC773CF3A9C4E596C819F5FBC45C82DE
            25446C090DAC44F7500625BD3EB42B4C4FB78B606E2014B68BDACCAA50597291
            CAEDBA79F75F5DF8859F7BC9BC39C78DFA909583FB6088AFEE3FEA318FB8E7BD
            EF7071495ED21A71B4355B17C11754AD638328E9E740C401FAEDB06A7BF20270
            FE755D21E60264E1F63BDC3B3016762116E3B9753D984BF6A1B24D0BB1EA70EC
            FF04C925F706B2E8832195388E1607E1252AF6C3207B817EAE9A52FAFEC94EC9
            3D00A51FA0700504D7682D9686768AFC463E1FDC925F337DFD814F387535A44A
            5CCCEBDDE52E3DCFB666E25B48DD53DCD104D5DF72C33B57B6B6BEC8EB32A5DF
            32AF3B5097856B879D74A890DEBB7C89EC07E14B900E7127E9CE2A7EDDE6392C
            F9C1BE98ABAA4AB492B4A4C88129D23126508AD8985A67F2A2E7952D0900085F
            6A4B2C66C6FE1119FC2D5B41AE66ED7FFBF95F7DED0D6F0AAE0195F4CE948538
            6077BBFBB5DFF7EC27D95A5DBAB4471E3C5D3A71E0ADD9D9ADC6BEF7AFBB1F7A
            F64F7CF06F96C38A5EBDE04C8559B5AB925670ADD7C3AEADD70FF9979FFAD827
            3C62890CDB5034C5FE7A75CBEE5E359BD37E6807B5761AC52CA26A838E487510
            546874D361D69D4202DEB28E0E0ADDE0884612B8480137B17DEDFAADA6DC9ECD
            CFCECFD7857ED3FFF9E08F3DF7676FB9B96BEA6D42448D684C451BCDF7D0E13A
            82E312455843E0FE03313488CC82653DA442E8018214328A45D5DFF513CF3DED
            3B9E7CB7BB97EFBFB1FFBAC73F73B5572BBF459F49379C39238F3FF4259CC2EB
            36784AA41E2049DC9C2B74EDC0A569848925EB63C835DB35BA3873D5F0C2FFFE
            6D44CF1EF3A5CFBE7C0B01B2782C65C417AE1255F6F275F7B9EA3B9EF9145529
            84425CBFD7B7EBA0F65A72B31C37CE429001024E3E3FC3A2FC0AF852861A1BCA
            1093754DE989BDCEC0DA8B37FD9F77FDD71F7C4118EABE036B105D16D27AAA7B
            FC93BFFA73FEF97D88C5EC0FEDAAEF56842F000B0E5915AC93E3C3032D5C4539
            A109A567ABAE855F565702283D64DFC80F026BB0938135689784E7C0ADDE62B7
            9D144FCC31018E98285F61CA9C2CF2B8D192A0AE2CCBDCA44DFC2322A1F1659B
            F111643CA08C8119185CECC7886C0C9F03C702898DE889FC866558F15DA2C893
            D79CB4BBF2242E43EFDD5FEED2CFF345C3F922695CE054ECD364F4D3FED7BBD6
            C017E95A3102AE9F688736FC437E3F0C14B890D9DF8DF8E227FD594ED49F358C
            CDD66434A7032D432CAF41653017EC89B62B9DB9019D1699EF05192C1D085988
            BC20FE620B5A64736BCF34F5564DE4403DFFC75FF61B2F7F4BA1CF0B72F5C39A
            5CF6BAB1D7FE93F98FFCF89397EB966EA7ED90FDBCE6EAABC9DCBDF98F3EF84B
            2F7ECDDBFFFC7DB48D01067DC757A2EBF90C798CDE2DE6E787B034CD85FB7EE6
            DD1FFBB87F73CD1D8B9B2E5EF266B0557D8936842F3B4FEE926D1D44CDE82A4A
            9E93277C29A464C9B1D7E8B5923E18068D4B066220950AB342237C50973313B6
            8944A9FEDCCE76435ECF50FDCD7B2F3EF7393FFFFE775F547ABBB084E6B82E56
            D3D9F5AE3B73E60CD17C627CB4CED12390AB89C8D8A3A99A871BBFBFBF4F7B83
            2E678E9C9383A6C4750F7CD0673EF6715F380CEAEB9FFCBDF42F65B1B3BFB706
            D70ED0D7D06A198635214C61767068A15FF37AB263931089679177A3632F74FE
            2EE84D389DE206D76E2DB6E73BED4FFFC2B7D0543FEEDF3E6FB9DBD018F21C67
            551EB42FC45FAEFB94B3DFF95D5FAF812F3EE18B5FB64857FB209DE720332F58
            7F60F45097DC17CACF186DE8E3FAA6F104C74D35AFB4FAA3DFFFD07F7ED6F343
            DFC0DD841341774538404469F5C46FFC9A077EC175C4847757EDEE7ACF436C0D
            4B00E1288A97829077021B9A2A74F5B6B4C93B9435D2ED15C45F3447EEF89955
            0883D75CF38D7965EDA262FF08BE58CA2E8DF513312AC1C99058699904BB321C
            E371DA69F1CB7648BBC34C632BF9E428EEDA33C46E56CC85240A33ADB993F722
            FF883EAAC5B42F6DAEC83BCDFE8DD1D5FDFD5DFA793E47D68E2B4153AF5BC197
            6FFFCDBF6E6D5DB86891C67E561B2C66841876ECD15A557AC9907F54183B5BCC
            E3B976277DF8DCEA29B7D2909856FE9691826F64E0532DB9469347828F39DC6F
            BF288B054230063151FCAC6B359C99EF5465FDFC1FBBFE375EF6D6D25C2D574E
            F613BB4BAD3EE5D3EFFCECE77CE5C5DD25E24A056D70DDD4C5EFFEF63B7EFCB9
            2F59EF924FD490D5AA1B5395B47FFABB5F77F78B172FBEF7BD37CE9BAB88C710
            1735E5E5415DBAFF677EF253BEEDF1B36D35A86EDD1271B1AB4E7703FD01BE20
            8A0AB9568B5CD250F54858F0CA82AC159572D08E626F3828032DB260F4A7AE88
            BFE859A1CE2D162CEE985FB5A39FF6D49FFAB3B7DC68D53942A1FD5557D60577
            5482BBDA14F365B7249CA1ABB5057D51EB03FA63D013C1A6443FB9F3BB9632D9
            F57ABF265B3FB8F9C23EE1498FF99CCFB9D3BFFFDAE77CF86F2FABD0CC670BF2
            6BBA6E5DD5A699952DB9A62DAD9973E43705C59DF195845764762051D4A6438D
            67E866B3A628CA1E8D8011A921046F5BC4FEABD9EAE5AFFA0137A8477FC90F5F
            BE5010BDD88CF1F37E36BBD7DDE7FC777EF7934CA5564358F976BF87727789DC
            1E623AACD5C6E456053117343B27F42BC05CB62CB9878410BAE7FA0662B57553
            CCDEF4877FFBECEF7F811AB6822F6423CF2179EEB45D3EE1EBBFEA731F7257BA
            99D5B022F85AA34F0D19DE9AC33ADCA49AE5ED28FA80BE19184ECC77D5ADB0A5
            8A12F041D602226004777B3ECA14F8C2115F1C4EC1A1BD21365242C18D628182
            DA389546940BD1A64A50695A1330B5BEC2E2330F027517091777073C9C45E1BA
            3064420E477905710C4777720626A6044E594F90B918E10B210ECAFD937F2431
            3BC9CAEBA7FFD6BB5A93F045BBA85F500742DF07F18530854001FED1FE2E39B7
            F3F9DC9D52F8C2FD8A62874AE95E23D13BC91909A84BAF2089A213C9670BC9DC
            1D3E0544C9A50DB58660775115F3523546D3CFB49210EB251653D5C4977FFAF9
            AFFAF597BD5DFB736C543A1DD62E2C75397CCE03EEFDEDFFF1CBBA61AD08A9B8
            B1FC6FBFEEADBFF24BAFB9F1BD17094468B05027BDBEB0756678D8173FE8615F
            F490763DBCF0E75EFA86D7BE696B7E07FA06B655CB6EB878EF4FBBCBD73CE1D1
            77BBE7F9DEAB4BBB7BAA2808660031CE77A8B5E807A21A688C5148ABA4816331
            2821E52A5E9A918AC581C45CB27FC777641675737EFB0CEDE237BEFE2F7EF8BF
            FCF4ACBAF6F265CF16687BDDB5B3794917485E7F53D597F73E78C7BBCC3FF39F
            DDFBD3EFFB29E7CE9D21F87083FEAB77BCE74FDFF2976FFE93B7DFFCE1E5CEE2
            E3BAD6F1A12CC810D54DC54D2656F7F8E46BFEC3773CF199CF78CE7ADDED6C9F
            DFDDDD5D6C6F21E3E8C93B2107C4CFEA73EDFEF6873E78D9C613DD0AA997E2A5
            8036A1CAB477B8238D6DDB76FB221BACEB06FB7320B70D0BFDCCB9EA593FF82D
            4DA51FFDAF9FD3AF77E896475889268CD6FBEEBDEE7DFEE9DF0D7775DFB9956B
            F787158DD2126262394F8BFC2E4C7755840A64C6E30FBDDACF6894616CCA5016
            D8F5C43A2B63FEF08D17BFEF7B9EE7BA99560DAB81D0DE289856DBBD277ED357
            7DDE833FB153BE0DFB040E74E3C44A2ACBCD46B88B39F781D5553563E51AEAEB
            C9495BF7A8FD28CA72E0DC2F26D429A98D44C945208875311CC32E12C26D0E52
            CE9E5B4AA49D9C223B3AF4EB767AACA09AF8479290CE8DF5E21E94203BABD724
            A666B84E437684E8D9A45786E8EB806D72D08751926597DFA3412308A095DF1F
            7B7EF5AD3DF8F032B099FDE51E7DF27C31E3D3A0193A72070F428B67BCE63DAD
            2506101302934ED4130631E52F2648C2CC7187BABD7D5A79C017AE13D5278E3F
            8B482F087F916195249C8CA9C45C402B787C576D5BF3D1592104715971849EE5
            DAD98014520CBEC0F50FC01702177069FAB8C5CFFEE42B5E7DFD3B74384356C4
            96830ABBB6ECEE79AF7B7CEBB73FA6D9F265ED56FB6A56972FF9C5D75DFFD2D7
            0DABC6071C70437BECCCB966F0971FF9E50F7AD4A31F32F85555CE688DFDD4F3
            7FFD865FFFBD426F150A2FA38F5A0FB75C7387ADA77CEB13EE76CFABEAB9DA5D
            F6ADEFA5B085BB99409D855C7540B738043FD00056ADBB0E41651C7288EB9F93
            CF4358680D5F3C8A1ACE2D88F9EB6BCF6F7FF803EA1B9EF01DEDAAE89725018E
            EB0B74FEA23B6D68F06F99CDCD2DB77CE0C19FFF195FF794AF986FE30032CFDB
            8346C6933FB052AF7BCDDBFEE7AFBCFA83375EACCA6D6EFC52046E063EB8E5D9
            F3CDDEF2FD4F7CF2633FEBB3FEE9F6B6DADB534D4D438D439C8B924F70093825
            FCF5BFF9AE5F7CD12B6003B024B81986F46D8167D4CE16EA715FFB15F7BBFF27
            584907B1428FF64E59E2245E3433B0EEEC55360CEA910F7F966BCF26A91B99D6
            21ADA98258F6BDEE7D96F0A56888560CC45FF6FA350D17FD4C0484F635EA002C
            F9479EF59304397090899719B590B38059DBB2EBC8F92DB76821FCD1EF7FF859
            DFFB82306CA3FA957B2894B618FC7EB0979FF494AF7CE0177C22CDCBFE700BF1
            5002738804E8DF21FD315581001D99F7DDDD96BB5E18499CF552226B902742B4
            9EC5BEAC6F0A524F40660A73ED445409D729D7A04D638B2A1E90C2209275F4F9
            DCFB7800E79017BFBCAB1B063971545E265B860B4D8B1C5E904E0199EF8BF917
            667440E721BF9FEAE3A5A7C469B248239BD8279BCA951336498732002144F35D
            AF7B1FE14BE15249482A7E35227C9C9221E9DBC26979289C84BFEC5D96FC5138
            4DB72C19E2201C31B14413F59200EAF57A5DB2E458AA285BC117AE7B8A35F25C
            C44BEBA20AD0EC6ED7E55CCA7622BE143B9529B98EFAA77EE295BF71FDDB74D8
            26E642F4D856AB073CF0B31EFB355F4CFBA15978A44B86E6FA97BEF1952FFFDD
            DD8BD0A356F50C3DD3CB6EE79CFAD22F7BC8173FEA7EB75CBA446CFF960BBB8B
            D9D544DD5EFC0B37DCF0EB6F2CFCC7F91E3D70AA995EB7B75C7587C5973FE65F
            3EF00BEED9B36104332133E34A845D3ADB71232BE4BD7B042FD7E881D177680C
            8166515501E78EEE6266F5BC2EB69A6651231736279634146FFA83BF7EC173FF
            DBEE25571767964B5FCFCE5CB8E5F2CED9F33D6D43B5DCDAD1D75ED37CC3377F
            ED275DD7ECAF5058532332E1DB7567CD626B5EB4FBEAE52FFD9397FCE22B68A7
            2987667434A46515CE5D559B6275ED9D669F76DF7B7CC923BFD058B5BFBF2E6C
            834E357C4A10D96CFA2872846F78E58D3FF6232FE2D92952FA9997862693BE2A
            EBF63F3CFD1BEE7BFFAB972B85DCB38AC182AC3D9D2F2A224A75317BF4973C7B
            FFD20227C1737A17F8128D67A1F4EA5EF7D97906F197995ABA7EE5BA65BF223C
            5B911382F28592BB996932838DF1F40CBF9828F360906960B1327A0BDBBDAA20
            BF46976641F8F29FBFFFA7FB7EE10672249D96FE527EA9ABDDAF7FEA573EE85F
            DCB3536DEB2E11F217456DD02CB4AE8BBA42A4980F591E8666562119C4115EB8
            3CE8838A801A21B790971E954A446198A006D434F4DC73A747EB2AF67FB9CB81
            9338F97834952C7EF40F9DEEF6F1A06ED67CF0D18F552C52E52ABFA669A4B156
            8E0A0B0629EECB27519B296AAC562B6E815866F01254CA9E418E45E4C8CEA9BA
            E3717F1DECDCD51EF1D6B0582C4C6A1514A2D488A9D9F7BFE1FD2D88A791A670
            094C4C3E81E6605D39F337BA11D9F9C45F24FE124E796C9491C3E29058455C4A
            7EE67ECB34228A58AB288588C697A65C752D0DB7E6F6213D0CA92BF82837E840
            959A55768BE82C194CCD2A58DAA275D1683FAF1684393FF5FC57BDFA95FFD7EA
            2DADF6BCBEF8C82FFF175FF4C55FB0B323B5546A7FCFFDCC4FFEF21B7FF76D61
            38476B715657172FDDB473A6D6E5F29BBFF5ABEEFFD99F30F8F57CBBB978F152
            532FE80B434F80AD5EFF9AB7BCE4C5370CEBDAB35FD9F6EBAA71E7AEA91FFE88
            073DFC11F7EB7CD7F9BD16CBA0EAC92D1A2C6D1322CEC45C88B32CBB1ECD0170
            8C55EC9342D4BCA90CAB60D4A229CF2C9A6D4253DA10DE36B679C98B5EF7F25F
            7EAD1F1A1D66E42CD0F29D2FB668C4765717EB86ACEAA56FFAA6FFEFF31E7C5D
            8773773BD409061C6CC46745A07F030D0EB980CFF88F3FF19E77FFCDD66CEB53
            3FF5D3EFF2F177BDDB3DEF72FE5C73EE1A6233033120DA20ABF572B6681CCE6B
            29D0A116F5810EFDB586FA8657FEF5F39FF712B4E81CF14582BB03E1CB6CE19E
            FAAD8FFBE4FBDCC985BD665EB7ED8A7B3393F971BCFECDD077E7AFDA69F78B7F
            F765CFEA563B5E2CD9267F317AF5C99F72EE19DFFD04C69776EDDA252820B9A8
            B4D3EA12BD17D0B8BBE1F614DC99155BF5DDEFBAE95DEFFCD0859B2FF743BBB5
            5D7ED23DEEF04977BF6BC918F1876FBCF9D9DFFF82C161C4A4CD381BD396F0E5
            EBBEF1DF7CCE83EF31A8CB08F722825193578DDE0E16A7CEDD7293FFC0FB6EFC
            E087FFF6C3375DA0A126F3B1BDBD75F51DCFDDF14ED75C7DF5CE62A1F65B9CF5
            085DBC433F63AE5F8337B4F40E0D0CD1F604755288E573830EE725639DCB0594
            B4B2E64E5E83E4764A9C5185FFA0F0EEFDBA5F3725FEE35CA0A3D72CDB65D3CC
            352483B4963ABC573984E94A9CA840CB8F7E231A0E517BD033D10A4BDC0CA5A0
            10970E1E740BD923EE084B2C4D5B39CF2702CCA9EB04994BE9943F5A4CE22F61
            D2434FFFD06FDF38D0ED254D21175FB07FA4F8086735569464B413F1B240E6EE
            EE2532BFF56CA6B53DD5F5C9B79960D6EDB2B055DBAD7809A1491BD9D2D5B29D
            CD6BC51DD9A112C6F9327339EDA6F73830C4B0FB5318F8D54D61B76AE00B4C1C
            311A485DC35611E6E51619BCE73FEF86D7FEE69BDBF550CFDB477DF9431FF515
            9F479FD29117502A6276CFFBD197FDF6EBFE643EBB0A5BB7733B5BF3D5EAE6BB
            7ED2D9A77EEB63EFFCF1E4270C6E200FB37DF60FFCF05D3FE16E4F7AF263861E
            B573B45C7EED95BFFF925F7CD5EE45BD35BF7AB90FA8ADE676F0B77CE5E31FFE
            AFBEE89F86B2BFBC77B16ACEAC963D91ECBDE5AAEBD17B717FB5DC5D2DB1E48C
            ED713CA417CC6F0AB33DABB6E776D640EA0EC12E9C8239EDAD673CFD67FFEC4F
            FE666867CE556531A3BDC4CDEA0D3AD286BD6BEF54FFEC0BBF6DE9544726D1B5
            E85987DA1370909A5B7DCD9B86DCB3CB9796B438CF5E457E18613774BD389D15
            9B0ECD387A58E6A87E429D3356605F708F88DAECDC70FD3B7FE2277E29005C4A
            1FB851A78E9D7A69C7D6F5EA3B9FF975D77DDA559DDB6B3B0475D071465BEE5B
            EA6882683A68956F555B8FFAA21F58AFB7A4DF52DC6962695067B0FAE4FB5CF3
            F4EF7E5CB5ADF6FB4B0062BA93AE462346E31B7283DC0A1BCE2CB667EAC2CDEA
            AFFEF2E69F7FE17F7FDF7BFFD6F588804391EBD73B6766CAB45FFAC8873DF8C1
            9FFDD7EF58FDD00F3E6F7FD55B5BF3C91B251714B7F5CC3DE91B1EF9E02FB887
            AEF62F5DDCAB9AEDD96C4E3EE0C59BD59FFFE9CDD7BFF455EF7FEFFB50FB48BE
            ACF6CD7C7BBD2CA1EA2E5783DBBBF3C75FFBD07FF5D0073CE0FE5B6714F971E4
            BFADC8FF442052EDAF5B72743B6EBEC7EC06CA607190078E7BE444758A0FF87E
            DD130147DFE78040B5EC31C208745F72DDBC598822862E03ED6AC3400B1C4A08
            8DBA0D34AA3044DB6BC905F7C81200A70A3E2D93EB6742BB5A69D8AD8AEC76C1
            6C0152EFB224FCCA88264A6BD9DDB7A10E5922C48400F44C1B4772DE8A4F01CE
            3929FDC36F78EF60AAD4CF963BECC252D1BF0FC7550989EF270EDEEEEE2E1929
            D407DC0674E128AFB842C209739C9CD8DDBCC1670A9075DD404E0FDAA9A1432C
            114B84F7D00B9225603857A42AC15FA083F0B40C9B2AEC54C1B7E4629CF9999F
            7CEDAFBDE2353B67B6BEFA6BBEF401FFFC3A5D401B5297F6CFDE72E9C52F7AF5
            5BFFECBDC1355D0BF827267FF1E61BEF79AF3B3DF9898FBEEFFDAFDADB1FB6B6
            8B77BDFBA61F79EEF33FEB331FF0A10F7D68BDDA7DE2931EDBD480D7756F7EEF
            8D7FFAD25FFAAD1BDF7339B8C57C767697805C2D83B9442CE6F14F781859FAB2
            51172EEE9149A78BDF5DF528561A68333BA263CBB6C53147DC4285A8585315E4
            CBCC1B42145395A8D69B17951E2C51AAA77DCB0FDDF8EE4EB9AD7EA8D06607F4
            A2E75309FBB2EE3FFD7E9FF0BDDFFF98DD56A1E11B9A9F0EE90038C8638813D1
            9810ED9743EFABAA41E97047EE7DE59835A21B0C8EDF86802DB2577800445186
            AA50284A2E766E78F93B5FF0E3BFE4421114E10B47C15079F3FF93F61D707256
            E5D7F7ED6D66B6249B0684DE110810A408888A04E952454040905E83F49E5043
            932660458A22D25B40E94A932EBD87F4B2BB53DF5EBEE73C7776B2C4E09FF02D
            FEC664B33BE57DEF3DF73CED1C5AC93AED67D36C9D75EED16B6D40F8D2F0E3AC
            CDCB0AE40F2195A06596099FEF9259DE73E78BA2A83C5CB90386A24039F0A035
            D61B73E67907DBC0972AA4F4104C4AA58DA8A7CB4D9296637A14D1CD9D5DDC76
            DB43CFFFF3F52CD5E248D1D50A1C1F34D628A7C02AACAA466BC28409A3FB5679
            F59537AB8D2ADA4C352B818B82E6958C566BFEE4530FF8EEB62BC669D5307B5C
            571F58249E7CF29D07EE7F66605184C44F988C1CD1E3D38921E220CA74A59BAE
            55A994657933CD0865A29E91233699B8EEDE3FFD61A51B53A30D3F683503C371
            9A2CDF09ED2E844B2A6BE2654C64503C920A6DA23D6E89D440148472D4489ED3
            42B49DB9647C44FC55E64DA4F033CA70142E313194D949D926D3A9C076F22F43
            3051D0B6A2E787205CDE76C5623268C8E0E84B3EAB8BBB0D96ED4BBE3A21003D
            964AA54EA2FA4B3F73CD733313D51852216357732151305796362534141FFD7F
            E10B67D473D9654EB1257DEC943358D0D3643F27BA3A1E723A856C318A201D66
            CBE6F71C4D9268A2872E24F71ED269EF9A1A4F3CC343D5C61492A8B82859DA86
            73E5E577BEF8C2ABE75F70D60A2B552A5D2208233AF1E6CDCAA65DF29B8FDE5F
            A82A0E5892A1B3B26573A309CB5F74E921918F90DE73C59B6FCE9A7AF1D49F1D
            7CE0565B6D1167C5AFAFBD69B07FF0ACD34FEFE9C5DC8AEB88D7FE5D9D72FEAF
            D4A2BB560D2836B129C4805483587FC3D54F39734FE8EA283161A550F4462B69
            B642C217F46B1502EA3CB23496C0E0C2732CCFB6B9B79DF005E3E0969AAB991A
            06E6D1479CD5ACBA842F696E70D4ADD01606ED5612C7CB77DE6DAB830FDDA295
            E47EC6F26E800BF407137DA0EB01A55E01494D8218C1393F6864A244A9675C38
            E5064091145A96B77DA6B93047E75B64E885AD09472F4FBFFF43E04B66317F59
            125F0CA379F679C7ACBDE188246F857112C479C0BE7A10DFA433D61096499FC8
            F08CAE3D77BA308E2B5F812F2DC297B3CEFFB955127EDA802F2F8CA1A19E6D69
            4512B5961BD74BE1C782D9E905E75D397B665553DC986E975622FE92C4C049E9
            116A5A4233926AB5EA3923A2285174F86073312BD5353B495BE572F18BA376FF
            DEF757A1782A8A44A32EAEBEEAB6E79FFF8FE3F4C59096424946401D26F22A25
            3F0829F2266C62D5EA66A9E410A68749E49614CD0ACE39FF8455D71C15E721ED
            A9C1462B55AC98D11A10932B6C78C0D113F39734171D2F89B6F41245CE4366A7
            72DB772624A15ECAF8D269B1CB8A2F65B586E38BE09699E1F95DF932C8BF50C4
            A45BF29FE46FC98DC6F0A22FE1E3BCEC5FC5707C41FE455DECDFB2182EAEFDE7
            AC14DA8C8B952C3256BD6445F7A5F4D668106ACB75454B72626B5AAD5947EE8D
            A22FF641FD5ADD396D77D7F65B91FC051F9E9562F5A1FCAE6DDBED402C49E3B4
            8DE8ACD04CF79B9DB4D0D58B7A9D097C3190C260053EF4EF9AF491524747EFFC
            63D39F1F376EECB7D65F59416810963DFB99A7DEBFE3D6E973676172A25CEAE5
            26A730D75A9B7F67DD830EDE61C4480A4A143A759F7BF6EDFB1E7878871DB7DF
            6ADB0DEB8D908E027A6F7FBEEDFEB9B316EDB1C71EABAFD54DC49800EEB55716
            DC7EEBFD9F7D324F55CD28CC0DDD8D0822D574E3CDD638F8F01D7A466B63C69A
            9F7CB290503B8812E6CF40818CDBC9F1D9750B2A7BA6E358A64D110D2622140A
            F4B4C2F74C2F8ED403F73B350D7BD2D82914A9269D482371FA8366843FFFC5EE
            3FDA79DD544B5A09317621E5F1534C7042899B290CA6D1D8ED08C6E5DCA20851
            AA54028AC8B89EAA4174984F134455745FB5C8D2338ED44A8FDDFFDE4DD7DDC9
            F8622D155FCE39FFD87526F4A67464C6891F27AD08F8C2427CC236E94AAA1801
            372A7BED7C511A55D2219DF825F065F575479D73C1615659F8711376CEC87DC3
            DFBBCBA3BB2A286A287BC66FAE9FFED0034F8AC261535F0BA5B444C3B4BC0285
            2DF677A2EB1AD37E2C39A3A1F28999D38870DF755D0E5489DC0D4C3EF5C06DB7
            5D8DD6D4E08079CB1FEF7DEE995774B34C77ACD58A46F58CA03BC263D76A3368
            3A1EA4BC687B7A5605AE3B794A3B362DF03C9A158F5BBE7CDC4907ACB0720F2D
            1EA2FA7EA2C419DCEC708B3311E57994403030E672920C9104D78B65D9348922
            8920727C4F32777906D06BD1E2EF74C1C86CAE3914E960163F264C250E6EC82D
            8ED504F15655C6412AEFDBB0E52BE0F5162A700AD45DE330240C86D115C62C34
            EEC3C35E96FB7159F7AF3A0430B546831EDD5249BE3A5A19876582951B9F9F1B
            ABDAB0D63835E34C0A864FBFE215E594105D497AAC376B8666DAAEB54CEF4DBA
            804AC0A33B4A40013AC7D610744725FA3A43FC45E28B4DF8C1191EF6E5943A6F
            F07AA26057E20B851526F3170B8CD9200A43DF340C8BE2438ACC01E7AADDDB6D
            3F78EF8704070BE7FB6180B65748078599E389DDF6FECEA41DB7183B0635FC38
            28FEFEF813042E279F7CCA0AAB8CAD37095CF0DAE82A8EC5D3FF78F9D1471E3B
            F2A8C3D75E6794A2A224FCF927CD9B7FFD97D7FEFDB9698C8C425885A28B4F69
            F48D312EB962B266C61467F55707596F1B7303523526432D57811303BD6DBA86
            0030436F5B2064B61E95AC521C2AFBEE754A918C8C43032290AA92663ED44A11
            AA4485D23CEEA4FDBFFBFDD573C30F123D805E84B4AF92C3A8488BD21685B915
            A6FDD0BDACB23A052180C82D2EF931BE64061753B19ED1014BB1B996D810E8CA
            29629B7EDFDBBFBEEE4E91BBFF1B5FE8CC8EE9CD118589E0C00A5D3E1D492EDB
            A2B74144B2B2E7CE53D2B0920D53D55F8C2F5A73CD75FACEBAE070BB2482D887
            0B06B445315894C6FEF8E547842D31F3D3F0C463CEA7A089E23C581617989F27
            70414634AB5936B4CA2914253421764324238D095F52CBD2A5A597A1DB4289F2
            62D12F4F3B64BBED560D7C71D79D2FDFF2C7FB1CBB9B05C6C02229D08EE310E2
            9D45AC5BC2AB58CDC6A0222C91559258A70D41408086A634867F89138D5FC5B9
            F686139A7EDE224C14264543C03344880A911728572156921D31B2335FEBD44F
            E9AD4ACB14891DD2F64F703188BE085FE477647C24A53933D654CBD83912CEE2
            D0731232778B0E439ECC92D3CBF4FDA0E5EB26C5DD167AAE812F79E80780FC9C
            DDCCE1F7AA2EEB9E1DFE282727E8B1DE6CD0A3572EA96DF45C5C114245E9E697
            E6268A314479A47F08CFCE7E35BEC88C145D3A8A4E1AADFA37C597762F335D68
            DA637CB9A52F184043E677A52E00DD9F24C16C9ED236B8626D1B8A2D31EC4634
            0B99489B75CC74B84964264E4B55CB92AEB29B66219DF3B42CB254B574F7817B
            5FBDED8F8FD04B692AC0ABE5D74A65FA43B2E73E93F6DA77A26923EB19C7E291
            871E7AFEA5174E9A7C5C5777B76659311F292C656CF57429ADBA78E95F6F3FFE
            F893FBEEBBE79AEB8CA3E38AA8C7FC39D1EF6F7EF8DF2F7E54E45E84013F7AA6
            C8F5B4AE91CAB127ECBFEE0663344D345A8D6ABDC523417A40485014B6E3F102
            2B180E14D662579158D5F28A43E7B2D56A889FEC7D8A48FBB2C486BF3A057114
            1E151932240AB1F9F0E8E3F7D97EC735C2BC19A64694B149C0503F11C4C0596A
            DFB6A4391A1BDDC2EF16D8A6155686BE52C01CED3E000E661530A348486DA814
            9066268AC1CEF4FBDEFDF5757FA1306BA9F8629A2D8A8FD6DBB037D560DA42BB
            8B685AC6137E8602A96DC44743F89204E55C51978E2FEBF69C73DED1765980E5
            09762E5728BCD21CDB88FCCC33ED8BA7DEFEDA4B9F4681AAE92ED1DC246BB78A
            86516DC595CA6BAE357EE59557A6D5F2CA2BAFCC9D5D9DF579D8D33D2EC4D835
            CA58DCC049B05E2B5792A38FFBE9A4ED579D333BFEE549D7D56B5A44E483C88F
            4EB14C6869041EE1B8B17D9376FCC1165BAF3D7E653130209EF8C7CBD31F7A6D
            DE6C9FA85C75B0A1E846A9447FA8BBA5C270AA7BEFBFDD9E7B7D47B504F26C08
            8EA0F34081129A9A53EE7BCA8A0EC488613DE8B2F58947E93322DF2A6B5EC831
            2E0AB06CCB457722CFF860B0AB481DDB93138FF0B38A213CD1A91601C432C1DA
            85BADC5FF43CAD560BFE3356FB9086F5551421FF402C8BFDE33AC1D4B0806799
            F0A59D192686418F5ED9EDBCFAF0394CE5772FCF4F17977E185F4467F06CE9D3
            4D984F510D0272E25DB566CDD44CCBB5BEE66454E7B1333741C842FB16597AF8
            042A7CF6826A1361913D31B429E8AEDB0E8C0034B897021D79949602164161A5
            AE150428D2975E85E63EC547AA6B1949D42088EFE9E96BD4320A45FFF8BB271E
            7DE8F930A01B536AD45A7D7D7DC4E54D3B39EC883DBFB3ED6AAA947D8BC54D37
            DE4941FB9E7BED3C728C6B38AAEFA7C40D88C2D8B6532A5B68EB223833AD97FF
            F5DE9FEFF8EB76DB6DB3E34EDFB51C51AF45CDAA79E71D8FFD7DFABF15E1D25D
            342CE4920A2DEE1B631F7AC43E9B6C3ADEB045A3D1AAB59A3AB1D65C04616298
            6EA1B65B0A91F0E2CE31341D1B9A676A9662FB4DF1B3FDCF8EFDAE3C75721913
            697435622840EAB420FC030FFED1BEFB4FF0633F2E0C10F22C968A9C74AD002E
            3A5D9BC2B51D5017D4410CA95F07071728FF66D087446B0086BC9191C954B624
            403E8A580C0BD398D3EFFBF0D7D7DE5114CE52F32F96D53AEBDCA3D6D96064A6
            04B2A5155E919C00D215981C80576AA6A397F6D8696A149486E38B60C70B74C6
            69F575D6EB3DEBFCA3C05FA21C333DD07B49A02AA216B6EE35ABE2D09F9DEB37
            2C5DE962D41096E3FA019D9CD172E34B3F3F7C970D375AA9A79BB093788178EE
            E977AFB9EA6F68DF314B2CE825D5CE1582FB566BF62F4F3BFC7BDF1D7FF9B4DB
            9E7AE2134D1DA1B0B50011CA7297994675D753264F3E72DD0D7ADD0A3129E138
            8080575E5CF8AB2BFEB4605EE4392368F5361B6157A5B7150C988EBFFABA7DE7
            5F70488CCA37F679DC6E8A91529B2C39C6BEEFB24227A41316D76E236213BCDA
            3B3D19724730FC47B6ED76F60282EA9C88D8D2EB472A72C9F112F523FA2D22EC
            C4510CBD9DDFA52F3A2339DDCBBE9DDA52F06599F66FE7911040CE4F775EBDF3
            08C4FBC3BFE7A58AAE0E395DB1CC4227FFF215899D2FD5A7BF61FD6828D12582
            C097CA11A6694151022D551434458E6373C3A4C2CECFA1C346233CBD8D1434E3
            0B53FF2C9635694CD6727B061A25289CC9E39263239A8D88F397AFBDFA9EE79F
            7D9F5831BA42D0A66910B8F48E747E71C4BE13371F63B96800AD55D3DFDC78EB
            A285D5D3CF38D1F684E989FEC101DA8A900B09A02D44549F28B06D61A4DE54BD
            8105F145532FFCF11EBB6CBEE5FA06B04E217AFE9B1BA73FFDC4AB7104211762
            244996B89EDE8CE69DFCCB9F6DB2C5DA5D5DCAA2013FD7A06A1CC6399DC5712C
            F56E8B82551C742D735CDDB34C2DCB5CBD9225E2D0832FA9F59B1417E4B2F75B
            C1BCA5A5634A2D4E077FBCF736471CBD8D0F371F3D82CD6B087C51185F74E42F
            6877EB8A46781A8471B9DC6539300B239CC978761FB2FC48F122768A21084FFC
            064D590CD9063241AAF1C8BD1F537C9443008BDE83311C5F542532ADD699E71E
            B9F6067DA968C9BE78C459086D0C22268A80C90111317AC37BEC7411F0854FBE
            0EBE0816B0217C5977FD9EB3CF3DDA29093F126CFF172B5A4C504B6BB1EC95DF
            FCF7C019A75C11362B300E30F488A014A38749C953D6DB60DCE453F7F22A30F0
            A53593C4E8B79C72DE832FBFF021DB4921AF24C7F1E9D2394E72F891FB7D77EB
            F13FDEFD18DB5C3D8E90F8F023DFF1ACA6DFDF55D23698B0CA4927EFDD3D42D4
            7DB8EF513C440B866ECB9473FFFCC6AB3393D0D651F2A32544117DABD4A5F4F6
            29C79CB8FB0613C73543B85B13B6725FAFCA0E9FE8E8A5476ECF2B162BE570E5
            39896334A972378B8A0B8A52B6CC5E4469EC987667529A7E86FE95F608A6FF21
            344147458AFAA061CA6214E6053003AA0CB984636F719DA4601E90B19EA14ACF
            4FB12FB4085939593A23B366989A2F7BF1885F064D648D469D1E4B250FBD24FF
            A5E5A0DCF6EAFC54D5E54C645BB19451461DEAE2FFDF1831383848D1C737C017
            76D8C49C7810B6A07C456C483359589C496F484BC19288CEE76AE458ECB088B8
            0D27A0CEC5110D425A21BAEC745A856E4CE424CB7B7A7A92C0EFE92EE509C556
            E6C02271F3AFFFF2E66B9F210ED39C24422B80696763972F1F76F83E1B6CD4A3
            7163EACC998D3FFCFE4FCB8DEBDB6BAF3D4A152D0898B8D3FAC882244BFD56A8
            9946D9B35425358D041E9645C531F40F3F9877EBADB7AFB0DCF2071CB84FB924
            E208CCF0817B5FBBFD96E971624561C646F3966AC6AE17ECBAC70F76DDFDDB39
            B77AC559C093B8459AE0F866F968F8ACEB6AEA78B46FF32EBB94FAAA63E9C71F
            F3EBCF3EAA134C8531FC77088650CE0FC1487433D968E24AE75EB02F31A328A6
            9D49D0136998A60287267EE710B1A46D1A897F3EFDC6F5D7FDB677C4B815C6AF
            BCCE3AEBADB2EAF875D625AC816D13EDE094671A7130A6B423E1EFA3C33AD6E4
            A91F63FA7D9F5F73D5AD42B50BE22F4BC397B3CE3B6AC2B747D6FD663164478F
            9A08A3BF0E8952F813198ABDFB8F2E247C29DACAD84BE2CB5AEB962EB8F0040A
            51C304A90A3AFE7523D320E2A79A6AE9F9A73EBBFC925B92A8B7C86D3ACD35B6
            7489E2BA6D657BECBDED4F0E9C0889186446288E28D1933EF1F8A26997FC8676
            16051A21FB1671D88819C8A38E39689595469E3CF974552C9F65769A45A663C6
            695488D836E23DF7F9C13EFB6D4691472B245A518058D3AF6BE57F4CFFE0AA69
            77A84585D901ECEC284A4DD3D0AD84679FBFFFBA1B2E9F2AA890B38621711615
            C882FC2EAA4829CF2565EDEABFE0191BAE017174432FED0EC53E5064C7442CAD
            7657F6BFE0560EF5BF40B7805517A290186841BB466A2CD06318C43A61894E01
            6C5B79D7F77DBA01B6E974D41CA220D6B8E3A6DD5FA70EA93515CAF07EFF65C0
            177EF57AA38AFEBA9283984B2A1B0ED78EB8E3D5058C2FC3E8C9E269C6AFC81C
            73DC25E3AB816A3F16B1637E83FC90EC20F483265DB5280EE475804B1AC59C41
            EC798E9CF5641DFC88E2705D66C631CE26E0500BA98BDCA2A3185327F841CF2E
            11150F82B0A7AB9B768C8A6E72FD94C9D7CEFA6290D66591EBB4994BAE97E68D
            727771F955BFEC1949345B84AD78D140FDE28BAEDB7A9BEF4C9AB4556F9FD568
            24117A0EE0EFE1A39B3FF1FDA641ABCC75148CC02448656566D92DD3D6F05BC5
            B557DF443CE18CD30FA7354461456D50BCF6F2824B2EBC4E334A596264293AE2
            752B48F3FA7693B63AFAD81D54EC225ABB4ABDD5E4529849C43A4AE2306AD29A
            EE1951B2358D48363DBFDF12BFBB79FA630FBF8AF8A8B058212DC6F06B86B935
            DD4854A379DF03673703227482EE2E0528511A526CCBE4C3C4C455AE57CAE2C4
            636F7EFFDD19796E2799CA1DA59961A41B6FBAC60E3B6FBDE1C4F1962DEAADC0
            B2956613F742E1B646DB30E9633ABAF5C83D33AEF9D5AD856265304D598C2F1A
            14D6095F82217CA9D3C928F90BF291C88EE53AC5592CB16E28D6EE3FBA28F4BD
            FFC6177472AA55C697932C4B04ACF2991601F085755B1DA3EBC567665C32F577
            793A3A89A0E81D4604F8ADEE1EE279F1E147EFBDF5F757500D68532870CB7592
            50FDE8BDE28C532F13851DF8B15BAEB45A2DA630B44E92134E3AA2E2A9E79D7B
            A128462B8A63988218BE5B2A1314186A74F8D17B7C679B55CB5D84D7E89E3574
            4C3FD23E7DE9F999E79E7E93658CCA3197A5F034122A36B6E79F78CA6E13B758
            2D43622B63FE021FEBA13F005F383E2A96C8BF2047CB514D9AC5AE53C2C83B63
            07A6D588260DE55FDAC23A454ADF917515C21AF4362BB949F8A209A985108709
            2D0ACBB065D5859E87F32FBA9CDA933D251283B2B458B2FFA5335DBD6C595ED1
            C9BFD07B90F9974E4F60E72795BFBEBE2081141F7FF8A28D2F43964D4B8FB8E4
            EFCAF8AABFDAEF5A2E9D00CB9C7F49337E3F5A18FA32FFD28942E93D12D6BAAE
            2DF32F2CF6027CC15C39E75F203F0E0D6790BE386AD0BB27B6C24A444A77B917
            6ECE1906A917CC13179C7BDD607FDCBFA86E1AAE63235C8AA2D616DFD9F0909F
            EF3C6E05F4BFD1F5FDE8C32F7EFBBBDB37DE64F31F6CBFEDE8D1A27FA08E856F
            38614CDC8ADB310BC2973A852C2534416744A454D6F0745DF4D712218F5ACA6F
            6EBEA53A3070D451BFE81BED953CD1A889575E9EFBEBEB6EA7B8A63A1017B996
            1679A5CB0993859B6FB5DE1147FFB86794A83703C3D2684BB353179DBF889969
            3D95CBA5224BBA1C2FF29351A3DCBFFEF98D1BAFFB5B4A87ABD92B0F2E8C9553
            4C6B688588FC70D189271DB8DB1E6BC431336C35433E41C65B7001B25C434C7F
            E8E35F5DF53B252FE7B99B669A6557A0C060E651BAC87283527771F53517778F
            14618C522EAD6F95DB7F61BC0B634CFB91FB675C7BD5ADA9C2C15161B0BC61F2
            657C3962A34D4735C3061C5A04FBB7158BF105EDFD8A660973971F5D18FAA5FF
            135F42A43C73DA9E86812E6D769B21FEF2C9C5537E4BF892268665DB51167908
            53C3A6BFE0A863F7DD67BFB5FB6B83591ED29944CBA3BBDCFDF787E75E7DC59F
            92C48842D614332C5A72744A11BE9C38F948C29169975D5DE4A3727C9C90DE45
            9A09D7759AF579C79FF4D37DF75F6BDEC27EE241B473BABB5D5533D2D87CE5C5
            4F2F99726B1CDA70CAD5CD0C9E7A2A5880DE987CFA1EDFDF61AD5688CC490C7F
            DD9CF185C21CCEBF60368A5B5484D2E62F43F91759DF20C6E3BA25D66C839444
            9220534621016C5799BFC731B251B6ED6668FBD2532870A439FA48EDCE7EA7F3
            588108BC2DB3A2F43A125F6493872C75074184347FA17C15BE2C63E6A5DDBD42
            E84CC79A5B76F1BA9A90C8D0F949E5EE3716A52A275C8A7C4895ACE34DF37F60
            D8FF0F7FE968F43291D36597910C8160961C869DFA347A0430778FC610892F1A
            4C0D14B46950709D0695324C17890A6AAA9DC685EB4082EDFDFF04975D72DDDC
            D9755DA3A558A2BB188635C755BEBDF9FA471FFBE3AE0ACB2489E2A9A79EBAF3
            CEBB0F3AE4D0CDB79C40D7A75AF3E9ECA427478FB8B083846050477C14D44D4B
            F35C53839A0378A08EA3835E14677316A3EEF3D07DCFBCF1C61BA79C7A3CBAF8
            02CC227FFC4174F699D3EA83856B8F082335466B166DCFE6CA6BF49E71D651C4
            9EC2941D54E1310BF79256CBA7CD55A6B0BEC8BA5D2FF4C34A973DF3F3F4A8C3
            CFCAE2721CDBAA62138870995C4ED01209CA1D273DE7FCE3D65ADB121C7949ED
            3474B9D075CEC4ECCFB38B2FB86E605192C476E8136FA4FD598AA28042305D6F
            09B3BEEEFACB9D37F5E7F4717504592D88BA803508E26B1ABC31095F3EB9F69A
            3BD29CB6165C24F9E0598C2F96E39F79CE911B7F7B542368C0729B5DA52025A9
            6ABA06C14A947209AE15E04BE4BB79BB87F32BF0C5A56D097AC5F882295B0734
            CA7CF58599E79D757D918D2E0A8A77D07E1607BE5023C715071FB6CB0E3BADED
            960532E661CB7509979D575F9C77DE59D708015D20282BA83A9A474C62ECCD63
            8F3F744C5F85F80B3D5B44318A16D1BB88D05022CAAEBAFF413B6E3769CD5257
            4E849A4EFD240D7ABAFBFCA6FAC2BF3EBC74EA6D455A46A186AE7B0AA24D1168
            92F79F7FF1CF276E312E4838330BCF1328364418B0CE52C818A2E53CE741EAA1
            B0A05D3F92CC82FE206D9564175CA7FFA5D3CBCEAD37A84F73A5997D75F07691
            5FC34D865CBA42D497582285B42926E200647456A1AFCAB00995343EBDD07143
            1B2D4D87F5BF681DCD76B18CF52329D72DEBD3F41EBC7249F69748E5A94E955A
            B9F73FFD99900D2FF970FEA27E8D7CB2E42F0E87F9CBCA5F34696135842F5213
            132733BFBF2808654EA73D5D9EA550DE86DB8EC1730FEC798889FAD4C056471C
            A8AB56919B5D9E1A05E2F97FCEBCE1863B6A8331219FEFC71069D20BCB0EBFBD
            C59A279EBC17DD6B5BD788E2BEF4FC270F3C78F70107EDBCE63A2BB752F86664
            A96A9A162DD356D0326C0BC1730A49447A93A6A1781EACDA4CF80516958A59AD
            0E94BD2E389F9AB0CF8D7D71F75D4FBDF8AF170F3FF2A0091B8F8D59877F7091
            987AFE6FDF7AE373D31C1947B9EDE885E2E7A2B9EA9AA3CF39EFD8520537352D
            22CE5A087AD538C9CBA51ED3301488BFD9CD56D855B6AFBF66FA7D773FAD8811
            8A70E558295DBD769727568EBFC28A3D471CB9E7F89546F4F6B1F31100580C2E
            14B33EAFDDF4EB3B3EFD600E8557AA421196A11B4ECCD2334A968EEA73075B33
            A65E7CF2C4CD7B9B3EF0A556EF67171BC8509A3C01474BF4D1073EBAF6EADB33
            2103B4A5E0CB39E71CB5E1B7FB9A6153E20BBB6EE77C56C02286F18550D4DC75
            D2D4C0770B9C931DC58F2FE1CB948B24BE641C1FC5986FD572136D63F69CCFE3
            C37F7EA6AE8DCD32A741A19C65130222FD5152BEB5E172679FB7B7660A3FACD9
            20B9AA63D9D75FF5D49D773CE679A3FC566A992568DFD08624702E068E39EEA0
            891BAD7CF86167047E7701E3CF08D94D0563E51476EEB8F356871EBE057A6544
            4CA113719130567ACADEA5173D78FF3D2F195A4F01271064190C7497A886155C
            7AC5717DE30CD5CCD03ECD8690742F095F5294908454E795AA851D7C0180A6ED
            FA09DD0BC83F0E9990D0D757E10B6101314A22C244D5E9E3583AE1369C3C8825
            C441484B90286E92B332B910B4629125224C6D6B7D0B4225E80773A7CCB0FE97
            C5D3CBCBB47F31BDC8AF5E6DD4E9D129D1DED0A42F91DCD752955379E0EDC194
            61076023BD1985F424F95F29E58E7A6EB55AFD66F95DA97AD99162A070547236
            B97FE89BD28B53D764535D22F145430F1D5E97FBEB84AED2E7804E4F77A5077C
            5540AFE49187DEB8FBAEC7FAFBE9B0B288C7DA8EC93D3DE18E3B6D7EF061DF8F
            B366A5AB1435C49D7F7EF49597FEF3F3C37EBAE1C6CBB5A27E0A124DCBF59B14
            704108845645524421AD75CC38A29BC03275D7B1D44C411F1FCE88D0F52C62AC
            3A14C8EBDDDD3D5904F9ABE79F7DE7E147EEFBC94F7759EF5B6B13E8E4A9983F
            37FFCD4D77FEFBE5CF94C20D681DA8B9EB9A715A1BBF4ADFE147EEB7EEFA234D
            220E590C15238A4E6205B38D42585A615B5C12CB8DFA8038FD94AB3FF9B8AE8A
            32CF94A7B6A1F3C43DC6C528726CB416F4F66ACBAD3872ECB851A66D803047F9
            BCB9FD73BE58D8AC17965E26CCA5F50C396F7862C528F61331339375BE35EECC
            73F7B35D643D1ACD41C7B1A2083702630A264AA996EA3CFAC087BFBAFAB6A2F0
            968A2F8EED9F75EE511336237C017F61617D9E205154D6B2CC0C18F4FE1FF822
            D4FABAEB95A75C743CF02543012ACD12C61778CE117F497D71E081E756078C24
            41B39E545ED3F13CF18851E679171CB3C65AAA1F08C91CDF7B67FEB967DE9084
            B47EEC562BA4D018C29DE83A22BAB2F0C4C9876DF7BD954F3CFEDAF7DF6D294A
            394E1AB66752B84337B255ABADBAFA98A9171DB6E24A98028DD3C69831E5C141
            F1C58CF4B493A735EB96289C246B8B42A51971C0D6DAEB8D3D7FEA2FDC0A45E4
            125F582213EE7A0A0F0AA0E4CF72EE4B5AAFA151586D37FBD3F691CB5EB6F34A
            7CE9B4DB77F06578278B9C0F907F95FB05150FC3189A36A2B51B4A7D86CE7C53
            1CB5E78F96D067E8A8292F93CE947C33F458AFD7E9454BA5D252BDE79587DEAD
            E5B00792F3AC6D7CF93ACF2E9FEB1BE30B52BBFCFE0868E90F44F0DA9F75A8A9
            57E28B29DDDD0A6222286AE83CEA2D876B64FE45836622480C6D66DAE177DFF5
            FC2D7FF82BB168C3E8D5543781BC6EAC99AD430EDB6DFF0337AAD6D3EEB2DE00
            B83CF8E61B6F5F38F5740BCEA874A9E26612C11F3A51812FBA43481CC681D008
            86E1B9DE6A06A66EB97649CD287842DB4DA1A62CEC8A11788A921A8D46775789
            DEAA6B2A4F3FFDDA6F6FBEF5C8238FDE78E3D55019D4817A175F78F78B2FBC17
            85AAA16358AA5EAFBAE5A277A47EEA99BF5875CD8AE1E2F8C550522A54CD96A2
            76C4B17418B65AB4979F7B6AF68DBFBE777051C2117BAAA385410B83D8346DBA
            74DDDD15FA753AF9501AB035A9CECBB6D416D196B019B94E056D2FBA08E27AA1
            26F4A9D52CD28CF0FCA99337DA64F440B5A5E8140BF8ACD76A212F6840C618DD
            C98AF5C8FDEF5F7BD5ED4551FA5FF8B2795F33680898E42E892F26A24984B3BB
            4EBAD06F395F852FEB7DAB32E5A2E324BEA07E446C4265F5049D7E1455D5DFDC
            F8E43D7F7B368A4DCB4653629E26AE6D371B7E578FADEBC169671CBFD6EA0EC5
            0A1F7F3238EDD26B02BF9425662B086971D2C721D054758B0250559B77F2A987
            4DFAE11A8F3DF2D1AD7FFCD782F90171533A8F51424EB39E5277180FAEB54EDF
            E4C93F1F3F9EE21F41ABD26F89EBAF7DE4857F7E10F870C1C391CFAB2E8C071C
            B771C0413BEDBED79696235A41C415ACC5F892F22CB54CBD0D57A2C37A164587
            BF507C24F98B048B0E7F59025F64A6F66BE38BE0F94985964727F2EA0CFA31BE
            E8C3FB5FBE41F5080EDD5F075FA6BF3B20078E18C7A4F7CDD795D195F5699BBF
            96F9FD710F98E04051B62798BA3E7C7E5A6216DE74D1C1175AEE68BA8309196D
            1D1D6C8C767B14E625970E1F71DB9F9E7AE4A1276843C689C21AC104464977AF
            7EE4B1FB6CFDDDE5EBCD6C649FF6D9278DBBEEBA9BEEC7C1871C3876B44B7739
            499354C9289C1DA8564BB69767F4EA856ED9888D4444714F9213BE20095D322B
            44360DE895A0F8451C87EF28A0D2B58D346968D80C7AC976DE78E5B35BFE78C7
            77B6DE6AA79DB7A66B6E9962D142F1D7BF3E77EFDD8F8BDC2502A1E3104E0AB5
            59E91607FE7CD7ADB75DD7F404DC78E25481ABAD51E4219C5E8162C400DC3C11
            B7FCEEE57BEFFE8728E0FB1433DD830B2B181FEA3504B2D874455CB4FD57A56C
            2DE618E9EE34EB8D72C50B63BF10A1E5D2AFD435B5B6D73E3BFC64FFED136809
            13284429A459B420489017B43092CE3CD178F8BE77111F1525F8B408A3BDBA94
            1426BB4A405127E1CB469B8DC63497CA63086CBE02554B961334748D3D3F74C2
            97B0E9753CE11962B8531CA333E87FB9E0C2232C0F54AEE04A39EAFADC5F691A
            749488850BC4D1475CD46C6A61885F84032CF4B74DCC29593074AB54CA84F80B
            16CEB62C370E2872B4E5142E3B2AD245A195D252F5B9274DFED976DB7FCB31C4
            A9273FF8F28BEFD267C8907BA1FDA6D3C5373488018F1D575E63F5E5971B3772
            61FFA2F7DEF962CE6CE27C2515157A85DD47623ACB74D35F7E2587623A8A4983
            306C771B6038A060DF0856BE60B95B360A931A964A47191BE3979CDF4D92C8F3
            CA501AE3FCAEECAF1B9EDFEDF4D7C9FA11FD593A881376B4B5EE195FE4B47487
            AD349B4D5A9C8E65D15B806D1922BD10B2193079808BC9B0FE17B18CDA4D9DED
            5FC8F946892F92192D3130A93CF9DE427AC10EC40CFBFA5A2D37C3F8CBD717F7
            16C3FD0388BF4816071AC2D110E7BA03E22F5234135D655948F1110222680660
            6BA333426791F4D8762D80CBD967FFF53F6F7E8AF67ACC6DA43C0B9B3895F0C2
            4B4E5D69952E5AB84908849A3CF9EAD5D75AE1D0C3F7A0A8A456AB59A6ED8714
            20EA898E83428B3396E8D05276730279CAD1DFD768351DDB439E3FCEAC02AA57
            A95664D037006613E21874E775EE7A523D9D276406FBEB679D7BE51A6BAE77DC
            D1FBB0150D9A41FF7AE72BB7DE727714DAB57ADED3352688682F253D23AC3DF6
            DE66BFFDD7F7230A526ADDA52EBADF58544A1646F5AE5299B8B3AD1B4153DC75
            E70B7FBEFD21C71A11FA4849A21D46651B4DAECAA03A800EF70CDE733CEC898E
            090DD382F4236800456A23F54AA61FCEDC69A70D0F3D624FCBC6B44780593B1D
            3EB64C0C545571717CAA068C25C4A30FBE77E5957F146A17B7F09A43AD53F02D
            A28380B6D9F9179EB8D126A3E832161423C04510EB8EC826CFD110F0622C9382
            F6DD76B8B831083631D4CDD53163232C6AAEBB5ED779530E469A163A3C7E92D3
            7AA00F8E4E76C380196E5745FCEEE67FDEF2FB7B756D4C9AF09C3312215A5B0A
            1F962C44FD8883E27C8E23DAFF6E9A14E8A056F1612852B61CA217B37F79DA21
            3FD87E5DFAE1CF3ECECE3CEDE2FE85114CE8E8E4500CBF15D233D03549E3A666
            B03D8E7054E166C44112547D203894A7BA9909B5E595B3CBAE386395D58C4613
            420D111A5F5038EBE08B342AE1E96796F21BC21799DB248C609136200F66D086
            F5EF4651408823BF8F7E1A702B8AA13C593FA23740D8D4C117B99D649241E28B
            8CB324BEB8B6D3C90A877E004AC9F3DCF47D007D9AC9EF70A4B64C1823354014
            C95FE4FCB4E42F9D7DDDC697E7DE9F9FAA66C696F6F237DBEF59F95AF9970E7F
            61EFF365F892262782F98BA46D3A7BE7CA398D0EBE4885D13C8B2B0EC6737405
            44C950B9F34ACF20715C9416CD13575D7EF7DB6FCE32CC6E3F24525C356DF810
            AF30BEE71747EFB9CEB7462A4611FAD9C04271C1942BB6D966AB9D76DF42311A
            AA99501050AB06B6D31D4671A2C21F48CFB0DE6949A248AA818EAA3CEB144438
            A0541DC79BC7E5C99888301D9A8C2F08D4C099539EC6D447769971AD66E8CEAC
            B9C96F7F7BC78ACB2FB7EFDE3F2A57F0C99A2DF1D8632FDFFEA7FB93CCF39BAA
            A2785CF10D4DBBB1FB5E5BEFB9D756A346A9D5014E40A0C19E184D5081366046
            714FA5A4CD9F2B1EBAFFC5871F7C66FE5CDF767A209292B7BD2C0AF435D00690
            87A54DFB36C39D4C85125038532E95681DA06F53CD6D37DB79972DF7DA67AB31
            63D405FD75C33269BDFA61A26A1606D943A2246AB90449208BD8622E1E7BF8DD
            ABAEFC7D967767C281979B50A5CB20814BA1B56C273AEBBC1337DE646C2B841E
            B802F14A187A14DCD8E398253E2032DBD0266D3B45C97B69950F4DEAA3AF118A
            C0A843B6264C187DF1A50798146844CD424B78F55B09B145C572CB0A6CD27231
            7F6E74F1D4EBE77E01A68F893084827A42B8088732309D380F2CA3A835ABEBAE
            BD76ADD16C56433FCC7ACA23AB834D3A0255CD4F8A59279F76F0F77FB816DD0B
            5B17AFBF31FFE6EBFE327BB6DFBFA8A5EB65D7F5281E86588C5AD045A097C923
            E292187047552E8BE9511504C7032BAD3EEA808376DDFABBABF40F36468D2AB7
            828C0091F10589C5B4DDB0CB2E255CAD677C111D7D299964419720B498E8E2D8
            52ED89FE4B23781594DD725AA426EA530972DD29F1174C2ACA808822E28E3E03
            9AF486E223A9F622B7A72C9BE0041A4A94C8F92329E6E04010EE4BCE3FCBAA3F
            89F639C69125E2A32FBB7D08E55F1F2ECC3038A075C22275089FBEEAABF32CFF
            9FFDBB1D7C91B22FF2FDC90F4CD1E3707C2990DF457BA00639780CB6E846C1F8
            A2CF9BD538FD9469F3E7D0ADAAA419F13EBA7D21C5B3BDDDEA65979DD13B0A47
            AD6189B9F3062E9C72CD1E7BEDBBFEFA6B8D1B2F06EB4DD3525A7E9EC482E834
            ADB6302584C91D34072B29BC5AE5C0980A599E2C0D8984DB169CD415B8982514
            DC729349C6D74D9312D21A922345AEB31E4DA4E67A9818512CAE9C760D7DD853
            4F3A81CE61A7245ABEF8F083FEB3CF9D16B4E8F42E67896B185A9AF5DB257FD3
            CD963BEEB88347F496FC105627B491C3B049C73F850771149986EBB91E452133
            67346FF9FD3D2F3CFFAEA276C591A908DB363C569988F222804F963031242BE7
            B9849FC19DBD396264398E1AABAD31F6C8A37F3A7EC51EDB14909ACA50530830
            9258683A9A552DD8D22526388752323DBA43D31F7AE7EAABFE90E723F3C26B3B
            4CE3144A5525CA55DA96FE19E79EB0F5D6635B9148A22C2D12CC96D2BEE4A780
            5EBD0E4D2CBA70DB6D736A9E54745C31BD2DE22BEB17A042CD155734AEBCFA94
            1E34E63705D1852C2792A242E91C1510CB5459CA505407C489C75C307F7E5064
            9EA2B814316346070317C4F2899EC47484F78CE8BAF8A223AFBCEA6F6FBCFAB6
            57EAADF63747F52D17F8799E351473FE89BFDCEF47BBAC1B44814310A22A7367
            A6BFFFFD5DCF3EF57A215C51D8514034994710E2868072271DCB06F22A99AF8A
            48C76E4D369EB8CE6147EDBDC24AE89AF34ACAFC85FDE851C8F57C0850A42C66
            CA75195939FA920D000B54F0C42C7C5D5344F246DBCD9B9DC3C3382CB925FAD4
            F4FD244BD82536714A5E27BF9B46F08A81622CAB3788211102A26192BF70FE38
            9202E04BCC1F49762337EC97F065D985603AFCA5832F4B898F5EFE642019862F
            6AC795E62BFC21D9744048877602CFC1C101CBB2251C2E2BBE4880F3FD16FBE6
            C46027841218E82D023FF4A0B8A7B61D18B2B8BBE420412390FB245E691885C9
            F151AB56DC74C39F5F7AE1B3222DD59BD08E34DD7CC284D5CE3C631F93B9BC61
            8A7FFEEB8D9B6EBA69CFBDF69B34692BAF2266CDA9778FC0855EB4B051EE1A89
            F9F74249D915D941C023228DF005194A431165CBA09390F0C5F41C292B8BF82C
            6137468C92AB72600FF254AA548D3455B80BFA14927477F5109AD0BF5F76F135
            49200E3DF8D055D77089CE0F0C880F3E987BFD0DB7BDFBCE6C43ED23A6A36ACD
            4A253DEC881DB7D86ABD926752B89FD0F341050A0DB1AE8DBEEF28220E6CDA46
            39080ADB545FFDF782C7A6BF386756AD7F41D06CD0E281641AC52C90B7141A64
            F268812B9969C3E7A8A7D72B95AD1F6CB7CDB6DFDF501171CF08B33A18E20CB4
            0DC21E8233D386844E048448343DF31C685B98420F7CF18FE9FFFED32DF744B1
            25727BC89C44657312F807D0531D72E83E1B6FB21ABBDFC63CADC779BE9C7B88
            856143644BF8CDE2C89F9F37D08F3D83127FAEB56B9468058E851A6EB2F12A47
            1D7B404FAF1DA70DBAE1A8C4E4745A180A9CCC72C7E2C2B3ADD506451C88DFFF
            FEDED75FF96CB01A06CD0848CA8E819E63947BDCB5D658E9981376EBED12279E
            FCDB05731635FDC4541DBF959A7A97AAA56E576BFF9F4DFAE1A40D29B0A6F39C
            13441AE1FEABAFF4DFF3B747DF7FEFB338D6A340B4C2D0F36C68D6669C311589
            EDA87D234BBD23CA3FFAD10FB7D976053A7E90F512CD342706E741823786301B
            17970AAED0777CEF954E65BAE34332842FB4DAD1F5ABF1A40CEC08D8BB3D8CA3
            92EB21CAC59838E697086D092AB83E8DF9233AF23AF347105A56E890267C59AC
            5627D90A4FFC13E2A4723208830EE873C733388E0B21F38C3DA4F3625937AF68
            57788003F57A8D9EA154F230EB36840C6DFF677A6FFFFEB49FF84B869E62DEEE
            ED6BF175B5C4ABD501A62FDF64BE51066B68BD372CCCCB1896ECD0A567A61355
            3A36C9F900F4EF6242DA50B97E311C5FCA8EB6609EF8F5F5F73DF98F97285830
            2D75EBEF4E3CECB05DC68EC3286D1289279F78E1B9E79FFAC94FF65963AD5569
            2551B44D1B832E72B315185A97467B384F034237C89EA80E947AF248273252C0
            4B5908B7D06807865A26F535D8A614BAD5612BA6DB8DB16734CC66AC879180CB
            40018EDE728322D224B0B254F4F42A514BDC75C763AFFDFB8D9F1D72C01A6B8F
            D3E1222266CE8CAFBEE20F1FBC3B3F4D14D3480E3C78B75D77DF48D1A33445E4
            9C669806873B3D1D50796612EFC7D655D23876BC92DF8A1DDBA4579D353368D4
            E25ADD5F40A14EBD56AB0D4661083D29D5F05CD771D55163BCBE51955163478C
            1E3D020BBAC00443BDD9B24CCF87FF5986216F743CD19B2E6C1B02DDC43F68AF
            D299AC172824B5EA62C6E78B286EE065C512DF62C84D18826DE19A6BAD603BC2
            0F223164204367B863BAB49433881FD0158BE899DF7D730EC58329ED4501A1C1
            A2AD101E5104A72810A65973F55500919ADCA28806102866C22BD1E76DE17854
            34C7B6D218CBF4938F6A5FCC9C3373C6AC7AA3450BD72BBB2B8E1FB7FCF871AB
            AF06232ACB1033662E1CECAFC709C5D1AEAA58A0A730726BADB4F2E89E1E9822
            A12C934153954E340241BACCF3E605F3E6F7CF9FB768D6AC798D20442D0FFADE
            E5D1A3BAC68C1D316EB9BEDE5EB30B1288B800B0D9B5D08057AF35555D0E97C3
            C42E67B0CBD934567A5D665FC617DE7F19E223A2E3F09BCE8777B250901E10BE
            382EFD1631C104C3E45944FCC52D4925974E7E57EE17C8EB29EDDEDCE1F822C3
            02342E73E6586694892973352075DD1267168BA12CF237E32FD8BFF57A95EE55
            A9E40EEFBF5FACBFFBDA6783A9AA77F2BBB250DD9E50FA9FEA0F5FEEDFB5D5B6
            7FCA32CF2FF861CBE4B92CD88AD1C2233EA864B11FDB259B227390620CDE8515
            CF668A6CC13A5CE43AF00574B1518D7ABABC6643FCF2E42B3F9B31F327FBEDB3
            D7DE9B7577C3EAACEC95E6CCF4279F74DA29A79DBCE184F1CD20755C3D085B14
            95C649E8B7924AA9B7E543494E471E13922A4E8ACE97C0827EAC53082723C69C
            D2CE8B307D8A3E4BDD326B418BE2901C464298ACE423384B15B6B8458651A3C3
            4CB75153F4B4EE34A26820B57470A9FBEF7EFEEEFBEE3EF5B493D69FB05C9488
            D087C0F899A75DF3F967B30E3C60AF9F1D3CB15ACBCB5D5CAC0F43C32C11AFB0
            0C7C6A39FD880C03F2B5B8AF06FA067D76E6351ACD0CF3CE0A46A2C5D0DD137C
            75411178C5D2E515488BE0D445363D27048FB9550C3923781465991F62268336
            0C6DE44AC9B668B1C602AD89104312B6CBA2FFC8C80E115C3E8E2872302D8260
            DA8F2DCEC51A5C4585A7A2A1C39DD6402627646A6CC71146B717F363EE3696D5
            6E1DCDC16D0E9F48CB3D8CCE43BDA5566BD8B64B67581AA552754945B312D3C6
            8C3FB5688F5FA12B29920E2D9CE6842294D16AD23B51E5D19A635BAAAD4640CB
            DC501C5D47CA9F7EB1D9821763A9E2D0CB8661E695B48CFBFA8534A185521478
            16FB7C220AE05EC4017EE7ECC406F11BDC7D6991C6A8D80E8A78E2BF183A5017
            F31764438CB6266647799A9E99E09EFE890EA7B6CB187FC54844712645815C56
            14E28AD17E5179329AFE1CF891061D756850C99DE8375B9A21E71B33393929E7
            1B33462CD7F6A0AB9E16AAAEF05EEE74DC2EDBFEA5CF596B54E5FC91A1994B99
            3F7AE38B6A26B4254AD4FF631EA1F3BB5FEEDF75643F2E21C2D7FC0F473EFF4E
            8BF04533310DCC597428EA2A983F723C0A85D4768E3DA30310D9108AB731F405
            7C118C2F745295F2148B6CDEDCE8EDB7DF9D3871C2883EB8235A9838D13EFDA8
            7AD9A5BF3A7FEA995DDD966111462028A5F54AB140018361AE2EABB1EB99441F
            898D9885922899CFF8528A732F4C0DD806A13C01F70A7A134A12462DB3AFB73F
            4A70F8E5668E91FA9CB59B7014D8BA5EAD55ED2E8398811EDB04996E596FD403
            BD70CA8EB8EF81979E78F2F1CBAF3A5BF208BF059479F4D17FEDB4F396BA09B5
            CD4673907636AD24C776E559649AC802F13A448F866DD3664E93382D95ED3425
            1A1C10C789529FB6038614B08D28A4D4750C60E18B2D9390B8AAB7E08747917E
            10369173F131F6E28721DCA983507618E8685844833B6D481DD1A8661A8E85A2
            096DB644B4834869412DF12547D3A696A76912042DB9F365D60C22E1BA19FA68
            CB267E0CE53081DDBBB8D702EB256D5B6E115549E86E9AAC80862D8DBAB24A34
            139905E86DA9261DD4B47F6829482DC1204A74B67493F8C24640702922B0A3B5
            C4FE65E820350C077ACD04B2854F5B9870CB46F53A67E906E486D238A19DAB1B
            74CCE428D9A233C0A0FDAC191A471FB8F251D84C529FC21182B9141DDE4EAB45
            681C5BB6D66A11F9E2415C7413701E57DA23F06326334C8B097BDBE4BD400098
            48AC1CAEBF2BFB4B87E30B9341A0AD81F946F846CBFA114FA85AECFD2624DF57
            791A402AEFD0276FD51B9AA9B9D6E2A92539A324F59B3CDBE31940D65C6D2B52
            8965DABFFCF3F86FB03E488F6ED9A55DBC94F9A3B7BEA8D12A5E2A7FF9EAB86B
            29F9DD21EEF7F51D9ADA74510E6249813849D4E4FC115D62696D873B90513800
            74A145CB0EEA74E9095F90592D304E61699A47DB3508505C6C05D572C9824B62
            A20F2E52CE3F6FEA45979ED337DA6AF92DC3D4C220B56CD7F703D3B469F5C354
            CB22EAE83B16120356067A1BA0EC5B38F49341F8AFFB1E36B8A2C4E780DA8C82
            CAA89E4D7FF87D5F3728A6128529FBBA135144C204434E52BAD3899EC461E064
            8E671871E6D3F5A1B88976D39CB9D155F4F5ABD3289840E8C7965B39FFCFA223
            B15AA75BEC392E5D633AC6BABA6C48B9A1C4822DA73195638F57FC2EF44C00C7
            403FE2BF11BFAECE1922E20E1836A3F83F633556B602865A1D3030A59D43F42D
            89E91A1A842F5D5D5D8D468B15080997E328C455C21BA6D59F60CA4693BDF346
            DB858B9BC9174FD84B3C224090C2ECB418D84B2CE586940A055BAA6EC89D1305
            98568751739BB9A4BC1855C62C3C17311D8A7D28FA706CACBE98E2469808E1D0
            26B289848361E9284BC71986B02C38D46559DB6E14A086FA1E6D4FFA66B9E2D5
            AA14A296A1D999E6043A71D6A453A4D568B2871C05362A45876CAA0597F13C6B
            111650CC48572E8B702F92AC7D77B8C1931653334D9985691E94C0B9332B67C3
            D324A6D735D14CC7537F321ACADB73834395D66231BE700B0DA248D877B17E9D
            5426916A8D595A8491EFB965DAFD30C3A3082CC9E9BCD48D21396A062086549D
            71013B19FC45BA05F0F424FD6BA3D1C0F51A9A9FEE444CD262AD93DFED248087
            6EE8B2ED5FFA5D8AC9A57F80ACFF2E99DF7D6776FDCBC5A3A1E9D6E22B2DAF87
            D33C599F1E967F59667CE141092D61B759A5AD69A784FEE2FE17289DC481EB41
            BB42C5FC11AE900136483149CA7314265171FC644EAB1CE5589C9FC42484F9C5
            17C105175C70E9B4B37B46D85C5E21FC646B0EC1B9346841A474026746161B89
            ABAA5D616184314A3790D64F5F7AE2EFDFFEFEF76092A1A19598C598D2DA7FDE
            B12A157BB55593AC30ECAED08F2874CE34DD57EC8476638E5E8396868D61251A
            DA010D0CF4F198943E777674E9B42BAEB9EE0C56BD1532594E3091660DCCD406
            F41DCDB3D1078C261F96B07DF7BD39024D6A6E10E6B65D8AA3C4B2CC94337C38
            BE585217B250E8F5A3E51877574C1EE44B46F539888FD88D864303F4A4EB261D
            89393BD841B19CCF43F6CF6477773AC9A2A005DB24F00155EA04229F5D28EDF6
            85FF5A1374F558F12821CCC228966DD36EE1BD01FAA00A63C617834944F4041E
            8A82180ABCCF13CD08565D7D246DA7395F34EB03A027443D34430F5B49B9CB6A
            366BABACD6E59608620285E75BE9A840721346F488F378AA3894A5D68EF116D7
            2F44BB648B8E0195F30E5C1FC0CFA5DC4CC5553F38F4418915662F05C5298411
            BEEB75B7EAE2938F176945AF61E8494AA486409CA850D8D3AB8FE8B383A8EABA
            306CCBA1FE9BCB0205673B40FD407F5053C3FAE56E01E9335FC8050CC3C7211F
            7BC1FA1558F0BA22F948276721A7A8E96891BD2D29ECB1D05F87DF35AC346FBB
            53D3612CF105EDC129F6AEAC16411888E78FE8C7647D7A7847AFB43DE133E14B
            F5E94ECA6659F7AF3CFBABD52AFD6EB95CC69EFB721E07F7E2BDB94D16841B62
            71584AEDF6278EC796FC4F3EFF90DEB832501D702CE2F236CF502DC37F05D775
            0B0CBDFAB421886CD0238A37A83712E810BE3852BF0E1A5F09FDD5949EDEB86D
            A84DE896C14C18CA5D2AB4997582760A932345CD209D59A0B63A63463A65EAB9
            975E7E7A77AF0589C28C6E0F72AEDC78C6951FB40F6442A718312ED17D9937D8
            9ABB80B68842045A116FBDFEDA7A1BAC579810DD1450C45629729AFDEE873082
            1E3FBE9AD27E29D36DEDEAF244A52B569C847876486777D1D4E0256AE69CDCD4
            A10A8CB48930E7CE4CA64DBBE2EAEB4F83E0739EB5772BB2A430D98C23DAAC46
            C929D13DB25D747C0C0C88A38F3CAD56CFE1F0EB74D51A8145BB41E5A62CE86D
            A852ED3CCD14CD28712DA108C2BAAA07E3C6765384F8EDCD36DC7A9B2D975FDE
            8D62F480355B75BA561420D0E29306A31430B1B9286B2D2B7C59681FA361D692
            FB56F668E207DA0C7709569BCB8651F9331CCD99FC579CD2B6A5CC9E9D5E79F9
            8DEFBF33C7B4BB4C832032D6D0E3DBE8EA4D6FB8E102DA6B77FEF98907FFF64A
            1261F0836EB1EFA3C3CDB4B2C38FFAC9C44D57161AE14BCACBD256044A107077
            CF0959E844477AB6EDD156B4AD82F0E9B8B35EBE795E2A42F69562E64048BF42
            C19DB2ECF85EA0300463724422E69BAFCDB8FA8A5B08EF0CAD02A126588384B6
            9B6DB7FD267BEFBB0305ACE8C54D85040E1E52C725E734BF607B710081F42A6B
            BB85A8C26F62CE50FA62A8431E2532FF828E13562797B3821CBB602B0671E498
            966AE8326689FC20CE40BAA55D2C63139AC4869A51C10364EF1CFAE009325857
            A9D52486ADD9A69DE6A9DC9B4994C00B53D0A5C85C5A5E509E85C6049A7654B1
            2C7BB78D03182BCA8A6ABD4A8FE5AE32D1C7CEF3745042F9705E6378F32EAB34
            B4F1851175E9FA2F2ABBB4D1A3D47FF906F3D3D24D52D68F2CDDA298901E69C7
            D0F5EEE87B4BFF46287AC521CBC108C67B34C2416B1F1A9289C26D913ACF16E4
            6CB205B3729D282FA41E66CEC82F9872F6A5579CDADD63A7B402325310018653
            7BA16A19904503783B45EA2AD9BCD75E9BFDEE472B8E1E4DD1192D2F7AC556B3
            5E72EC66D02A75571A6193A2899EAE2E5884E6B439ADA8D023CDA2E064C1E79F
            6CFADD6DF3B12B26443D7285A8451386EE582F061C85E896674C8E8D395F2497
            5F7EF9AFAE3B3DC5E1C1D2DED01022A469D187A56882A88AEB39D8B785D0552D
            0AC58FB63F26CF7AB2D4734B2350F3D209B962CBC04C7912468AE0556439F4E9
            6AF5A6E7767B9E3330B810DD58AA1F27B515C78FDC73EF1D26EDF86D554F553D
            46FC84DAB54AF111D167220EB27113B91B8CEC178D5A5D336883992AB70E7297
            0F1DA010ACEF04C8D25958FE954E5A8E1140DAE95F4CFE5250E3C3FF162C1067
            9C7ADD7BEFF6EB7A857EA5150615AF94E68374259E7EF6468A95AEBEF2EEFBEF
            7C4D537AD1AE4C84946EA81A6B5AF3AC738FFBCED62B2804CD1A7A5589351430
            692AA0799007F4FF43AECE8B4DC57845210586C5C092237C85A5DC89920FB574
            D1E5D6644B010A3CC45E69CDA4B6E3D23579FB8DFE638E3E3F8B7A0DB51B896A
            F0633F2DAA3BEFBAD931C7EFA619143445161C8558668EEB5F78756132CF6E9F
            CF390720D2EF99F6083AB258E70D23F26D552A558639B2B6CC7C5D41A2514655
            4511C53192EB3C2C80CC19CBAC212725FD5473287ED34D93E6D3D2F73DF47DA4
            09300D90B3E760D6A2A562680EBB3E4AE7598A89518065CF59CFF680C99C7F69
            6789BE9C37F93A8F20F59918A80DD06F7A15CFD4CC259E070D641F2F68717034
            C479C490AD5A3B33B51476247141FE796060916DBB72167159BFE4F3B45A0DD9
            072DF3BB38C886F431E57800B1442284F225E0F080E015F55AA26320CE518CDA
            0A4BEFCB9B8AB117C3917D29842F53A69E73E915BFEC1961211C01BE409901E6
            091A0E28A66E5A254934DF7FE9965BD65869A59E155722E6F0EA138F6FFCBDAD
            45167FF0FA9B6B4ED8905E7AF6E79F2EB7E6CA7112CFF974C64AABAF453BEEAD
            E75F5CFFBB3FA4679DF9D66BC2F556D8790FA1D9142A10796D697ACC47192CA0
            9160C8582C439F3B2B9F36EDD25F5D7F7A2EE2840F543ABDE0469CFB7431E390
            6043782513EA87A691A7A25915BBED725A9A8CC80A8A8C5019176A14460D9702
            76AC2383E5DAD8E2CFC80CCB0C7D4032058F51D22C57CC246DF8E180E3E5FB1F
            B0E3FE076DAB2814B6204B028881043081880171D71C822F60F885F41E801F79
            5BA710A710543F5329D986059D0D1DC292CB7098096ECFDE4A9A2A6B2E96299A
            0DD1A88A334EBB71C667F40691C2D74CB4DB507054E9A93E32FD527AD18BA6FE
            E5A9473FCE930AA6BD284E351543A71B3E78CEB9C74DDC7C392295860EAAA714
            5ACEE973600204F97927E66D370C91738F6C26FF4C5709119EF45DCE59519BC1
            31EF0CC8B0AA36F21472DE1B3C4335883CBEFF76F598A3A718CA7259EA426345
            A4654FCF95C19D76DDF4A86377A027372CE48F18D890B444F9069DDBC81FC531
            0E2A556232B610A30C0E3280D1D0C5915827F94B2AAB36ED8C096BA9D045A677
            4E8F0E5D3E8A9AE35CAABD40AFCB863028331EDA0E0996968AB4869C3C90C544
            743360B2141B81C76E34DA9B7CBF30D6407B4AEA4BD1771CC793CAB3432AE2DF
            A43E2D7B47AAD5017AAC544AF4068623431B2B3E5BD442CF6AA176C045E55792
            DD6FA2A332DCF1AC66CDBECE7706061711DFFE86F8C2B8EE074D8DEE6E126A8C
            F43077E07AFE92F8E294DA8C9CD5C060168462478A9A0971154D91DA319C75A7
            E0C9449CAE885933D20BA69C7FD915A7F48EB439F566D06FF06DA78391C3221C
            397A57928AC07FE3F77FD870AB2DC5E8D1C2B63EB9FF9E55F7DD4B04CD194F3C
            B9E20E934410F9EFBCE57E675351AF0DFCE7BDDE4D361361F2FE9D77ADF5939F
            62B9BDF2D2ECC1EAF27BED1F446C914721BB6246AA1420153685C49866A24FAB
            CD9929085FAEB9E15428CC2301A3F39A11A988E862C6216EBF57A62B4CC1131D
            5D16E1CB8E3B9C90A77D9633DA6F71C48E86F8C850700C15E06AB6C81C4E6F42
            7804EA579085C21C6F10366CF8B67985A080A27FDA65A76C3CB15C705B956E08
            3FF25943D346940644C1AEE0CEC64865691DF68A11DC452C78205BCDDB35579C
            DB32CD8135A3E86248068DE30284BEF0DCB0B43856FDBA38E6C8AB3EFD384913
            0B02B7F4868C722B5838625470F7FDE7E89A9876F19D8F3FF86E14C2A2036C42
            A57B5D156A78C1949336DB7275A12670EEE37A05F2D3294592C4F739E9CB852A
            4804B3CA3B4510741AA7CC6D731CF7B02FC0F03D52699C452D549961950DF53C
            29A6151AEDCCBAEB79055480D5D75E1E3CF698A96A362E8D61B9E307359B2E8F
            18DC75B7CD8E3B6137A2D1B4EBB9F358D6FE91D7C2A185FE240CB832F960211F
            91E743DEDAF0F31ACA07B553BC792E9BF139B79B4B55170AE8B9524CF855F851
            087152E807E2FAC701ED09342B620015CF8FD9A582A54B0AD944CEF842DB477A
            24C9F983560B797ADA9B520797768AD4C7CC59491CBB49417CD9F645F966F8C2
            05876A6D801E2B5D253AAEE48E1E8E18CA8C81A018E22F125C247FE139FAA527
            78979EDFFD8A7AD357A34B7B3E4026A2E0DFA8B6E703040F0D48FD3A99FAA57F
            E589AF4226A56097C55F0888D284F98B90F8C2F2A2C42E0DBA7A043C333F4FA7
            4C9972D91567F48EC4FA065F48F521629CB58D580AB342F8D26ABE75DB2D3D63
            468D193BDA10EA3F9EFCFBA63FD886AECF6B2FBEB8F9C6138DB478F3C3F7FAD6
            5B8D4E94C1CF67AFBFCA1A66143DF1F4339BECB493A96BB35F7EC1EEED5D7E97
            BD913E454CAA44C248E8F045D128F332940C714A0A892F97FFEAFA93D9B22267
            FEC2CEAD4AC0F882BC8057414A881889AE78792C7EF0831354656C143A19FC40
            8875D0E70DF2B4D5D35DEE2975A5AC6486A27BB33F8C92D0572ADD7D0BFB1798
            8E8B25A85B6190B25F5A7DD2A48D8E3B6E7BDB167416D4EA2DD8BAE9488DA38B
            0C7D3B7CEAD27B478E1282407CA072F5576534C11A15F26C425D59654D689531
            BD9073C10A33022475E95F93B459287673D038E1D8AB67CFA020C44EB21A718A
            24D2E2B43E6A6CFAD0C3E7D1133CFDC45B2F3CF76991B98220558921B8412FA7
            853FDE7DD2AAAB8FE439535668420B236664D8035EC6172C5CAC6BBA89778532
            518C7CAF8E343F4BE3B0FE3894DA38E96BB4E39A540C958AF15345A6A147520B
            83C432DDD7FF3D78F2499714F168A1B818F4CC02F400650B085F4E3A650FEC0E
            0D05359484217799F3D0194F870B4CCFCA543DBB16E2D2F10C28122C8B5F0EB0
            200C263114E30C8BECDAE1A6FC5029A68DB03489658AB6B98A500DBD937F89E1
            DF088F116C43368784B22A9CAB9C4EB2B6E537A43E6647B94AEA3374EA474BE6
            779775865AC9BF567E774E35CA86B8EE12F822962604B3C47CE4C0C080C4976F
            D0622C7F4596CD3AF38D1D753FD991D1F69F8E22B7E4CAA629D911D09916CDB3
            08D3F50697EBD0E85618F03BC6D0A052D8333F4B2F38FFC2CBAE38AB77A45628
            09E72A6101239498D30D0AD367DDA31B5FEF7FFECEDBD6DF6C6269DC68E1569E
            BDFD4F5BEFBDBB28792FDC73DFE63BEC249AE1820FDE1BB5E5C689DFFCF8E537
            D6DE6063BAB1CFDD73D756071E483154F8FA6B9FCD9DB3D65EFB27A5EE34F1E9
            CAA78599285AA482B948E3E894D63DF22F62DA65575C73DD64D4348A0CE63BE0
            B3B4817C7A2761C4F8525660656DD8A18FEE98493F3CCE505718AC09AF3C12F3
            87493D57E85C0DF7D977D2BE7B6DEE79E8516EB5B252499B392BFCD39F1E79FC
            F1976CBBC7B4BB6B35A8B6554A3D8DFAC2AEEE44D7173DF5F4B438A4F3B051AA
            B801C5035097D187FCA438B75F08AE360123E83624DC824ACBD8340597440538
            3516492EA7FB7308BB80D7D09F50D04D3824246C32F15BF46C73678BC927DC30
            F333E21D6A92F7136337B48A5003C71BB8EFA1A972F239F545B904D95D6865C4
            80AC28487A7A0CEEFA490D2E44295069E2F27C216BBDC2B2C064DB3E5F02C33E
            9A227D0B23A81E28580B78801102323271C4BAD6AAD1E6E55C469033B940017E
            CED75F699E78FC94D8AF286A059F505730D0932FDA69974D8E397E6778ECAA99
            36A429C1682A870951A2323BF9176E0828DA8D3EED69C34EFA99F91DA77EE41B
            603E2E9B9BE48FD15B8C9805CBBD2AF9BB8C49E13B0E7940C617A4E74D8EC2B0
            91D061CEF5231C5A1A8FF5355B9D8947F954744E4B8B77FA8E0C383AD230DF78
            FE48D6A7E9B152A9FC37BEE067E6D72329F9C335242E1B731AA9588A62C397F0
            6509FEB2ACF83234B529FCA045E14C869E2E13F3EF19CEC1B015DA9EADF23D26
            7618A591EB9A087018CEDBFC855D4DA02A0A7529D0644EFD1648BF183AD22BC2
            FEE293E482F32FBEF4F2337B46C0FC90B9A2C91559741F30BE60A0C6A3278E1A
            CFFCE1E6095B6E5A59730D1124AF3FFCD0847D7E4C2BFAB5871FDE68BB49222A
            FC8F3F72D75F5DC4D1ECB73F5C6EA38DE89F5EF8F3AD9B1F72105DB5C1BF3F3E
            D0F457DDE7A703055AC11418641BE800E1549B9B22404F309D67CD9E01FE72CD
            B52743B31C0517A41538FF12D20102D724419846C40BF3950485CDBAD869A793
            44368E0244C3F49A41CBB6E89AD534BD7ED861BBFE74FFCDB9220BF95F3F4854
            CDA5757FE491BF79FFBD8569EE4471EE3A65223869DA742C5F33163DF8C0AFBA
            BA05851371441B4F8B1218BC2F983FB868D10045D1CDFAA0EF37E9CCD4350A0E
            BABD52A5542A75753B23FABCEE1EB76FA45EB4ED2C62F4AD708481CA6326FAFB
            C5CC2FFA677C3EA7BF7F21DDA09E9E113DBDA515571AB5DC0AE5464D9C78FC9F
            3EFAB006430FB5819E978CEE6358EE6A4EFFC7456926E6CFAB36FA952044FF9E
            53B2305D9DC7E5923E764C4F7797012709F4F1622A9C7E66B03F9CBF70B0BF7F
            C06F84B56A03B5973CA64882961F9D9FB4C43DCF1BBFE258CB566C0B9897640D
            A5480CA8E83BA8E02882E075EEFCE8B34F67CD9A3DBFD5845754DFA8DEE5971F
            B7E61AE34C4BBCFB767AC20967E7714528E5427550712F42D36EEDBEC7A6871F
            3189FBAD00BB1AC78C6922AA0D316FDEA2B9731654ABF581858BC0924C8DDE43
            EFC89163C78D193DBAA7D285490558AC65856112CC51145E2C5AE02FEC6F4888
            C919384CC3AA74D1FBB7280CF8CF5B733EFFFC8BC1C17ED3D4575C71C5D5D758
            A9A7DBD68D02A5F4BC4D67A038C53C28438B13527B411075D4EA14A645C87311
            934755BB5D3FCA92CCA077C36CD0A3A81965D89CBB128694FDBF01BE6445AD5E
            A5477AFF68771CEE0ECB8FCAC27A38F4E3F990ECB2FC3F6DA942531D536E19DD
            F4F7D38530652FDC37788B74C50821A4423A22695D95B3154B66AA21F82267DC
            3B1F4DE9704B2125EDF87CE0417DBC319021E1CC9A114D9D72D1B42BCFEC1D69
            22EC45FE52CE952FA6A674159C24A183EF955BFFA0978CDE4AD90AE237DE7E67
            D589DFA685F1D95BAF6EBCEEBA5A66BDF3E927BDAB8D27F4AACE98B5DA98318E
            A63CF9C23FD7FADE36691A7BD5AA627BABEC7B50D370D0C250B47D6E207C9AAB
            26D7FF33641BD55933B2CB2EBBECDA1B4EE7AC40319429C47D622B4B620C99E7
            5A7068D28A3CB39B0D3169FBC97936364D5DCCF1B1C088E7E641B8E01747EC7E
            C8A1DFA6F3DC30E151C7770636A3175FFCF7071F78938E2848D4A1F6EF883C36
            355A910B9EFED7D504ACA6A1C78998335BDC71C7936FBDF9C1407F2349324C81
            A1E386252632C5501D0D49F7D47674AF648E1CE5EDB9E7A46DBF379E58033770
            A0FF220A41FD9E79F6FDBFFEF5C9199F850383BEED28B42B162DAA8E19D557F2
            944D36D964975DB7BAEAAA87DF7AFB039988D435D60E5702D76B4CFFFBC5B420
            AFBEE2FEC71F7E53554B999A7114A367915F14CD73CE3D66E2B7C721B71C2914
            8B3CFBEC7B8F4D7FE1830FE616B9D9A807B4FA6CDD8E93201701AD470A0D92B8
            A894FBA2B8B5D28ABD6E393BFEF843575CC949B3415DCB0CA5043D32535FB020
            F9FD6F1F7DE3CD4F697BFB0154990544E69A237ABB468F1CB3EBAEBB8F1B37F2
            E45F5E10FA146395E97A21E511361DBBB9F3AE13264FDE952220CBE3582CA3CF
            2E6EF9E34B2FBCF846AD1E365A61ABDE3078C1E505A1BC465B7ED4A8BEAE92B6
            C9C4B50E3AF87BC4CE546E2A4B31FC62FCF6A6A71F7CE09FB025C07A96E442DB
            F23B137F79EAF7AEBAF2F1979E7B7FDEDC41C7A68327A18B3972B439F9949FAC
            F3ADE56D532D38B8934C04C966DA12B25581BD01DAFD75436CA55EAF3B9ECB4E
            6A7202206FD49A966316188C227C2975E6032024A114CBCA5F865A7B0A824278
            3674137F31E5CC91CC28B7E78FAAADA8832943082105D096DE8F2BF3CFB28A44
            BF4F47966DBB9EE72C4B678EDA0109819EF754863C123264D5EDBF81086AC4ED
            F72D3AF551C9D03869D7861C8E69798413C5567DE6E7E1D4A953A75D7976EF08
            AB9D7ECB259EEA6CBFDDEE427668ED54EBAFDFFEC7095B6E22D65C5D24CABBBF
            FBC33A471E2392D6C7F7DCB1DA9E7B88D8106FBD2B369F20AA03AD37FFE36DB6
            0545626FFEE6C60D4E3C0EE7E4637FEF0FD331BBEE17591E06AB395B88549C4C
            3422B3885608A22AB3BF482FBDF4926B6F380B420E192BF315725206F43A8A02
            FA8E8B6622FABCB46C1C3AFFB79F34B948C72699CB46B2B089A63D437CE58863
            F6DD77BF3562A8EA62CF87016ED8A27E71C595773DF7DC8C94A797D1211A1506
            A64F9A23C76677DF7F8ECCEE3FFBCCE7975F7EFBC2FE542F3C8302B12025C2EC
            07751B2A7C491426447C6AB5564F4F4FA351332D15DA6945FD073FDCF81787EF
            D6D787EC1554AC52EBC61BEFBBFB9E27A390D6D6F2AA46077E2D49A372A9276A
            352D2B83DF835121EC6FFA35442C050B1A717B93E7351E7DEC120AB1AE98F6D0
            A30FBC5114153F8910232B9A6BAA861E9C7DCEE15B6D3B2A257AEB8B9B6F7AF0
            F1C7FFD568104F1995A410BBB4742B6CC5B643949710395255D30FB23431BABB
            CB8DC6172347DB140F9D78E2019B6D31DE758AA00159F32FBE685C7CF14DEFBD
            5B75BC31FD034D15493AA2784D48F7A791A17AB472D6DF609D975E7A49D34A84
            F3BAC1B90C5841B776D965BD238FDA9DF0B75C8670F7F4E9EFDF70C35D0B1652
            E8E4A670D4D5883DE559B668D1829EDE4A14279AEA72FB0F6DE045BD23B2238F
            D86FC79DD6F6099E5C62EBE2B2290F3EF3E47BAD28352D47B6E7EABAB5CD7737
            232879E4E1C7AB0B54CBACB08C5EE4B706575AADEB8F779C6C5A05457979C61D
            FCDC9BD7D929191FBABE1F0EC717FA4EB55EC7B8DC504F2D7D9310C7668B1EFA
            6B273E92F917B15895E5EBEEDF4EEB20453010C0EEEEFEEF9D8B0D590F92A5E1
            4B472175497D066C95766C84C7FEFE45141E799E3B7C2EFB6B3C7E29CECA87BE
            24DC2C152EB5E1ADC7C3F0457E2AD95CCA90D7FE3E22D8429FF1693865CA14C2
            9711236D7E2DE9AB0D7C197A23A8879971249AB50FEEF8D39A1BAE23C68F13BA
            3B38FDF19E9D77138698FFD0DF467F7F5B9198E2BD0FC484F588E6A4EF7DA07F
            6B7D11E5B3EFBB6FB97DF60448BDF8427F331CB1F74131455B2667B2B8778E9D
            26858CD891E7C951CFBAECB24BAFB9FE4C687C72A634CF25BEA88C2FA1C417E0
            29D1D7C26812BEEC7072968C49325BE20B6DAD467DC0B5959F1FBAF7013F5BCD
            E6C25DAB29EA35F1FE7BF57F3EFFCAC38F3C9D15DDB6D91D86219DEA86B04C83
            8EBBB97BEEBBE511476F4FDCFEF38FD2E34FB860DEC2664FCFD8FA60EC3A5DF4
            6398FF3294280E1CC742832F3109CD6E0521ED9C38F6B32C28B2A054CE0E3974
            971FEFB5896DE340FEEDCDCFDE7EDB743FA08DDA1BD3F529D4A6BFB0ABAB8CFE
            C23C56042CCD54ADEC07A962122D8D6923B10E193D790BF8F2F845F4F12FBBE4
            FE07EE7B2DCFCABA05EBB52249313F940E9C73DE91DFDF7E4CB52A6EBAE9DEC7
            1E7D29492C452DE539512A8CB662901DD3896AAD318F48102CB114BB5C19BD60
            C122AFA42671D334C49831D635D79D5C2E179592FADE3B8BAEB8E2CE0FDFEF57
            F47210649A412BB644410DE1A9A23451004EEC925DF6A3903E7E98F8B8631067
            C1E48EA1D777DDFD5BC71CBDAB6303ECEEBAEB99BFDCF548754031AD91AD56A1
            1916DD17BAD4E887D3F5308E2CC4A4489E376A03B4E9D2646E77AFF2E3DDB73F
            E2A8AD1443504C3A6DEAF4071F7C9E8265EE0A30B8434F5D69E5E5162EFAAC5A
            AD7AC628028A38F2359D00343DE6849FECBAE76AB5660D5D97599B38C0FE8156
            BECCEFF2A695D1D070FE52ABD5084464415C6E9C46A32145C231DDC6098D4EFE
            A5B3CB9669FFCA5046E24B575797D11E5DFD32C4B4E28EE0CB52F1E5BF7E6148
            58417E0D0C0CD07BFD06F1516782A9F3D7E161D77F7FA9C39F7F28C52CC7CFF8
            4F1DF1C1C5EF9398C18C4FA3F3CF3F9FE2A3917DDEFF63EE3BC0ACAAAEEFCFED
            EDD5A90CBD7704C55EA3D1888A1A1B36B0A1C6DE5B6C28025224D66862ACD124
            76147B050BB6802845945EA7CFBC79E5F673EFFDEF7DEE9B018D4924DF97FF2F
            8379DF64E6CD7DB79CB3CE5EFBECBD56FCFE384906F812C54627ACA646C1F825
            B7F4993FCB4925055165C15AB6F2DBEEA376156561D3AA25A3860E8275FEDB0D
            1BAA06F406BE9ADBB26D4055ADE2045F2C5D02FC083857A2A34065B5C7E9E713
            45A5F19D64D522948FF1A57C45A8C9B011F1E5FE076FEA2C6A2FE36C5C5CE262
            CD4558AE24C4500BC604F0A3EB6850E5071A2FB0FB83F41F73F0061020A9603B
            1D02E67C54EC2E444A4B1C976A46A56363718DA1EA12110BC58601839519332F
            ADEB4DD22975D2C933B76DB36C3770BC4895B3A6E94A222A04A4333045D58ACA
            040CD3B6D6E2C60D0D8E436091776C74323534CD715A060FA97EF4B1CB24957C
            F375D3A517CDE2A22A0F9D4F14CBA18A2AA8E8914DF3B9F64C5AB3EDB65432D3
            D2EC19A9EA92EDC01A84C62F962561215FC94814801FC19D9A3DF365C4179A75
            030E2D507D4FE2817CE5A6CFB8EAC0432A56AE6C9E72EB035BB71493C9BA9289
            5B8528A1149520C29364319D36060EEADB5128D537B43735143C6C9CD0D1023B
            0A0C592D95EA8F3E6ED71B7E7B9C075CE6B1779E7DE64BDF4DF04CEFC2A330C1
            14DFB544DC4E31E156EB72A54F05454AB5E6DA5583877BC3714CC8269478923B
            61C2AED75C331ED6A0F92F2FBBEFFE473D4FA26102DB95E484E73BBAC1795E49
            9554268A13793E10CCA4C0A15E8163E532E9C8341B44C9BBF686F3C78D1F040F
            6FEEAC77E7BFF2312F1825D393C524BAB561E1B9852602A1EF9A3ECE26123A6E
            7ED7DDFADFF3C0053E31210A5344230E4DE031EF882F84F5A6C59B24B22CC562
            2E8C1FE551B2AFB3E4075E4B2514F143B52396DFFDD1FED14E4DDE9FC49738BF
            FB63B870821FF3AECEB7FC341FEBD29D8BBF0071552CB0D3C2F03F4911756101
            E9CC9FFFB3F774B927B03916B7B491AECB89E397B20B65D7058464D33A3FC697
            CA6A2DFE5514A3273322EB0229CC0CB7B77FF6C2DF068C185233642029989FBF
            FAE6DE93CF27D4FEEAD567773BF84012688DABD7751B3D2C70ECFAEFD7F41A36
            18A6F917CF3DB3D719138959C8FD7D89E9919E479E1864B2412C58CD00234E9C
            8B71432DFBFF5B3706B366033FBA09EB0EA2AECB6728191108AD016675CCBFC4
            2ECE882F878FBB8ED2AA2050B0353F42BF6A20D53227525A22BC05B35A88643F
            40396DB43D17B0BA0315F33D47E429C0296ADE8BD645979C78C4D1BB690659B3
            7AD39597CD6E6E060CAA08A8443D88ED53BEEF652AB44BAF98B4EFFE5956180A
            D13579FF9D95F7DDFB94E7289A564D02DEB18BB20877D47CE2C93B7AF42633EE
            7C7AE107AB79AED2B1383D91C11D8DD092D1DE2BBFE75EC33269D5F3ADCF3F5B
            4A0884360A10D0A2E94852ACDD13F242414F74BCF5EE6C186A7366BDF4EACBDF
            84419A08301904CF2A6972C08BF929B75FBCEB6EB59F7FF1D9DCBBFEDC918B44
            21A32A69580980424A0A3DFA98FDCF3AF788EA1A9869C4F3495B2B993AE5D9A5
            4B37A0D591E760173BAF93C8EA3748B96BEE25707B7F73DEEDDBB688B2528BF9
            0A9E732D88C500683AD26961C4883EA9A4B17573CBB72BB6D8B6A26819B47C06
            1A849723FB362F0BD6D1270CBBFAEA63577F17DD31F59E8D1B5B15356B9BB094
            2480D2F94141D3ECD1A307ECB7F7D8DADAEA351B36FEFDAB552B973798960868
            054B7AA9D8545B9B2EE49B7AF54ECCBDEFAA6EDDC47BEFFAE0A5171770A2C19A
            B413AE4B55590034492488EF75D475AB4A67528E6597CCB6534E39FC9489FBFB
            61210C1D786784A9ABEDFD47F11E5310C67AB2DBF9510C28A6595235B96BAAC2
            37A669C68CE99FC72F3BF385BAB15825F06FE2179BFE337C213FC9BEE26D9FB8
            2230AEDF956555964578323BC3DFC22EB0E8C2977F01A24C4531667DEC0CA3ED
            E012B7E7C7F18B40B6EF9DC7D5259BD77B31BE54547532B8981F4571BD6979D7
            1075900AC58F9F7D7AF41EBBA6FAF501CEB4E4857963279C4A646EE9FCBFED7A
            E411C4575B577D57B5FB684093AD2B57F5DC7557E2399F3DFBF43E679D016756
            58F8616BDEEE3FE12C548B8B6F7D6C4941E28E924E37A91DF005378ED02FB37C
            C2711486F14B548E5F8228160723E38E407CA1219683B1825FE0039C24283CEE
            A69550208A29A7E1DE012B8DF7A94BA9230A81A2F892E86512FCAD53AE1838B0
            2295E19895A0D0D40854485AB5AAA558F29B1A3A56ADFA8E527FC229C78E19A3
            FA2C5B0CF4C771C98A65F69597DF41C2641018AEEB2774889222BB94BFF48AC9
            071EDCFDB22BA617727A3E0F3C454105492CDC2F70A4E3BCF34F1C7FD498EA6A
            44FC6F57B9B7DE7C5F43931306BA20E928091C04121F10216F24736FBE33A70B
            5FA2A0C28FB0AE9A503F69105ECCDD7ADBF9BF38A467734B3BC755940A64D3A6
            D6FAFAF6FA6DCD4DCD0D89043FF9BC13EA7A001C7B9A86F53B007B0FFEFEDB17
            5F7C0F4BA7B14E57A44EA4EB7C26EBDE35F7AA8DEB5B6FBC71BA911C04DC0B38
            024C4255928BC5C6BEFDD569D3AF1E359C838BB52DF2DC735F3EF3D70F4C1BA2
            8054C93601C550DEC91134831E71F4E08B2E39FAF9BF2D7BF4E1E72382344D14
            D552D14C2753BAEEED73409F1B6F381AE2514DC7EDC982456E9DF2D2279F7C1B
            0686EF719A2ABB76518500512A5E72F9AF8F3B7ECCAC691FBEFEDA27018C2D01
            85AF203CD455E0F8B6E7D7EFB1D7D02BAE38BBAA1A874B7B8EA4D3245B4978C1
            C5345E24317CC1BA867F812F5D698762B1A0E94A5C6213E74A207E017CC1DCF0
            4FE55FB87F524FFBCF5E6128ED44FE65C7E21A7E3BE0FC04FBC22D1A7691016B
            436E6F6F13043146B29DE16FD14F466531A6FE24C4A0AE1F57C623BEB31613EF
            32DBED8FF3BB71FB2CDB4AE258178CB26503F64FCF9E7B63B6526375071088DA
            E5FB584E51630F6B02226FDBFAFC2F7FEE31A8576D6585CC494B3EFAB4CFD83D
            8D8CBE78C11B07ECBB17B09665ABD7F61A39C4A36ED3EA75BB0C1C00ECE5BD85
            EF8F3DF2579A2C99ABBE6F2FBA83CEBCC8436B3C5623CDB26EC08F62CD9E72B1
            6B44B66DDA8E2F61C077D5DAC7F59EAC8527C69772834CA1488E1877AD1F5677
            E18B2A6AD48B7C3710F940925C148E229AA6264C604461B9E74D91F95452EADD
            333966B73EBF3A74D480FE4908A54B254B12755805E0944A163E0611F77F51F0
            A990C79885E7507E7CF326B3BDDD59B264CDA28FBFCEE55C98B12E0D9249239F
            6B85C3C24272DAC413F6DAA7FF0D374E6D6A0C55A58AA083B893D07549727AF5
            941E7CE8224D43E90CDB25C0E05E9BDF347BF6639807A572B184466222E07B19
            5F66B3FC0BE0CBF29056C27ACE72569140CC2068B8E5B6B30F3F72B0A262097B
            C436A7017D123AC3DC3C49A6D0E1DBF5C9D6AD8575EB5A962CDEF0E9A7CB5D17
            8B55C208B5B854296196DA7AF69267CEBEEE9579EFBFF5D6C2920BB3D1803BC0
            747AA86ED813CFD8EFCCB3F797582D9CA2E0612FBCF0EEEF57E77C9A91442D88
            2C2C6B09545131C71F3FEAFCF38FBAF2D2C7D7ADE91078BD58C0D673119E070D
            5219EFFE3F5ED6AF2FA7C9C4B2023529C0F3F8E2CB8E5BA7DCDFDE0A1F84ADAA
            302AC54808487ED7B1550FFCFEC25B7FFBC1A245DF9A2E6B190D102304F41AC8
            A532C5DBA65EBAFBEE7511BAEBE1D3711D022167BE50842B82F51BA1A3D3FF88
            E18BDC556F62B93FC697422E87777B07CF9F38FF12379DFF233FEA44809F3B7F
            C93FC1971F4D6ADC3FDA0E2E9DF8F42F4A71BB62AA9880C1D17FD2F7E4DF4657
            F17176CCBF7441CC4FBC9BEB7C4F6795B0D019F2304DA5286EFD887B5685CEDD
            6B8EA85B365871FD2EE00BBBB1681DB103BE70ACF744D48175948ACB9EFB6BBF
            21FD92430613D359F1FA5B234F3E9D04CE9A05AF0DDA7F3F428CDCEAB5D99143
            88EFB47DBFB672F0203885BFBFFCE21EA74D4027AB6F9617ECB066FC04924E32
            315FA69649C232BEC4F6BBB871C76DDD4867CFC1FC0BE1CA5D30716483F812F1
            AE6777E10BDB2746813BC0171A54512CFC272874EE06BA6AA0F33CFC40B64AA5
            BCE746BCA0124E63C59FF804E17FAA12EDBDC7F0CB2E3FACB6161124085C2050
            B08CA16EB854EE85A6CC18F8DB95F94D1B36AF5DBB61CDEA0D1D39D3B685D656
            8B0B939820B05C511183C80BA8AFC90AF56DB87BE79E3771C0901E536E9F16F9
            59D7459162586B241ED69B9649137F71D145BF944458781C8ED33D9FDFB695DC
            7CD3C3EBD7B7FBBEC28B1A9E03B539319F48E5DF7A17E397D977BE3C7FDEB230
            C85256772F6241704191F377CCB870FF83BA47A2C313D5B689AEA1340C40C0EA
            EF0B6BD7AC5EB37A6DFDE636D709B635368491487D9513938E45045909231B55
            1A293C5AAFAE877CEBCD97DF7BF7A3ABD76DA5440118419544FC085796DB67DF
            7DDED8DD7AB142D98015DA486FBDF9DDB4698F45A45B88FDF21E5BAB64C76F3E
            E1D43D2EB860FC2F0FBA39A1F5747DD61201C13B7399DC7D8F1EB3EE3E4E4F62
            5244D3552F00FA2A6DA92737DFF2E0F26F1A382E2972AAE76097A324D995D5CE
            F32FDC72EFDCE5CF3FF76E8872F532DB1B86890E4FA563AF7DAAEEBAE77CAC5F
            8C02194181A8320492ACBF9F8DF07007FFC6B895345E8F43AE2BFFC2F811AA8E
            841D6DED8661B0361A319E5CE8C6A328F146CA8FF005371F76AAFE9EF9C3FEAC
            FC0B2CBCE504EF0EDD8CFF51B9CD7FF0F5B32C96BABE3ACF909D77142351C8B4
            FB63CC8EB84E59DFB88F16A066CB460FF55FEEFA6D45A5C1F6A75132964195D0
            0567B83F0D0167B1B0F4AF7F1EB9DB4869E408E2876B9E7D61D0E967123ED8F4
            FA737D7E7518A18AFDED77DA6EA3005F8ACB5726870E05CC5BF1CA4B23279F45
            1C9B7EF2495BC1AD3DEAA4C04851125795E21D047C09580B3F16E0B30EBB6D9B
            FD397366DFF7FB9B505E3E8AB34EDBF7A73DCF81B185C2C3F8F0C428E04B2572
            E451D70541B517C82CB0441F35C732754D39EBCC93CE9ADC73F316F2F8E32F7F
            F2C932CB4AB91EA728D8E5EFBB14F78643AA69F6B43B7F33667475320923D583
            204256F1D4F205B27245DBDB6F7FB2FCEB55CDCDED689ECC6CD8B0EE8E03BC10
            2531613968D526AA30BA6D2CF08D0CC7B19399F0F489C7D775AF9A7DD7FD9E95
            0A434D9414D7B3426AA633EE05171C3AF1F4FDA9830ABE41C8C9AAB16513B9FE
            BA87D6AD6B63BEAE00BE810C6392EB48674BAFBD390B2E79EE9C57E7BDF03547
            D23EF11445761D47C3CEE1DCF43B2FDF67FFEE0005D4258D8D64F197DFBD3A7F
            C1C6B54D82A0788E2D0A5AE8E2E2CC2BAEE3979803A742422D440D07DCBB85F9
            ECD3524D37E98E3BAE9A7AEB832DAD25070B074459D003EA09BC974C9873EE3E
            77C8D02C840E588C8F1583EAB7ABE879E7DD522CE986511DF9D8371BD24052ED
            634E18BBDF7E075C7FF503BE6338BE672413D4F3B14D21E0F6DEB7D75DF71F05
            3C94F300BB03D590732552B4C8F4E97FFDFCD375BEAF32457A21F22359B515AD
            F1B5D7EFFADDECCFDF7863115B308488D17B3182F8A6EDF2AB0E3BEEA4BDE023
            3954CFE1590B380FC843B13D3280538F989F6C5CCF11378EC752EAF14F58C780
            C00258CC5D98C512800B3A94331488AB52092BCF8B7B6B764C4AC4ED633BE980
            14B1FEC6EDF5BB3BFA376EC797C69CD9E97C44D867A05ADE8E38B5138A9C3BF5
            FAE34ABF7FF31A67783B81AF5CE4120B20095C54869572D576A74A5524607F23
            C3976C851A7776A225102E3D427CD0F8FD18BF98E637CFFD4DAF4AA8A290A464
            D5EA75BD468F0D78BAE6EB4F771D394CE052DF6FDA5233A8AFED5A6D9BB6003F
            4A89F29B0BDEEBBFEFDEF0FE447B7BD109FB9D323950358F06654D3AC4171296
            5BEAD859857C3DEABFCCBEF7819B22EC2E8BE212F84E7CE1115F4208DDB1488F
            D121B1135F6A011A9878098D50A941F6DDD285179D7EEC09FD002F0A1DE4EEBB
            9FF9E0FD75925C65DA2574C21434459459214EA1AE8E9B3AEDD261C335C70D50
            AB004D7F1A9E78FCC5B5ABF3850EAAC8497818B0FA65D25A5B7B632AADFB812F
            8972FF01C37AF4EAFBDE070B00934485B34C4F11B2AA02C0DB3CF18CE3468D1A
            71C3F553A2B09AE312B6E5EA862AF07EBEB0F6A69B4F3AF1847D8129B88E2D28
            B269F2B6C95D7EF903802F1C4996AC40530D94A3E23A92E9C26B6FCE86517DF7
            DCD7E6BDB094235927309329BD5428AA52A46BF4861BCF3BF4F0EEA64DFEF6D4
            87AFBDBAA8615B41572BF8086B52A86F62AAD85764856FCAADE9DDAF669731A3
            FD507EFF9DBF4B4A226E56C69A4CCEADAE15A74FBF6AC6ED4F6CDAD22C6B4021
            03EC79E48963E51389D2934F4FE956C79300F5591209CD0FC8375FD333CEBC2E
            9D1998CFBB586D2B09D86E4B72279EBACF31C78C3BF5A45B15A9464B682D6DCD
            104246345205F98083064D9F7328C795388AE121F6C44B2A9CF6D5D73CFED5E2
            CD09AD0EA24BD7F6AAB21585D2163DD9FCE65BBFBBEF775FBCF8E2FB0088B010
            89CC20377225592F4D9B79D2BE070EF099910AD67E63098344B1169C46659930
            12EBECC44811AB6DA1534C58FE49597486D532C63532716776D76BC48ABE4419
            FBCBE339B47D9695F32F3F774E966D95823097EF80D19E0042FE8FC78C105F62
            BFABF2DE4B3CF7B7E3CB7F0B5DC29DC517DCBFE6BA7243E5BB11A761F898D1A1
            DE449C218A6917102761CB061FF811E24BA5867DEC4CE90D6F63C877052FF065
            04D8DFF8E1334FEDB2E7AED911C388177CF19767F63A7E02C92696CFFFDBA843
            0F215102F3BBC08F3CBB69F5BADA61C380162DF8EB53075F76111CABFDCDB79B
            72E6B0D37F53C482633CBCC876E57C1676C6540ECF308AF165CEBD0FDC88B9A0
            30EEB40D5880CC1CC87D14F4D7750D7D83B085462E16C951475E1F04DD289510
            F6392A41E0EE1645CEB9EC8A49134E1B1AAB28ACDF689F75C61DC5829C486598
            30164A73CB5801E470A454554DEE7BF0FAEEBDB0BC7DC5CAD6AB2EBBD37574C7
            35443E89061D1C675B795EB4AA6BF9EEBD12471E7DC8DEFBEC6218E4FBEFC955
            57DED9D1017320AD6BE952B1A8C19C0AEACF9E7CF28861436F9F3AABA5395094
            6CC8DCA6619D4FA5E8A9A7EF71DEF907E10D86F911049A21AC5D4D6EBBFD8F2B
            576E242469E815C5A2A94B52C81512A9E2ABAFCF82EBBF67EEEBAFBCF40D89D2
            1038B15A52005A97E30A774CBBEAD071E93FFF79D1A37F7C350A32029728946C
            91E715CC3D3749920F80B8FF017B1C37615CEFBE1ADCE0871FF96CDEF39F148A
            51ACFC02935190683A13CE9A75C3137F7AE7D3CF973A3EB62B2513D908DD56A9
            A6BB33675D3868A021889666F096E96A46FAA3056D33EE7CB4A3239400762996
            8047A1EB472D279FBAFFC4338E38E6A8298A5451B24B58772F27D080DB0F878D
            C8FCE9C9D3C3B0C4079161248BB6236B6A6313B9F9C627572C6F320BBCA6A6B0
            A53BF09349DFA86879FE8599F7DDBBE8F9E7DEE64403CBA315010DAA4D454F7A
            8F3C71699F81C07A091A3F96AB28048ADD61CCC096C5175D651C3B460341E74F
            3AC387EDBBB138C399EF057A70302F14D44E959124EE38BFC2ED1B233BA73F09
            47EB28E4E135994EFD085FE23C30579FB3E256C61F6461FE07BF982D55D7390A
            A4D304B01362625AD419CB305682FC2888F3BB990A85E10B926626D42074A253
            14E30BE7981FFDEDCFC3C68CAC1E3A08A284252FBE32F6ACC9C4B7BE79FDF9D1
            471F495CA965D9CAEA3D46C3E46E5CBEB2DBB0A1F081CBE7BD38EA8C5349316F
            2F59DA667ADD0E39C6CB567A0132739EE14BC0F68EC4A8531680D5EFCEB90BEB
            EBC2723749B803BE60FC02E786F9170E7804D063C582F8E508885FEAFC50C16E
            3A8EA2EA4368C1FC3F71C2C1E7FD667F5101FAD054D7BDF6E927BE79F0A1E761
            C4024DC0F65FCA89F056EA8AD8065F3A6DD22FCF3E775FD7274FFFE5E5679FFE
            C47793829CE639D5B600808284C11D397E9FA38EDE63D848D17443113B75C892
            251D375C7B8FE7A5B8285B2A02792192E2F37CC7D993278CDD6DF0ADB7CCCEE5
            02D4C696B462C149A7AA83A0BD471FFAA787AF9144025700D7EF53B27061D3F4
            E9F71392B01D2289BAEB060A0AF9E68D44E195D766C133BCF777AFCD7FF96B2E
            AA08B1D3125015FECE0982DCACD9370E1BA95E72E9ED8D5B00BF52818F990555
            135CB7B957DFC459E71CFB8B83076A580E8BF80D81D59CBBDE9FF7DC67844B33
            A17811A6B420019171E6CC9AB26CC9D687FEF0B896CC980E04059259B4925A4A
            56FC637FBDCFB9E7EE2ECA00EBAEA12B1D1DE4FA6B1FFD7E75CEB239554B01C7
            64F92E97970BBF3E7E8FC9938FBCFCB247D6AF6FC67059904B8540E01559146B
            6A859973CEE8D35F450A04734A146D4B686820975E3CAD9007F448616736D027
            C7540C7BB7BD2B66CFB970D6CC775E9DFF11E1134CED25C48D213B0141CF732F
            5D9FAD4113A988A2A46018AB8597D54B510E202ABBCC762A404664C7A427D345
            E8D476621810B00D27AC5760FED3A84C4469269542FF69EC5D8ABAD062C7EF7F
            FEEEEFCFEA6FDCDA66450C5C7628A8FB1FC41776AFB7C72F246EB366BAB658CB
            C9979102296A397E89F0C75B37055DFC88E553E1E9C5F9DD58FCB1DC5290C2E4
            61EB92E79E56522AD059DD0B567DB7BAD7AEBBDB9EBDF5FBA5A3870F897C65F5
            A6CDDD870D747DB769DD865DFAF64F04FCA2C58BFBEDBD7B180535305264A3D7
            496739AAE1C7AD1CCCE537C05507A50E78565B0C43A37E0B65F1CB6F993C667C
            6194E14B39FF82B561098D47FF66185B8A89F10BE20BACB82838C2A4F044E245
            A470CEB9C74E3A734F98ADB014158B3EACA9B7DEFCC4870B97C9720DF5131127
            B24E08AA6356A5545D2D4D9F71755D2F72C71DF72EFEAC4592AA6DDF8341AC29
            124C4E18728F3C7E15F61988F89FE760B6E8AF7FFDE2F1475FF33C5D512A4824
            53DFE6051FA2A133CE3CE1B453875E78E13DCDCDB66313C7898C6455B12312E5
            209D717E75F81E175E7840AC7507BFBDE4E2DF6FDAD216443207D3346F5757D6
            F88E1B454523597A79FE747898F7DF0BF802FC28E3079128A14BB428C2AAEEDF
            3CE5324971A74F9B5DE8480634C5AA3F6084C239940E3E64E46F6F1ACFB49D48
            5C53EB5AE4DCF31EDEB4CE092395E3298CF300CE56B2B29574E68C29F0C68B2F
            9E620274F30A076F401F73C9760A438676BBE5D633FBF4C7ED6DF86FDE4B8B1F
            79F455070548D396ED29922C6209AF2F2AA5F1C7EEF29B0B8E9EF7E2D70F3DF4
            14E154003B4DAF721DE4DA864EC71F3BF6CA2B0F114574E6444B3A915C77ED5F
            167FB921F092A5A2ABCAE8BF90045695FBFEBA9B4E3BF6B83DE6CC7EFB8DD73F
            F351B507F897C5A3F34886466D2FCCBBB9A216BBC0992A403C8CB00B83C5217C
            FC13567401635708997A4B8C3E65FD075C3DBBBC41481CB360B016C711021AB3
            C7A21BCC558C2B670BD84FE2F7EC249F88BAF41976C417427E807ADCC6E6D20E
            E0C2EF5CC6F5FFE7D70E7ED8E574462C3ACF349B85F28635420C539C628A3EB1
            FECBD4E94C7F5766F882D5036C15106281CE188CD2802F1D2DCB5FF8CB88B1A3
            78885F9CB0FEF537BA8F3B9A64F4D6B75EAEDA6F1F12E964F55A327C10D022B2
            6E0319328C5061F3F3CFF79E3C09F33C6FBFDB5872EA4E3FAF44A350E483B847
            8B3930338D6B382156B04348FD16A65F07F882449A09FB77E14BC4C1424A58FD
            2E8C0DEC240F550BF1E506C017ACAF63124B120A5C96A2A070F5B5674C3865A4
            E33AA9B45AC83B1CA72E5CB8F2BE7BFE522C29BE9B017A1F4496A248E8F4A288
            94168E3862EF0B2E3EEC965BEE5BBDCA2BE48991562DA708DC5E91C2CA4AEDFE
            FBAFEBDE836D2D71A4BD8DAC5CD13A77EE23CD4D2E2FA43D0F15C7D0231DE226
            2D9C74E6AF274F1EFAA73F7DFAF01F9ED1D56A414C944A4028B20E2CD1BA1FD0
            F6D163060C1ED8A7582C2E5CF019CFA77D2A7830EF1583E7C5B6D65C2A918678
            CAD08BF3E6DF01D7FFC0FDF35F7DF96B122662591074FB46376FEBF63BAEE5C4
            E2B5D7DF2CF17D3C3711B27D5C590A5CBF7DBFFD874E9F7112BC3F9524107414
            0AE4CF4F7EF0DAFCCF495405B100F324F2A9E748B2DDAD2E9A3AED863EBDA4AB
            AE7868F5DA9628320A1DBE914CC398F1FC92EF15B355D21E7BF4ABC8A6366F6C
            5DB26415A086E930E5655E86E51E553E284CBCDCB1278CB9F4F2A3376D0C6EBE
            796653934D7D23C4B22002F1944F0BB26C1DF48BB1871CB44726ABB7B6B7BDFD
            CE275F7EB1C6B520BAC942041DF8258EF34AC58E3163FBDE31FB37E9ACF0A707
            17BCF0E2873444E566789410106942DA0F5B9E7BF196AA3A989D4CC6862AD8B8
            C6B93474E36E364190E9761E24940BBCBA6632BF43E010D7A7FC50E780746667
            80947595E0934E6B817F5137FFD3AB3DF957F8B2E387327C21710918E96A988E
            B82E17A4FFDED7CE45493F0045862F715080D8CC474C6B81634A42519750183C
            DDAD9BC24E7E24C7B2DEE810C86C630929BF19C67DDAF7B842DB92BF3E397ACF
            D1E2C8E1C48DBE7BFA2F43275F40BCD2EA797F1D7CC2F1403AE857CBC4DD86A3
            36C9AAD5D2A8D170AC954F3D3EE237E712EA7B1F7DDC5874BA1F71825D51E3A1
            CD6724B05527C617CCFB73242ED8ADDF1230FDDDEB516EBAAC7416E30BCBC9A1
            2D7C60181AA6A645746D447C398AE10B8B5F706D732D5DE765C1396DE2B84967
            EE2EC8E8FA2C3115A55C8E3CF2C8BCE79F5F1892DE8290A491832E7F82E8B9A6
            A6F2AA4AAFB8FAAC4F172DFEF8FD0DBEAF78A4A4E912BAAFFB9EC8D121837BEF
            B3CFA86E75D9C6C6C6E5CB57353515B76C6DE37903A20A4D4F62C14518B95E21
            9D0A4F3B6DDC59E7ECD6D8486EBCEEDE8D1BF2C826D40C87A39F8A12F627D0C0
            56D11511963974E026D8408E6AE7228A6F89A809C0598944F1A5576E8FF1E5F5
            97BF82E9CA8B82EDB9BAA8438CE6B9B95977DDDC6FB03471E225D4AB10F86AEA
            C34C0640311C2B2788D67EFBEEB2CFBEA364892C5FF1DDB265ABB7D5E72D8B97
            A4CA1037895C8EB9C4CBB2575563DF31ED9A614313AFBEFAFDEFE63CC3914A51
            4C01812A3ACDB2C2199A6296F28A8AC3C777144536FCC8417DF330CE744078C0
            C9BC46BD96934E1B7BE1C547FA1E79EBADAF1F7CF005DF4B785E4291354EF48B
            A5764D455D48889912090356AF5C474993AB7D8FF79D505321CC282A0AC498FE
            B5379C7FF0E13596431EFEFD82175EF8248AB204CD304C7455A59120179E7FE9
            B66C75C80B164AF1F9490C47780F35F9A8843A1E0C5C582C43BA34E27E24DD12
            96D3B41C1329F43BD3BDE5AC704CC8BB7679764CD9E0AEB6B053D391A118FF13
            FCE847EFE2D63696627B50F263F389FF7628F31FE04BD86576B3E3FEB4C066AF
            1097C3F00CA7D1640CF32F9B3745B74F9D361BE297AC18A2827C59741EFD02F9
            72FC027F0EFC882BE6173FF77445B7AAA4262B6EF8E5DF970E3FE04000DED54B
            3EDD63F4682F10BF5BB7B1F78881BEEF36AC5D336AC00025A0EF2EFA6497230E
            C5CEEF6D8D81A0F53BE5CC5C2460AF0E44A03871D98697200A21DE77543F2064
            DB0EF8420346F17C9F590F234575033BB69241A95E91E9BF94C8D147DE18D2EA
            305062EB0B11FB4DEC282CFCE637279D73EE2E7E406CF41566AE3D32696921E7
            4DBEDDB22AF245C27C99B190515525DFB3C2A0387858B75F1E72F8637F7A8506
            5210619E22741180507627723CBB433724A6986FE4F2A6AA24537AA6A3880742
            C40472418063E48F3E66EF6BAE1B07ABF7A79FB4DC76DB7D70F31C8F478F6340
            298A5A3CB228788E05FC029E89ED8783860C5DB56A1573C61061E6C800B9BC69
            24AC975E991AF2E481FB5E7DEDE52F217EC19A67DCC88725C21724EFC69B2F3D
            625CEAFAEB9FFCECF3D5A592A0276A1C9778B69F4CE83CE705B4C4C3DCA3AEAA
            C9700FBD9267242A6920176D17890050149F1324C74816EF9876E52E23B31074
            DE7AD30B9F7FB906851728550D545605048C871075DCB45241032F5068329B69
            6F337D1ACA92E45AB6AEC1FB9B4E3975CFB3CE19274A58D9FCC8C39FBF3CEF63
            BBA4605E36727CDF4F60B7972B890253E30A5D3F50450377E2B1DACD94A2BC91
            0C279D75C271138653F47022D3EF78E39D3797052166E28111C2DFD9A5B664D6
            7DEEE5E946DAE7451BC78E978C5014D4C69885A0D03D8925A622D4D68C73055D
            F3224ED3C44BEA0E33BC9C6FECD2F78D5F23B4CB2A73A238FBCB3437E9CEF323
            EE27F5EBBAE2A03271FBAE3E1F9B4F8724FE4DD9FF28223BB51BFE5FFF8AF79E
            63C151D215C2F04CBC99C75C2613AC0F637C9150FB082890BC767D3063E6EF66
            CFBC36918675D4419F4F2C7F83C54644DB41A6172B113F493DDE323F7FFEAF43
            C68CC8F6EF4742E58BE75EDC6BC24924A2DFBCF3C6E8030F20A2B279CD9ADE43
            06C1E8DFB0FCAB7E634612DFFFF8C5170F38FB2CE2F8852F57B4E48A03269C54
            E4444BD082485030204133B3909748889D6F0A634AEB36F9F73F78FF9DB3AE8A
            704A624E507320F427B0EE3AC4B7884B514157C552FCC896E50A885F8E1E7783
            4C6A3C9B97313C805127D0C012397BF279BF9E346924ACB716E7A0F71B9512AA
            6C76902F3EAD9F3DEB71DB52782951B2A9AC2AE8A7A3707E50D013DCA449A775
            140A2FBEF06AE4C902C43D2C58F671600402969979107D48BAE806F4C4E38F77
            3BAC8F177E5C72DC8879CF61D55A58EC3FA8E2C1472E8F042CCF7BE6994F9F7C
            F28DD0D7F900DBBBE0A218B347D559998F3CCF3DF6D74775EFD5F3F1C79EA24E
            14FA223002140F561C5EC9CF7F738EED92C79F78FFF9BFBCAB29D58EC5898A1A
            441E113C37CCCD9E79F3017B18DBB6901933EFFBE6DB8D1E9F51B40A5A82A922
            A2A60E2AFB03B8104A8B62E40DE9DE73FC91C7CE7BEBFDEF366E0978546D083D
            5FD1423F6ABDEAAA738E3F7C0840FB960672FFEF9FFFE4F36F64390D80187A82
            2E25A3C0F5A252A521F2F9E6EE3D6A4EBAE0FC773EFCE2EF9F7F6F9B4486D885
            E7E04196EC8D279FB2F785171F83E7C6748ADF797DCD6B2F7FB861CD56801851
            3042AAFA8008A2172242AA00C558220C64161BCF4AC37BA44E3DFDF0B1BF1820
            EA407C80731973EF7CF3EDB7976343A898E4CC40E67D812B4442F3532FCE4E56
            C35477B0FC3F90591AC0A3F0485089590A7C3B963147954FC6F099F05D18B7DE
            FD64C1DA4EE1057B8D7E76F52E336661D5343E33A2D4753DAEB5F9A7FE6A119A
            E7942D04FE83F8E2BF8F2FB1AA1EBB7151D7CE32DB9C16002350F30D262A8E09
            1C839121613DC29A7564FA8C39B3EFBCB6B29A50CE34DD8224A2E9228FBED102
            CC707498256E22F044ABB4F0F9BF8D1833AC7AD731A43EBF7AE147838F3B9AA8
            F2C6375FEDFBABC388EDB4AE5E57357224B14BF52B1777DF772F523257BCF1C6
            C8F1C7102DD5F2C1A7CD1D85A1471E4EB3D5ED2E8FF29291C761A197C7E4A075
            18732A8ADD924D9BC33973E6DC07F10B0958652635500538F2B9C88D0213D643
            EC8994E0492812441699FAADE4E2F36E710A912C681144FDC02E304712182A39
            F184438F3FEE402D1938BCEB870EDC01554CC89CB865A37FDF3D4F2E5DBA2688
            742355D95128A1383187660992144872F8EC0BD3DF797BDD237F7816462C1002
            22888E881AF73084254007C11F30A4EF84334F1B3532E5B69373265D19B0B9C2
            45D8DA2F437021DB374FBB74F898FE82C401C4ACFC26FFFB7B9EDCB2AEA9B2B2
            BAA1B51E1E5275755D31DF06F1F299934E39E1C4A18B16B5DD7AD36D22A76B6A
            C6B65C510E1CBFA3BA4E7FFA99599242EEB9FB95179F7D531633029742B1316A
            F22A1555FFBAEB2E3A74BF8102254593FCEE81A7DEFDF8EB884F2A42D277288A
            21289288EE7A9628D2F1871D74DE49E3322932EDBE790B3F5B5C723845D68162
            45704F12F4D08377BFE69253E176F984B47790871F7DF995F9EFA58C9E24D2DA
            1B0BA94CCAE33A22A76DAFFEB5175F72DED0036B6E9EFAFAEBF33ECEA6EA02CF
            F7028F576181281D7FECDEA79E364E945DEC422E90EEDD921DCD64FEBC4FDE7C
            7341736391E72B222252E09B09A3A3C3020E58914935B5D557D4654F9D70F489
            870FD37552221D81602B8AE1DAFAFDF7BCFAFE075F5B940A912C3AAA1405AA62
            1B2977EE833755F7487A01D3270218765D34DDE44597A24B2C4036921EACCBC4
            1006770F18BED072C70CD9116576AC44FDD95F3BCB57CAE42B44E62B6A9A16D7
            13FFB83F60F9960273502EA7607EE47FF4BFF3B5E3DD0ACB2C0993B45DF802E1
            88C8368D4466832388B0162B0D5BC9B43B66CE997943750DBCDF8D888B5D3FF8
            4611A2365693844A536A681BC45FFEDEEB567B63EF4CBA26144B1D79A12AD961
            E621AA00C2A4E8999283FA47B8DD12BA000832E15C2F9052D51DA69B37AD9E23
            8667478E7015DDF36488353D34BE70A5D013D1CD5685F167FAAE2AEB1D8DE48E
            29B31F7FE43A0715315D49E6A86D23BBE654D61489790A8AC30403315DD6438F
            7CB5B8157DA0010561ADD6443B8CBDBD825EB5953D6A1204B33621252EC4D510
            E12B5286E7B5F56B9B0B05CF0F63AB7934EAE0031713372A96C60F1AD047D6D5
            FA6677C396E6751BB63475B41598CC6D8F44BA269D1A357C70455542CA600F41
            6492B5AB1B254929141D43CF3A453BAD291D85869E832ABAF7CDB615F2492D4D
            6CE216C88A6F1A57AFDF6013AF683B92A8F51FD073E46EBDAB2A4555264DF5F6
            86B59B137A0646961F508175D6F8D41A3E6200FC76E3C6D662CEE6880C940D42
            53095DCDFC12CD0D1D39A822A5C264E23C6090645BBBBB78E9B7EBD66F552445
            932488C81259A347DF9EFD07F6ABAB2419B6A2365864F9776B0D358DDAA7BCE4
            38162F031D2E1CB8EF08CB3243D63F0174AAA1DEFF62D1370DDB3A2241B33D5B
            AFD5F6DD73C42E3D32C92469B4C9E6867627CFB9AE2F2B9117F930483CCFE9D3
            2DD5A75745E85B98129174AC3960DEBEB90E77FDA6E6EFD637B737E7458F7A25
            4B12A44CCAA8A94E0F1CD2BF7BBFB4A21209151A233B6C55549E69DF1AEBD7DA
            45CB0D6413C713ADE423290C7DD36EDD67DF81404E61CEFAB08EC08A24A12706
            EE547BCC518791A02062C10BD3F4C68DEC28E477D0B1E5BBE6C77F7FFEA2BF6D
            D9E00D930CB185767C923BBE8DFB664B3E404BF91D6A76A31DDFB1B3FBE2FFAD
            57AE331F1E743AFBC6DD4371FE45E8A448F8CADCFB44059E38DF5C4F6EBDE5CE
            BBE7FE369520A16FCBE88002539E676EE68415EF231B55024FB62DC1353B5AB7
            980DF56AC1D615B920624D860A74D103E22CF39C8A7A4312FC17996641E0A244
            2ADBD1E171B2AE5556540DE85B5424575060F982C3DA22DE479DFA22D25C0911
            5C624DB19BC8F42977FDE9E16B3C585E0353D0704311DE108568232831CDE728
            F6A988ADDFA3B8191439B40B41564266291582D13386CE8C75C33814E1D83E36
            D3468287CE25A28C9C8CD8367ADB6A12C9B779985712896F7B86263B34F46420
            F79872E6651471080222FB78D8C02392461CD6AA0EE117306741462A845E483E
            D1591BA4E90792011F6E875E949412918B0F09D6251BDEACA0A72DBCDF017813
            29DC415946BAEAD878459284DF24D06912A5156411BB8A2068824F779955369A
            74B2C670347A703D499061E5A03E533296D8AF7C08FC500207022F5147C35E42
            4982E036399FE6802DC20DB20B24A1A25F2511981E38EFB2F48416C01D639F22
            62D61DCFB6009F9E21D42162C14C27558B471F39E61A4F50B65610021497C4E0
            44628A6434F40359F2D020C597442CE2F743D145011E12E4485AC56B0134C412
            0811531A98C7417307C26823A53E9C890CC841E1C4041702315548631780842A
            13B07239A6AD310B572F0C600C7BCCDE4B211A9078877A3E9BBC9491A280452E
            389F839F5886C3FF64FEEEDC5767AA8569B6766A2AB0A4B2F803FFA3A59B7280
            2F5D168EFC8F3EE967F76BFFB75F778CFD620FA6981C0928DC0C23A68C2FA8F5
            8DBD8E98FF1725ADBE01F065C6DC393756A4D1C34E667ECC307B7DBEDC33C931
            DD79400198DF10998632AB09B00349138A020AE84BAE9F4C48A488E31853102E
            CC632A2744F8CB92058C5A4A67F9C044A8A21A318372FA0AADEB22A2FBF8EAB1
            B987964345D2B8913CF6C72767CC3E53567186C0B0F53856504CF1F4E034A472
            6C866708A8811DD3210ABE02ABE364EC1886CBA4304585B81B09A30C380EA203
            E9B4B2E6702AF8289E81B3082695EF928A0A040E2CFD634AF7259FF84C4917CE
            108D38233C6156B543A404299858050303220BA767119749E6C0C17515D8213A
            C6C11480390FB3028B655CC2CC85F0FB007D42D006002E21C95C078A94589495
            D544048227D7224055283B8D903913B03A3CBC52385580182A610ACA00B8F408
            EF635BA3C3BC535C76F2722CFCC346A804A4C3817014ED56B400D1CAE4512141
            F2F03962418048004045196F856EA0FF01DC3A95B01BE2114EC13B9FF3886010
            2922150151E15AD89DC1A2EB8018680C44706F151EA58FEFD115623AB8720086
            8AB88F4C64F44F2026472C0FEFBF0A8FD8C43FAFCC20987694022D2998EC6424
            5CC311D7E0465195B49B08B28117E93C04B078FF01E543CE5315C9B72355E1E1
            8953AC7E412DEF040788462DFC406C22A7586381895EE6DB1232D5DB1DA6FD0E
            D90F964DF9D9B36C27BFE2FE030E2F8BD97C314FB4F8FB1FF81F2DDED00EE012
            965590B6072FB1F7EDFFC86BE7CD43CBF4D8453864D78115436C0308DD4CF988
            052F448CD3BE1C4D18DAEA6FADABAEBEE990C30E84455566E5152C7E2154603E
            38F817B0A8B902DA901A41C4F99A170AA12A28B0C217215C47B9349F773D0D56
            7151735C58984349E19DD0827986553781CC79116F390AC4098658F0BD908725
            5F8CED1714A4C8AC388A0B050ECDCF5C4BFB6CD1A7C79D7830D06A588E7899A7
            22EE33F154C56DA6088B58E5D007CCA1A28FFE3A9C11F1CCE629F40431F05C0B
            4856E8FA9AC01A19518403ED68238860288A64E176A64024053DD2CBCE5E2167
            18465B2E0F0B8BA26A401C8A45B3A22A9B733B249E333C3E7450675A50E54812
            7C2ECADBA69E4EB03EADC0CB95D2E9AC8F5E6582E35B30DA0D194DE715B437B2
            4229AEF902B8513CEA78AECD88A48156246E2839AC134F1124438123B8AEAB41
            1C03A174808641D84DC3714004541573B11CDB0F06E8261A449D7E52D2798C02
            D0E8C4064A85D63F54C62A4AB80D9E886D7D024C2DD37565DD402DA5D65C75B7
            6A87A31D1DED095149481A75A9284B10CE98AE2D1B4CF1932168E4BB8ACCABBA
            66BBAE1D446A2A59B01D38B2EE854E292F269480A39224C0AD0376C48B2A3C03
            4EC04C8F10040955B53C97CA2284154214C97CA4622C11BA10E00998C104F627
            8B1099F89695838123A3A4B12FF0099103A44575D390E25AC06B860F4B466073
            946A6202732A1C406CE8612794000302F79E547D97D1237BF7AD8A7001A01E90
            3441F458CF3D5636306614E762821DF4E1F8B0132FE2286667E71AFFB3FFC5EE
            913BFC6DEC9C5DF697DCE1E7DC97EB5A7D3625E20D23AE53B66E67FB83FEABAF
            9D2119D3B522E5DE48AC5BE3C98EB44862D52602B3F683CBD744AD7193FDCCDF
            E6C1D4F3D00F55647E89CC460ECD71429139F704BCCBC3B877137AC268731AE1
            3157252B503BCEA1A222E3AA0C0303783041D956043820F64268FB8EA4C851C0
            2B94AF9635EADBED7E9157E520AECBE10456B288960CB2CF143A025BD292A290
            696B6BABA8E47DEAA12D9220D0C807AA25B3FA31605370567A080F1045924A9E
            6F0A2207D01501ED717501B746601EB35001871A3A5BC2E9AB2A2749106C6B9A
            8646AE811301DD1361D4A32166E0057E10CA7AD2C75616D1713CA44F4224721E
            703994068F50D531C0573C1A30122FF478DC1E8F001C5CA64710003E2684423E
            5FA557702E4C0D17813CA3953C07C6B82C885284170C93CC74D1C6D630120A8A
            83C281007003C77798C8094A08C09150A294F30D4335AD22FAF946826624FC88
            DA9E0D140E689180D26872C8C93EAB25801F06A84800933D009050019B6D3F14
            D09AD2734DA0588A0A17CAE74D2B914A6183218C61D3C5905D12CC301075DDB1
            3D15FBB1243FF41D1F084DC0B3DE199C9382043354151538135E84B9EC28706B
            852817514535E440165118D0077C94055675C203BFE103DC1DF3446094820A38
            E34250A4061E75E17E0262522EB403DF11221955EA14880031518221B3C733A7
            2801FB2C6517FD04306CC58606349B0036E4E89AE6DA455DD70EFAC53E23460E
            F243F467A161E00618B0A0EE12CBC2D03817C342C7AEB2126E7B957F397ED9C9
            B9F6F3FB0763A5B91F5400C7C71138FE07FD8D9FAE69C5F8858BD1A88B897575
            39FC4FFCEB94D76567C622E42EC38032B8E02BCC198249314CBFC1A0870530D4
            784382281DC2570D1E09E605E2FA239E81ABC4908BC63A781E73DE1099D44811
            63632C5D0BD8561CA32A76405C661E26B998D140ED49D47322A14304202C1A71
            25643A9469EBC14C030C43E39910A218E42018F907784055C5F85CC249803F09
            19442A2CF302F1394C7E19D33E6C1D82785B427A058B5802D64897C4AD83104B
            BB38EAB0141D17311E6902826784C797308942306DE462188FA63F14AF8BB212
            6845C21F02FB007C80A11B3BAB31297246D3043CAB80D93602A1C38D7366D980
            BBE001D3673391C1A5802FBAC403D2419071501733D81A1CDFC59A7D1768948F
            EB95C8D21F719D0344F1C01D540DE909E9BC75F03D9C0FFCDE611BB28E43B22A
            5B403C7C7F2012CB2F9F61C86C123CE6C1069F8E1BB8A8A9809F825644B8911B
            E90A4799DD1A70B78C807F98F7889A26451BEF39EFB16B613D1028D2821912CC
            FEC8122671D00452C4C3E2580AF1E13A324B4EE14635232F98A727715AD70388
            10F14F64CA781CBBF93EAB3F1662FF620E2FC793F083321EE66E7C760F239660
            F24B44E1F142505E8AA5DB28EBD53298C60D606F42473D3DB893705D26F5044D
            366D1B6675183B4E9699118943985826B1BC67FCE3DDE69D9A633BA30E47CA05
            69CC4304E3E790F526FCE33F6ED1EA16CACB2CC5DB857FB117D20F1C88FE6F5F
            BBF24F58A741A2F8277C4C8390A6C020E0E22C8C20A29BAFCC450A4A1E70A2A4
            73124FE189E0A415A39858C104C0B8322E01C7C94FD893A6A1A3F0368E2B8768
            6A266785C0279860100C145FD4A5022BB1CDF2403F300AB53C0F6885ACE230F2
            7D0CE35DEAA932FC095560956676CA8876CC94035664A0571116B3C18445CDFA
            64BA225FC2C6039FC27095222F9439EC5682550C280086CCA208BFE05452B21C
            4D552140706D740EA50CC370C9608E731C93A1E302E64620C48D08B0D2C3CA18
            9BD4F338F445CC25F1D4CF1A1267479EEB07A846473C13D38ABE8F7AB37A966F
            2F04922230B517F8CB902F3B6F952D1E45952F589E26C91091612B6E4270595A
            4105CCA598F848C03C71A9858ED862C98D14050B54017E0217420C9597E582E5
            F3B204E180C2BC53E02608A816200276A373028D523C5C2ECEFC92EDF3BA849B
            FB3C73D40BE151091032E07618113D3F0C999A6F6453498E5CC1D365517531A6
            73F0FE8A9CC5D2734952B0A8226111191761EAD1B2035592E18320E209A80918
            8C22BB408A00274501EE83A8A0F21E1C0300BDD866D52675DF81C71B62ECE37A
            862117000B55A9000F5A055A481C13B348E803C0D69590E5BCA8876A339614AA
            B262B89C69FBAEA640DCC579C4779C0A43B58A962C69ACEA08B3543683451F6F
            76244140078F0CC69BAA581C692B987AC628156C191DD2601C475D914B803D6C
            310FE23AF9C80FB2B63B35CBD0C298651ECACE9C8CE90084C53C88F9CE97590F
            3A766EE741FFE6C8DC47DFB7B09DDA1F6C21B1FD9AFF0966F40396D4D9FD4DC2
            72018CC8970B5E60A585985FC29F60520696533D8A542ED254A5946B4E62610C
            44170AB6357A36D16099299164B2CD11430955DAD4A4E2454E460D13669B002B
            8BC7632E57C9129B6D6F4414D39812D7A6490EC4479483505E5752223653FA66
            475B0D8C1574752EE26041D3543EA43450D4F6283281EFA849DBB621B082A10C
            F35A8CBC0ACE56D0F61146B56E7345219D2C4412009448D1DF336212F7866888
            51E899B9CA84E6E6F30A0CFC502813578055DDE8F050090E627A17C7A8C83AF9
            C300953623E46698CAC177FBD8458BD920431513A1CFE5F3C04F88A4964B8960
            8CE0AA0EA01A06AAEC2A620EE6060480940976B19DF038CD0FD35351659303BA
            E51B4C2910D65AB8AF5988744C87D70C2C2F81B98F7883095CCBC8B43B98BC36
            644515780165F53D054320DCB0C5D005E986801B27700E8A6E035F1080F8D8D8
            5518F8D5A924CE5D088D42A4738455EBE3F1E16FE116894A2B703B55438D1B08
            0D0D2ECAB767B081390A34B5C44BA62FF0AA56B08A559A52013186552206A03F
            0D8DCA9CE5C1329494F8845F20661EC306CB33B524D5D2ED96CF896AC0059A2C
            05C5628A44699E15CEBA4C4F1453CA25923288AE6C755CA2689C8376E9A22A7A
            9EAB71B83796D5448CD3E024E196FA265E260CBC54AA2DF4DB806FA2DA0E8C26
            2765246CD3D339920AFCC82AA202682683CD547A820590B41885B6287700ADD0
            538EE313262D852E03B87F14B1142FDACE052496F9E03BE7C80FF683FE037EB4
            4387244265FC3D06644C0724FE0909B99FD90F891C63E1AA26CA492CC5FB037C
            F9BFDF91FE87D7D87BA98B5FC6E4080911CFC998DC655B48F08DC0C1D29682D5
            0B48AFD9B6E02F7FAEE8E8A87003D9E230E1A1722562F71835980C1F4606EF0A
            33234F042B0A2150AFF24A0D6FCC73962F534B96262891A0BB3410E284B728E5
            938921A79FECF7EE69099A4B433912D5C8E39D7604AB2F566C9EFF8EB5A51979
            72A59C1ED26FE0F823489F9EAD8250520C580F454176FC926EA8D40F6B792E63
            E55AE7BF995BFC5D4A5373AAA38F1AD2EDB0F1ED40E5B864DE76C234B6D1847E
            58C9F13540729A9AE8479F6DF97C7171630320946748DDC78EAEDA7F6FD2BBAF
            9FAA6A87103E146C0FF52B51DC8CC7A604816D6C8BD853C2D4CB79CA07764608
            E4E6C6C52FBDA43535A7212808EDC071B392EE5954D0932D84F3FAF51A7EF411
            76366BF22A174834E47CC4524C4D0B212FBB4CF04109F0424451426AE6D5014A
            B6E4C9D2954BE7BD82CE17A615C9416644F7DEE30E27FD475BC9CA02CF5A4E6D
            B33BC0746BE3E2C71F4B174B063A8431B7461540DF8F5CC74F644ABD860C3D62
            BC556990B46AFB5615A52B9EFA1BFD7E4DB54F92B266E1FDC06349BADAAD4777
            6E8FB1A46F6F4B502866A7448DF84BE6BD287FFD755A53DAAA92634E39B9B5B2
            87292A92E7F50868E3238F92C6FABC10397535834F986065D2912C1BB6ADAE5E
            F5DD9B6F6A96E528B271C0FE357BEF93E7E0807284A538800F7C06EEE3DAB5C5
            050B9A56AE30EB9B3837CCF4E8951D3D2A79C8417E4D6541D1080F8384E44AAD
            106BE86A2261BA0600D99265C5773E6C5FB30E2DAD74CDA8EB567BF438327AA8
            9748B48782C70B76A1A4AB3A3CCA0A5811DBB791FACDA5459F7CB7E8B3C80E05
            4515B315830F39583DF8408B17DC5465DE09058740B0578A02244F41846A5200
            2E28808B5BD4B885C02AEF9929E20FF683766A7E892CE90E4740DF6E8630B805
            CAF22DF1BFAEBE6D0E15ADB02FE7278F033FEF527BC042B4F7BF6D0694C41086
            89A890325F8E3AF7D1FFCF51E507FBF39DDD5CF81391F5314AD8781E49289484
            444962E5642A090D4EA8002EDBBCF9B1CB2FEAD6DC52830F07AB800439B20313
            E6A15B5D7BD0E53709BBEFDB224881A1CB9456D885D5B367B62D7C3FE9427822
            6F356DD130602D8DB05E46DC228993FEF407B74FFF36CA633F1A47BA49115DFD
            D5B2E79EE978EFB36A07DF04E7D421FA262C5D86BEE7C4D36B4F3C6EABA4F95C
            028811E17D51E46105EA1D06DAFA750BAFBD21DB58105CCB4E47CEA0BE07CCBD
            BFA066233ED9665347B3051D2B8B7BC18AB77CC5570F3D682EFB36E9878A20A1
            4473C2D86216A381FDC75F73B5DB7F60CE4872C9B4E586D463AEDAE8CA1631E3
            760EB3A4ACBF465780009B9510806FDD347FCA2DC6FACD89C073B13B02011740
            3890F46651D0F6DCF5881B6E3035BDC469812FFA110E6C94F8143829241A2581
            47051578A62F7001043C0921301A5A56CCFD7D69E93291A3AE6D220994881FD9
            1D466297B32FEA75D8F82DA22065D3D4B27A84AEE0D8AF9C3AA12A974FC3798A
            92C709AEC8CA083CB703B8D3AEFB1D7AFD6FDDEA540E46A214D6DAD687D7DFA2
            2EFFBEB2608734689324940266AA15F020BD6C72F74BCE33F6DA2F4AD402B9D0
            235AFFF6EB1BFEF09058686B49A9E3A74E7176DFB731E06B4459DFBC79C1A489
            558EDDA6E9D9030F1A79E9C5768FBA52E05741A0F4D997AFDF765BD64475F2EE
            934E193AE1E436D9700559E5E02A7D3DB0F35F7DF9DD934FBBABBFD3202AB46D
            88284B408F1349BF4FAF5FDE7C03EDDE3D1789B68089185D156527D01B5B573F
            F164C33B1FD498AE1640544471034F148B69ADEEC843079C7262A9BA5B8E13D2
            89B46DFBA2105446B4F0CA8B4B9E7A326CD89695240FF7F14408780A9A66EC3E
            F6E06BAF2E652ADB70F117A84F6CE0D704F911F62220B8746E2175EEF7FED426
            F2CED497FD436B62DC51D95544D7D50F59968308BBAAFCFFD591B9775734C6F1
            0BDB3F2A2BCB6DDF4CFF5FE0459D7B48DB53BC2CBF8B4A7F981C4509368015C4
            170C672058E0B0188E7035BEC5B737BD74F699838AC504407AF76E7543076CAE
            5F673635E8B95294A86EEF3362FF6B7E5BECD7BBA0889A17549856FDED53DB17
            2E9003CF163863F4082F9BCA3B267A190A62032FFCE29A6B836EBD3CA0DE1204
            C591926F5A7DD7CC960FDFCF625D8A50C864E46CAABDBEBE672A636DCD49FDFA
            F5BDF44271CFBD5A433D5414EA79A847C487DD2CCB7BFAA9658F3CD6D3E745DF
            825F6E4CE87B4E9B4576D9BB3D4A98F03445A022BEA6F0158D8D6DF73DBAE5AD
            B7024253FDBA0F3AFC1092CAAC7EE1B5F6ADADB6A4B656664E7AE28FF5A10B5C
            295FF2250EFD717C587CE3260F56B5CB0A9983842E095EA18E78B08CBF77CD35
            75DB9A002F7295D5158307B5E4F3812060CDBF61888307EC79FC71345D6D8762
            E48B5EC8D968A68D3EC5702094FFF51D49A4AA867AF45A402BB970E30B2FD7FF
            F149ADD056A8510E9A7412A9E9B6FC95373A3E5D96CAD66EED5673D49CD9B9AA
            CA9CAEC01290CAE7B2F9E2FC33CFE851B289EB88DDBBF3DD6A9A81BE89424691
            CD8897FA0E3960C269562653E023392156960A5F5C7CA5B4F49B1AEC47143387
            1DD40803DEA24D2BBEABF30333709CA1BDF6BBF28A529FA179514D08517AF386
            6F7E7BADBC693DC426D903F7AFBBFA0653D10DC217DF7D67F58CA9758258AF56
            EE7ED955E4D0835B138615D1DE4140167DF6F9ED53BB159D8224D59E33B1F6B4
            534B9C5A44157EB1C22B71AB967E307D7ACD9666C177F319D5E8D1CD0F432757
            A0CD39B1AA625345EAD4FBEF6B8551831625BA9C2FEAEDCD4B1F7CC85DF851DA
            F78A2A2755544492A1C1A2BDAD19585BABC4551DFA8B21575FBA4D9401DA51AD
            362A25376DFCF2CA5B2ADB3A2CCE1F72E0DEDA017B757CBF76FD5B1F0696D710
            45BB9E3DA9F6D4135AD229B3E44388E6D801DBA088FC10BE61C5BB2CCBEB074C
            66F527B57377667E75C14757D53F5A6EB2225DE480CC1BA04BC921EE6CFCB77B
            54B88FF2F68AA6B8BE2E641A7C9D253AFF53BD019D378BFCA0C59B69BE443067
            053E94713E45326B5396D84F0C11C6685ECAB7BE31E9F401AD79409C5EE30E13
            279E4834CE7DF44F9BDE58E0735A63F721BF9C71A735B85FD190E530CAB6E7DB
            A7DE59FCF8138D0B8AB23860EE2C924D90A481BB02580225F8B5553929E996F8
            042771664BA6ADFEF34B2F4936D7C3404A0E1F5C77D555A4A686E4F20B6EBC55
            6BCCFBE98C70E4A17B9D737E3BA7BB91C804C8BC84C22573ADCB2FBED458BBDE
            CE750C1BD8B779DBFAD6442271DCC97D2FBDB63D546C8852089012D70FEDEE1E
            FDFEE26B836FBEE654AED79EBB24CE3D8364B264FEBBEB172D7165ADA3A666C8
            6FCE94870F2DBA9E1B0ABECD0721EF457EB90D9FC36642D40991795DE345B750
            E7D97CC3960FAEBCA6D7B6468831FA1EF36BE9F4D3B0664E55E27D45228BA66E
            B4739213CA9CC7BB0171A390B27A46801889633C8BA79A02C82500F7CCD8D6C2
            3B67D77CFC19DF56AF8CEEDDEFD6EBB05EB0D56A78E0CF05DB3787F6DBED82C9
            ED3D7A3470BCA1E87D502AB1F1BDC9E7A61AEAD3BA3AE4D823C9AF8F25155584
            ED9AE3BE171F918ADA1C157D090218BFCE31D75C7723F7F91715BE6B27941E77
            4D257DFB122B583F6396B07E4373BEB9A967E5F819330A03C758E90ADE726BF2
            AD9B66DC667FFEB1E8792DC9E43E8F3D492A6A48287CFBBBB9F2C2B7886536F7
            18B8EFDCFBBDBA1EF5A2A8E84A9D639137DE58F6D043C9C6B6A2ACD44E3EB376
            E224205C45580224525D6C5B7BD70CEFC3451545D755A56E138E528E398A642B
            0A6FBCFBC553CF2A9AD19835461D7F62FF71473989442E57E80BF779C17BEF4C
            9F3AD80D1D082CF61935ECDC73495D5FB276F3BADFDD1B6CAE27BE57E8513DE0
            862BD4BDF6216A5509A321275CB278C5D553077861BDD931FA92C9E417FB13C7
            69FFC313ADF5CD42B75A7B60BF01179DBB555580AEB91E8C41DC47F770AB22A0
            ACCA8E06C84468F8E379F11345BC3FE32BEA94BC8C2902905D8F7DC5563F8AA2
            EC08318494FDC8FEFDAC7D735903C62F717E37CEFA967FF5BF0731DBF951195F
            7852C617054D98105FB05C01AB94425DE02B9C82DAD1F6DA59670D6A350D4EE9
            39FE6872EA89842B35CD9D1D2CFBD627F2EA6CDD61B74C09C70EDFCA5145936B
            73B9A6A9B3456B9B0A0000AA81494441544A1F2C907CBF1885232EBE04772F71
            1F9855E30EEC9F1B392897CC123751110999D05CFEE07DDEB3CFC17A65F5EAB6
            CBF9E7935F8C7328115CC76AAAD70AB94813C9E04176B2A2A5DD9724356DC891
            55487276F1C30F564DB9A31BF5ADCAD4A8638E5AFBD4D35431CCFEC3C7DE71A7
            D9BD470B9CBC59C21A5923916D6F5B356796FDD922DD2C0951503960806018E9
            C10348B71AB2F79EA45B775BD60B5AC6B4FC88579C30F4A310D539038AA5A284
            159B00B00881AA8A7A64F78E7C6EEBB6CFAEBBA1D7A646D1759431C3B307ED47
            2405BDD4202CD76561F7315EBFBE0DBC68138573459FF276C0C43E71EB205430
            9519C16F782E4A095AC2A755D45EFDD493ED8F3ED23F72DBFD62A27B5DB2FBC0
            74CFBE64D8703266179254836C1296EB50D54537EA6953922B2E38F79C6E664E
            0BECDE6386F2BB8F216A02B7828524609CBFF788524D6D214C285A2A0A9C3AD7
            FEEEE24BA4AF166760065526AB6FBC8EF4E94D36B56E7AE0F741C37A2FA97C57
            953D66FA9CB61EC300BE359BF61639B260FE47B3EEA8F2D05171D71B7FABEC32
            9694E8A2A9B765367C6B11AFE73967D79D756E0B510A9C9C14F81AB310BD35FF
            CB87FF902EC02A24574E9C38F0A49373BC06B1295183DAD6E60D37DC627FF219
            8C2EBF5F9F61736E2383065A94D72365CD5B1FD455566BBD7A06E96C51945D19
            6D5A6BED42F3DD77B5BDF36ECAA51B49B0DFBD779231BB05362F080AF9FCC3CF
            EFBA2BB5B5D14B25BA5F765ECDD1C73671C9505535CEC934D6BF73CEE4DA86A6
            2A551635DDAFA9ED31740897CA903DC692FE7D88A2B7652A4D3D65E52C55354A
            AE87ED0210BF00BC841C4431B09CD0101953CC3CFE61AEFC2725FF84452E31B8
            40F012AF55B1F389CC3A1D6266D4255EF5EF8F39FFEB468AF575023B9D4E37C9
            7F79723B9B3BF967BFE9DAC7FA71B5F2BFBCFEAE33646A2F987FC16C9C081409
            C0050B79016F643ED278AECA2B49ED8DF3CE3E674421102D6AD7F5367AF56869
            6F080AED59B3644BF2D61EBDC6DF73B79B4935092890D6CF321BA7DC597CF73D
            9D84B62C3468AAADE93C2CA63C970F6976BF3D76BFFEF242B626B0D48C4FAA68
            E9839BAEABFEF40B95FAF9C10376BFF11677C02EAD926A08A1E095129C032B4E
            4BC45B9C2AF009AC64F0ED6A2950C3C2E219D312EF7F227B4EF68803B3471CBE
            75E6EF3AEADBDBE4E47E975F111C33AE3991743BCC044A3A45BD001F36ACFC68
            DA14A3BE49B550D052529530722D55F47B76DFFFCA6BE980116D4ACA0F55CB0F
            5D1EFBF160F0C190C33E03224A82CC0B12A66D8450256EAFD0E3D7AFFBF0FADF
            02BEC8BED794921D5D014C02601292E92649DC65D2A983C78F6F14A412AF104F
            F42889310BB83EE08B2A4894504113B828CC8ABA6499BD3499ACFBFED35B6F84
            088EA316C19AC07429E44B225F4819875E7A4162AFDD1B35DD9135D917BA7B21
            31EDB74FF875AF529B444B6E5AB275B923125C8016CE68D18C21E74FEAF3AB43
            2CC1004A2147510F1A7C3DF1EC9A4DEB65BB5814C296BADABCEFA7F25EAD2AB9
            565B5B4AAD9D34A9EF09A7378815BE924A845CAA5854CCA6F72EBFA8B6B11D60
            3179E4A1C3264F26AB362E98393B63B67A55C9BD1EB8DFECD1AB812A829A143C
            B377E8914FDE5F347B66A2A36425F4EA33260D3CE9940204A7A2E40656ED96CD
            6BAEBA3EBB692B15C460CC88BEF7CCDA2A49B69AD18900F456A014753A614D56
            331ECC3499AB355B9BA6DE52FAE8C3D0F4DABBD7EDF5CAF38D1151D5AA9465F3
            51E1CD09270E68C887AAC69F78CCE00B2F6A0C25AAE972446B7CDB7CF5C56F9E
            7E526BEEE05C574C57147C07424E53937B1E78D0D08B2F2FA52A373B3425272D
            137E4D503C9502BE84286284657A9888A1A880C9FF03BEEC34B8F0AC171680C3
            F31CDBB6639BC72EFB47F8A6338AC176042604FCB3008B7BF19B168A0D78EC33
            A270078AF44FBFFE8167C5157BE13FCF9CFC34BE74ED84FD0422FDC4870ADB29
            2289752430F3829A683CC04A04E8AAA0B811441BBC1A9104472A7D8B141A9E3F
            EBCC117947B74347497992065CD609A91D98D931C3079F79B2BEDB5858D36C1E
            2B6707386EDBAD333ADE795BE24B4E526AE95E1955009A449CA4E5B930BBFB2E
            C3CF9E584AD5140A427749AD70F2802F159F7D017CDA1E3A7CEC4DB7D101C31B
            A2B0528DE4C0122227E2E53C514B540C2499E27E93DB8B78DCBA159F4EB9ADDB
            86C648E0074CBB1A62A2C26DB39C8D8DAD79931B3366D8BD3337EB86C7E9800F
            4059BB1982DCBE416ADF56FFEEC2D695DFB7D6D793B6F66EAEADFA70FE5CA94F
            DF9137DE1C8E18E329E9368B8602E7857E5C940F3107CAC6A18397C42B10CC79
            5985740308D8B8EED35B6EA95ABB09EE4F5B3623F5EC91B76D4F901D55B593A9
            A1E30E1F78E041AD825CE44437047E14C250A6D4E3E34D2841926511D04D9344
            2D220660BD59A80188E9685DF3CA0BF92D6B5B56AD92DAAD0C95149BF304DECC
            1A07DE747DB8FBD82D1260633058D585C6FA0FCE9CD8A7BDC910C3B64AB5F4FF
            687B1378DB8EAA4CBCAA76EDE14C777E731292900412088901C2184C00051434
            80CCE0082228A02D0A88AD82DA8D8D32297FBB1B95BFFA03A551445B66238410
            024948C290797EF378DFBDF70C7BACAA5EDFAABDF739F7BD17C0B6BD866BF2EE
            7DFBEC5DBB6AAD6F4DDFB73C4FCE795C51D8A9F3C1CAF92F7EC5D225178D0732
            93452CE5D995BCF995BFB872CF7D4936CE03776C619057E50EA4374BB77DF161
            2F7D91F8B12BF724FD09D97E99747B891AADEF54D581BFFBE481FFFE915E95A7
            E7AD5CFC4BAFB19FFDD2F5FF721521B15D4FBF62C79B7EE5D0D2B65274735B85
            617506ED8DCF7DFAC63FFE40F7E86A36D75FF9A9979FF1A297AE267384255D5E
            6E79E081BBDEF6EBBDBBEF2D0BDB7FDA655BFFE0BFECEE76CAB03FA7DD96F121
            21D24C8A1CAA9FF3858D5D2C778E571FFCCD37C95BBE91ADA6A3B3CFB9E46F3E
            7240A838995B2A53B1FEE0175FFFFAEDF7AF919DEDBEFC658FF8A957ADC51105
            622A8893325D981CCC6EFDE6BE2F7E7DF5AE7B368E1F8ED28D1DD524DF181773
            4BDDA75C71EE9B7F7D6F7F2E09BBC7D686268E3327312B6F5CC1C6A53075AE57
            4C1905DA1E54A31EE208B73A012710B5507CECDB94E99B972BE65281F3026C56
            70251E2026A98DCEF7470F25FFF6E6A3959774E0E901BEADEF11599D6427BC28
            C78916ADF99DEF61E9ECE61BAD1FFB6414A3A68CDC82055F0270DD8A2402511A
            1DA2D05B190A9F03152BD557725B958BE3FBFFF9D53F7DCEFAA85B49B9FDB495
            0B2E3C62D5D2D967F7CFD826CEDC65CFD979288CD6272A4AFA64984E5B5D3BFA
            8E776FFCEB17941A0FE7830BDFF176B1BC55A8015A680923CDF7465B1656C34E
            6EE6E645B0B5DAB8F17DEF8E68FBAE6D54A79FFD985FFD3571FEA3C5425F14C3
            DD5FBFE6EE6F7DFB82C73D61E182C799C5E575884DD844DAEDD986FBF43FDEF0
            277FBA6BA38CE6FBE1158FEFCE75CB1BBF73F8E65B17FB0B776AF9E8FFFA8EF0
            B2A7EC2D438A3F6221E2E1C6A2DC109375B1EF08DAB66849EEBF7FFF473F3AB9
            EDCE1595DCE9DCFCEB5F73DEAB7E7A1F9DC75E7F98558535195A244AB62F3A0A
            206F1E24604AE9C96C5B3ED47B767FF9377F73FB83FB09206CFDC12BBA2F7C81
            18CCD753A1B45F9657269DCE502743A9C656E68D9417337B39725EC299AE0E29
            903259BAA8831582E5A39148C7682B1E1FC6F73DFB0F7FEAAAD52FDEDCD3D151
            6DE79F79F9D9BFF6E63D73F3A955DBCA6A7EF5D8BFFCF4ABCE3A722814D5193F
            F64CF1DC678BFE22F871C2AE2803B1B4EB78AC87FDD276E030CF9A54F7BEF6D7
            D5D7BFD10DEC508B73DEF6E643575FBDFEB59B6267D2C5DE792F7B897AE94B0F
            7406592120EB14464920E64DB67064F5FA9F7DE3C2FAEA7A77FCF85FF8B93D1F
            FDFBC3878EA985C5F35FF2B2E4C5AFDC1376B302FD1D71C73CCCE6E2739FFBE6
            FBDE37BF365CEB448B3FF9E287BDE845FB75BF8C073D13AC1C3AF0ADB7BCA973
            FB1DDBFA8BFBE7E61FF9977F960FE6C80DF7AAECBA0FBD7710D947FED0D3D5D6
            D337E44A16CE078360F1C8E18D0FBE7BFF3FFDC3921EEC0BBB8FFFE007C4C3CF
            06C159BA26D6765FF59A9F3F63A4574567E5B5AF39FBC53FB11E29CC5FB86089
            7674B50EA1E903C7413E383A2A6EBA6ECF273F2E0F1E0FE2A5DB3B838BDEFB47
            E2921F18E7858C92630461407041465FB089215B630A245F34D34DCD525EBAEF
            02115A6D13B1392030658EB6AB22830173C6571E615F98279CD100EB0E843A0C
            63189D93A5604F1531C98FDC74D8DB17D972EE39F55D47B6D52971CAC9BF7FC2
            F4D0437D7D1F86D073889A36B94D8708E39BA622FB32D7EFC55A263A88020E91
            40DA438BA0A5750F33657868F7677EFA9567AE6F4483DEFC739EB9F2BA9F1751
            52C41D51DA89B36B513041EE32EAC649E2B21DC78787DFF1471BD75CEB74B6DA
            D54FF893F78A95EDE8CAA385494221B23296C5C2C2D87442E7E68AF5C957BF7C
            F3EFFEFEC3A53EB63179CC2FBC5EFCD015E005387EECCE3FFED3B57BF7AFD2A1
            7DCA939EF6733F93CE1324013FEBD6F1F0AB6FFAE5E85BDF7958D41D8E47C3B9
            015D78D91A399ED081DC1D474BAF7AF9192F7DE9687EE5709ACF7792E2D6EFDC
            F8BBBFB778E46812458FFB892B05FD33198A3D87BFF9EB6FDB3A9A1C4DB47ED5
            0BCF7FF56BF699EE3AC1231116285E4215803686966467230A20CBC00E3A614F
            A4A799421C3874ED9B7F6DC7FDFB28E439E3793FAA5FFA62A496E8AB130B5A93
            302ABB83552B46E8A901F74361591890E0B134490CF1F97ED4A55B0D94DB1586
            E2F67BBEFAA71F12B7DE559AC9852F7CE6D28F3F53885CAC8ECCFBFFFABEEB6E
            2E9717DDE32F7ED4EFFCC603FD81893B2B5935BFB6F64F2F7EE9F9E38972D5C3
            5FF83CF1822B45D2C5DA463DF431CE758B38DA08257EACD5D9E3F4E89B7EC37E
            F53A1316EEDC87ED7CDB9BC5DCC203EF7C9FB9FFC1BCD8186F5BBEE46D6F091E
            FBD8A34167CD04C644BD98A2AEC36706F2E0BBDF7BE4EAAB8AFCD8A3CF3DE7F6
            9BEFB10BCB6B5BB73CFD5DEF9AEC3CFD804EAC4C143DB24ACFCC47C167BE70FD
            7BDFBF344E8F25E1B657BFF2CC57BE6C9F8C7315F79DDE7AECC803EF7FD7D12F
            7C76A552079D79E2BB7F4F3CF612312EC5BD0F5CF35BBFDB71767FA2CF7FD14B
            CE7DC5AB1EB4220DC539CE141FFBD877FEEC2F06AB633B3FBFF5A53FB1E5CAE7
            A12BC564C30FBDFFDE2F5EBD6206873A0B67BCE557BB3FF8B4555B0D92683E1D
            5EF7E10F1FFDD4E7160828CAE4F277BE5D9CB70D2D797FFEFFDFF799ABC3A273
            7F7FFE82F7FFD7FCC2F357D30DAB23233A5535B52F983561FB62B9CBDA8A5961
            107BB24E487B8E66CCD0B454445FD964ECFBA45907C8AA86BED2F79D09A6E644
            BD990E5A98403913F414AAA5F2E58CCC29287CE55FDF78B862C1DAD6E6B50A6B
            EEFBCE8C348F65BFAF9CF226E3FA7D646F6AEB580F3D20FF04A953F2AB462BB9
            D0EF25A1EAC551142A4C0904DC71458FAFC31D59DA3DB8E70B3FFBD36766D944
            3BF1ECCB2F7AC3EBF6CF2D1E9741A7D4B42013610C853136D4CE7682FCF4343B
            F0CEF7AC5F73AD72D96A60F4C58F29078B4149463BB2815B8FDC05CFFFD195C7
            5C7828035A5CEE88E4D8E15B7FEF5D1B5FBB7E258873FAA58BCEEFCC0FF2FBF7
            94878F4F8EA7873ADD0BFFD32F6EFFA1CBF35E37AFF201BD9E6FDFFAD5DFF8CF
            BB2693AC2C0871044B5B0A674253C8F535797423EFF4F2C75C70E9EFFC76B980
            6EB748C70B070F7DE5D7DEBA74E05039CE7B0F3F6BDB8F3D7BF1BC738FFCD3A7
            767FE52BE1FADAF1B9E4B1EFFC0DF7D84BD7E3AD1B36CC4A5939CBF6A50C98EE
            9FF00BA42D63DD8B83A81CEDAC8A70DFA1CFFFEAAFEFD87B904EC8E4B4AD2B8F
            3A777D3231713289E3511899E52D4F78DEF3DCCAB635158D9C1C3B55101642BD
            1B8DC3415074C270A07B6465A4AA4E8BC2CEEEBDD7FDD107DCD76E9A0F83B5E5
            F0092FFC61FDC8D3B25BEFBCF72F3FD1A9C2DD3A7CEA2FBF513FF7D90F44212D
            D80E27E647A34FBDF255BB0E1E1B04813973A73A6DD724EE6460C711A992E58E
            6D975E79A5D9BAFD98A9C2A5859D1B1B077EEEF5C1B76E2923F3E0CAE0C91FFC
            43B1EBCCEC239FBAE12FFE6A4B3599C432BFF8C227BDF18D6BDB771D52DD2C0B
            FADD5E27CC77A6EBE2AACF7FF18FDEBDC3156A5274FBDBF6871D7DD9532F79C3
            EB8F763A47A496419769D7F2B3AB5C5DF5E59B3FF0C1F0C8D1E349B8E5675E7A
            EE2B5FB25B85645F16744241A8B8FE4B5F7AF77F5B387C74AEDF1FED58D2DB56
            BA517FFD9E3DF10387B2D21E3F6DC7156F7F6B75E105F74B13CEF5E8E9E26FDD
            76FD1F7DA07BEF6E61AAD5E5B964E7D6B3CF38F3D03DB715BBEF0A0935C93973
            EEF98F79E73B0E2E2EC97EB71A1DDF1556873EF3D95BFFE4CFE656D3B8B3B0ED
            072ED8FA234F132EBDFF6F3E36B97FAF2D7B7B97569EF3D1BFBC6790E86E726C
            7D54195556B4F6B6B4B630920C4DCEB99812954DA954AD2DCFE7BC3E29274D08
            AB99DF916D36978E1219963C4FF97055ADC8B2729B38C02BDF5945474C23D1EB
            D3BDB3195FAF773C3B27884B7DF88683554DFE525B07BEB2975B3B79B2E92151
            8810DF175A99DA95664EFB7BCD52D5D727C341ABE0113B811708030748EE1272
            49E268D0493A31CE53C8F885BEC238DA9A4E16F7EFF9A7D7BD76E7241B2AB3F4
            FCE75EF4F3AFD917F78FDB2036CA1A37A6B31D84FDA81729AB75B66B34BCE7BF
            BC7BFDAA2FCE57E34E3FDA5396417F5E95BA326243DA83B17CD65BFFD3D6A75E
            76D0E95C45846A16C71BF11D775CF7A1FFA9F6EEEEE639B9137AE17DDAA342AF
            CDCDCD3FE5898FF9A5D71EEE7533A39654D01F6D5CFF9E0F54D77C3DB2D5EAB6
            F91F7EEB5BC5398FC4481F01F59BBE79D39FFCA55B1BAE77E3A7FFEA1BC4E58F
            5DED44C675562AB77EF5555FFBB33F9F3BB43E30B270324FC70B14A97582613F
            881E7BD10FBCF92D7BA2799B2C1D5907635EEE685D72C7F5A3485174A46989E8
            34D1160DABF4745AF3BDFB3FFB5BEF5C7860FF5C3926AB6603D6348CBA1B56AE
            45893CFDF42B7FEBB7DDCAD68361424771287551C9AA54AA7212C3E7A1E6299B
            90FE17553D939D1DCAEA965BBEF8BB7FB842087FFDC85C2F4C09BFC82A28AB6C
            B0143FF1072F7CFD1B8F2FCE1FD150DE3943397D70EF275FFBDA5D878E6E51C1
            D0D9A1A954A70BBAAC2ACFBAFDECCC47FCC85B7E637CC61907E95DF7FB0F1B0E
            EF79DD1BC33B6E5D2B47FB772D3FE9FF7B7FB86367EFE0E85FDFF29F771D3E98
            AE1F3FD04DAEF8D55F099F79C5A1FED2DA06A6FEE67A6A7EE3F0C2917DD7FEE6
            DB07F7EE09D3CACD6FDF3BB7F0C37FFCBE74D7B6A3A1DCC0C819817BB40D9F51
            16E273FF7AD5FBDEBF9899C920D9F68A173EFC4557EED521C586B12563906F2D
            4607BFF0F9BBFFE223BDE3478DC8438A0C787E36ADD478DBF6737EEA153B9FF3
            C3F78CD260EBCAB8C8E2A27878A75B7EF35BD7FEC11FEA7D0751670B75BA369C
            5FE8E476238F753EB7ED19EFF8FDC969671D4C3AC36CB2B2D08F8B8D95C9E8BA
            3F788FBAF59EFEA194D0E186C99CCA423BCEC260B272DAE56FFDCDDD673EF2D0
            60314B31C65899BCA4F8C5540C5B2442A4C6BE109440CC72127DFF29184E3647
            31DEB8F8521113E3F9C0AAEEB5936D30759246353A33352AD668586D1AF07CB1
            493542049E4145FEC5F5074A28DD723FCCF4CC3349D2A9EEEFFBC1240F6D85A6
            D1D434163B15DBCDC9FC2F1273B1B95F0BAFB64BBB96A00A1DB724D6FD244EC8
            A34601922F786499F492F93CDB7EE4D0BFBEFF7D0BA361A682F9CB2F3BF3879F
            BDDE5FD828852A9833016D90416835E1D8C1402E8D8F1FFBFB4F8EBF71433C5A
            8DB4AA925E568AD881ED4DCC778F24C1793FFEA3BDF31F990FB60C8DA3573D0F
            DDB3CCDE73FB9E2F7D5EEFDB9DDE754F9897BDC59562794BE7C94F98BFECA9C7
            B76D99507450EAB9CA52887EFDDF7C543FB88F8C50F188B39FF6AA571583E589
            755160D5BE03D77FF0C30B69590562F0E8F3CEFBC917EC7685D67361592E57E3
            2337DC38B9F1F6E177EE8A470528D47425B6CC6D79F2254BCFFEA1F1F28EBB87
            26889636286AC6E46D955B64FD08B6C65276C8BE90BF8EC26EA874956FA513BE
            7FFF573EF2D1EEDE43BD72D2EFD83CDD88755459056A99FEFCC660EE292F7B59
            BA75DB411DAEAA70EC34B81572A72A891E5EEEB1220B9624A237176A932EB8B2
            BFBADAB9FBFEFD575F6DEEBD2F3F76A8747934D7D30BF32B975C3A78E20F9667
            9CBDCF595A797A3BDB948D8EEEBBEE43FF63FEE091CE24474B3B2E479ED71276
            19EA68BCE3ACF39FF7C2F199674CFA7DABD4CEE178F7073F58DD7EAB9E8B8F6F
            5FD9F533AF328BCBDB266571F3B7EFFDD8C73B6531EE26C9C517CEFFE873464B
            5BACE91A8C5915DBC272C768F5DE7FF884FCD69D71EE0E144A9C73DEE3DEF086
            0708FEC798180D08ABAA300AC5D6B250DFB8F9D64F7E3238BE517493B9673C6D
            C7E5971D8DA21C22B5AEA3C482764BEB6BE2869B0F7EFEB3D1EA8107BE75F3CE
            E5ED627EA53CE39CE52BAE089EF48407C06E974030DC9A5DDB96CAF5D1F6224F
            EEBB73F5BAAF1FB9E3EE630FEE91C686BD38DEDA5B7AE479BB9EFC74B375D7FE
            EED27A4241AB2BD3D1E2201A8C3796C6A37B3FF68FEECE83E6E0B1C978D81BC4
            A2576EBDF011C1791724175DBA776EE76AD81B32336B5E8C4B6B0AB856D07692
            67282B7AD9F8AE2372A61D7089C83A6BCBE0E0D4D3D18DF0A9F0DEBAE42F1CA8
            40B508A3CD75CCE45F3CA881ED60D21BEBFB40C8BEB4756B5C53F8898219FCF2
            A1AFD15B08444356E2B1C5EC6F7C57DCF26FE6046EA31EE54EF893B64F393879
            BA12937B455156398B0E326DAE64E63AB223C02CB2134549A4BA58E8905C870E
            95D0B62BAA9D64AA8E1F19A888DCEEF120DED0F1A8A20033102552A11BA8A9EA
            85686EBE032FBA55BB85D13AB96C50300A2D3A836C5425F1C01685EAA8A128C6
            89A4D3625D381A17C04C6160466B0FEB072A3D78F57BDE95DF7053A730DBCFBF
            F8DC5FFE15B16DDBA43F777894AFE755A7BF9CD069CFC7F3D2EA7C42882B8D93
            6359352C44DC1B085926C2CC91DD20945F91C993E9FC6042B15F3EEA75A2341D
            6E1BCCB923A37E19A087769282DCAD134E4CB12EDC48755C77EE784EB68E423A
            4CA6A418ADAB687123A53A52939521EC12631E365FE84403FA95F5A3F398428C
            5C2E3243C193265389745D141D198FC3C5C5E3C6527034B150EF3095346509AA
            2787B68BF9859E1479E02AB2895DAD3B4E0E28061F8DE7FB51B97A08A736D0B6
            74AABF94D2E7C860048AA884AC1C59D48E322B1D591C3DBC18C5769429DD153A
            764529983EB4A4D5D7719A24C708DA4055B2BB2309BAC75693329D9065585E3A
            2814AD7C478A389DACE425861E7BDD23E3C9C6D69563A5D079081E62550EBAB2
            6B26BD6CB4C54851B84A6839B77C2C57043F534D6055BA5C42B03772F39124DF
            200E1FEEF707224DD7FBF3D9DCDCA1D1A4423ECE764120AE92C9E8349309577C
            EEE77F662E1B53D8FDB81F7F9178CE8F9BB92D77E576A4E3C54172ECE83819F4
            466BC7B7CF0D08EB76F3D5D8A42A2FE4FC8218A5CCE9C00483DD25BA8D349E5B
            AB8A71B6BABC3450642165B5250AE75C688E4C08766324B2188BBECBB2512EA3
            2CEC3D783C9FE8B00C40A491E7684622FCC2C95D4C5117BE9654191D25714CEF
            390C1AB5230C66F31CE26606029EAA09022F8734452E3049ADAE7B4BBD507FF9
            39A359E0C3EA813EE1227DA04446C68B93582628F0F6A8C62FFFE3BA83450369
            5A4CD1E45C379FFCFF7B1373525A66FA119E5B77F35C42FDA77606BFD87432A6
            05A1E8D3CF8FCB4650AD136AB49E0640A4645F58F0941E18337971283A265F19
            74C7478F47FDC19A5305591DA39154C8520A24F298F17E157602DD8B28641A77
            034111565695517740316FB7D303A7891499CDE341BC9E8F716F85704649BCA9
            800CD97250748FDDDF59DD2F0E1CB8FD1FFEE9FA83AB57BCEE977A973DED4029
            420A24AC4C2BD9ED2511992D9B0731BC49569474588C08B3BC447360A24B9962
            A6C104D6C8CC697228413551A1B4B1CCCB729E0083557658F63B5D0A8387E990
            A01AAD44969B51E58A30A6C83C4811064F6499939FE621CFBE0C1308114A8A1C
            09FC8564725CD1277B5C95641F45B2C560F380A108C135669614DD4F05F543D0
            AB19022F909F40AD0E05854032874935E8C6144ED3F1AB8A72717E400B515420
            2AD74967639886519FE29EBC0045138566ABAB1B8BFD398A4563706714E46191
            980F402609346DA55696959B0D9D16C202AE138F27D97C7F504E327AA7DD2820
            943A994C2AA5D08913B85088B880B42A1D0DD1EF1C25106A1D2D1978763A11C8
            213A68809E732A1D4F9285A5495A69130815AC9713F2AEB2A2DBECE514DC56E3
            7955F5ACE9612A598C83A808A2B420341B1545D6891367CAE56E3CA8D2B9D583
            62F77D62F5F0DFBEE7BD0B8FB9F8D9BFF307F78A64231CC848AE1FD9C0222C2E
            63245219ADCA4E9C6B8A10A528B3324AFA65096F66A4DEC8A5EECE1F3A36EAF6
            7A16EC20F4BAC5E2A0EB6C391E8D9697B6D3B61E0D279D6E94E7EBDD441F3FBA
            51E44EEA5E6AC8C295C322A3C88ECC3D3A060CC5E1088B50ABE629011DA23345
            859A45C06A5B0046F0E6346DEAED4556A5362E655140590DCD070164BC4E75EA
            3D8B94F7FAED416E551F6180429D4409529E4A358C0D353A41FAF7BF7F95F04B
            B8B988D39A037BC2C4B7E0A8C4770D075AD65082ADA6B427C647AD415212E49B
            B3BF8C99092FE9CA311073E25A2F69C4E9A2CAB33180F7DED902BB3EB7204D75
            8D6E2EF3728319D3451A0626C6FC910C51AED6DDA4837E48FA011D4F5181DA45
            D2BE8A465AE7961C325489C0D762CB0C948BE415BB28B48023D3A8A00C409D49
            8BE434F43C023F9F4E57A9B4E4015668CCD36DF498DC69611077D6B3073EFDF7
            07AFB96A7EE3E89830D1AE332F7BCDEBECC31FB1779C93C733902C00941CC030
            124A813C56C0E26B139005BA8EC5E4541561D43EACE84F744A9FECC70A95019B
            5364244B40D2FD60A0D5B0B4AC00BDA6B10434C20D103AA8D09021282720DB2F
            044F607545009E0A452124863F91DC04EB3848AE033217502CD20E43051662C6
            5C8C84466D0185C5AA2E82D23FB600651A26302081C2646B20920D8D8C71A8A0
            BD425B1CBCDA41A5780A9FEE44A9310BF14A90F481EB0B1C310A445B15DF010A
            5C743B967E6AE22AA35F2C559C11DAB706F254A84F841068B1602F2A087D0459
            052348715FD8059105A86DE875AC072645E08FCD13A18B00ED3E9E72AC122ED3
            F4910E75356326807702CCDAE0EF00497B64736DCA9E64655E19E604E40CF8E9
            74149005ED393B17C8ECE8A14FFCF1FBCF2D469DF1C69E23872F7DC18B4E7FDE
            4B0E84FD35F20DD69A6A42C71D8C430400690B121495658CCE79FA0C08E08000
            059D6A62227546EB63A0A417D3E7A2E08F46925862F2CF602482597B6C497755
            E4599A51D042F63DA2BB226F47AEA9C06819B2F72C49CDFD7538393883128D29
            8C5FA49E665B0339D581B535DC00831A287D8B1C70C8783F2D58447446F4C7F3
            CA5BAFCFE695D9D8A7339377F36BC6D6691AC62901593774DF8521333CB07DF1
            FC757F72EDFE12DD65536421A6A529B7392F237CE98B0EBC8746F06CE4D3D46C
            BCB3D9B8B0842559B84678A92E68E15537FD2CA2A96F21326C33405E3A95F34F
            F482C8DAB27E9DE3E9EF467F1A7275845CB4C6B08D648A2917854112C54944F1
            68040788938916A44A918F0A4B3AB225A87100F7C962C1D5A89E8842B2B0CC5C
            06421530B5D20974118E0B4C23B87F0241BF0A9E3466D72488D909697F997E6F
            61276DA57BEE95FBEFA7E089D6CB9C795EBAE5F47D460D19948D2663FA75983C
            6624806B43C7026041CE22E13D3A454A941192A86C6454012E18D833AC2B6DBC
            8860BE8502293948D0EA0B10632A1C075B39E85C984E6509F556F4DF3988D08C
            64B68A0E8117F2F6E08FB53CA306BA15C7B4E0206981029A02AF2C8C0B5A74FD
            0B2AC9391A320B924E656EA17E5CDB17A00E8A89B8F721E27B8DCA50153D2B23
            AC5224242D2F63630702E1D4283A06B40D35E4A61C025628434B436E49409A0A
            14C5D2925346133145644E61A0A682EB5214DC937D3189028F252D9A99E834A7
            372008FF8531C0232823C8C24294CE55788F56749C8A29D80A20EB411BA55436
            0BB89B8B0E38F70AD20E5215533427A1A4189136852D7B614C4B42F88FDE8FAB
            7C3B3C1A357B41D971661026E3071FE81ED9474630D9BA4574E78F0EB61FD19D
            2130535556E024A63D88980B035A2E06433C6685A03CCD290D55A09F64225526
            050B18D8D8C07538CDF645D1EE20A302861526B12F096017799AE5B4EFC9BE84
            9C6131F0254C5B47DB96702B199A1214993C486D0C45C0B02F11B2F9BE718EB5
            896B0D59C9279305A96134FC694258544B3E7239C9D655279F0F4104C4160533
            385836E78BD66D1CE3FC9955B209C75047A040098E41474CA7270C8751F2FDD7
            EC2DA0103C1BBC040DA6B29BF33238F75996159858110117745A65EC87509043
            35304912E68903E59A7F1ECB82B79BF4B71BFCC2B78B4FF5D270B571B1C60B06
            202303BBD7DA5AC7F645B1E9865B454686A3C1507792502FC0D756484B52E81D
            680AD56D0997CD43A865A90894D82EF93D74AF81C335800C144270840B78F53E
            8B6E7CC322703CB3C64965BB1D05A623DD5DE8C40BF930CED6FB21265CD3606E
            3D0F472579B57858A5143BD05129CAACD389F8E56BBF0378BBE09D6B94925519
            0317C5A6027915907000E66ED0EA23A741062264B6607AEC4C05B9740534372A
            4DC6A45425811F50F331D6C02674A0EAE08109C5EBA3C0D4801C1CF4B9999B83
            9E2B422ECFCB76620339E955BB64457E926C9C65D249DA8E0EF8851E1B0D3542
            473204B71E568BAC8409A5E980E4C169EC19B285E48E599A079DA6AC6A6CF107
            48F8B0E81DC82BD10CC15A557E40840E395D9F822CF0D7552892394858D2A2C4
            26F2D2BAF4C6C6415E92C5B551C4AABECCBBA9181E99C28218056A0D16A29D4A
            33D53B190FE9FCCDC0DB13DEE1A48DA53787766F0C3132419F25980B8727C08E
            2E0B4327A1A39032B27AD2EF85BA540B512427C75D3AD9B2B8746C23DF10BDA1
            8846822C3BB42E618519197659B44233E8D6CCC15CBBD8AA32F81D5932CF29B9
            040A1634131AD6CA7B781FAA0CA067528185D0E67959D085E108D1F0E2A7343C
            212659164F61C7DF5DC5F62542FE250EC8508ABA9DCC4AFFFF9DF7E092C986BD
            485B0E26E3B601AF496EF029F686C673FAA22615A0918C3E128C3365C59C79A8
            0EF9AC052E32030E807002145662D0E2E0CB319292EFB9661FF0CBA6184D3778
            6426B7D2E447E8FEB22C9575E330375F09D9CE3B35D5A126D6E37F27FB92C49D
            C6437A23223DF3A874D36452206BB16E08E27225BA005807870EFF54780D8419
            7E6F6C358C092B3028007F0810C130BF3C2D4E12477A4E53E8449B0AFCF11436
            D0A1451C0BFB423BB9AC544138A12B0D52132AF45AF7B2796ACE8A71B98E6FC0
            234F2EC2B1E38FC0FE5DBA2489C2AE2C65350E0230ED5745EC286830D1A4A836
            8A11FA58C26892A54182BF16914F26600FA122F2AF2C392E35EDF80AF4873682
            A69FB415EE10FB870C838AC0CE0BF65E1BD2A6427E352AA428301F4FC6A85070
            6A01E006CA3DF072358245FB13A24F64FD2820828A0BF39F7B226EAFAC04313D
            CBCA525C9CC48B00D508F00B1917E75861C9B0EC8E2568402707A3A3CA8BC0C0
            64106849709601AF98442D60AFC5EF175CB8B0A2F814C88F003FD13216E8D420
            DBA1C94654100E6339643A3B0AA9055D20FBE8428062AEEBA13261F0EEC08EA2
            193D99C033B7697C2CF63E8E1F5D22014B9F430A8282D0A0E145123247BFB750
            39504F09DE50D091D173C0CE219283F83A8C9145DC1A130E92E49CE8DFF2A417
            95930A0CA5318653D2F561B7339F5514C74980264C7BE5993519C65428FE85DA
            0AD214581CEE5BE3C4A8A989FE710F606E626E5374A685881C3B04245935DA30
            46064DAF9029B9A3B480FD303C6DC81DD9B901671D0B36D6FA017CE2E1E3C308
            278CED154CB8628BE25BEAEBA42CA036E2003213F4E567F7D83BDBF6F4F1F6AE
            73C3645C0886F8DAB345D8E86B4C259B75D1801ED7608899FE3A8E93D0DEAAA1
            78883FFCC3ABF794E48C66C9319D6ED23C2D8AA933436465E893D234E56136D5
            50014CBB7A1AFBA2FC277B9B92743B71D4F1018F4FC118C14B209AC8ABEEEE6B
            AA62402E4D1DDA3AFFD3A02E92051EAD317E63666166B143D40DD7010A1890B5
            D0F11228244514F78492103C7A170080092A5060A3A1AE038098D3D9E8D13E57
            3C6B20A19825FDA013A7A9F8E2CE1B38E5D7D1C055123A278431E8F4A222A2E5
            8CB4C39C6008C57A1DF427635A238B772F91F027884B7F0AC16BA79222A647AE
            8252B82CA22DCA4C4B56C3C4D06353CC21612662C88C8831DD8E155D7853247F
            72ED720D5817D111A9503526AF8C8C10FDFF92E0BA8C4BA80FE05071D70B6025
            B018CC0AD815605C0819402D85B369647514FB4C1CB226E34F7F5CD051A3378B
            A46BA1209D964B28B6C5964F6FC8A9792CBDEE109A7032915057819A8AA6B74B
            9836884AD8850A3BBF0CC8CCD04D015E42CF8056AEC4F858D0616A717A1EDEEC
            C8BB82A713D4F821C84F75894A2B2130DE56F4AFCA14BCC5125AA8222A72E470
            0245B163A92412333E6406F68405A53B613EC9B0020538C13D3C6105EA7E7A64
            AF66837F4CBD5D59E3858C29601105A5094561CA2621BCB6EEF6C989DB3C1D74
            3B6BC38D28EE8D72422EA8BF10C0C8C12D4C7746702798838498B32CEA86D3CD
            2015FE402828CAB3A69F2B99341755723001D20DF58DEA007671D24041F68FDC
            E9A428C73C2D5D219EAC34788509DF494F1EC62806B911C3410F2B2020BF4B3E
            D51F73644AF859DB6C665594BE710C169F01417DE2A6F6C2676DF0A7BE772C44
            39C09F62B83ADF7686E11366AE431E079E635A51E2A8C9E3090AC843C46B5C51
            92FFED4BBB39BFAB9A6A340F07D465E1D9DA500DF7B26C924D52FA18F28BDE5E
            F04090BFC03489D3F6B8A082958005DB539D7B4DA6D6ECD5B6D3D38572FA48F0
            D3182E44D70FDFFC949F47F9C3EFED14CF3AA20F1BB085A34536318AA9950240
            7ACDA34309FA9A411659C990DC84D119BF485A6F74BE7B8C4A9E0D963F64FBD2
            986696A0359C9E6823D5C4B1CF8B655747D104194742502585C6DA6460FF2148
            811406AD2479804959AE8DC66127F1F4A55199D075CB800E31D9979222C5328C
            A192CE43551103F854267495408E917AC01C1539C622944520729C0793902D44
            7107D5DF8C564B421F56A684C07D5B248A327E05E0A0A2804317C914C52CBBD0
            BA1D840F015C3FA431788F20815E223FC32919325DF4112647CACE203105D24D
            07FD178247642B9D8E4CC0E22904B958DD1DF2462A2C43569384A745C329CF89
            D136480C99713101C79EC0D9C61C80C671F71D4F84E9B0D021581A83125D17CC
            D92A5937579B8A9D52972E9586396088607407A928AF0C07CC2291D9851248C9
            A09A6518C8564127DB5755E914D30B8EA1232038A643B28A401C8E2E1F392687
            27FBE2123FF2429BB7D719AFAF23C0A7E0D4900D8F9061AD2A8E75D08152C198
            A8D8C182033A040042DC576FE8E2A580FDD6585504C54087D8A3104057D0F456
            E4FB3A7C7A0C1B4842AD645F464586464956F78C32438F5B2855F9588F83235F
            1EB2D8E191871B4A359A81E0CA959E9C577029BACCB3A60E2D02599F38189ABA
            B3CCA744392650B056686909A326B7D29236E464A7E871E996B08B1899D6C087
            AD299B0E817AB9E61925A0182DDFF5AFBB73B27C42CDF4D129DB8810B4E042D4
            D3D5D09DCDD2319B31E539693C9039457ED7F7F51018A6AFA8E30DCA34A1ABE4
            740E82711AC3703C066AA3A6F2195F0E0B4D9BA6F11D3EAECDEF32E3776D5338
            3E52CC6F4E57A4634EBB3A846E9C32984DD2C8443811A37A41AF2AA0803F87DF
            86A30FA1BA5641B24386DE1ED3BF8688DF0D6F419362DB06E0EAB7A267680B2A
            DADAF4A161A13A3AD1DE35921940EB131F5729368663D478833825D7AE29049D
            30041C149E241999BC0AAA43E0DE230748913F454CF8EB231DD20682879741A6
            13786D978774EEC9D049425EBD3A19EBC0908B252D43C2622564549143913E3C
            62F842673FC6E2E02461A5B4C2ED21765030A782F3047E9E9437089840018E70
            55963CE6D1394FF38A93439B2484E89983AF8C00F47DA2B6C6DBC810E1D9E0B0
            0BE6E4AA04AC36053A91158314AE7064B28AD32E10A8A37DA18284318844DD8E
            5E0A33BC0629E7BB22D833C906D0E5AAE496A6401356A20093797D05CAF6880A
            9163ABF0E225EA7112695CB0C0424E4FB166B32D00064DE00CB99718B608619E
            576561C662C4A7AC35AC7C5F1559E46E144AD669A3A34E8B45FBC7301428AC4B
            41DF6FC16B4CC10B1E539A1000B807F97632C655D367A611D5D13B262F20CD24
            28735970601F44169E8C8E0DD2CDB4F79AAE59BA6A9617C8725A53B0DC09996E
            81378D1C243F2C3E11D1A882CA1754E595AEE703B89CC23E97693518BAC05BB3
            71F18DB9CABB796F59FC34B3D75182A6B2CFCFB2B366C1A2697615834E741D26
            8541190CFA05E81492AA4531D6F9B4AE3716DC43AF63F9FB57EDCE55B899DCBB
            1DBE6E7BEB5C6B342AA45F08BF544A35ACE54DD2E484EC4B2D4840A6BD93C471
            4772A34E9BDFE5BC539DDF86A1B2A8869037A695055471F51C946C60CED4947A
            361DE5C58F145B3ACE59E23BAC96666E2DC3FD1781D35CFBA4F7C0DCBB1E1523
            DC0F583A1D274D804AD28516B51DDC33C74790F4B0067DCDCA716E5870423AD0
            56917D4910AD154CF41B265147328F41145190007D80F5C910A91963C9962B9D
            6439529D9183D269A9BA25A631D8C0A2BE4CAF3684CF44FAB6842C626053857C
            4AB702D4A6CFA00392D0D9618967ABC8BE24882DE0710D2330C257111C5A5860
            581F997D6491603B58482040ACC08B837C260A2D253774B3D301A209587C848B
            8FB01370B94ED4BA3A1678099314883030752531A61E6A86F49A8F2FB22F70FB
            816714A76B94023595C2B28686E2C896D053653BA9911438A2A90EC5B2200A14
            1A27E2AEC72064AB211503FB826409B8EA23A463598D5A907DB10E15251555A8
            9E9BBA0BDC792E1287A80E9DEA92DE8E46053E60FD0CFF0B98CC2A709F880803
            6813F13E846E9C82760C822AD4B9B4F34C144856A17C91172B1DE8430EAB3CE9
            C668D19FA4746A72534D2458B7C0858D8A3A014B99637C22E8A3B115820D7E16
            CFA114A96915208025AB095414E0F6C1CE0312F1C0403BDD209B2CB98284E25B
            90E7799A6748DC2061C35CBBCCE3ED7CD05557400034C09A41F8B75626D97474
            4153CCFDEE86C3705597A22D732F4CC3A2D6B5D01D696EC6959CF0765C666E6D
            87EF7165FF8F16E2AACC033E236E736B1B3E889ECC18DBCC42CADF867D89EBFB
            3B498676D6EE2816992FF394F00B865C207B056E1BE93329FEEE37D1C7701423
            D15E481122A75D58B487515CA05AFB05735341FD0E295DAE1099DA9CCD281FC5
            61C82120AAFD818EE8A29CD0423D0B8502469DDC60443B1C929B2E8C1D52FA28
            5073FD4D7831A284F5C325571FBCC5F5763064D517BF5E75E99E8F34DEAEE226
            235F1A204082FC26122621ABD5A9BA71DAC331005753E3D8BA4F81378AF43A12
            04B86DB303245E751DEB71E06739CE04F681FD07E92D0E007B72EB93DF968379
            46571C4B4A0F5814E306617C7FB673A2E96B0000F45EA88976F16838BBCAD3A7
            2A9FE86DF7476DBE85F1E259CD9764F9C1FAB6B90CC5FF580F42B10635D2654F
            C0AA5448BC366E09081433BFC8D6B3E6BCE771C55E441E3E00FB2004B8ADD763
            832954A28E85EB7DC5E505556706FD8BF1B1BCF51BA55137862A4BE0DD5CBDCE
            1CFA4AD863EEE1C4A2A11D4BDAF674619AA6960345F5893D36C595287378045D
            B7DBF3170E8F93BEA083AE2138468B894FF87C42A98E05276C9D2E701486FB95
            C1D1323E0AF36F3CE070934B78866FA6BE73A126793606094BC56105B26C6C01
            22883772E718EF7FDAB0211C283BC3E9B87313F24CC663EB0B086C911483973A
            8EA90F95F285649FCDE80DE66B30A166ED8E6B5BE9FCBCB5AF43D141B445CE2F
            C5D666A5DE1BD2534F318C652DA5B77FE1FE0CF92C3DF3E2666DD2ACFAA4455A
            A728F274E2805F44333119583FACD9D6A86DFB6A4513D025C0C9B56D512C002F
            FDA6619DB336FF649B8B9CD82EDC622305120A8AEE585D1DF11AED5A72224873
            02FB73C20E5B4A844022B5A289AD97917612B2E23CA12403DE6F4EF8C2B79A45
            5ED3CFE59E02DFAC84280C160BF91D174A571F33CE098B99400335516F56F08F
            E3EFA264BFDC62B1A905B7A76E809E9D43AB6B7333E5FC13AEC3C1EF9431C8CE
            F459FA9FB6AB2D445DDA3FF94DB3A9E0DDD83A2EA855F84A30CCB76CAB8433DF
            673F659662DE36227F28C4972843B15BF3931F0C9038DA57FC2E40151C46E85E
            982967B4EFFD842F0FEA0D47DF9C1BB65379092E8D2937DB89AEFCB6F6F685CF
            615D94F0AB817E19FF2A399FA7549DD48F180B370D67BEEF9E3FB13EB2538579
            E70B6D806AFED31937350C04B041D36CA3F4210CEC78887E8D08B90C57F0AEF5
            F9667AB449918FAA5C982AB110BA2E810501017DEA986995790486825425DB1C
            683D58C43249E4140904F9D58739173E77091383B63A7463E03096AC23C6ED33
            2050F23D2FE85A6235B5107B9D009F6927015BDD35BA604E410C3D37777BCA9A
            F54DFA9E35FF96ACF7C96FFBC27DC02F8D7D69AA3FB5AF1375B7AF9F7DE26017
            5ADB13144755BD52BEA6333BF4EDAC6CC9F5B4EFBAA17853B23D52D3C218C741
            2E47D9ACF0AD341E86CDACD7B47E869427C6A9C8E1453CB8A75A5E180E0C73C2
            6C0226C67AF0E8EA0600D55EC4E7683D6C8B007F025F7DF631A4CF2E9D3C04C1
            BF665953BAB62CBC11B12D0259C769FED57A0BC8D52670F901C8B87A701DB524
            3B25E938A58D78A8AFEF4E743AF3D7DBEE0771325BA26F7608EA4B71C7143C87
            92333C878AFB53249F8729CB59BB1FAC39D9A6CC7ED2AC7D710DFF08F2056551
            15A56594CE66BC5113AD8394C0678AA2A4C39DA24DCBE9D49A9C9AF3C37FBCEF
            7240ECD6981E1F653479A586F144200E6A6750FC0EF43F42EB9370AD9FF0E92B
            05FF21E4B4CD6AEA187CA7B3AFDDF8E61ADEC788D9FC1E50623AE9E2D7D2B6EF
            C59F253EAB3075CE22B691B02F02ED43F52B9C94D98496CB927D41105DA15B40
            50C81C046890A58008EDA4BE4978266FC0196DA00B3FAF888C196AAFDCCC51D7
            46FC2D3110969E5719C1601C25741EEAB3E92D3F7FF7BDF208CCF8BD789DE95A
            354D4A66A242DDDAF7FE6AFEDB82DBD660A4EBB329E5DB3EFF404A00B5798B9E
            F365868F4E792BC36F1469B98A0CE3640C4E9040D6B849696FB4705467582CD1
            2BC1947AB0B835CA9AF5C39C08475CC44D894D3721F22962566D1A989FE72924
            E79EE2BA1B58B6E8C9F126AE4A063228F570C9A99D136D7706231485B09CDE12
            10668C6E17E977A3F011C4E63E43D566887CB708CE81ACEBFFBC788E6BE47551
            A6DE42359A549C1A75A60E6F6B7FEEB1809BD1079F99ECF8F77C1733B877937D
            A9371F1BEED6C36091D1AE31F33784F02B2A67FABBEB15F6532D27C6CE4D3767
            3341E2D3F0ED27FA660A5F0AB4608A369E074FCDE02C5FE9E06B4126D6F774F9
            C0A1592E24434F695F3C5FB44FA537F4668C8B013BFC5DCDBC498E3C1B886A55
            A340C69E83BB1C9C2FAD29FF7E91C5E3B5F0E78A194B9A1586CD705E1FBCC986
            F0F56D6D5F84987675D53F9A5AF0DAFCE1E994EFE4C6C2567CB3DAD62E2AA513
            6620979D70FECB701C6F5CE003011DD4CED54C1BC77C1B89F31DA9B0E6D63616
            B6A9A888E6ED286578C200A0318A09BB703CA8DA2C2A88A3C81D3AB02CE565E1
            BBEC34FAEAA63AF6BEA4637DA864409642415E5DB0B48D0881B72F6FFEECBD14
            1F050D7EA92D2C63CEA6A6DDA68E506A44B12B1D917120F85407D82AE0B48A6B
            54B585EFEFF258C367277C07A16084579F316ED0453ADE9AB66F47B0B1509B4C
            83F58122AD05C342ADD4F438CDEC66EBABF4E8A6F6046EBE9DA3E95F6E37B4F5
            BD1F48E2108E012C64F53BBF0D4E615F6A5458DB17E1FDDB7427F195FD0DFBD0
            D7AF096F1561EA13DADA38333B33F6DDED8BFF73FF3B27CC9BF1BBFB6E8CC59B
            B3F57CCF7C1638D6F3ED4565DDDD306B5F6674789BEDAB7CD4CD1BFAA40F99BD
            DB994C59FD631E8CE43E74DF84E94FFC4C5F96922DDC724C02A0B4264FAA30EF
            21CD140DD5DD0C9B9EC8792601A4FF7C94246AA46303CB6FADE675F6B109DF64
            93BB6939403CA6E3CA0B4366EEDE0C6AD8433754FF4BCD30DD6E0ADFD525EB3E
            7A3B8D832AD15470FC6FFB1C4CD34A6B5B54E51963FD3B620DDFDABEF8A647FA
            A2533D81B33411E762B15004BA31420A8E0CA9BC4EC82CD73DBB0D66B7F4ECCB
            DEDCA8FA74D43914DBBA0D4EBE8670B2E852A98D23C74A5E7F9A0C1A06B57304
            05A8BA82EB25F41D1EBEFBAC09057CF050D06F5A569AE0D311CC1C5E21DFF499
            7B293EAAED4B33A4E8F18B9B9E1AFE21BF575BA6F96432C52FD882AA692EF08F
            8BE6628508119557E36A7B21EBD61A80335A8C12AD49655B966FAD46331FA02C
            A34BBAB056F06961A78F994855C73B6D4FAD6F8A91BC239B91027AE822E400C5
            BFB060EA03690150306115550AB330750AA5755CC53451615D179BE5A3D91C5F
            6CB241721A4B4CED8BB7BB1E85FA85AD03E046CDB7E536FF3EBF7FCFBF556B03
            37135E9667487C245267F5B857955E1ADA4EF354D8367ED86417FC4694C007CC
            B8CA41A9F408B45D93CD56A66524E20737FC7EE1FD3027E3C35E74B5D5E6CCE3
            ED4D7D98BCE92139CA9F85609A1304F5D969EE6FD381E22184769DFD1FFA618E
            16B75AE44D39DBEFD380553DF5E2576C9AB2A97DAD98BD3AF23862E6654FC7FD
            7D7E4DB5E2DDFECEB0FD45E92FA39A648DF53648D6BBA7CECBC0497BF382FB09
            F07ED034801C5933589716A92722D1DCC5CAE30E2AEEF47C74DF2C7C3BA9C7FB
            AD6ECFCD7D1C007C51991A677344631B06383441528815C78AEB44B64E58A09F
            C55784114DE4458582090E3221000989D4005D368C62FC354D9300C18014FD3E
            B2134DEFB8E01CAFEF8E79C367EE99C9EF8AE94ACB8AFF13DDF5CDE1C1793179
            96672096F440D7724751D3BE8BCDA6388C21A8C10EAAA6E4F3F8B21EE7413DBE
            C8CAAC8DD84FF8E28A75AD864BEF390A30F522C3447011D48F6AF9F8B946623E
            41CB18184C7F185C2F85CDD09369B989A6A96AF920939F46F99ABFB7831CCA35
            1BA8510B9F61F09A99BA3C214C68AA3F279A9DDA963567C36132A5F6F3CACDDA
            855945F17FEBF753A891CB297B58F37351D7F851264552BE28AA341DCB660DC5
            66FCD3A06EE50375DF8B49C7DED60662DA18D5560C67220081C9CD0A08C9E4C5
            ECFB0D66705F3BE1515F47D4AD16FE60E05DB0A3F69DFBAD659965EFB075E9CF
            B77D63B88333BBBED9D73F3E4AE3F46B25182F70E6B509946810B6939BAEE75F
            B3DC04E5F46C47BB98F236F982C0D4DC3436D7E7347C5F0ADFADE426375F8FAB
            6327DEFFD62B9ACF604CEE14E703827D296456A45909EBCC0D2E01A16C9E7899
            C2F6D6A5312A8515B77E649143043F22E4DAFAFD94D38DB341E8C543BF2F0CB2
            B5755949F9E48A430D1E1C9C15AD6812D2C90B4D41A6AE822CA8928462705E24
            3BCEA6C88DCBF289B668B82F391035ADE6ACFCC54FDF9BA25F3198BD097E74C3
            0B3A233D898D6CAB3C2B325F3F52BE48CECA21D29B5E81BBA7B82EC16CAC60A6
            05E9E35B85E42BFA3D90802A8A02D2A3EA84D2431D047A8BEB3FD613D8281D61
            62B63E0CDE464E7375D6A3275435FDCC9BE396C5A1B0850761C8923831CB27EA
            787151A6270B13D7DA51A2CE078B592B828CD28CC7F3A5380FB29AF336DD949B
            DFE5D4390B3FFDC096C05B98FF4B8BF210DF0D720A7C8F6E5A5C6C7222DCD889
            C28DF599695AFC743C61FFDCE620EAAFFABFF9F9BCA1615717D30B2D7D89B0C9
            B6C82957B398FEED467200432EC00D0D94A86B1C4E4E758BEB956C55B7BCBBF2
            8018913597F9E0BA1B1365DB03CFF699B1B86820033AD57824D57378C0B91B85
            AE3574D0F1668A6DE03790CFE8893ACFD83030F948AAB1861CCD29DF3F310DE8
            36C7CE6D55A5BD3B2FEFE39D996F58F5392CDF19CCA785C51A5C5D3C696C645D
            89E7B217FE12F327A488FDC8DAA215964E5458F723312ED075D7021713C0759F
            576072A97C965AD4BC73F59D9BB61F82CD6FD2EBF21C8CF204296DDD9D963BCB
            27E4F68DABC220E26ED410F36B4144014B9E828B39D231F91AFA73C663B2E984
            E0748C6149B62277C6B46B880F7DCD3FDF9D06C9AC7DA91D0EE34FBCAF99FC0B
            7A13097A4CC60E552EC95E0E3617F942857678448981F427C9F1A495ABD754D1
            DFE46E6A64837CF2454C638BFA9DF9AA93F12C02819A127CCAC0C0BE381FC9F3
            DAA167067377DCCFC26BEF3D88F419D9B418230863798D48F2581E0F8236B5D5
            062E3627A3D71BF8588F93C741BBA5FCFE50B388BAAD023767A3F17162F39E9B
            2DE8D49FF3FFD4AA9C0AD16CEE2DF0799CA619D2CB4DA0033B9D8C54BBEF4E8A
            8FB81250D704030D5F475BBC687A21673241AE4E2B70E5C5826290F91B91B883
            97AE073E70E636498BCEDC9F9C755EA20115ECA8147ADED9BB58EE9032FC4175
            CCCE453ADE184C80C220883BF22D7958F22D7127219F4BA07152E474F3383F95
            9C7971272A709DB0F937331F6DFAF2DE9E9ED4673D299069C77C20C8158655EE
            359BC3513A49BA1D1EDAB61E1F7179CB5B7367EBD46FE077BEA8E332343A1559
            460F9C66F4149D4E6F40781C5CA2F8EBCD9D939D71C67326E4DC8F5A33BCCCD6
            704D5330F1DE37F0C733E67468503728589FE083FBE56C2D455874CE6484EA87
            F6753E644AF933C978D0FFD1C56837D0929AFAB382265F510B044C2613D96430
            F0FD67FFF9AE2CE8C8363E6AFA9402C7F19154AD1FE6C21BEC14C54774F73004
            DEFB3091AA370478E568C4E6296F1F17F94011C5224FB965D860F2E6E338C86E
            8AAB7D025379496DC54CDD8C9341BC8243A238BD84894E584ABA90871E989EF3
            DC0A1CB371E84BF168419124C09EB1D2B7300AA7EB8E98BA39DA8F79617C8AE2
            5114EA629E2BF7653C3089E01DCCF86DFF5D353D350FADEDADDC4951D32C5FE1
            7FE0F7133FB6093DC48C7D198F94AB1D69736EEA4C13367EE05F041F6514F3D1
            6D649824ACCD54CC12B57ACB5517134C55DB1D6E2A6C0F8FA879150D87FD7CAA
            9B3A5A5D029E2201FF01885DE97F64DD6A0FA782D962BC6B66506125901166B6
            90CA30C792237F4EFFB9B8BCBC3E1CE565D9EFF75D599C32477DE25AC95345C1
            335F644061F22C48B0E0BDF860F39C9B5F45DEF0865B7B74845F0818C8F8E25A
            6D62EAD5450427B48FC79BE0B352065D786BC7569796978119012562FA50B209
            18656F86668435A01728F2BA1F75869F4535498926A78B96C180CB401C7B4635
            01558BB5F9BFD2143319604546EF72E8BBDBB8B0ED593795A7D3F41109DD40A7
            D76DE804047793396E7334BE430ED9370CA228F993FFFBAE14AC8DFA04F99140
            34F997A97D116C5FF2224BB9114EB0B6B6E2422FF641DBB8E57BCC786B71EFBF
            F1243995571AAD2B7AB2C91D4C5FAD9FB3B27E361CA972CEBCBA7A0CA6C927B1
            F85159E54C8A23631EF444B575A641AE1D0E755C43F32626E079194C4FB0E768
            D207FE3731BD13C251773850E2AA8468ABA7A7D07CF206FB212BC69BEC66FB80
            FFE1F8E59476ADCEBAB115D00A2784EC8B666BBBF9AC29DF9DE02B807E90C473
            D3E3FC60F46AEACD6B7FE5C317EEE9441DDAD6AD46CC4C66DA9C9C6DE25FB495
            251DDFC9008763DC54D6AA1E8A51B6A9EC4AA6FCE1E89831ACD22D02029B8660
            1E5970A6D8027491087571084B9B4471378A290684FA8C0A9230CAABF2C484CB
            433415CD281A9FF423FE2B3E2FE3BBD4E8A93B71824E36253D9E7245453EAA62
            B2B95EAF8791EB249ECD4F4F53C9B232DCF54BCFA88DEF9E67BE9A2A8F854C47
            C3E5E5E56151A656F4BA73040A5055F3350DE66322F85F6439F9CF28D0A2CD0C
            3A1E93E43355979071577885102367B74127C5DB05F69F8C621A4D0EB22CDC17
            26B9CBC4B47BD9DB9DFA24613C10E791A0956812A0DEF1FB4FA7F581DDCB50BD
            81C578D93FDE9EA98E746D7EB74E6CFAD13EDFF45AA3568ED56C05FC82194A1F
            C8400E25660411B6B98069F158714773059300F641375577F59533D74ACF49E1
            47AA70419EB252DA9395FB7A98F3749CBEE4E94943436ECDA2C810FDEE9ECA1C
            49C11A87FB7A2170351795AACAB6C78CEFA1EE97F7A91C0EF1105BC17E47C868
            02B90859228D1D9CBC1739556CD5495ADAA7F6865E3DF77B2BB1FC3BBF9F7078
            66A2EE69090FADF764A0D3F1D037F8D7EF7CE60AED60AAF1F5230E51551839DB
            5AAE7A3ACE4BFC61857D729175FFEA761BD9CEEFABBA20EA332C4A2649E24D1E
            A7F92B1E9BB0FEBDB4DAA175DF03DF067A94E07A63A55B4232B826ED18CE28B4
            7655C8ED219DA7B9B63D5ADB8835F98A8442158CA4EA98429530D6330CCF72FA
            189B5FECE6D5D8DC19C0C837D2318F040075E45939D7EFE679497754798F55D9
            6E1406F4486545379357394F2788DA51C91934070275B0E150A880D97446C412
            E7D390AF9B8F63C20A232C22AD7F5233D262721DEB46A685B634E8F0EA0BD785
            27D1A4900CFFA7EF4421DFE03959440D21676228E4CB0A9F2F630699803BC25C
            DDCDC6C8050309D2DB22FC3932F786F39B55E915A9BD806C5B05661C8AB8AA28
            338A1FE44B3E79471A74C0093935D23E1A348DCF55AD7D51A0022BB3740C4233
            0D56321460A2881F24A82B3EB3B69FBB740C46DE3C6C6929F94CEB5AEB922A5F
            81F65F14268CBF02DFD16444DDC84B811A5945426888A529020C7D8FBF9C8CA0
            AC4EC69B0C7984F62CE1C7AF3BA1E6306C9692872FE8F38B9EB3AA61E4E49A9A
            C4A81A66960258F12804E9A190EED49EAEE9A66A2CC8A991C3BFB76BEEDFF4FD
            C48FF6FE36A8B3EC3C55CB888FEC4B3619A92974DC74053F10E02739606D43EE
            990E236B664A8B82A7C8189997EC39904DF3E77ECA0952D3CED71596269FA2B9
            258AA726BCE344D141B220E9D43CD7CC41758F96DF6635A4E59424E84114E6D1
            68CB91FF664D1134713B83A1F6244C3076588900D9C0888272C7C3D30FC5507F
            CAF7C51D89A7F00A06790D1151041160EF115AE169360952090C8182FD8A4C8C
            A8CAF1C630EAA0B9D472D9D3A9BA008D7E7114B5C8778992A53BC8BEC8BA01B2
            4C0261B3D41260A1282CE9D83032553BFAE57C1D9AEC0B5797380365A6CD01ED
            11E6D93A079E2CCD7D5E8CEE7DE5CBFB66A01B90D9B14E210E974A926E3DB425
            9BEAB2F39DA3AA9EE69075DD05A744D8F170639A1EF59DC43EB34938125E5EFA
            8CAF7CF13FDC3ED11D696B8992BA49A56D4EABD3E0757D17E1451D1F21F10143
            00EC1AFAEDD856677C261C7D6EC612DAF196A571A76D53BCAD7D1157F595ACA3
            2142436D4FAD77A1FE6F55F908B54F0CF12A56A8E4EA3DD3445484138B5CB832
            D2AA363CF47B6586840B761F4AEC64E4C6799EB257F151BF6818279A86113E84
            755E1355BC903565DCA9DC9C682B9A9CB3B062AA6FF950BA2BDF736BFF3FF86A
            B306CEF3A7097F3F7E4B71BDDA71A303E19709DB177BF2154C5B7C85EB8B7883
            4630F7BE2FDAA742BD9816CF58D266F0C56FFF9A82661CCE366514761C3EF2AF
            C7BEFC6FD610C6F74061B0A352D329137EFBAE462B8CF681617C2FA900466692
            5EDF93600A59655A601ED9F7DD12A0B02894CCA5465A1D32A3B8DBB43EA7789D
            9BF2F4D3F5746087D9A4CC45D14C09FE698AC2C0646E4C12C7C33493714C4F12
            EBC0E529ED6093670FDE7F5F9A4D1E73E145C8B3285FA300FF95B72F90C85184
            5FC8E868D0F5F9A948596A57AA22BBE5DAEBCE3EE7DC8533CEA8E86F55CA27BC
            8B82367A46C84879A27B1EAF39C1B8D4C57EE90BD15AB1D6E2EC6C5ABB7B2BE4
            E29193E2625D6C6A4DB5C0473A3E13871C8A0A2D53A3FB5ED3F6A7981934304F
            88247C9F1E4764B50613EF34F8FF177CE256CEEF0675BD8357B89E0FE0C444D3
            0263BDD520FB42E7993E81EC0BC019734F20C3EF3D1E67ABB87715BF89B48B77
            9E4D2ED563DA9927ADD70EFAF49A7D98AF35F04C90775F18B87265910E350030
            6A41B01A8E0B5BD6D19E43F19F2CA5A5BB7220D590684C0A502A63F23B7234E4
            7EB536FC82D322AFA7E3DAA14FEECDF5139B4061CC0FC64C7F094A83B4BE339D
            60F5EB69BA361F5A3FB7E96ADDD4A1F71FF7B5B90634030524735F78FB226BFC
            52523C1FC8CD86B3397BBE8F5EF92649DE9D75C8EC54338A23EA56698E6E68F1
            795FB60D84FE6E2453450A5BCF30B265A99BF4949BDA6CDF776D40A16B526C22
            DB6E0AD9E462EAF639BA75DA2250E180229E1A1B43214F87F64E5584550EB2AE
            74528EC7777CFBD63BEEBA7B7ECBB6273FF387D460BEA0C31BC7C85897466D5E
            2579723CDBACD8CC5B3ED14F10B6251C4D56310991285D5F5BDBB175DBC6645C
            451437D96E0CD67B413EB5CC76DF77DFB7BE79F30B5EF822B2499609584D6D62
            68F79A90F0B4B2690042C0C8C0CC584986A354651694F9973FFB99B9F9C54B2E
            BF1CE4BE46FB4670E44D2BECEA00496CD4727D99A5C96D31C8401B10D21674E6
            4550CF54B5AC00FEE938CB80FC37824B8C1FD3F10B4B1F8DE2C27526A59E4673
            9E1F86333B8C86B9F3DAEA4054882790F2553C70E3274E38EFC3E44D88B5947C
            EEDFDD9606499B7FE175F548DF363A264D7DDA6F3F6E910D99A013FCF0C07D61
            D385C63C9238AD483F15E447E8376B96B9BA8BBF1EE5E40AA8BFBE949E7203E3
            10747355B307FC0EE321020F7DB328D63A065F24E86BB1B202BCB96506D900FA
            EF22DD18AEAF1E3D76FCD8F1C970345A5BE330D550FCBDB4B4B4F3B45DBB769E
            3658DEB28E5C1F6862DB7E07CE4460828CD9BBB56FD6625F0D3B9B743B6009A9
            2574EB3E439E4FC3ED29D790EF4D9BCC546B3F673D4BD3F735CD94F84999D902
            763BF6C5DBA1C5207566A7C523B2E93BE1807313B397C7F1A69E6761ACC1631C
            7E7EDA603F294BB67A34727C512620018D345F19DDEA2065425B5D84F6EB10BB
            DF57095017C4BB4297B335F52806AA8181EFE8B5F5F48AAB6B6738488AC92074
            A818A2375DD48AC375C36C83FCE4F442D013952B109E54BED7D9F1ECBB6927B6
            B93010709F3C417911E902B908BAF1AC6FCB395714AB47EEFCF6EDB77DE7D6F9
            85951DA79FBEF3CC3396779D3EA1DBE9740B667B53B2AE987810D1F6FBFA95AC
            82BABBDFDF7FFD429B975537B3F17DD0B598385D124E191F3DB06FCFEEF32FBE
            D4469D8A7961E8A214E09851BA10E974F5D0673EF5BF9FFBE297530867254549
            10C28479658A182D73CEBF604E1B93E360D8012B566C6C94A5777DFDDABBEFBD
            EB477EF6D5391D5AB84B91E613E1274E9C7FC348D6C8BA4B5F36B37D82D96203
            42F59D6E0FF76F5B16B72601020A378C9B726D849560586CC4AA50D4E46DD339
            D5B65FA94DD9D4BF40F744F78020C515DC39CC9978F461B6ED4A7E1BCB67FCDD
            DD63DDF524438DE9B64E0A719275F7F6C523229F7CF57522B43AB3A7F6939A1C
            55173E20175C0FE63436AE5CCFBF381F0986C677886AB4EDC04F4AD1C41B4CDE
            C71564C3C4C40539A84E14777B858CC968F49C99D372B47660B11FC93C0BABF4
            F8DE076EFBF637F6EF7950E8EEC2B67397B6EE9CDFB9B27DC70E8ACE8E1ED87B
            ECE0DEBDDFBC254ABACFBBF2C57265C744C7E3C2411E5C54511257637272CA05
            05BFA638A8545C32A59EC69424927349E2A29EA3901BF36655204BDAAD390792
            F40C68F4F02F5C796D26D78EB18919A5CA268DCD9B087E46749198B625789B40
            1A4216AF40079865C2493097D3692D34ED7BABADB72F3CB1C2BE8EBE7BD514A3
            98E212A910CD87D280A14AE3AE0685A5EB8D35105CC07C9A3C8064554AC67F42
            281C2A25798F56BD0C87C02C6517371BF1010A598C1114283887D8B084149136
            985426A5A0D741398CC73594A47FAB84CF67A14720AA301492515012A9204E28
            64C5C88C65DF0D8E6BDAC9900C2A5D59329725484F40D116104895F9D8D91C3E
            5005A50A408B6DCB4E1C527C4BD7D32E22B044FFEDA2A01B26B2A4B7B87EDA20
            D8B8E3961BAEFED2DA5AF1B8A75EB1EB118F7249AC59F1B8A09359B9985BB0CA
            AE3C9E8E7A9DFEC4882A9C2B8D985761BE31E9E91EADD830496925A32A429B2F
            EF7CBA37CB87986E85A784448161440B464F53D12375CBD1DA6DD7DD78C3D79F
            FEF25FC8E205A3E32210A94B638A2953315765FDC9A18F7FF423CFFAB9378E1D
            EB67E860821CB8E80764122B84EC4AA04587800DCEB029F1AE45CFC683F170FD
            9BD77EE99A2F3EEB4D6FCA3A039BCB7C92070073B280FA006DA21CA527509962
            D2CE49CFBCCB6C5964CEE938EBC435C304AED63FE2A140A986C3A1E22AB4EFFC
            681B039C50EE7BE7A7A6100FBB8E918EAF9FB03C9BF46221A29D92A14FBDECE3
            F78CF580F7A8CF69D99A2664662678C60313AAE33C8E546D5E93FF837C9F75A6
            1EA9844E961FF7621600AE8C37FC1468A361AFAD43CCE6337051DAB340D5F6B5
            66C6331851A260454BFC5F10839E3FADC452BF1F0F37DC78B51F9B07EEBE6DCF
            83BBB3E17A62CD0EC2A9679F31B7B085DE604E417382A878657991766D504E54
            3EB9FD861B76EFDEFBD8A73D7D61E75969D81D1931F22C59451146F4E632F45C
            98581BCD624474AAC0290BDE107A5B61DFEA4482849F906D09DE322415C186A7
            9ACE71323C9653089EE5A8E974A8694AFC0406733DDA92F94BBB252450FC6C7E
            C46EA2D4C6DB8B008CD060B42840476543BE9AA9B3608A22BD902D0EB3EA59E5
            9AAE34BC3348028C50BC150B195E2834C6302A061F45C70DCC031302766909C2
            70DDC97BF4C627D171F08BD845D09377E8E38D0B2266B60B1AFBA2989F838EC5
            90EC0BA10C479136F498B06B0D28FE984093FEBA65D6495ACA2886458ABCFDE3
            09098B183D84FD7460FF5664EF9A795C01432E2B8A6A536B720A303CFB251849
            E260B4B1D18F3A091DFB5C40ACA31FA9288C4AB74050C68CEFBBF9CBFB6EB976
            FBE2FC798FBA74FBC3CEDF30F2D870E3C8F18314B3502441C833CED0DF9AC66E
            79EB16FA9BCB3B4E2BE241154471D4E977E747EB0559FC11EC4B155774FF7490
            B56FFF35F027C875440084966CBDD7A862816135288FA7DFF9D28D375EFFD457
            BC69DC5DB63221733F5113989254CC67D94A76E01FFFEEEF9E78E54FDAC18A8B
            2332EE852BA0A827C83F5A13949C3D42DBBFC661819A02CF4945F3D948DD79DD
            673FFD89CB5FFBFABCB76C08D394D0A8C1BAB9046DD12A8383033B2AAD5202FD
            3DAED542CF0632187D8A0898FAC970C71352183EE1C2EFAD166CE42A4A6B5FA4
            FD5E3C2127400DDEDEAEA9D54EBFEAC24BD00C643FF97FDD33D43DDE03B605FF
            AD4939E9CA76966100A0CB4F5CD2DFC52074C9E52BE3EA42BDF0ED7281EF55AB
            DBF3EBB49F63F88DD93996ADF5066F3ABC8F8E9902DD8414A1A0813FE45FB031
            7997D1DAB29DECBDF33B77DE76CBE4F8DA19973C69FBE90F5FDAB6AB147242AE
            2F42436191E114281D07BD6ED8E91E3B727465AEB310D9CF7CE26303212E7DF2
            65D5C2691B325E231F6AABD04E026D72F452048909D9D5D3C52AF069B3860899
            1121FA32EA971DD4F0229E09AEB83C1B317EC12CA6225BC06CF84C83115782B9
            29F1A439B82DC907A2E2AD44492B956B4401312CB0AE40EFAF3B25CC4C0ED069
            BCD10EB853AEE49E76167D6C9D0C9AD7BD47F5EC4A8DE24DCD7B48417CC1A5E0
            A4224B242AB4CD831A9A0080841E8B5179662639B49B2C84A48D34E3708D6E3B
            920B5A76C24470BD80A3579F8BE5663994E0AACC96A9217BCCC27F1A3A8AA28B
            0FA03B078989D721008BB889FBF156883C8659A973A88B40582D22E71F54DAE6
            0649881085959207FA091A1A9B81DDB78C4C95A76E55B8BC5B0247D9281CA613
            C21D364DFBDC66B2AED0C537706E45D9FBBF7EED9EDB6E7CECC5675D78E1F9B7
            DDBDE7EEBBF76C1C4DE9F540602056A2D357DDFE42D4E906C9DAC6FA68EF7E51
            89F9C5C52D679DFEA8A75F7E24EA1CC94C7FB083605A8D13C1292B58FFAB65C6
            C34AC6556D5F3CE316784125C19EF5ECDB5FFAC64D5F7FF22BDF34E92C196482
            65214B1DC6142775F3FCB4D191AB3FFDA9875DF8848573CE1D76E31439CE8239
            830971049570D37E450E09C9B419A133A5E6DC686EFFCD5FF8EB3F7FFC0B7F32
            583C6DA2E76961429BB285013A20A8C9625C25BFFB2EBB1BB62231925C4278AD
            8E89EFDC17BEEEE4130D95413F11DA55EAC9F85657EFFB372EDE0ED48C154DB5
            BB216B40E6655A57A28F7EDCDFDE3D0EBA3C89E8BBA4EB440067724EFAD426DF
            E32082E18B3BACE143FB8F19FDBC71F1ED0CED54583BA1EA63042E15291BA23D
            177DB7E82C47EE866B0DB826CF53189FBB0EFD1C04FDD4E4B24817853CBEEF81
            8377DD7AE8BEBB779DFF88475EF458172D1441C7447D4B2E2D24A05DB1081E74
            362A238E953941F4F9DE409793285FA340FDF37FF13F7FF07957BA9D670DA3C1
            B00A8A228B9059CCC044298298A76C21C24347D1E5CA1735814C3A22EC544917
            550C586E5372A32CDB977AC697A395BA1A55C79BFCE5D384D050643A562BCB0A
            E4BF966D842A14249893522342630BE527923919E9BC7D099A37C11C8BBED74F
            362C6D18B121A0EDA7E64A55CFA3F284555067B20390E8420A85C09725E04228
            3E05F13628D1BAD0B08F269C0B5CD43A26AFC874EB4C82C9DC058879A1779989
            AA849C3AC10890F791BF76512963E621CFA16F09824E38131443C91E6CC18DEB
            AC5219C5623C834337A7ABB4522528B8431D91C14194C7450F23334237BA1A18
            93A7E288ABD27E46B03620C0A23B14B8C9F168B8D28F8A7C62649904B2938E77
            7FF3E6A3B77DFB92479F332C366E7FF03EDA039DEEC296FEB6E5A52D2BA76D4B
            96E7F3242C2046A34272ED4873C8A3BB771F39B0F7FE7D774F4275D1B39ED33D
            ED9CF532A22DC29CA436221C868303BCA8B8BF941DB5E268D4FAF845FB3E1519
            F4CBF5ECB6AB6FB9E91B4F7AC51B46D17CC53DBB40992122CCB8986C1DADDDF2
            A52F45FDFEB94F7CC26ABF3F24EFA830E2481F1204BA102D4997E5914BDA4B88
            B6338255766DEBFA6DFFF2E13FBDE069CF99DFF5C861B8A5D2B132632E6E2788
            BE4521B8FF11E1A6EBA0D91093870A6259A0D98C614FAA11E6DEB909B0C8413D
            0B9700DDC1B8FE644EA24F03193EF1DF678FB8F0F458FCE541906B46CFB8D598
            EB853EFEBAF86F293EEAB2397035A786AF6F99CD43A28DDD6A6B225CE0F40C10
            98B27255CE1C42AE661B64E4525746B98EC05997BAE1477109C06B18CD329B78
            6BE57B04096471C62800213785B52AEB6613B5FBE0F55FBC666E65EB054F78D2
            B8D32F5434480684FAA0A4A103B2FD15626DC22D2A1B1E273F34893086DB2DAA
            F9AA98CF2772FDF8355FF8DC653FF2ECF1B6ADC338A1889EDC00E16757964C91
            AF3CBF62098800A17746038C204DC8FD99A160AE0228A2E1FD04507475CABB6E
            1EF484C5A1AF54C3DC14A0FFA5680DADA62554C8984F88FB1C909982D0B32D99
            0B3A32CC122C2228C419CEC3235151E01EC83219A682F5B95B0899F2CF1DCB1B
            B306318571E463699133B27EB4072BBA2A98C3C978E5888F68FBD2C9A1884B27
            84EDB389C9369CAC3895DA659DC80A520BC100C75064B5E014C36D2C0B9A490A
            53E48C97424245194AC3AE57DA08C21F9C2B6167D531389B93BE23D011973132
            803E0D8D3CB66F75C1FC00C25DCE9733AF610050270A1E010F7545BEB7CA82F5
            AA4C2328D6D16716E40C4D09210145C860746C6BE47A797AD7D7BEBAB66FCF53
            1FF70377DF7FFFE1AC78E4939E92CD2DF5B7EC0A4407817E650A6933E844C988
            E23417165939BF3018A76B04D7F2E3FB6FFDFAB5512E1E77D933F2AD676C8409
            9E886C2D2256B2229D129B3BA7B7CE9C9530E864F773C638144351CC657400FC
            72C735B7DF74C3A52F7DC3480D84E4BE8892C517428AB38A6EB671E78DD78E57
            0F3EE559CF5AED2DAF6363869ADE6FE620E9495B3DE0EE769E1062C55E64D309
            C386D591ED93BBBFF8F1BFDAFE88479F75FEA523B99CCB8EE1AD13D8107E8D65
            1E2D127964A013414EBAEE0663652A8830D1DB4F21A8C982B05EB331E22FDF65
            367BA8EB88C15739BF3F0BD3B2176F1225F22D075C55F49D56E8577AF447EFDC
            D07DE6A6ABBB39EBB4B9ADCB9CB6EE196F1A581896B0F433A41F50CBC5787869
            6C5E4F363B5F42AABF542D74E0D39D98E8410B4380C14CAF9FCDCCC375F4445F
            5996CDC6879E2C3A90A92A8E7546EBDFF9F0C7779E79EEF94FBBE268D44DE717
            0D05E29332D110E818A25815C79D24A4D868B431E8C5B9A80E4D86511024E978
            8B72FDF1F8AB9FFDFCCE33CF3AF3E28BD67AE1446B90A68B20481594B409FC0B
            E4606C2DEEC99571A86B735E03354672D786D046D1A5934AC73892228E2D67DB
            34275F2D7C470747428C2391511CA0E1EE1633822A2ED7E8A9E244A9F625B900
            3D525084A5800C4C1FA8DC84B02F36E6574F5B1BF685A9CA347B3E969F0E72D0
            41D22145BF41C8F605362AAAC00F9DA12DC8740D7D1AD4DCF3404F42F0D684D0
            2FA1571CD10D07D9A8CA46260064AB82049912F4079081EA209713907DA97C19
            8579B10D1D55F49880924AE314A82007059121FB123A16AB472E16FEA64F4726
            0C265D8736017F3259330631347AB83183AB7D6FB44117B9A6A74D409DEAA7BD
            20AF4AB63530994E513D9D84F4A1A14C093409DBD15198B9B5455DF6560FEDBE
            E5C6837B1E7CE225172F75FA9FFBE2572E7AE673A3D3CF1AF6066308DB77F0A0
            48E918E887D31341665AF53BFD23AB47BACB5D252661BE3A375AFBE6DFFFC3E3
            1EF7D4EADC1F588D7B75160C011EF9B3D0B0BE4DC0F685B62FE410A06E07FC92
            140104B18260CE0CCD1DD7DE71F38D8FFF89D70E4D4CA7A037E817524D4AC8E9
            119E4BAA62FFED371DBBE5AB975D79E5D1B9ED1BBA4B3F0074CFE82E4303567A
            69EB6E0EA4BCA212997B8A9B747664A9DC7DF375FF42FEEBC2275C3E710BA94C
            72D6B2F063E2CE53DBA0B78B8C4ADCF049BB9AEC11CA2752455551A445019B0E
            5E571E3E6A6322F65553D2A969C5F321E7E94EFC2E6A9BA4DAA96ECFFE4737E1
            E7242148156879EE5FDFB6A1072D15B86848FDDAF64EABAC9BED10F3BC903C4A
            2D31EE84D11E8C1A8AB29553E103D934E66282894D15A7AD517882823CF7B678
            260EFFDDF8F4301A96E0D6D80671EE838BF9A218C8F1FE9B6E1C7DE596675CF9
            131B2BCB07B4187792BCB04B74360B67430AB107136B8B749D7E73A1DB194D4A
            966E0ED2C96A5717ABBBEF4BBF718BD87EDAAE475D1C2D6DCBAD9F9703A7AF49
            5D44E16D363604CAF9C6390DCA290D691B7E68F22A867010EDDA71C714844683
            39E562ED584607E9347448059CD9A57BE67C04266AE99CE31CB21C2C3028AE1C
            B0D45FDDA26E025F21F2EC9CCAD4DD0AC8AA22EC84EA1FD9AC00695C98832AD7
            C6D7A4D954F9D138C31E2D669659FA932A8235834BA4AB917DA1F7105768F0A1
            A725D3AFD314CD8A04F5026D68DD5412A3372DAA6484382018716D8275414AC9
            9CDC749E8A900B04F4A4958274243D089D42ED34C44C94A48348D02746C40535
            4DDE36A9459E20B6006A8E9BD90BF8FF4E825405BDB5B2A2804B51801816AC8E
            3D87C48703AB129D64C834570981FBB03CEE8A2CB03D9E075C5F52F9A1EBAE5B
            3DB86FD725176E595E1EDDBDF7F66FDFFB98E7BF7CDC5B2AFBFD0A2C29E4B555
            8692302DC224003A206F105308473791C9BC331F0ED70EED0A8AE197AF3ABCEF
            F8B9CFFFF9F5708E40133496A02769592ADA7A78C8F54116A253B6D078171441
            73BB9E5A36A3F08EAFDE76D38D973EFFD5EB853978CF77B69F755AB163E72A00
            3CC5486AA1D4C3FB6EDFF3B9FF75D98B9F7F64F18C5167A1A0C7A6B38E4E1CA0
            8C4AEA4273EC4547911E18D25382DC4090AFF7CC9183BBEF3CFCE083175FFE8C
            A1EA65419203AAE075837702F23B902B2288DF1511EA7C12C6AAC470244436D1
            05630B18746699F2BC2D9CD5B4350F09B37E89A6E9C1CF59FF9BEC8BAB399FFC
            3C779D8DE5BA0CF41E1D7300E157CEFC2BB22F7DAFD6E8D14FCB11DDCC653593
            6F0DB1A817D641AD8DAC5459308316243C1B02A1BAFB1FAC5BCA1B17E6700DD1
            AFE5475D2BAEB84386DDB34FB2163A43211B86312731B5AF28F98148EDCA9ECD
            4677DD79FCAAAB9FFE63CF3DD68FB285FEAA46F222A400C225B9EAD20BE25E8B
            22AA8EBB2A93C13CD48702F289A531C32A5B576911469D6A6EA592B128315363
            5876239BA4BD581B742E959C3EB2282234232A2C938E67A7A0B65B12CC30C3D0
            64814CC2395C1B3D8A81097C2F85E263EF6B493E56B4DA51B4829249C5669AA7
            71347321798218AE803B68B90966AB661C2E391FCC15D60017EC153AB4FEA736
            0D51C508AD6F1F52D331688C16D52C3395CF01B189AC383C0E4B18D32CAE8081
            D2DCA4391A4A69CF119A205359260EDB3DE069B3B19079C09C08021A85C69135
            81B63CE77744E0A50E03AFAE88438168D1C49622B308F9582DCB98C5B1535A1E
            5A6A83443928CF29D2A58FC22F83EB844CB37468189BD00DF10CDB12C3E4AC52
            55A63945E3BA78CCFCB8CB5365A2C4167D7134DD7BDF9EABBE7CC1155798D3B7
            D31DEDFFFAB7C7437BC613AF48070B69E092B939B2F7A594691051849BB80907
            7811FADB8C4BE2789C4FB05123B794AE965FFDDCDE5BEE7CD4ABDFBE162DD09A
            D1428D435D06643F263C3519A316C699759F973481E1FC4BE4E582B794A3DE1D
            FFA7BA378DB1ECC8D2C322E2AE6FCD7DA985B5B136168BFBD6247B650FA7A77B
            7A3450DBD64003099200099001FF1020E88F6C18322C8D201886FED8863D92E5
            656CC833F6681A1EB666BA4DB2C96E9233CDE652AC2A92B5AF599559957BBEED
            AE118E734EC47DF7656592F96A9A9EF60391AC7AF5F2BE7B63397196EF7CDFDB
            1F7FF0DE13DFFB3B8B7172E1077FD878EAB1C689473B3E88D8BA191F4D82FCFA
            E51BDFFF575FFD6BFFE1C2E4814E7D22020BAFDD1F400678D243EB0FDD4950AA
            02A3CBF5E0B29E3E44224FB5B2D6D2DCDB6F3FFACD6FAE079528A8A580F384FB
            D10B217604485F82B09F5FD53B4A2F7419831435FAAA19697E757A82A8332CAB
            0169A3149D478565A1BCA7907CA87E148BD5A235EC182BC3A19E093EA3DED33A
            A64E25DFFBBF7EBAE155C99298CE12C3572C494002FB15015345F0704F9FAC19
            C8D9E8B09CA5B9A5F9543042944F86A77291CC0961C8D2F4E07248E87AB95578
            C0A64CF092A0981DE744BB8B7DD8153AC965891E596FC751AFD6BD708E7DF26E
            182D8FED9AA8EDDB1D8D4FAEF87EDBF17B4E98EA2854F9FA6C413DD10E725BD4
            5C19F8A0D7A71DD6546F2E378980573408FD60AC17E9D337646155EFA5B4353F
            52F7A2A457F37CB6D61271A6FD5B1DA635825A4F9F00A1D7CD12CFF1B541CA7B
            291410AB7E02C526A8B873173986B19AABA85D0AF2E7A297457EA84FE144A489
            F6D7C3305C4E22E187811BC8149A36B58F96EA608141AE2400E30C71BBD4E18C
            E06D6D1481D01DC312EDEEA56A5284E946D7AB85ED3C4ADCCCD7EE56AA0D9DD2
            0784BE2B95C886AB4FFF6EDE5A0D1DAE8FC43BBC9656A09D44821B10B0DC73A0
            AE99C57E3BE5A020E824AA0AFDA132527150AB77F5A613351465CCC1A1607072
            44ED4ECD0D651AB94ECC51EC354EF28A3FA2375D27EB84158775750023B42718
            D44778CDCBD32C48325704090355686D693A51CF1381ECA5224A476A35FD85BD
            3C8E9C3CA855B3AE7E0E1E22867D696309CC0BAB004F909B6867AFE769BF419F
            1E0038E2DA6F102CED46CD647D7CE5FCA7AFFE70E4D0E3FB1F7D6635F0121D4F
            B6BBFA984CDC465EAB265550B30DAA151D1B4819EAB3DB77728844623835F519
            1A773B23FAD449D358A4D3D9BAFFDEEBE7DF79E7E4DFFB87ED91D98D4872BF9E
            AB1A727B6EB84EEE73E8C06E346A691C3B70EA646118F4E2887915EDF7E9919F
            88D79A9FBC7DE9D3D3877EF3B75782CA7AB73D36BDA7DD75F44657156D9C1CB6
            DA9D8E5BE77EFFBF3DF1E413F9635F5DF247B4A9D5EE792D0CF4543899B681BC
            A3CF025F807E46A28F36574FB993EB48466FCECE14CBAFFCBB3F7EE12B5FBE3D
            525B0940D2AE1A56F2564BFBA15EBD997A411634B545D23E09E02238E8D0EAC7
            D7273E788A39F01F83820975CB1880A0E98C2FE35CA4C97928470DD74F6BB19D
            F77030A39531D85FBD1D66FFE7B3EB5EDD7E97E8E777192B32DC1693875D0FD0
            3E99E1E1A61F02497D89298D2BCB72284C9C849280D4098DA07E12FEB6324650
            2481A65BCA06616E461859764A099AFA2B62CC15145D67849A5EBBB976F1D495
            0BA765AFC5F63D3072E8903FBB2BAF541DBFA6DD733F865A54EC45C002221A3C
            D341684EE2E1F05D6927CBE394AB9E36FEF55D4E737A398AA5482B5E5BC41B35
            7D88ACAE1FA8344596AD44BD2849EFDCBABBE7F0D145ED37D42A690A1141C07C
            E6F8DA19D61E8EEF6044E368A3197268F5C47C750EEA9180ED94712AA35AE004
            4CD6B45BDCEB858DCA4ABBDDD19E516D94BB15802264E988DEF76BAB6E675DC4
            ED7A18D647F599E76D28D6D1FB568F64ADB6A8EDA10847F4B2CB3240C5F86EEA
            B9BDA853475179BF16763BBD5A38D65B9C9F661BE73F7C275D590C0F1C9938F1
            F48657732646231DCFA53ECB7DA597BCA332AF2D41C39669DBD6D00620DA1819
            152BADD54A7357376769265DC001E4D1CA6A581BE151AA63223F8F44B6A6CF4B
            51D1D6C351B93E2F83D8497AEDE599AA0F9CBE412D010C1A0F7480B4D6AA37C7
            179588505355873FBCD31D71C49EEAE8FAF2CADD7667E2C10377552C7C4F1FB9
            FA720D1D68A48913FA2B9D24766B0CB866A2CCD5518C8EA15C3FF73C90AAD766
            42A69DF5591D20BFFE875E9A4E3FFAF5A83ED5F20003E4A429B45509C0DAA44E
            1CB35801737BE07963D0A6E630D4B406184E3BBADB186DB6E7BB938D51C74982
            C56BEE7BAFA9CE7A76F87877EA817CEA4057D57956D7A14496AD853E8F7BC968
            2D6CDD99D7DE449825357D399E556AD59E760DDCA02DDC5115B967DFB972F5F2
            BEEFFD8D05BF0A6E34ABB0B4A1977C1274F2B4534DC5019E9DFD9FFEEB830F1D
            654FBFB4168E417EB61B7BBDC8E9ACD5451CF892579D14621D67AD9724D5B1F5
            18F01888B9491ADDF6EAF77FF0CC0B2F2EED995D16ACE185DDE5C5BDF52A0834
            BB615E1F5B947EEE57B0689532D553888D00C84BC26422893B09942805768462
            3EB5A0F8DEDCD7327CFF8A91FF61B6DDDEFE59D84E4885FCD97CEADF9C5E83F8
            D3D69E7901543739616254305CC140CF90A0740AC8AA734BA00DE5570CAC88FF
            80BE94FA93BDB0C20D8C4728D3B2C891441053CD09C07C8973B52874E10D18EE
            7566BB69204395C48DA85DD7EE65D2EA2E2F2CCE5DCA166FB3A48B0F16FA7EBD
            19D4B8AB7DE35EA422EC5A1215511D0DC6C6ABA3D5B0A65C106C17A19F84F58D
            A0D90AAAB11BAAAAAB5D0A67636962E5EEC207EF77AEDF125EF0B5DFF8EE8F5F
            FD09AB340F7CE9C57957AF3AF40536E2D9CA5837921DDF17554FC52D70BDB5C7
            0AD97B1748930132C83DE007CC99AFA2A45DAFB87E1C071B1DB9B870E7E3F7E3
            6E973FFED4D8C9A73A4E8369ABB4D18ADEFB19FBF494A7BA4D6D52928DA4D7D1
            067B646A66F4E091E6D1C7DBB5895E6522EAC9B0D3EA2C2EACADDFD97FF46847
            048DFA4898C6ADA5DBBDEEFACA7AEBF0F1E7BD3CB9F8F6F7DBCB37D9E4A476D7
            C2D1BD479E79E166256CF915D044D62E0C73CD62C21E5F3FCBEA4CB5E6AFA42B
            174E3E727445F2D56EA2A7A53E36BE1A6741ADB1767DA15E6B4E386EBE7C6BE9
            D377A3F9ABDAE97AE4D7FF6AE28E6CE8F08A27538D90AF2E2FDD5958EEA60F3F
            F6B85E219F9C3A15CDCDB320DCFDF2CB726CAA1DA775EDB12EDF5077E78356E7
            C6F505E9D6665FFA56BC6B6635EE8679BCDBE537DF7E2BBD72491F1FC7BEF1ED
            B9E6BE0E886FAC4207A6D00B32F4980F0B4826BE4A6AB213DF3ABFF8C62B079F
            794EEC7B7C3E736280C221E715C49558FB07E05F9E6ADFC70D98DB709D30D0BE
            71AE9D4F682401F6146D31AB6322EED67A4B0FA4AB0B3FF8BFA6427676E9F6E4
            8B5F978F7C63CD9B543D5F7B4C2EEFEA60429B28B5BABCF6E1BB6CE12AEBDEAD
            AA4EB2363FA2174FE6FA53BBBCA3278F1C3BDC3EF7FEA9CBD7677EF36FAFFACD
            4087254EAD938D39D55A375FF67C293AD96CDC5A7EED8FB4111DFBE677D782BA
            DEFD1B6FBEC91616FDB85D93DD3C5E83E6DC3C99D8BB474EEE724E3EBBEAD753
            162408D61FCB7AADB7DED935B36B65D74127AC8D755BEACEDCB577DF6641E5C1
            2F7F3D1E9F89A7F72DEAC033F0D1334820C305F1300F62ECF0AAB824C7469AD4
            A8D6BB89CB6D20DE11C3D897820BACCF68D5B753A2C8CBC0893BFE6FCE58FFA5
            FF9BA65A848AE79CAA3BA4830BFCDE2923BE2C6928FFC8CD2192C2C2B2316C18
            D52792A7C3518B702DFE91E0B90C051B19B1F6BA46D548E6FD3BE9F7E971A33F
            50C958A8C3CC34F1924E45F6AA598FF73694769275E4023D1090716E67AD4ED2
            F2AA021AA57A82C52288B9FEE346D261598255625FEFC3EAFE03D37B1ED0914F
            14B0913CBEFDCA1F8DB4D7BFF4E4D3FFCF8FDF78FA6BDFFCE99FBD5F3B78E281
            A79F9E13BCEB430AAEA6C39BBB6DCFAD2C876E0A181E8264EB9B7718B01D79A0
            F6C445E03AEDD65A3560A3A1976EACDCD131DDA5CB6C637D62FFAE99C387BB7B
            F6CF0B3FF61A2C63A34A4E743666566EA537CF2DDDFA38692DF2248ADB40ED9C
            54C78F7EE77BA7AEDE3EF6F8F373B7EF762E5FD69E4B75F7EC83870E7CFAF127
            C70F1F5E9CBF7DE7C6556DD746763F3031B6E7CAD98FC264F1A9E79FC8A76757
            96D6D63FB97267BDBBFB3BDF59AAD613A7827953288833AC4CE9802AC8633F8D
            97CF7FD05CBFF2E8C387DEBD3197DCB8C56667A7F61D6023E3AD44FADAFD89B2
            7A92AC5F3C5B59B97AF2E8837FFEC9C5DAD49EF17D87CE7D7AEE91130FDD9ABB
            B172E5229BDE3539BBFFA1FDFB3E7EF355ED8B1D3972F0C71F9DA93FF1A23F3D
            ABA397687D71F5F6C5FCC635E1D50E1E792478E0783C39B3E0BB51D69B12C9DA
            271FF1AB57BE74E4E8C50B173A23D3FCB96FAFE8D9CE17F54CBBCEA4E3D405E0
            0A5328BD27EB7B9CDE991FFC01ABFA47B5C5CF9A51D04889CC96587261A14A0F
            880C2464E0850E57B5B5F7F5B1E0B99C57F469A3E3D94A0FF068CE542026DAF3
            F37FF686BC75E3D8FEA90F3F79EF91DFFC0FAE4C9FDCF027F48EA8A8AC1EAF01
            D5A78EE8DB1BC7F572B97DA5BD783159B9DE599AD3DE5DD696F31193BBF73FF4
            E52F8B951B17EFAECE7CFB6FAD31BF75E9FCD4CC81DEE8C17612556B49DA5E9E
            0E1BF5B5C5F0C28773376ECE7EF5D77A8D86F4155F5DDCD76A772F5F6EDDB99D
            7637F40971677181576A6CDFC1896F7C3B9DDAD5EB26FAB1EA7AA296E7577EFE
            F6C8C844F3C49799A884776E7FFCD66BBFF6F5172EDEBA793551875FFEEE4D7F
            B4A79D3EE80DD3564447DB7ADDE8FBD3BE5CC5F374142D49764E95B22DC5695D
            548B36D98D21FD97EDD435FBA14FDFBEC8C26B6256B00AED8B2182064E1560FA
            801E404BFB662FA42C948E9458B0F141DB9700769D20F535C4BE182C0C58961C
            B63A020C51179A98ED0BADC8921747C6488706D044CA44CC2A39F708968E5456
            81D47F857479C69218393D5D5053D0FEE21A5A6D7D135E0D8236D913C068EF76
            B2F5B9DBDD1BD7D8B52BFA110E3EFB54B07F5F67697EFD9DD75F7EEAB1B317CE
            DDBCBBF4F4577EE527EFBCBFEB89AF780FECEB8CD65659225BCB8117C63FFAF3
            BD4F3CD1D93DB62E1C5FC189953914C2A16C312693752CC25536A964B5D5BAFE
            93B7D8DA229B6A1C7BEE4B1DA71937465780702B0B6B0DAFD7AD472D76E7E6FC
            BB6F569D9E5717CD46B521421D175565D5199FE9EDD97FEACC296F712E932A3C
            FEE4E883273337A8269DD6A937576E5CD261DAE8C9A7470E3DA9472C682F5EFA
            B3371E79E6D9C80FD66BF5867277CFAFFCF447AFCE7CEFAFB627A73B50C5D4D3
            13038C868D304866F5426DC1D238BA78A676F583D9F1FAA9EB73CD078F6F5CBC
            38B1EF81E6A1831B593E35B93B6A47619C9DFBE9EB5FD93FB6B8B8786E3D7BEC
            EB2F4751F7FC3B6FD7FC4A47AAD95FFB6E3632A5233CEFF6DC9D3FFABD979F39
            7A33BE7B667E71E4D9EF4D8CCFBA173FBE70FA5D36D69C7AF2D9FAECA1C86DB6
            5935F3839E6C4D35DCDAEADCB57FFB7BFBF61D6A08FFFCCD5B07BEF2CDE57D27
            565DC6D2652C648C03C8DD816C9A237BCD64757AE5FAE93FFCFD99BFF6DB7272
            76794339611D84138D1E09BAC50048C2832851BEF0D304907EDA0569BAE9586F
            6DEEF66270E0B1C8A97A3A5C6D2F6FFCF99B9D5B37A68E9F082AFEDC99771EFE
            D677AF8C1CEBF955E6F5A6587BED8D7F9F76DBBBBEF1AB9E178A0B976E9FFE30
            49D7F6EC999868D47A6BBD3A1BE5B589F5A95D93BB26574FBF35B7B8B4F7E5DF
            5A5EEB2CBFFECA93DFFD2B571A339160DED285511DD15DBFB671FEE3F0F68D46
            58EF5566A74F3EB6EBE48369D67EEF87FFF728F4D2CD342ACD7A00ECC880891E
            9D88F71E584FB3469E36F368EEC39FB52E9F9EAC25BD56529B7AFCD0E1A73AAB
            AB2AEB8C8F051F5CBF9C1E3CBCEB2B2F5FD35E1E6F00EA2ACFBC2C06EA7F8851
            3CCFA9EA6D07AA8F08F82DF846AD61D86C5F0AD4DB2FE445026B7DFB32F2AF3F
            DAF0EACA6680F00BD17020712FA38E5864C65629AA2312670A3395E3C24DE284
            C723EB08C533877BD0178F3D3178C2A08141F65CD0A663D0C60CAC73D8135768
            AFB301A8B2D1E4C25BAA0297168BB99322CB3417A90B680542B6B9505FCC1524
            D7F4C7A04720175D8C015D4404A48077E4501FAD732FECF466F531BEBEB67AE5
            DCFACAE26ADC79F4E163677EF4CA44E08C4C8E1E7FE47119567FF8E6CF4563E6
            C9977EE56616C58E74FD7CF5C2E5F48D771B070E8C7FF9A91548548F263CC85C
            A4F4CDA0FCCE21ABCF5895F9A1EBCFDFED5EB8283F39FFD81327BCA96A363AB6
            EC8EDDECA4B5897160875E5AAEB36CA2C62FBCFACA9E89DAF468589BAC33E1B6
            97DAF373AB9D8E52D5B1D9279F58BC7171E327FFFEF1175E5C3CF8F05A635A04
            E3FECA9DE6A577AE7EF8D6EEE7BFE2EF3BB911EE8DE378D6D9B8FCA7DF1FDB7F
            68D7FE03ABDA134C587AFAC2C29DC5F16FBE144F4F761924A0A0BF5CF14C5470
            5925818C1BDABE7CF2BEFAF96B2AEE4D7FE557C677ED5D3E7376F5EEC2D8813D
            D7CF7DC227F73CF4D089D0093E78F33567F9E6E4E4E4F4C967D9E84463A47EE3
            C2C5B90FCE3EFEADEFCCEDD9DFAA8FA5111F5B5E5AFE837F3D9EDD9D383E29F6
            1EDAA89E98694ECDBDF27F3CF0C054F0E863EB23136BAA1EBBF52C8744A38E46
            BDACD5ECAC5D7EFD55767771BC123EF8D04372CFFECBA30F6C54EA1E07AECB34
            0EF4C47110A2D0C39B4EA7EBDEE937AFBEFFF3437FF71FCC6973E6D62314F4C2
            EEDA0017680CA52DA4856411D72741926293BC48EB596B7CFEDA8D8FCE1E7CE9
            BBC1E8D4FAD29D3B17CFC96B978E3DF3BCDA776479F1EEF29FBFFAE0A38FF213
            2F2E03A672652A5939F77BBF2B7C67DFAFFE46A53176F9B5371EDEF7C0C4EE89
            9481D8984CDC3B37366EB7B27474F2C8A3C7FD6B673E397FEED0B77F3B08828B
            AFFCEFCF3EFFA58BF5D9AECCDB1FBD5ED5F71CB58F8D8D3D58A9BDF3C6CF268E
            3CF5D1ED85132F3D7FE6CD3F3DF1C8A103BBF7EAA85747026B6B1B7757D697D6
            BBC1ECDED1FD47B4DFB4F8FE5B5EB4FEF06873224CDBED2B376E2C8CCF3CB7B0
            92EF3F72F8ECA7A742373EFCE4E3F2F0B18570722198D64B94F7621EF7187457
            4BBD6E991772C24808A4B82E8C8B11C4EEB3CF9B9D35D81DFE8BB131D6EF28D9
            97F2AEA67C105480188545600BC073C90194CC0D9BA1223E3B6A8484D426522E
            90D69FEB81DE8F702D239665BACD24B87339F65EB844DB497408C25CA7DFB72D
            4C6F3CF5CB6B639C6E30CF674E0D1C1454D886061DED25E50ED89D3CC5422EDA
            C5041AE1887119DC1E4E62A200CC86865595C186EB24D52C1FD311C3E2CDEBAF
            FFE0E1271FE9459D2B3F7F8F65B10EFC1F7CF411E656AE9D9B3BF1D893CD0766
            5BDD0D2FED7DF4C61BA3BDBC9BA47B5F7A51EEDEB7A8463A5E3D0353E63244DF
            61C649BB5269A55EA9ACAEAC9CFA88DDB8FED20BCFFBA3810ECD9220944E90C9
            30EAA97AD0C855168BCEB9775E630B37B4732113BD4432C69B6C72AF77E2F1E9
            630F813D5EB97BEBDFFE6F8FFFFA77EE9E38795B792C71F7046E70EE67575EFF
            93F15FFF3577D7C1AE98E9C5C9F4084F6F9C5F7AE58FAACDEAD4FEBD37EFAECA
            357EFCAFFCE6558FCBD1F12C715C15BA320490981791D296AF374AFB4EE5F695
            E53FFE3F8F9E38913EF26CA6A3BFCBD7163E392BDDA439D69CBF7EF3F033CF4D
            1F7CF0F6EDB96BA7DE651BAB4CFBF061F5C8375E5E58596B5DB979E4AB2FAD8D
            CF2CEA670F1BA3595C3BFFEEAD1F7F9F254BDA7EF0032F3EF3D853E7FEE40F0F
            1EDBE79E38B11E04390B02E17B09443EAB39503E06DC49EEDEBDFEDA0FD9D2F5
            DAB8D371FCA9FFE83FD9A8EDF679984A3722A206FDC060B2BDA97CA3F9E10F2F
            9F3D3BF35BFFF1A23751AB8E76BB5D7DD4A017ECE9F3C4131D25133CF1DC3CE5
            4E5805844AA8A34259493A338BD716DE7FC749A363470F7DF0DE293E393DF9F4
            536CE6C0061F9BE26CEE7FF997F5D1CA9E17BE1A3646C2B58DEEAD9B677FF6BA
            17FACD3D878E3FF4F0D9B77F12F75ABDBC27AABE8C121629B6FF44FDF813CEFE
            C30DC6828FDFBB796B6EF6BB7F7D65F94EF7A7DFDF3F3E39F9D4B77FFEDAABA3
            33E2A10363A3BEBB78E1D28D9F9DD1E1E181AF7DBBDD68F46AE2F28F7FE8AF2E
            7BDD565E77227D41BFAEEFA47EE4E4E4AE83F97A7AF3EDB78E3FBC674FD59BE0
            ECEAC5D3E7AEFEBC95A9177FFDEF67E1983EE44EBDFF16BBF2294C84D71CF9F2
            772A479E5B68A581E7CA3C92ACC73C9E0721C4FED02E6289DC30C1417D6454F6
            29B615B30C3804D81B9A9E683B63449A214581680BFB625C18A468D6DB26CD18
            5073E7ACE08E22FE316E38328C7B020C32A01DCF11CC034E831175C42A3CC36A
            518AA60A7FDF0F4322ADC889BB01B942B6F05C0CB35112B8B93EB3725661A435
            0AC608292040891C7A743328D1C548FDEA0BED23E7E83B4940A34991E9DBF101
            E6A5ED47069410DA87CC322FEAD5E38D1BAFFCC1FE878E04BBF66A83182F2F86
            819379AEEF850B97E7562E5C863CA39E2E99D65CF74BC71EBE7CF3FAB5CE3A9B
            D9DB78E8D96E084D4F504242AC0BCE65CEB44793F6A62A956CE1F6EAA9D370B0
            242DA61D73FDEF402DDE00F3C77C56A9EC7DE1518727EDEB972A32F538AF541B
            95D1DDBDEAC87C50EBB98E9BCBF4CE7C7CFAECE1271EBB3935958C8CE9D0DA59
            5D1B5B9B5F3CF56EFDCBCFABE644E68C028743676957201B37AF2E9CFB489FFD
            BC3E3A76E4C9B83916CF8CB5A21422445511B20ABD086E0F064D6AC39FD6796F
            5DFB2F674F3DFBDCF337EB935CF8C1CD5B57DFF92963D1732F7CA9D3EB9DBD74
            D99B9C694C8E4F8CD6D2A897C591AAD4AA0F1CBCB3D6DEB87465CF732F2EEBF8
            BEDE48A4085D36D69E678BD7BCEE1A2CEE6076A2397EFDA377565616C0CC0798
            5DD6E74A27821975B457EBF3138FED9B9D6DA6BD78F15A902FAD73D139F0EC86
            37E9F0A6BEBB047B5459D46659C42AF5916463F6E647E7DF78ADF91B7F934D3C
            004CBB9EAFCF8A28D521017417F8BCCB65C249B990C38C74D218184E93A41977
            F77457563E796FE1CA277A311C38F978FDD889F999DDCBE158A246C6F26CF2DA
            E99B67DE8DBA1BDAED645D7DF0B4F71C3F30313579FA838F2A7E3056AFD61A61
            12385EADA2438FD1DDFBD645A55B69AEBA952089C37367E7CF9D9FFEDE6FE9A9
            5D7DFB4FB2A595A7BEF5373EBD76B57BF38C5767E9CAD258BDB9CB6B2EAFF7D6
            6B63B38F9C6423416F69A17663CEED6DE455C51AB5DAECC1D5CC6DBB35997BD3
            4EFDF6854F657B81456BBCDD1D69562A63FCCAC54B630F7F6DFAC187233D6C2A
            4D6E5F0B99B791FBE1F4C165674C561A71041C55C2CFA5C7526347B0FD2297C6
            BEE03BACD8A7255AF7BE7D618C0D6B623EC3BE30664C8C3601A3FFE3E935B7C1
            4C0F02593B0057011F0F50AB66E01AE4CAFE9EA14734895F848098EAB57E06C0
            88407F8EA1A8A1AE50629602987202481406BDA0AEEB2BE16CD2FD54F7B453F2
            FE1F0077069682078CFB80E8211628ED3F212A958B3C81F027476F1980FF8E0C
            789656D23854B19B476E166913A3CD46ECB26E9ABB7E354F5327EEDEFDF46376
            FDF2D1AF7DFDAE079882009931884F50814866DE6A6DE88DE9733912F875D78B
            BAED6B0BB7B463CFF61C6653B3C1C8680AC5342051050226691896A09D84295F
            025215003E79E261C92E57D456ED2ACF613E28DF0A557466403B4906BD827E86
            1DA99E94410E8171076AB16055859415406F6631100FB839A34E25ED91E9274D
            7CFD4580ED07545BEC40121A1716800019B2615384C8B083CA9111EF6EB8DD0E
            F46F0615C031B55BAAD34EE3DEC4D8B8EF798B4B4BDDE555E6798D99A99189C9
            C4836B668E2B1511A23BD281B6C14C07BC69E2265D9F65BE0B2D4539B27DF10C
            74796224DAC5B2BD82DF142A4338A27280F107192D738703B6ADED543351658C
            9A27147401022F6F263BEDF18A5F59B975EBCC47AC1B4F3EFAE8830FECBFBBDE
            EE8613A957D1817B37E9A8BCEB38B9A03E2CFD7C495451AAA6646FE1CED2E54B
            EACE1D6DDE1A7B77DF5A5E63D3B30F7DF35BF36ED8762B99F29A8EA7233527EA
            767A6DE0E8175ED8ACB36A005BA0DBB9FBC939D6EA1D7AFAA9B859514190B412
            3FA8264CA49ED3D5D17F9A8AEB37DAA73EAC7FFD6B4EBDC2BA91EB7A99570784
            978A854A5C99858CD5145FB875BB73F6FCCCAF7E53791EE81CB65B6100F57B84
            65C20441B95191BE7D96F4DA757D1A2589F68C039F5D3B73862DB5F6BDFC9DB6
            EF67D0989EE8B1D3A39728A72B0195C4C200BB821167291C936180A176CB5B49
            6DB5ADBED017D5AB79F35F69FFA5517A9F947DF59AD05B37832A8F4DE8F23EE3
            027DB2F023300202164297515336C17C6D551B61FF292361377DF6C0C75CE2F2
            DAA9AD04FB029E08A49B8195C9C59A089A2895FB81D38BDBE03BC8A45E09D24E
            87A7A9AF777C2A65DC8B5BEBD1DA8A6AAFB3569BE93064B471FC4BCFA58A757B
            BDF9B93976FB76F3D8D1D1BD07EEE47AFF0448F4E5985E31852C794AFA8EB603
            7A40B4FF1569ABA45D306D7822FD0C614508179086A031E10184379708BBA364
            36B0C5C0918A62269E6181429E27C82039C8AD2472466A4D9BEA85C3BD0C3BB4
            92D4CE60499419B1091A97D3508A19352CC02B670978A60C835AA528EF8EFCD8
            BEFE3560A847951F4778B11049BD8E943774515A2948551F2766CD0AF05EB108
            68B368C4A002486664FF6056BF11F822011C2B21494F4BA8D06614C6C106259D
            5CE4B9D00743148D6997B4B371F7F4FBECD60D363BBBEFD0E1D86FE45E0572EA
            905A4AF23CCBB5454BF513C5DDD565B9B8C436D659923A61B8676A7A7C7ADA1B
            9DFCE8FAAD2453F5479FCC4726FCD1F16E2F4D7BDDAA7042642F029A247D2A79
            5ECF157AD98FE81F6B1B7A993626266FA43DE56ADB207C741032AEED47E673E6
            2DAD752E5D1C7FE4B80CFC5EEEE43A36142217949BD4C62ED727AD9FA569D4E9
            CDDD46325D0548526099A0FDE430CBA1479034A39CA4DFCE12BD76C6EB95CEEA
            6A6F716974F7DEAC369A0824BA263E41D84DB80F0DBB3E2F03E7EE8B72E10B79
            F1C6EF9E6AF94D6E031FE43982A96531747842BDCFC84DF5350D8CEE8422ED6C
            182658586168289DFB229B289290A5201949C6C515D4B54D3C26729821205D44
            C8B918AD6E660C1C7475E943454DD4C2EEC2AD5D81E7B537B2A55BF3974EA769
            9C66FA48ADB189D9607277AD5A75D3642C103E441EB7EFDE9D675E101E3B3E7E
            E8F0522F936E007D71795ED4CB49E98613B924B489EB1335E3569630272D2DD0
            158462997928E4F431061752BE241407FFCC10000D2C1F0A7B45D0CA40EF9261
            362C2120EF8F0FBC2466B6D970DB3A2016E9A8CB2B5520714FB1A924AD21875C
            6712CD43DB2168189813EBBF54EB299A01623BA54E31706FF57FD80B435C76F8
            ED66A9181E3FC04148338C8C2A1A02FBFAA03752993C9F323DB5DCEA19422632
            07A60800CD756A8E53F798EAB4BAEBCBADF979367789B12E04BB48F209EB3043
            76567D6B6185359B7C6CC21DA9BBCD86F62C94EF039B5F0E19DA967621C6A75A
            B9C36A4DD25FD176541F1E3E8E13B4CC73E2F1925E9EB8795613DA9774D774B0
            16563CA14374688E4BD288E192AF68DF696DB9313D0E593DE593041D11A7426B
            1B3046496D5FF4619845A03CAF0D6D9C65C0BC05F4A00E3EA3D1CFCE8B5CAB87
            BAF71EF4F284FA30D6A3D4D341A0C8FD6A064133D0AC3034FDD09CEBDA13BD64
            5F0AE5E95F86176FFEEE872D6FC431D605E58A40163E03FB6249B971E2FBB6D1
            98462E2875A4F790F6A239D0AA6D3E7F31CA002A23B406D03640ED55C878319C
            7D41D61F5AB056359C6E4C1F35F55AB6BAE2C71DB7BDBE76F36A7AEE63C69246
            2077ED9A193D70C4694CB6991F91CFC07877F1EEB50F3ED04B7064CF9EDAFE7D
            627266AE1B79CDD13C95D4A889901C417E16B07622370F43BD271F5941A328CA
            7A1D13D002C3561170A26F65F577CD8BEC0B69B609637572DA57A605A9DF1D8F
            BBC552496D0778DA8E674CD8EB303690C9928663D8D4E824047D98B0B7274721
            7C441226924A79046F80043CA83584616C95AA98E58866F41FF4B660878B30C4
            A6C6BC1AE439C2E54C771BBC4300CBFEE373619F28C35F20488BC9BE69135ED1
            1E4A1AA938CAA38E93EA69F5424FE4DDD5312FEEADDD6DADAC2751EAE66E35A8
            34EA639546B3A59DD6B0D2F3DCB6C3DA80F377209918273C8BEB7E98485F05F5
            44DB97B00E0FEEA1B0BB04F20A33B40A9C6BED793A32D1DE8DCFA14B280BD1FE
            E8E513C5E0A7EB25EDC00AF101D1AC80D8133D5849207B5BACE13275F2DCD723
            1EF55C44932A47A4590E8F0CBF6ECF03899C5CC5B3FB80007741E6D9C9F417E9
            581EB81E03307CA0C996F75163DACD745DC33B67E68B5688D17FF8851A8AFB7C
            F1D1FFE1C396DF305915E05084D605C8DEE739B3A46916F05238B1CAB062433F
            B44782CD92946AB0506B6322DCAB064107477921BE8D2A02CE70F6054B4BD4D4
            07F526B04E7AAD4661D2ABA7BD7CFEF6EA950B901474647D667C7272B2E95775
            281E889C675177636DE9EEC2DD95B55E2F67B5497FF7FE707A9F33369985D5D8
            71528EDD6D981986D335CF316A00F20690BEC5ACB52A68BEE870D636A7DB262C
            202709F41CE5505182A03F4AE819E8930ED693BE14B29A2BA32745A7BD63EC51
            BFEF5D1996AF61ED0BB7F4A39B3F4FA45778CF6459889E43F58B06C83344BE8C
            02AC20522A8BC0075935BC26F10A1BC95170CE715A09D314D0DE33BEADBD3961
            01587496A2168515A5B1F72998259DC63323336793A2F70D75B15E38791C41D3
            0DF4CE018D16D2DD3B40E19FE77A4C81885CBB842899882AB5902CCC50514962
            760773851916B0058B74001232A7C22B75B81D5F104913DE91FE520FFE888217
            D09990441EA88EE865E4B21E5A16630953984DD064D6B1B997C4E0DE0911D81C
            3F39F50A45DF32374DB57D019243C88B29685CD5AB4B1B1145D5099A2F178F34
            70319D6A0D2A9E68B85DC1B2041AEF31ABA5724886E2CA14B4F54C27342BE72E
            FB33F0CB111F8DFDF71FB6DC3A23C94838C053EC2ACA996DAFC47BC6C5D747D3
            E2E2706D3F342A754AD6D785C34BE1E106E04238DFA8B9C8FC13F6869390C230
            778A2DC2484A60EC8B93827DC97A236974E783F7D8F94F8FBDF0DCC878B3AD62
            E5F9EBEBC9CAD272347F9D2DCFB3A8C54647661E3C3AF5E0F16E309237A6E7BB
            B9AC34C0A1DD68B15A05F4BAE3047D76508994FADCD0372F1CC4FEA1B026A8C4
            2B935E81B39AC132897AE0A98248B98368DE0C31CD065C044BCDE089B0F01E86
            144B9ADDC56DAEC1B0D09947C4DD4802A952DD0F1E61605571D29FA75225B072
            501D100E1384DE93F530EACF088344DF0D4E0EED9306F093FC0BC8A65965F522
            DA85C141EE6452FC2D3C17731BA274842A4BF98CA737A116B031D632F443AFB8
            F57D85C91FA11305840D2E440BB90E6F744C9726E074E81023A8608F1D269530
            DF8139399EC4405FCE48450C65AD20F105DC3809841E3994B311338532DBB50A
            4645D4FD8E17902E508AC223A70001F33DA6CD87E7C117F99EB1AAFAA7E7E3D4
            6B6BEC49ED1CB92E320661D5441811074463240CA4600CAB49A6FD9D5A457BCA
            580A486C37208678B0A87C5872DADFAD8499FE52FD2BBE0F293580A1E5086D4D
            6163826E864F325E05D73F5343B073FF7FF9E213FFDD07EB6E4D223657197743
            9A2647618F2C0BD3C1D58386462F2C0F52A8CC449B8AB277269A3051061E5FAE
            4BC85D14ACEC9F709C393BBF4B4573C0CC4A80BD873CA84008C9523F89D385DB
            F9E933ACDB6171E40B9EE813A656657EC0EAF5EAD4ECC8D4B4A8377ACCE928A8
            42B1B0CA830058BA0550FBA671822E83B074853995BB701729CC9F61AF039A1B
            CA90C209A61F5CFF4C63343A3939080C59CD99515F736C20899745B94B06B5C4
            52F2950D9C3326116BC45187332EE5E5D56775252E1E14CA01450714452387D4
            29E83B9951E65594F1775C069DEEBEA4660D80C1BA90724C13387E80B04E9A87
            C2B048D9A43F4D6ADFC4181A21FB25C5E3D83AA4FD0CA5F3C8C530927B501C84
            D1833F00C363A243F54CC768FA3EA25E9B692BE3605B06C464563C878499D035
            8316DC142003E8A601878FF2540E6D3A29E8AF72D7631EA97A02995AB302B53C
            4268496D277C4F620114504D32D59F4913CF7331D186D02D9026D096CA85FCB7
            BE92BE813473A18E86F72F487205139760CD139624DA3C4A60CFD10E0874A862
            C208F95309818C9931749691C633C978B56250B039BA8AFA57E208C222C8A2C1
            D6A346E0A2CEF2CB9169D9FAC527FE9B9F6F882A6AAA22F65F6F12C33B83149B
            9620B49F6B00FE2557A0E6B4245C1CB1B17123EB87256D3CDF1C5A9A86851763
            221BC0531BE4102F84EAC2598A61116ABFD18A60781E692F3688A36AB75D8DA2
            5A9E39BEB726DC2CACA78EDFE36EE2F87900E55550B60C03A82221D33E4B2468
            147207C4A9E171F03024ED7A206EC307D13FF5C1E561758C51B6C5981807729F
            DA83ED3210B4CC8843077A13A8280BCCBC8E9D7FC856C2A1075D90BE4D069BDE
            50B33359118ADEAFDE63FF22A65A449CEDFAF090C5A430D4C605C55413ABCAC2
            33A5E0CE419C811328D290200F4BE61C85D08CFB03FEB9436DABA6A9D57CB362
            FD748018E851E1F60FB29F876674DC2B66959330865225DF47FF3949FC7A1DCC
            41DC85B7B52DD01B5B9B186039071E32894C2294D7D3CBD8D75B14B843D23C4A
            F098E40E91A741A54EDF97C7332837018184EF670ECB72E0B6E38052830FB9CC
            85468A1C58E9734A94392254504D03F1E3D0030C00348C3A605F6A15E42A8145
            611E814A1C39B6BF68370A222987E7A9023C0E281827DA3576038CA6ED9C218C
            00883E3C57A1587DAEED29675EAD9626197A4F2E6BB7E14E5C8F073E6D284C93
            D9137153F97980F3E02FF9C547FFE53BEBA20A80052C8B30730219C54F4A1B9A
            7A049E6FC20B2126C281C850A30C1E93F401D34C15C92717C32221E476E6550D
            111F425A3DE7C89684585FCC4AEA1F1EB64D10A912725C83BCA6AB320E2CAAF5
            9C05122461B4C30B3FA1DDCB90E29839D17E3310CF491719A18A64278A8890DE
            B83623DD363C0B126942D71CB1EAEB01016630C80E72096A782A8DD0F1C98D92
            21A9171A3FA2A8B95270EE12158E32B1A4327D588C82E7DCE66887F577E90AA6
            240478242C17A551CC50EC99FC0E5E48E212785C51F94690A7492A8BF8BE5B30
            6990A7A9F4112AF111F461ED79480C84C709FFCCFB61B6B055FE982A90938C28
            B2ACA4298D3F41B7FBB9649BAF54F65CC1C5D34BC0DCBB86D0C3B6DC1BB14A81
            D9269926840B65A431CB38916A7012F1438137ED95019DA5EB63098CBC3641B9
            2688A230B609802A40425B326AC52217376C0A60A6C16FE6047507C097437A43
            CC8433588455D2AAEFA1021077152D0E4CA360511FE200F3095459A539823FC0
            86426DEFB0B6A588E87DECA62FF4B559AFB6F95FFD74C3A919E32249DB080D84
            CAFB1A9D5897C45E4410E844F2713C2E94C935C05820D342512AE24899B5C540
            DCD788807DC151CF28E680680C1A1E1D2BDC017C71B02A72F26BB47D61B22A24
            8A13E02E26BD46EBF5D07235D91CC474B19C28E83013891910898CFC105698A2
            9280C66B802633724D1DB450404F09003B68D14A8810A718656592175457C382
            09CA1262FA10051C1CD7EC7BF47A4CA29111C87AC81563AC9224B95B8E4E0AB8
            E4804F41BB204D7A55987B93FD965485D934AA97F5C33A2BA1A78D082C7488FC
            C9332F5236856CE067DC4F7F0ACDFBF60D2B146CF51E59514C639B2AACDC24A4
            4A74484200F84EDF5C8A95140759945096CF1C85003D379DB450AC90DCC4A5DC
            EAE4D04285342C48CA00B4052A47D28E80223FD28125E1837D61892B0B87CCCF
            E09EC1BE40BF1B9E1EB05F508747922610701BA17DC9CBF605EFCD31B96DC8B6
            38DAA322D0100916A36211A33C203832DA0FF25C270848EB6E60807F29EDCBA6
            17AFFF8B37DBD0D42391909CBC6A895CC1458E00770818591FA46085E5F0A6E7
            5226B4963DAC6797E243461C0BE528E0FE6F5322D935431E138C5300AEC51058
            010C8D92C45428F1AC6C6647F55D95D2FF4A250CC54B383456D81756B22F0E47
            9E1A2ABB2080106BB17A358798AE821E4F8144BA002A012B93F6B750E1A90223
            6486853541AA9D0C8131900A70B0624DA50723FF8DDE447E3F8B06A891510AD6
            24D46883913F50424458FF0083116C761788A383C995FD338361C42181030C7F
            D785B4629147A3E2D8F67EF83D9665E0EB0BE302139083142FB74875FB81BEE7
            DBEFD797A46D20850FB4BE59AC831425311BED60369AF7E179A0F3AC274FEFD2
            948190BBF93E6EE472A4B2F23DF805A0CB8811BD875915175D405AFE3AB422A9
            77DB5C03BABAD81C4334AA12C376D43324ED4724ECCD902629011FCABA5D26E7
            08186E01ED081CCF60C7A257D061420A5DBC469AE4193C9D08033FAC24902EDA
            B41E7E196DCA66FFA5FA3BAF763DD31F603BB5ADADA5E317C12080F8217D72CA
            A1D8CA22E02928A99EDAB048185D3836403CF117B72F99C13E2B02EF420D8952
            30920A0E14F37302DD4197B071070AEE3D5AB505370E1994FEB95ADCA1248F1A
            8D17640B4D712849A9798A7B9EE75772EEE7E6638C2229F001216B9320390EB9
            4B45AD1AA40A49D08E68EF905607C6CA014A7F61DD636CCE30941843C6470AFB
            12F037D1E74A21BF68B2B9C60518300734B90253F58EE14546A2B03E452B6685
            7323E8EBB81C79EA0B9C8B39693ED7BE98AF1B4812887E7C84F7CE31762DFB38
            965FDED0CEF76943E0059292B9F9F628433885FEA7C0C7120FB76E208AC043BF
            3E1C0F5CFF27A1AE4EC5634E7A39F8B0861B4D6045C973C154093CC638A25460
            3619D5ECB1A480D6440A637D0AFBC24C2600D2CE58FEC7C1CFB32CA28497AD1C
            3B02A98FB95F01DC344AD05A09619009D6F79C26114826E8DB222144E00D4511
            CDFF3FD8974D2FB42F6E9D195C26CC2240210AD17718108081803E0E230AA792
            D2357CD6E25C1C8F14D08B0F943D17CBFF706F91636777094D3BDC484C729319
            412E7E9133500E37AE2CC3754010649A722A38191A09E46AC8094B28B0088530
            13079166B93BB0A58DB62B9E96A8C200D29449448112FAD2154A42992745782E
            A074730C97D20C1358AA1097730CF017935BDC6326EDAB7DFB00EADF0235E7B8
            30F9177B4E0EF39234FAE046A5E857CBA28D15878D7A520B940A15CB01D4EF42
            8EDB160A4923DC48E565A067CA41C6D7E310CA811D34D97A5EEA64DB6A4AEF8D
            9B3E7BC24B2DB7E5CF0DF03696FE2C106C244C1C91DAC2AD47953E6BD98D4F04
            EC532C8A39084D64E64285B41986A2A6B80EB1B271E89813A27D211C13993C9C
            1D8ED51FC24316AA77E6FEB0D1C374C6E584FAC932FDA51608069F81CA2B1AEB
            00E22AAE2CC9494EE1364894C4915E3FC2156E00D80890B804EBE617BB69ABE1
            E39B46490D4548F70B7C6DF25FEAFFECD5B6E5AF13AC704111EDA3D04F018CB8
            AF37198E922CCC0787C81CC4499802BE0511D6957598FB456803C7FC0BDB17C9
            492631C7CA34C23A90950F810D1249AA6CEE36A3F524B0AA6E582D4CCA462017
            0C0AC0917DE1588D22D701AD152B2F74FA6A07CB84D2647CC15F0350BC64418D
            09038AEF136891D1C85383565054269094102158210E0A26772970C18E500A3C
            19C774B82A37F9EC7888A825153212685C72740874608F3BCA2E368B6F0457DD
            87700FA5CE1932699057428D5798594C0863293C0F64368593497B460BBECD3D
            989F8A6F35D5F7EA5C9456C4A0DC25BD64E90AA2F4316CB7B22BCD7C1C6AE7D0
            E3C6A10F4E98145929521529A8FA2A8290D814380561C22AEC5A97044B33411D
            45756C198B151D7BDC1404EDD2B41E222B423A81B24B741042B55C62F31D355E
            08880300B189ED57E8E714D8272C601ADC3C889309178E3E4B5DB20D7EF29E51
            FB4BB62F9B9644E3775E6B797532AE06424ECAA39CE02D48B900369B74802C3F
            0355C8285E10B8E09C80598759995A89D3F79F873DCE367FD8A63C5163C89090
            DB11E420A56CBA5D486A0F15554CEFB9551A2A2017D680289362E466AD83B991
            24F06CC085B66A4B657B0021C3B98481528691058E0F26FF4DAA07C37BF06528
            11034138B447A3C9CEFBEB0352481608EF0502DAA841550FB2D5DC7A04845DD9
            F10B7C74857E93CC4CD718163548C7B3FF294CD4EBC5CDDD9028D5313EE0CAA4
            D2E8B8CE0D5286142E20358A6224CA76D089CD9E4BA91E54748AD97C4ABF5AD4
            676935FD9CFDF8D4F03EF7574AF1D3EC6DBBBB4C1C0F091346804686F8471488
            84C7B749E84D44F978BF399A980C0F0CBB2C0CFC905E12D5B8009CA7BC0A0644
            4053E460546D511A9C99C2BF1527A360D8750C5C10D69130206DC4F5485C0684
            D685FABFF0E8DE24655CB829C21A3BD583A62A6AB285165082E63A6C73DF49FF
            A9FAF8CCFBDF5FBFB8D7E6FC0BD817C8EF32530DE0A8530AC31E50B9046E1EB1
            8924FEC6F0949354508052B4723C0F58D37240256E8A8C7E91F6050558817D80
            FA5F4CAF23266291CA00F533A11738E5989931BA295827C2958B872AF4CCD91A
            274558E41949129697841FE5C557169C15B8B8D0D0D0A9073CC4B8F3B85E2EAE
            63E30B495E0C5C117A7C524CF7527A2FB755217BBE8361D28B2DE054F0B61057
            DB95FE39F6A5D0C3B37FCD81183021A789532FA1DE81DC54A62CD1174783A8D7
            6F5025B55E935F29702B194676127B1D20A95F1C188879B39ECB00D4A5541262
            857DB9275FBBB57D61F6109066A3B24D268615F6A5A004A2DFCD4CB517BAE624
            B76D567914817623B809B09729E7053BD9C872A3AE0EF1A511F8102BCA052251
            50F42740490E7E5D7802EBC7A876C84BA501593C18C77C2E557D88F211ED0829
            A82A14E990A67EA7704CB93D8619028959BF8108D6598C9504E0577021D32C70
            3722313BA31A0067033FB7CBD30D695FEE4B3F600797ADFE973FEA7A23DCA2C5
            E1D7A03EE372D757DC549891E25B20343787368A388600014A6B1EC7E182377F
            A1DC7A5B3D4CA9C0A2AC378B8D9718B55A8D1766D9366D034BB980214B3E79B1
            198ADCA3090C8B6F1C74F1CB138069432ED394FAAD0580A3D040609B89C24641
            931F4D914087C09DE55386034C1652E6C25A34D517EE34F7C7079EDFC4066058
            305E03C349682EEC87C68C8F2DBEF613BAE60285C630103005904D3319E552CB
            3B799D69CA0C6939B837F61C66F9E082FADC4877AB0F6CDA19EAB32FB279055B
            AB6FFFA6CABFD8E7D04970B473C4423A3E9808D01247E81CE65AF4BF62089992
            C8AA312E94EF35F82F502294661161C51024AE5CE0B1618AF1AD2294C1BBB77A
            1DFD75D75F3865CD66B803B3C3C87640773E504C0075ACEB87C8E6C180079229
            82FC6EA9A6B8EDE07356F62B19FBAC7A9FC32DF3835D3185B3C6AC412CDEE4D8
            72D887CB16B1AD52A2844787DBABFDD3D73A6E1D19A4E0D991DD92A3E1042080
            B0828D84C83285830C951080AACEE7A6A0F985BFF8360676FBFAC5179B5DE748
            C581C720166E10AE6EE64398D49F3618DA220360143CF9C442169949AC22B8D9
            C04C0A195AC64A7D5E8367543102D2F8500889C796777D1B69D25FD2056496D9
            922A47C00ED6D7F57A8515A2637B69FC52879CAF826C8123A2B448D52B43E2F0
            4BF6EADF9028AD018880A8039376022A00011710568820F746D5EB2CCED3B8A8
            AF59BFDB5C8F50A58C0C1A164F61D0B489A11C79F9ECE95B92E11C0093EB64B6
            1B8B63D2107AB933683A01FBE203E71440431CC30339ECF06CF21FB185A2D82F
            E509C58C88A9156E4EDB4BDB0E521C420C0364D059B5E761296A817D217831A4
            3A3EFA718BD7CD7C38504DE03EC49C587C75A8A55850531A96A2611572ACFD79
            50F2E8A7D886C49B0E1D1E0EDBEC37247864E8F630C2D1C9BCCF6E035A092EB5
            4120460B155A415116415C690F4119440D039F44EFBD487D16BC50E5472E9DF7
            FD1B35591500E0AA9C11A704F91DAC94B6E85FC1B2A603B80358E318A1508559
            D510E143BADC768D05012B4A84AAE4DD882F767E876FCFEB77430CD49868DF66
            963EC2A89EFBB9FD0AACC3035B589E2138C5200FE997EDD62A7051347A0054C1
            343C3473F6B3D5FD391AFE65729DA519E7544020FB227400EB4B42CA188F6078
            FBC2EEF15FCA03BE7902720CFF152FC990958BC5C50B9C0CD66726E16CF003AA
            0FCB805F1EF9E73F5D1755DA218254163DC83582030EAB9F60A05466C506FF14
            FADC216BE0908832B110D82FBA373EDCF2E7FDBC2C9865F06ADCE66737FDBC1F
            44E350F78F332194346382323404FFA1156915E99403D5611D29C5E0C5E438EA
            88C4579819B18321ACAADE678D0F06158A9283880C484D439054B6ED70E0A3E6
            4F029B1210CE479D5FF8BD3930D3709EEA0323C90C938BD7E72BC26714C62B66
            45ADF78B9BDF61C6BF1F2AA94D7B45582623D37205A72695E13DC54AD6999BBE
            64134F491B0E9883BAC889D8BE4FF0EB7D74D89DED32AAC3DCBFC5222B77307C
            C7F6BDC4F82F3911CA107B6EF1A43B1D1FD6EF65C37C50C161A6B8F94955546E
            598728382AC06BCC2C7355B63596A02347280075A22A6C461DB83EFA1C58866B
            FE8BB7DAA266FADCB9AB5C81392E289C1A8400494A33C4CAD35EC2FE5A23D6DE
            67E2935FE8FAB345F17BEC083ECB16EF7FD1EB1B512A0EB32D9DD2D498F0FC67
            A564246491D16BCCB18E40B53687F49EFA58922DA2B93EA2BC7F839826C2E44E
            8E477462AA9E8A4A17A58A6F510C12086C4578245D0D3329A65B0741F499C146
            7A9EF64907B105767E9505F30F31BF7F39E8AF22EDADA85B455AAA1ACF2BD147
            C00B9453B94A63ECEAC8B0F79DF322F7651ABBB920B574781FF9E2803A9AF7A7
            6760A50DB7FEE90265965C343A363E727C9F8A64C8C843F19ABC1FFBA268CDA1
            3A2B80901DD28D9656AF95F2EE78E26C6D5FFACF57D817EDED222F0223B62785
            793ABC0E72F1E5F45DF0BEB62F2DA7E6A087220DBB9AB2BE8143941FC48A08E0
            777DE924416E1BDF2408C97B2C1A3A867BFE1DBF94398D879841CE87FE96E1EE
            DFB0670A936135F41CBC5E33BB9C9BD22CA96722AA24231928462EA8E4256752
            6CB3FE36EF5293C894D8EF9E51FB1C33EA78C552301E3E5ED9F5101DE721348E
            9B06652E81F740AFE318BB2EB0BBCF81A05899DF2D56182FA02CC3CEEF7DD997
            BFF8FA2101D002E4491DF0C4560B6C3526A8EF67F2A94D29C73625EA0E15E8B0
            1BA497C89595DB705CE884F40256322B8335BC61EC4B8192EF0F14DA17ED4B66
            314C87E761FE05ED4B412339C4F8F46F8DD22EA6F1B20FE0BE77E8F0FA8E30B1
            88A4FE7961B2C8C41BC7C80C9551627CEBCB519DACFECF7FD2F1468C8E2FC41A
            080CB07B9432C6C4CE4B981785743BDC75CDA9DB0F59F9B0233CDC2B4BB65E7F
            DBC56508381EF6358CFD62857E2E980EC31799B17AAD941BE34509073EC4ACBA
            5589E3AE1F896CAA08DC9B6F32881E43D38DB9308CCB08E2480434C66D410646
            ECDB167E809803C36BA5A8FB89E36FD1BE02D82B64162018A67DD7372EC5B898
            F2E22F4F8454AA246DBEC2C098911793235C109B21B02DC3B0FC1ACF1F0E51C4
            C548B24452D0AA37AD49DC74C0BB582D756C67CCE60D2586B48DB21411DB16F0
            22FFB2293E320F2987F1B0FBADBCA6C303DBE5B6B52FDCED372717D522C698DC
            C48D5B7E5CBB368A595083C8697DA9DAEFFCA4EB3649D74029745E1C6C4BC9F2
            12865A39D82D0EFE4B1433DFC3E40BA77A93B9F52F9A8F8F8493EE7D6D573FF2
            FC2FF67E8AAF5666B7E33ACE811CA8C87DE0BAB1C86284EB6EE25EE8A7EBCB79
            3EDA3F5BDB17EA6BA796288858338BA90331D5DC8241B1710EE1738EE7E3CDE1
            9D18CD0A01911AF04E404DC424E9F1AE88B56860E714B8AF5F0E3E91CF7D0D20
            B06CE608F21A7164785D89E5CB1186770220E9D0B7A56402BD63968392171D76
            8C13B518320589F2AC0C9A9861D77FC93FEDF7BE0FE45F2461CF07584487B8B8
            E10092C673418E0E4594AFE547E0A6C3DFC9918D006C28FA2990EE355AF59CA8
            A0500414D733F8C27979C08B1C397D06FF01FFADF1CF7ED2721B057E1C712526
            9362D2B6A463CF4CE8A5D0BE08EC7383FB19B2AC3030045BDA5E69B18CE5F7F5
            0021641688365166087D01551A1D4EB918F8178961898EB7D93D7824C10DD2C0
            FA7BF05B543B1BD48BF9BC55CCCCF24543EC22323FEFF5608B5642597CA0DC03
            BCE538F5F76C7F751A740F2BD3989795E794C17130F428C9692284A8CC8DCB89
            391781CC9E4407A16C5734EAAB647880636D850B423099FE00C606E2B56DEF76
            C7A3548C33539FE3ED94EA0EE585BB2DFEA0FCD9CFF39A50D18601EF7F8A04A0
            DABEB888CD35851289B94A6C2080227D8A7D3040DD0D9300455560D2462BC3F3
            82A96FF3E0DCAF7D29F92FA63E0D1C54DCF54214790594A01D84E1EC8B0B64F3
            7A713A29300473AACCF4D3D8949662D4C04CE93B697AD68A7798EABF63B853B1
            83210C0C160601B78802C3022579407AACF437564200AED7FFE91B1DA7C90BFB
            22EC9AC64C018A30B2C2BE407ED7E45F0814CFAD24859DF4ADF03F5B228228BF
            78EFEA11DBF841A0B38388AF220E2C5B1661AB4864772173E56ECDBFB9295FC5
            6C869CF8807778FF3684544434E5E0E3E7DD1E58FA4AA8FA88D63EF6BC1F750E
            EE047BCD4D4F2DFB7A7A5BE7328C7D51466F17E7857A7C89830EDA74A15A9423
            C49FC09F400A65EC8B618130C93CCBCE2D0DB9BFE16431DFBEC5DD7EFEFC6E37
            ECDBCD2FCDC1CEC77FA89F906F82E59BE6B9B2A6937A4A9DA21E674836800613
            4F7CAA3D51E5C8F1A132CD6D1B647F5E8AA9307334C4F858A22CCA3314B2EED2
            E0EB805E4F22FE053B4B152932EFFC791972636559063A04313844E05CDBCE89
            22532B6D419A61E199CCAD6331A23986260AE40A4148C7C50C9D8C6311043465
            864C0F04F2A0910DD547E0CD2C8A8058567F63EDBF78BDE3815683ED2A26C746
            1A7CBDAD1F39469402EB47505EF50DE798E046ADA618EB9D45E726042E3543D2
            DFB736C70AF8300C8E9064342C8B64F9270471384EB0EB0C37F0E6556C4C38B3
            05B77EC394D8615C6B7E5AA02FF82F24BBA5230E7DD60581227B5FDCB9B2BEC0
            96F9892DCF5EE345CAC153B11F5B715B85558416D34F0FDE938989383646D110
            534B2A4D229C17694A4D3AA0B409244A83C5025E74211535B26DEE76A7F9CB2D
            0CC9D6EF63C45E461B989373E73362FCDF2DE7117AE7E1CB09839B61DB207719
            050B94D0E5CA8ACFC17B199254129DBB404E3FDB12E16CCA9EDAE72AF540EE7C
            7C9428DB29EC7548293E02FBA2805E9151459C28F7773A0EC6BEE8F0D9450263
            503201A5D33EF8C084234C59365F4588738A868A2801A09B406DE8D99E7125A3
            B8A0E9E41699298028D9C94193126AA371B7CB7D4F41BAE09FBC06FC0CB4E709
            A25E28B398942133DDFD0C6B1609D6A71DC86EC8C2BE7CC6BAD9FA25CDFDE133
            0CF8CF52B14D6BCBCC80C5BF94A327E203262F0E1B156CBC230D576EF179BA3E
            C3D8C1FEAE40E53CAAA40D1D3F3B162801F111DA970ED8171106781295239AAD
            50739FFDEA6B3C0D5EA7188DBE6E91A9C882CE14D94BC70A4B713B2F02250551
            C2A9F05F4857A4A01419E824E083DF789F891762F68745820CB8E627BD73EF4F
            29E52FC6BE6C13A738A6BF00DDF01245B4709C8211C8814130A7157C863183B4
            46220E453C0FC403625BD8B69DE5CF1F9C2DEAD3106C00141BEC8B4FF95D30FA
            C4589A0F7B7D82ACC1B64F40E1405B0A41C2A425FFC520FA85C16A15040985C5
            01003A00B680E798DED4DE90BE39A2BE3594FE6986FD98605F18BAA869AFC73D
            B42FF57FF25ADBA90B1B542AC25770ECD9A2E126FC0BF26BC122D0710AE45F00
            4D80CD9D0593637F3D7DEE4F5AD050AFC8110B585A49C64694DF61FD38BCB802
            D905FA3355DBA1E91457B0DE4839F6196E9BDF215BE3A01096CD6671C005ECF4
            FEA5894821C7ADA7CD47A45C0AA26BDCC1F868900A68902664A73BB6CCFF66B3
            80E5D3AF88C1A8954EAA024DA3FA3D81E417002B0C232F3CCD14B6B73881AF0A
            7641AA4C6DD1EA2136DDCFCEE7D7EE3AB5F3139DE2DCE23A84D212DB59258CF5
            E9441CFC57B1DDFD2843F90A25566CD7C215E57945746FD34F821C19C6EC4852
            08B9458B841913F3971DAF1F3383D806BEC9BEA8444F10FA2F01C547FA167CCB
            1229777E7DA932A2F2856D1F271009A61936BB0D22E5983291322D20AC168912
            84974077D0CC6DED8B7681B98E7D58DF7FD11EB169F8C6177CA38E8FC200F32F
            FFF98F20FFC2FA436C3305765748222A03670B0C9EF61BA13EED617246193E7D
            7B8AEEFCC52D41212B2A61E61FA89EB2F91DC36A3108252CBF33B8A48B9DB9D5
            AB00A49662D17E967E072F539BC74E0BEDD3F9D8839B461D54DE0B494FBA9493
            1AB02F3B43000EAE651BA59746A6004D0F5C79808DD468ADE202CA338E673850
            9163A65C04E1BDF6C53E5AFFCE4BF994E1E657D8C05315ACCC45BD73CB97E7B1
            626A4B937B2F3EDDDE5C498760F09BB79D35B3540AF43328AB619986D9AA5929
            CB8E7EAD62FD68BA18CF12DCBE6F7387CF7D9BFE8042CC9754BA4DFF910E4810
            FF823CE2FA0E738256EEFCFA0A5AE74191DC71DD3C028559888B29AD5BC094A5
            E90A2286009BF1B50CAD3465C53B458D585B00909AE3FDFC2E723317F95DF095
            E2181205FA89AAFFD99F527C8466CFD68F8AAA1886609C584B653FBFCB3C53E9
            2CEC8BC135ED7C7CB9B24CC8B2FCEE401B55F16669D8FAD0A9C23615E6B6E8C5
            DA343AC575CAC60BBD405ACD88741BA610469139C54752BA383B29D68F9C1094
            3D64D9466F62BADEFA82F7C6F3CCFAEA6CF0A7598CA6CC63CD6EDF20D13E2960
            08B42CB0E6EA8264530CEB4C2F293FA00A62E91BB7897355C1DD35C40BCE4069
            3CF0018EBBADF2BBE8B14AA3A350B22F9F197497EF67FB6894D93891827D5C78
            A6AB035872A483FE8BA422749F654695C8C6D5667B6DB7BAE97DC6CCEBF0FD9F
            65FC647102E15EC5FE2337A0FC0B03D50A26FB10D69DBE72F05930269291C9EF
            16DCB58A529F76BF20C98F2CE2A3C27F29D2A365FF45475B0E240136FB2F2E7E
            86523039E577016EFA9FFE711BEA4786BD8D21AB1BDA798F4E342A743B54ACB0
            F6C5E2EB58FFD81F121F51E825F5AD00EEFF010D597B9E31C429E09DF4FB1DE0
            2091DA48BBB8261D0C1515CAC6535F32EF5FBF1844CE21AEEE37FD88E2FA920D
            B9408ABEE43C73844025932ECC5F88A9F5BE23B0C3B0BC54AD37E339404F8BFF
            2B5D0AA5EF089769AA66289562F8BACB405EC528A52D90E0CEB008EBBD14D8FE
            57CE8B1AD6265B602F22ACC64891E3DB2EC36E7E7265A9002C86A040526CD7CF
            01F0363A36C5208BD08EF87D3FD3BE3083C528288AA521B243522097F43084C9
            9AA9427AA9842B9345AC4D450D634CCA9E9D1C1AFE3540DA606E53617E170AC9
            18C092A892D962C39DDFD8022214665E25F904D2508AD2A41BFB628F67C1ED61
            506A11305B1EA0CB6E512DCAE358A0E8A004D21B533F02BD76AC1F91794AF55E
            D00EA9FEEBE83FFE773A3E922A00062EEC10E72CCD81050E72D7D40966160A2D
            BE38A12E388BACE3263A1DB23E879AB3F9808B419982A2A643BE56C99462760D
            661A18C5D0E0C0B14C2C259001919232BBC28482668D965089E69D2C33C30DB5
            3F18142810283E44FDCF9A5D9A987ED397BE54185AA3B069B96F7D6E6FD73935
            7CFFB12CF93BFD2B986521915154EFA214F93D1D60812979E63BE11391031684
            956C0D479D53663BE58CB00937114E61DFA9F2BD4DFE4515829F6C0B8F956DCA
            400F46C43B1A1F89F102BAA9800722320A3D22BE7FEF7C196BBB75DD5D6CE747
            0CB57E06B49C8A2963D2B465622B0391673084B6525FE570EB931A78145396BF
            95C6B6BF114C7CE4A05B23903ADA6CBAE29827DB31586955F41993272DC550A6
            528982EEE03165191FFD47BFDF729B39AB011E07A638D3811A68A57187A200B0
            A98A1B6E01FD33CE9020C62742391B4CF1E1EABBE4F7C8BC7F65D4062A4E3A94
            16CE30FE32BE89F10F29E3879F543995660568A08372965419955D9C228FB585
            9DB2F367422D3D8BFAAFAE573AA376968D240AF1A273542229AFFE1956B738D5
            CBB5DE2FE827935BF8178468216C14D81717484F5214F4A0F8E82F7E7D24F3C3
            11B0DEA53234E0EA9EF8745B7EA3223EDA645C4ABF3BF04FC38E27CD1753FD95
            06505DCCC2FBE15FC27C317206B7F2FE326C65808E30C3A061907ECCB99FF549
            B343BB0C5162D83763DF3714342ED62A6C3B285A8A3E8CC3124A6DB22F25E7AE
            284420EF1432AE118A45DB97FF17B3F67279A3B033B90000000049454E44AE42
            6082}
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Top = 4.440940000000000000
          Width = 235.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMenuText
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8 = (
            'Certificado de Garantia')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 512.000000000000000000
          Top = 4.102350000000000000
          Width = 197.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Data Pedido [Date] [Time]')
          ParentFont = False
        end
        object dbSetEmpresaEndereco: TfrxMemoView
          Left = 200.283550000000000000
          Top = 41.574830000000000000
          Width = 502.488560000000000000
          Height = 31.897650000000000000
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Endere'#195#167'o.: [dbSetEmpresa."Endereco"] [dbSetEmpresa."Bairro"] [d' +
              'bSetEmpresa."Cidade"]/[dbSetEmpresa."UF"] CEP.:[dbSetEmpresa."Ce' +
              'p"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 129.000000000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Left = 2.779530000000000000
          Top = 5.039270000000000000
          Width = 712.331170000000000000
          Height = 120.181200000000000000
        end
        object dbSetClienteDescricao: TfrxMemoView
          Left = 5.118120000000000000
          Top = 24.559060000000000000
          Width = 555.433520000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome / Empresa [dbSetCliente."Descricao"]')
          ParentFont = False
        end
        object dbSetClienteEndereco: TfrxMemoView
          Left = 5.118120000000000000
          Top = 42.236240000000000000
          Width = 553.433520000000000000
          Height = 15.897650000000000000
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            
              'Endere'#195#167'o.: [dbSetCliente."Endereco"] [dbSetCliente."Bairro"] [d' +
              'bSetCliente."Cidade"]-[dbSetCliente."UF"] CEP.:[dbSetCliente."CE' +
              'P"]')
          ParentFont = False
        end
        object dbSetClienteCNPJCPF: TfrxMemoView
          Left = 5.000000000000000000
          Top = 57.362090000000000000
          Width = 553.385900000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'CNPJ/CPF.: [CNPJCliente] ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Top = 6.039270000000000000
          Width = 175.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMenuText
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8 = (
            'Dados do Cliente')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 568.000000000000000000
          Top = 4.582560000000000000
          Height = 96.000000000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo6: TfrxMemoView
          Left = 568.000000000000000000
          Top = 6.582560000000000000
          Width = 145.488250000000000000
          Height = 26.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#194#186' Controle')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 568.000000000000000000
          Top = 67.362090000000000000
          Width = 145.488250000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Forma de Pagamento')
          ParentFont = False
        end
        object NumeroVenda: TfrxMemoView
          Left = 568.000000000000000000
          Top = 32.582560000000000000
          Width = 145.370130000000000000
          Height = 28.897650000000000000
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
        object FormaPagamento: TfrxMemoView
          Left = 568.000000000000000000
          Top = 91.921150000000000000
          Width = 145.370130000000000000
          Height = 31.456710000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          Memo.UTF8 = (
            '[FormaPagamento]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 3.779530000000000000
          Top = 75.590600000000000000
          Width = 175.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Fill.BackColor = clMenuText
          Fill.Style = bsClear
          HAlign = haCenter
          Memo.UTF8 = (
            'Dados do Veiculo')
          ParentFont = False
        end
        object dbSetClienteDescricaoVeiculo: TfrxMemoView
          Left = 141.622140000000000000
          Top = 102.047310000000000000
          Width = 415.748300000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o..: [dbSetCliente."DescricaoVeiculo"]')
        end
        object dbSetClientePlaca: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Memo.UTF8 = (
            'Placa..: [dbSetCliente."Placa"]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        Height = 21.062770000000000000
        Top = 306.141930000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          Memo.UTF8 = (
            '  Tipo')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 49.133890000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          Memo.UTF8 = (
            'Descri'#195#167#195#163'o')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 461.102660000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          Memo.UTF8 = (
            'Quant.')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 506.457020000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8 = (
            'Und.')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 551.811380000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8 = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 631.181510000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haRight
          Memo.UTF8 = (
            'Valor Total.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 362.834880000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = cl3DLight
          HAlign = haCenter
          Memo.UTF8 = (
            'Garantia')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 226.771800000000000000
        Top = 434.645950000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Left = 2.000000000000000000
          Top = 8.661100000000000000
          Width = 575.149660000000000000
          Height = 16.897650000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Fill.BackColor = 14211288
          Memo.UTF8 = (
            'Total de produtos e Servi'#195#167'os')
          ParentFont = False
          VAlign = vaCenter
        end
        object TotalLocacao: TfrxMemoView
          Left = 579.000000000000000000
          Top = 8.661100000000000000
          Width = 136.370130000000000000
          Height = 16.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalLocacao]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Vendedor: TfrxMemoView
          Left = 2.440630000000000000
          Top = 32.676870000000000000
          Width = 225.370130000000000000
          Height = 18.897650000000000000
          Memo.UTF8 = (
            'Vendedor.: [Vendedor]')
        end
        object Observacao: TfrxMemoView
          Top = 56.692950000000000000
          Width = 714.331170000000000000
          Height = 45.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8 = (
            'Obs...  [Observacao]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 105.826840000000000000
          Width = 718.110700000000000000
          Height = 94.488250000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8 = (
            'Nossas Lojas '
            ''
            
              'Loja 01 - Av. Paulistana No 2294, Potengi - (84) 3214-8904  (84)' +
              ' - 9907-6965'
            ''
            
              'Loja 02 - Av. Dr. Jo'#195#163'o Medeiros Filho No 5151, Potengi - (84) 3' +
              '614-1751 - (84) - 9641-9040')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 23.267470000000000000
        Top = 389.291590000000000000
        Width = 718.110700000000000000
        DataSet = frxDbItens
        DataSetName = 'dbSetItens'
        RowCount = 0
        object dbSetItensDescricao: TfrxMemoView
          Left = 49.133858267716540000
          Top = 1.369820000000000000
          Width = 313.700787400000000000
          Height = 18.897650000000000000
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbSetItens."Codigo"]-[dbSetItens."Descricao"]')
          ParentFont = False
        end
        object dbSetItensvlr_Total: TfrxMemoView
          Left = 631.181102362204700000
          Top = 0.369820000000000000
          Width = 83.149606300000000000
          Height = 18.897637800000000000
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetItens."vlr_Total"]')
          ParentFont = False
        end
        object dbSetItensPco_tabela: TfrxMemoView
          Left = 551.811023620000000000
          Top = 0.369820000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetItens."Pco_Venda"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 2.000000000000000000
          Top = 21.015460000000000000
          Width = 714.000000000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object dbSetItensUnidade: TfrxMemoView
          Left = 506.456692910000000000
          Top = 0.385590000000000000
          Width = 45.354330710000000000
          Height = 18.897650000000000000
          DataField = 'Unidade'
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          HAlign = haRight
          Memo.UTF8 = (
            '[dbSetItens."Unidade"]')
        end
        object dbSetItensTipoProduto: TfrxMemoView
          Left = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'TipoProduto'
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbSetItens."TipoProduto"]')
          ParentFont = False
        end
        object dbSetItensComplemento: TfrxMemoView
          Left = 362.834880000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataField = 'Complemento'
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            '[dbSetItens."Complemento"]')
          ParentFont = False
        end
        object dbSetItensqtde_Venda: TfrxMemoView
          Left = 461.102660000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'qtde_Venda'
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          HAlign = haCenter
          HideZeros = True
          Memo.UTF8 = (
            '[dbSetItens."qtde_Venda"]')
        end
      end
    end
  end
  object MenuCliente: TPopupMenu
    Left = 528
    Top = 96
    object CadastrodeCliente1: TMenuItem
      Caption = 'Cadastro de Cliente'
      OnClick = CadastrodeCliente1Click
    end
    object NovoClienen1: TMenuItem
      Caption = 'Novo Cliente'
      OnClick = NovoClienen1Click
    end
    object AlteraoCliente1: TMenuItem
      Caption = 'Altera'#231#227'o Cliente'
      OnClick = AlteraoCliente1Click
    end
  end
end
