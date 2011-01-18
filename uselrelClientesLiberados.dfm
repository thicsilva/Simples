object frmSelRelClientes: TfrmSelRelClientes
  Left = 0
  Top = 0
  Caption = 'frmSelRelClientes'
  ClientHeight = 472
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinCoolBar1: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 682
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 678
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 0
    ExplicitWidth = 909
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 669
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
        Left = 449
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
        ExplicitLeft = 543
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 0
        Top = 0
        Width = 18
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 18
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
        ExplicitLeft = 12
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 88
        Top = 0
        Width = 137
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 314
        Top = 0
        Width = 135
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnExportaExcel: TbsSkinMenuSpeedButton
        Left = 225
        Top = 0
        Width = 89
        Height = 40
        HintImageIndex = 0
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bigtoolmenubutton'
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
        Caption = 'Emportar Excel'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        NewStyle = False
        TrackPosition = bstpRight
        UseImagesMenuImage = False
        UseImagesMenuCaption = False
        TrackButtonMode = False
        ExplicitTop = 8
      end
    end
  end
  object bsSkinPageControl1: TbsSkinPageControl
    Left = 0
    Top = 44
    Width = 682
    Height = 77
    ActivePage = bsSkinTabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 1
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
    SkinDataName = 'tab'
    ExplicitWidth = 909
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Escolha o Filtro'
      ExplicitWidth = 907
      object bsSkinStdLabel1: TbsSkinStdLabel
        Left = 17
        Top = 10
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
        Left = 22
        Top = 36
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
      object bsSkinStdLabel3: TbsSkinStdLabel
        Left = 501
        Top = 5
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
      object cmbCod_RotaFim: TbsSkinDBLookupComboBox
        Left = 76
        Top = 29
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
        ParentFont = False
        TabStop = False
      end
      object cmbCod_RotaIni: TbsSkinDBLookupComboBox
        Left = 76
        Top = 3
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
        ParentFont = False
        TabStop = False
      end
      object cmbNome_RotaIni: TbsSkinDBLookupComboBox
        Left = 158
        Top = 3
        Width = 299
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
      end
      object cmbNome_Rotafim: TbsSkinDBLookupComboBox
        Left = 158
        Top = 29
        Width = 299
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
      end
      object btnLimpa: TbsSkinButton
        Left = 463
        Top = 3
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
        ImageList = frmPrincipal.cxSmallImages
        ImageIndex = 10
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
      object edtPercentual: TbsSkinEdit
        Left = 528
        Top = 30
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
        TabOrder = 5
      end
    end
  end
  object GridRelVendedor: TcxGrid
    Left = 0
    Top = 121
    Width = 682
    Height = 351
    Align = alClient
    TabOrder = 2
    ExplicitLeft = -1
    ExplicitTop = 119
    ExplicitWidth = 909
    object ViewClientes: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = srcRelatorio
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0'
          Kind = skCount
        end
        item
          Format = '0'
          Kind = skCount
          Position = spFooter
          Column = Column_Bairro
        end
        item
          Format = ',0.00'
          Kind = skSum
          Position = spFooter
          Column = Column_Total_Areceber
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = Column_Total_Areceber
        end
        item
          Format = '0'
          Kind = skCount
          Column = Column_Bairro
        end>
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
      object Colum_Rota: TcxGridDBColumn
        DataBinding.FieldName = 'Rota'
        Width = 100
      end
      object Column_Cod_Cliente: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'Cod_Cliente'
        Width = 50
      end
      object Colum_Nome_Cliente: TcxGridDBColumn
        Caption = 'Nome do Cliente'
        DataBinding.FieldName = 'Descricao'
        Width = 160
      end
      object Column_Endereco: TcxGridDBColumn
        Caption = 'Endere'#231'o'
        DataBinding.FieldName = 'Endereco'
        Width = 250
      end
      object Column_Bairro: TcxGridDBColumn
        DataBinding.FieldName = 'Bairro'
        Width = 100
      end
      object Column_Cidade: TcxGridDBColumn
        DataBinding.FieldName = 'Cidade'
        Width = 110
      end
      object Column_Total_Areceber: TcxGridDBColumn
        Caption = 'Vlr. Total'
        DataBinding.FieldName = 'Total_Areceber'
        Options.Editing = False
        Width = 80
      end
      object column_Total_Recebido: TcxGridDBColumn
        DataBinding.FieldName = 'Vlr_Recebidno'
      end
      object Column_tot_Qtde: TcxGridDBColumn
        DataBinding.FieldName = 'Tot_Qtde'
      end
    end
    object ViewProdutos: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0'
          Kind = skSum
          Column = Column_Qtde_Venda
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = Column_Vlr_total
        end
        item
          Format = '0'
          Kind = skCount
          Column = Column_Produto
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skSum
          Column = Column_Qtde_Venda
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = Column_Vlr_total
        end
        item
          Format = '0'
          Kind = skCount
          Column = Column_Produto
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      Styles.GroupByBox = frmPrincipal.cxStyle4
      Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
      object Column_Vendedor: TcxGridDBColumn
        DataBinding.FieldName = 'Vendedor'
        Width = 180
      end
      object Column_Cod_Produto: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'Cod_Produto'
        Width = 50
      end
      object Column_Produto: TcxGridDBColumn
        Caption = 'Nome do Produto'
        DataBinding.FieldName = 'Produto'
        Width = 170
      end
      object Column_Qtde_Venda: TcxGridDBColumn
        Caption = 'Qtde. Vendida'
        DataBinding.FieldName = 'Qtde_Venda'
        Width = 70
      end
      object Column_Pco_Medio: TcxGridDBColumn
        Caption = 'Pco. Medio'
        DataBinding.FieldName = 'Pco_Medio'
        Width = 70
      end
      object Column_Vlr_total: TcxGridDBColumn
        Caption = 'Vl.Total'
        DataBinding.FieldName = 'Vlr_total'
        Width = 70
      end
    end
    object ViewSupervisor: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Column = Colum_Vlr_total
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
          Column = Colum_Vlr_total
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Footer = True
      OptionsView.GroupSummaryLayout = gslAlignWithColumnsAndDistribute
      Styles.GroupByBox = frmPrincipal.cxStyle4
      Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
      object Column_Cod_Supervisor: TcxGridDBColumn
        Caption = 'Codigo Sup.'
        DataBinding.FieldName = 'Cod_Supervisor'
        Width = 70
      end
      object Column_Supervisor: TcxGridDBColumn
        DataBinding.FieldName = 'Supervisor'
        Width = 150
      end
      object Column_Cod_Funcionario: TcxGridDBColumn
        Caption = 'Funcionario Cod.'
        DataBinding.FieldName = 'Cod_Funcionario'
        Width = 90
      end
      object Column_Vendedor2: TcxGridDBColumn
        DataBinding.FieldName = 'Vendedor'
        Width = 150
      end
      object Colum_Vlr_total: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'Vlr_total'
        Width = 70
      end
    end
    object GridClientes: TcxGridLevel
      GridView = ViewClientes
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
    Left = 365
    Top = 288
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 310
    Top = 351
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 310
    Top = 323
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    Left = 310
    Top = 379
  end
  object srcRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 310
    Top = 407
  end
  object dspVariavel: TDataSetProvider
    DataSet = qryvariavel
    Left = 557
    Top = 383
  end
  object qryvariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 556
    Top = 355
  end
  object cdsClientesDebitos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 558
    Top = 412
  end
end
