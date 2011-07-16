object frmselrelVendasVendedor: TfrmselrelVendasVendedor
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Relatorio de vendas por vendedor'
  ClientHeight = 485
  ClientWidth = 756
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
    Width = 756
    Height = 62
    HintImageIndex = 0
    TabOrder = 0
    SkinData = frmPrincipal.SkinPrincipal
    SkinDataName = 'resizetoolpanel'
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
    DesignSize = (
      756
      62)
    object lblTurma: TbsSkinStdLabel
      Left = 109
      Top = 11
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
    object bsSkinStdLabel4: TbsSkinStdLabel
      Left = 16
      Top = 38
      Width = 87
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
      Caption = 'Tipo de Resultado'
    end
    object btnPesquisar: TbsSkinButton
      Left = 614
      Top = 6
      Width = 125
      Height = 30
      HintImageIndex = 0
      Anchors = [akRight, akBottom]
      TabOrder = 0
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
    object dtpData_Ini: TbsSkinDateEdit
      Left = 8
      Top = 8
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
      TabOrder = 1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object dtpData_Fim: TbsSkinDateEdit
      Left = 135
      Top = 8
      Width = 114
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
      TabOrder = 2
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object cmbPeriodo: TbsSkinComboBox
      Left = 262
      Top = 8
      Width = 346
      Height = 20
      HintImageIndex = 0
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 3
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
      Text = 'Esta Semana'
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
      ItemIndex = 5
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
    object cmbTipoResultado: TbsSkinComboBox
      Left = 109
      Top = 32
      Width = 196
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
      Text = 'Vendedor Analitico'
      Items.Strings = (
        'Vendedor Analitico'
        'Vendedor Sintetico'
        'Produtos por Vendedor'
        'Supervisor Analitico'
        'Supervisor Sintetico'
        'Produtos por Supervisor'
        'Cliente Sintetico'
        'Clientes Analitico'
        'Produtos por Vendedor Comi'#231#245'es')
      ItemIndex = -1
      DropDownCount = 8
      HorizontalExtent = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      Sorted = False
      Style = bscbFixedStyle
      OnChange = cmbTipoResultadoChange
    end
  end
  object GridRelVendedor: TcxGrid
    Left = 0
    Top = 227
    Width = 756
    Height = 258
    Align = alClient
    TabOrder = 1
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
          Column = ViewClientesColumn5
        end
        item
          Format = ',0.00'
          Kind = skSum
          Position = spFooter
          Column = ViewClientesColumn7
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewClientesColumn7
        end
        item
          Format = '0'
          Kind = skCount
          Column = ViewClientesColumn5
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
      object ViewClientesColumn2: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'Cod_Cliente'
        Width = 70
      end
      object ViewClientesColumn3: TcxGridDBColumn
        Caption = 'Nome do Cliente'
        DataBinding.FieldName = 'Descricao'
        Width = 160
      end
      object ViewClientesColumn4: TcxGridDBColumn
        Caption = 'N'#186' Venda'
        DataBinding.FieldName = 'Seqvenda'
      end
      object ViewClientesColumn5: TcxGridDBColumn
        DataBinding.FieldName = 'Controle'
        Width = 70
      end
      object ViewClientesColumn6: TcxGridDBColumn
        Caption = 'Data da Venda'
        DataBinding.FieldName = 'Data_Mov'
        Width = 110
      end
      object ViewClientesColumn7: TcxGridDBColumn
        Caption = 'Vlr. Total'
        DataBinding.FieldName = 'Vlr_total'
        Options.Editing = False
        Width = 80
      end
      object ViewClientesColumn1: TcxGridDBColumn
        Caption = 'Vendedor'
        DataBinding.FieldName = 'vendedor'
        Width = 180
      end
      object Column_Atividade: TcxGridDBColumn
        DataBinding.FieldName = 'Atividade'
      end
    end
    object ViewProdutos: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = srcRelatorio
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
      DataController.DataSource = srcRelatorio
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
    object GridProdutos: TcxGridLevel
      GridView = ViewProdutos
    end
    object GridSupervisor: TcxGridLevel
      GridView = ViewSupervisor
    end
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 0
    Top = 115
    Width = 756
    Height = 112
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
    object bsSkinPageControl1: TbsSkinPageControl
      Left = 1
      Top = 1
      Width = 754
      Height = 110
      ActivePage = bsSkinTabSheet1
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnText
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
        Caption = 'Escolha o Filtro'
        object bsSkinStdLabel1: TbsSkinStdLabel
          Left = 50
          Top = 10
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
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'stdlabel'
          Caption = 'Vendedor Inicial'
        end
        object bsSkinStdLabel2: TbsSkinStdLabel
          Left = 55
          Top = 36
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
          Caption = 'Vendedor Final'
        end
        object lblSupervisor: TbsSkinStdLabel
          Left = 76
          Top = 62
          Width = 50
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
          Caption = 'Supervisor'
        end
        object cmbCod_VendedorFim: TbsSkinDBLookupComboBox
          Left = 132
          Top = 29
          Width = 76
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
          OnChange = cmbCod_VendedorFimChange
        end
        object cmbCod_VendedorIni: TbsSkinDBLookupComboBox
          Left = 132
          Top = 3
          Width = 76
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
          OnChange = cmbCod_VendedorIniChange
        end
        object cmbNome_VendedorIni: TbsSkinDBLookupComboBox
          Left = 214
          Top = 3
          Width = 299
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
          DefaultHeight = 20
          UseSkinFont = True
          DefaultColor = clWindow
          ListBoxDefaultItemHeight = 20
          ListBoxUseSkinFont = True
          ListBoxUseSkinItemHeight = True
          KeyField = 'codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadFuncionarios
          OnChange = cmbNome_VendedorIniChange
        end
        object cmbNome_Vendedorfim: TbsSkinDBLookupComboBox
          Left = 214
          Top = 29
          Width = 299
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
          ListSource = srcCadFuncionarios
          OnChange = cmbNome_VendedorfimChange
        end
        object btnLimpa: TbsSkinButton
          Left = 519
          Top = 1
          Width = 24
          Height = 22
          Hint = 'Limpar Sele'#231#227'o'
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
        object cmbCod_Supervisor: TbsSkinDBLookupComboBox
          Left = 132
          Top = 55
          Width = 76
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
          ListSource = srcCadFuncionarios
          ParentFont = False
          TabStop = False
          OnChange = cmbCod_SupervisorChange
        end
        object cmbNome_Supervisor: TbsSkinDBLookupComboBox
          Left = 214
          Top = 55
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
          ListSource = srcCadFuncionarios
          OnChange = cmbNome_SupervisorChange
        end
      end
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 756
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 752
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 3
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 743
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
        Left = 641
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
        ExplicitLeft = 630
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 18
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = -6
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 88
        Top = 0
        Width = 553
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object bsSkinSpeedButton1: TbsSkinSpeedButton
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
        DefaultWidth = 70
        DefaultHeight = 40
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
        Spacing = 2
        Layout = blGlyphTop
        OnClick = bsSkinSpeedButton1Click
        ExplicitLeft = -6
        ExplicitTop = 8
        ExplicitHeight = 40
      end
    end
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 218
    Top = 259
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 218
    Top = 287
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorio'
    AfterOpen = cdsRelatorioAfterOpen
    Left = 218
    Top = 315
  end
  object srcRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 218
    Top = 343
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
    Left = 96
    Top = 280
  end
  object SkinForm: TbsBusinessSkinForm
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
    Left = 68
    Top = 280
  end
  object cdsCadFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 246
    Top = 315
  end
  object srcCadFuncionarios: TDataSource
    DataSet = cdsCadFuncionarios
    Left = 246
    Top = 343
  end
  object QryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 189
    Top = 259
  end
  object dspVariavel: TDataSetProvider
    DataSet = QryVariavel
    Left = 189
    Top = 287
  end
  object sdtsBuscaProdutos: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 328
    Top = 312
  end
end
