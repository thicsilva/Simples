object frmConsVendas: TfrmConsVendas
  Left = 37
  Top = 38
  BorderIcons = []
  Caption = 'Consulta e manuten'#231#227'o das Vendas Efetuadas'
  ClientHeight = 539
  ClientWidth = 1187
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinPanel3: TbsSkinPanel
    Left = 0
    Top = 153
    Width = 1187
    Height = 386
    HintImageIndex = 0
    TabOrder = 0
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
    Align = alClient
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 1185
      Height = 384
      Align = alClient
      TabOrder = 0
      object GrdVendas: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCustomDrawCell = GrdVendasCustomDrawCell
        DataController.DataSource = srcVendas
        DataController.DetailKeyFieldNames = 'Seqvenda'
        DataController.KeyFieldNames = 'SeqVenda'
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
            Column = colum_Vlr_Desconto
            DisplayText = 'Total Desconto'
          end
          item
            Format = '0'
            Kind = skCount
            Column = Colum_Seqvenda
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
            Column = colum_Vlr_Desconto
            DisplayText = 'Total Desconto'
          end
          item
            Format = '0'
            Kind = skCount
            Column = Colum_Seqvenda
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
        object Colum_Seqvenda: TcxGridDBColumn
          Caption = 'Venda N'#186
          DataBinding.FieldName = 'SeqVenda'
          Width = 55
        end
        object colum_Controle: TcxGridDBColumn
          Caption = 'N'#186' Controle'
          DataBinding.FieldName = 'controle'
        end
        object Colum_NomeStatus: TcxGridDBColumn
          Caption = 'Status'
          DataBinding.FieldName = 'Nome_Status'
          Width = 70
        end
        object Colum_Cod_Aluno: TcxGridDBColumn
          Caption = 'Codigo'
          DataBinding.FieldName = 'cod_Cliente'
          Width = 50
        end
        object Colum_Descricao: TcxGridDBColumn
          DataBinding.FieldName = 'Nome_Cliente'
          Width = 200
        end
        object colum_NomeAnimal: TcxGridDBColumn
          Caption = 'Nome do Animal'
          DataBinding.FieldName = 'NomeAnimal'
          Width = 110
        end
        object Colum_Data_Venda: TcxGridDBColumn
          Caption = 'Data'
          DataBinding.FieldName = 'Data_Venda'
          Width = 120
        end
        object colum_Vlr_Desconto: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'Vlr_Desconto'
          Width = 65
        end
        object Colum_Vlr_Total: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'Vlr_Total'
          Width = 65
        end
        object LucroBruto: TcxGridDBColumn
          Caption = 'Lucro Bruto %'
          DataBinding.FieldName = 'LucroBruto'
          Width = 85
        end
        object LucroBrutoReal: TcxGridDBColumn
          Caption = 'Lucro Bruto $'
          DataBinding.FieldName = 'LucroBrutoReais'
          Width = 85
        end
        object Colum_Operador: TcxGridDBColumn
          DataBinding.FieldName = 'Operador'
          Width = 120
        end
        object Colum_NumeroCupom: TcxGridDBColumn
          Caption = 'Numero Cupom'
          DataBinding.FieldName = 'numerocupom'
          Visible = False
          Width = 100
        end
        object Column_Vendedor: TcxGridDBColumn
          DataBinding.FieldName = 'Vendedor'
          Width = 134
        end
        object Column_Status_Pagamento: TcxGridDBColumn
          Caption = 'Situa'#231#227'o Pagamento'
          DataBinding.FieldName = 'Status_Pagamento'
          Width = 130
        end
        object Status_Entrega: TcxGridDBColumn
          Caption = 'Status Entrega'
          DataBinding.FieldName = 'Status_Entrega'
          Width = 120
        end
      end
      object GrdItensVendas: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = srcItensVendas
        DataController.DetailKeyFieldNames = 'Seqvenda'
        DataController.Filter.Active = True
        DataController.KeyFieldNames = 'seqvenda'
        DataController.MasterKeyFieldNames = 'Seqvenda'
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
          DataBinding.FieldName = 'Qtde_Venda'
          Width = 70
        end
        object Colum_PcoVenda: TcxGridDBColumn
          Caption = 'Preco'
          DataBinding.FieldName = 'Pco_Venda'
          Width = 70
        end
        object Colum_Desconto: TcxGridDBColumn
          Caption = 'Desconto'
          DataBinding.FieldName = 'Vlr_Desconto'
          Width = 70
        end
        object Colum_VlrTotal: TcxGridDBColumn
          Caption = 'Total'
          DataBinding.FieldName = 'Vlr_Total'
          Width = 70
        end
        object Item_LucroBruto: TcxGridDBColumn
          Caption = 'Lucro Bruto'
          DataBinding.FieldName = 'LucroBruto'
          Width = 75
        end
        object Colum_Complemento: TcxGridDBColumn
          DataBinding.FieldName = 'Complemento'
          Visible = False
          Width = 150
        end
      end
      object grdDevolucoes: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = srcItensDevolucoes
        DataController.DetailKeyFieldNames = 'seqvenda'
        DataController.KeyFieldNames = 'seqvenda'
        DataController.MasterKeyFieldNames = 'seqvenda'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object grdDevolucoesColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Cod_Produto'
          Width = 70
        end
      end
      object GrdItensDevolvidos: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = srcItensDevolucoes
        DataController.DetailKeyFieldNames = 'SeqVenda'
        DataController.KeyFieldNames = 'SeqVenda'
        DataController.MasterKeyFieldNames = 'SeqVenda'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object GrdItensDevolvidosColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Codigo'
        end
        object GrdItensDevolvidosColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'Descricao'
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = GrdVendas
        object cxGrid1Level2: TcxGridLevel
          GridView = GrdItensVendas
        end
      end
    end
  end
  object panelconsulta: TbsSkinPanel
    Left = 0
    Top = 77
    Width = 1187
    Height = 76
    HintImageIndex = 0
    TabOrder = 1
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
    Caption = 'panelconsulta'
    Align = alTop
    object lblsituacao: TbsSkinStdLabel
      Left = 17
      Top = 47
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
      Caption = 'Situa'#231#227'o'
    end
    object lblTurma: TbsSkinStdLabel
      Left = 292
      Top = 17
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
    object cmbStatus: TbsSkinComboBox
      Left = 65
      Top = 42
      Width = 105
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
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'Contratado'
        'Em producao'
        'Finalizado'
        'Entregue'
        'Cancelada')
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
    object cmbTipoFiltro: TbsSkinComboBox
      Left = 185
      Top = 42
      Width = 120
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
      ImageIndex = 2
      CharCase = ecNormal
      DefaultColor = clWindow
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'Nome do Cliente'
        'Numero da Venda'
        'Numero de Controler'
        'C.N.P.J /C.P.F ')
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
    object dtpData_Ini: TbsSkinDateEdit
      Left = 187
      Top = 13
      Width = 88
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
      TabOrder = 2
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object dtpData_Fim: TbsSkinDateEdit
      Left = 325
      Top = 13
      Width = 89
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
      TabOrder = 3
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
    end
    object cmbTipoData: TbsSkinComboBox
      Left = 65
      Top = 11
      Width = 105
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
      Enabled = False
      CharCase = ecNormal
      DefaultColor = clWindow
      Text = 'Data da Venda'
      Items.Strings = (
        'Data da Venda'
        'Data Agendamento')
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
    object edtPesquisa: TbsSkinEdit
      Left = 313
      Top = 42
      Width = 291
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
      TabOrder = 5
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnKeyDown = edtPesquisaKeyDown
    end
    object cmbPeriodo: TbsSkinComboBox
      Left = 424
      Top = 13
      Width = 180
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
    object btnSelecionar: TbsSkinButton
      Left = 621
      Top = 7
      Width = 125
      Height = 28
      HintImageIndex = 0
      TabOrder = 7
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
      ImageIndex = 5
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
      Caption = '    &Pesquisar'
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnSelecionarClick
    end
    object checkUsarleitor: TbsSkinCheckRadioBox
      Left = 621
      Top = 41
      Width = 191
      Height = 25
      HintImageIndex = 0
      TabOrder = 8
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
      Caption = 'Usar leitor de Codigo de Barras'
      OnClick = checkUsarleitorClick
    end
  end
  object pnlmensagem: TPanel
    Left = 0
    Top = 53
    Width = 1187
    Height = 24
    Align = alTop
    Caption = 'Consulta de Vendas'
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 1187
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 1183
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 3
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 1174
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
        Left = 833
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
        ExplicitLeft = 753
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object separador: TbsSkinBevel
        Left = 100
        Top = 0
        Width = 39
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 402
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 351
        Top = 0
        Width = 17
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 140
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object bsSkinBevel4: TbsSkinBevel
        Left = 438
        Top = 0
        Width = 35
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 227
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object btnFinalizar: TbsSkinSpeedButton
        Left = 368
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
        Caption = '&Finalizar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnFinalizarClick
        ExplicitLeft = 123
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object btnEmproducao: TbsSkinSpeedButton
        Left = 139
        Top = 0
        Width = 72
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
        ImageIndex = 8
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Em Produ'#231#227'o'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnEmproducaoClick
        ExplicitLeft = 140
        ExplicitTop = 12
      end
      object btnEntregue: TbsSkinSpeedButton
        Left = 211
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
        ImageIndex = 8
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Entregue '
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnEntregueClick
        ExplicitLeft = 189
        ExplicitTop = 12
      end
      object btnNFE: TbsSkinSpeedButton
        Left = 664
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
        ImageIndex = 19
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&NF-e'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnNFEClick
        ExplicitLeft = 588
        ExplicitTop = 12
      end
      object bsSkinBevel5: TbsSkinBevel
        Left = 734
        Top = 0
        Width = 99
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -1
      end
      object btnImpComprovante: TbsSkinSpeedButton
        Left = 473
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
        Caption = 'Comprovante'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnImpComprovanteClick
        ExplicitLeft = 532
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 543
        Top = 0
        Width = 51
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 553
        ExplicitTop = -5
        ExplicitHeight = 40
      end
      object btnCancelar: TbsSkinMenuSpeedButton
        Left = 0
        Top = 0
        Width = 100
        Height = 49
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
        Caption = '  Devolu'#231#227'o'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        NewStyle = False
        TrackPosition = bstpRight
        UseImagesMenuImage = False
        UseImagesMenuCaption = False
        SkinPopupMenu = bsSkinPopupMenu1
        TrackButtonMode = False
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object btnEntregaVenda: TbsSkinSpeedButton
        Left = 281
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
        ImageIndex = 8
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Entregue '
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnEntregaVendaClick
        ExplicitLeft = 292
        ExplicitTop = 12
      end
      object btnCupomFiscal: TbsSkinSpeedButton
        Left = 594
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
        Caption = '&Cupom Fiscal'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnCupomFiscalClick
        ExplicitLeft = 588
        ExplicitTop = 12
      end
    end
  end
  object srcItensVendas: TDataSource
    DataSet = cdsItensVendas
    Left = 290
    Top = 391
  end
  object srcVendas: TDataSource
    DataSet = cdsVendas
    Left = 318
    Top = 391
  end
  object bsSkinPopupMenu1: TbsSkinPopupMenu
    Left = 64
    Top = 32
    object BorderodeEntrega1: TMenuItem
      Caption = 'Cancelar Pedido'
      OnClick = BorderodeEntrega1Click
    end
    object Etiquetas1: TMenuItem
      Caption = 'Devolu'#231#227'o Parcial'
      OnClick = Etiquetas1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object VisualizarDevolvidos1: TMenuItem
      Caption = 'Visualizar Itens Devolvidos'
      OnClick = VisualizarDevolvidos1Click
    end
  end
  object ImpMatricial: TRDprint
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
    Acentuacao = SemAcento
    CaptionSetup = 'Rdprint Setup'
    TitulodoRelatorio = 'Gerado por RDprint'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Personalizado
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
    FonteTamanhoPadrao = S17cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 464
    Top = 305
  end
  object dspRelatorio: TDataSetProvider
    Left = 345
    Top = 335
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 346
    Top = 363
  end
  object dspVariavel: TDataSetProvider
    DataSet = QryVariavel
    Left = 401
    Top = 335
  end
  object impEtiquetas: TRDprint
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
    Left = 496
    Top = 305
  end
  object QryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 401
    Top = 307
  end
  object Qrymodific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 374
    Top = 307
  end
  object qryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 318
    Top = 307
  end
  object qryItensVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 290
    Top = 307
  end
  object dspItensVendas: TDataSetProvider
    DataSet = qryItensVendas
    Left = 290
    Top = 335
  end
  object cdsItensVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    BeforeOpen = cdsItensVendasBeforeOpen
    Left = 290
    Top = 363
  end
  object dspvendas: TDataSetProvider
    DataSet = qryVendas
    Left = 318
    Top = 335
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvendas'
    BeforeOpen = cdsVendasBeforeOpen
    AfterScroll = cdsVendasAfterScroll
    OnCalcFields = cdsVendasCalcFields
    Left = 318
    Top = 363
  end
  object qryItensDevolucoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 262
    Top = 307
  end
  object DspItensDevolucoes: TDataSetProvider
    DataSet = qryItensDevolucoes
    Left = 262
    Top = 335
  end
  object cdsItensDevolucoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    BeforeOpen = cdsItensVendasBeforeOpen
    Left = 262
    Top = 363
  end
  object srcItensDevolucoes: TDataSource
    DataSet = cdsItensDevolucoes
    Left = 262
    Top = 391
  end
  object CdsVerifica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 234
    Top = 363
  end
  object qrySaldos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 429
    Top = 307
  end
  object dspSaldos: TDataSetProvider
    DataSet = qrySaldos
    Left = 429
    Top = 335
  end
  object cdsSaldos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSaldos'
    Left = 429
    Top = 363
  end
  object cdsHistoricoOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 206
    Top = 363
  end
  object sdtsPesqEtiqueta: TSimpleDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 464
    Top = 272
  end
  object Print: TPrintDialog
    Left = 632
    Top = 248
  end
  object MenuDeControle: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <>
    UseBuiltInPopupMenus = False
    Left = 528
    Top = 232
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = cmbPeriodo
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoComplete'
          'CharCase'
          'Cursor'
          'DefaultColor'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DropDownCount'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'HintImageIndex'
          'HintImageList'
          'HintTitle'
          'HorizontalExtent'
          'ImageIndex'
          'Images'
          'ItemIndex'
          'Items'
          'Left'
          'ListBoxCaption'
          'ListBoxCaptionAlignment'
          'ListBoxCaptionMode'
          'ListBoxDefaultCaptionFont'
          'ListBoxDefaultFont'
          'ListBoxDefaultItemHeight'
          'ListBoxUseSkinFont'
          'ListBoxUseSkinItemHeight'
          'ListBoxWidth'
          'Margins'
          'Name'
          'PopupMenu'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'Sorted'
          'Style'
          'TabOrder'
          'TabStop'
          'TabWidths'
          'Tag'
          'Text'
          'ToolButtonStyle'
          'Top'
          'UseSkinFont'
          'UseSkinSize'
          'Width')
      end
      item
        Component = cmbStatus
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoComplete'
          'CharCase'
          'Cursor'
          'DefaultColor'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DropDownCount'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'HintImageIndex'
          'HintImageList'
          'HintTitle'
          'HorizontalExtent'
          'ImageIndex'
          'Images'
          'ItemIndex'
          'Items'
          'Left'
          'ListBoxCaption'
          'ListBoxCaptionAlignment'
          'ListBoxCaptionMode'
          'ListBoxDefaultCaptionFont'
          'ListBoxDefaultFont'
          'ListBoxDefaultItemHeight'
          'ListBoxUseSkinFont'
          'ListBoxUseSkinItemHeight'
          'ListBoxWidth'
          'Margins'
          'Name'
          'PopupMenu'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'Sorted'
          'Style'
          'TabOrder'
          'TabStop'
          'TabWidths'
          'Tag'
          'Text'
          'ToolButtonStyle'
          'Top'
          'UseSkinFont'
          'UseSkinSize'
          'Width')
      end
      item
        Component = cmbTipoData
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoComplete'
          'CharCase'
          'Cursor'
          'DefaultColor'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DropDownCount'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'HintImageIndex'
          'HintImageList'
          'HintTitle'
          'HorizontalExtent'
          'ImageIndex'
          'Images'
          'ItemIndex'
          'Items'
          'Left'
          'ListBoxCaption'
          'ListBoxCaptionAlignment'
          'ListBoxCaptionMode'
          'ListBoxDefaultCaptionFont'
          'ListBoxDefaultFont'
          'ListBoxDefaultItemHeight'
          'ListBoxUseSkinFont'
          'ListBoxUseSkinItemHeight'
          'ListBoxWidth'
          'Margins'
          'Name'
          'PopupMenu'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'Sorted'
          'Style'
          'TabOrder'
          'TabStop'
          'TabWidths'
          'Tag'
          'Text'
          'ToolButtonStyle'
          'Top'
          'UseSkinFont'
          'UseSkinSize'
          'Width')
      end
      item
        Component = cmbTipoFiltro
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'AlphaBlend'
          'AlphaBlendAnimation'
          'AlphaBlendValue'
          'Anchors'
          'AutoComplete'
          'CharCase'
          'Cursor'
          'DefaultColor'
          'DefaultFont'
          'DefaultHeight'
          'DefaultWidth'
          'DropDownCount'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideSelection'
          'Hint'
          'HintImageIndex'
          'HintImageList'
          'HintTitle'
          'HorizontalExtent'
          'ImageIndex'
          'Images'
          'ItemIndex'
          'Items'
          'Left'
          'ListBoxCaption'
          'ListBoxCaptionAlignment'
          'ListBoxCaptionMode'
          'ListBoxDefaultCaptionFont'
          'ListBoxDefaultFont'
          'ListBoxDefaultItemHeight'
          'ListBoxUseSkinFont'
          'ListBoxUseSkinItemHeight'
          'ListBoxWidth'
          'Margins'
          'Name'
          'PopupMenu'
          'ShowHint'
          'SkinData'
          'SkinDataName'
          'Sorted'
          'Style'
          'TabOrder'
          'TabStop'
          'TabWidths'
          'Tag'
          'Text'
          'ToolButtonStyle'
          'Top'
          'UseSkinFont'
          'UseSkinSize'
          'Width')
      end
      item
        Component = Colum_Cod_Aluno
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Codigo
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Complemento
        Properties.Strings = (
          'Visible')
      end
      item
        Component = colum_Controle
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Data_Venda
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Desconto
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Descricao
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Descrisao
        Properties.Strings = (
          'Visible')
      end
      item
        Component = colum_NomeAnimal
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_NomeStatus
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_NumeroCupom
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Operador
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_PcoVenda
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Quantidade
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Seqvenda
        Properties.Strings = (
          'Visible')
      end
      item
        Component = colum_Vlr_Desconto
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_Vlr_Total
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Colum_VlrTotal
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Column_Status_Pagamento
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Column_Vendedor
        Properties.Strings = (
          'Visible')
      end
      item
        Component = cxGrid1
        Properties.Strings = (
          'Visible')
      end
      item
        Component = grdDevolucoesColumn1
        Properties.Strings = (
          'Visible')
      end
      item
        Component = GrdItensDevolvidosColumn1
        Properties.Strings = (
          'Visible')
      end
      item
        Component = GrdItensDevolvidosColumn2
        Properties.Strings = (
          'Visible')
      end
      item
        Component = LucroBruto
        Properties.Strings = (
          'Visible')
      end
      item
        Component = Status_Entrega
        Properties.Strings = (
          'Visible')
      end
      item
        Component = VisualizarDevolvidos1
        Properties.Strings = (
          'Visible')
      end>
    StorageName = 'cxPropertiesStore1'
    Left = 592
    Top = 344
  end
  object bsSkinPopupMenu2: TbsSkinPopupMenu
    Left = 616
    Top = 296
    object MenuItem1: TMenuItem
      Caption = 'Marcar como entregue'
      OnClick = MenuItem1Click
    end
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'E:\Program Files (x86)\CodeGear\RAD Studio\5.0\bin\'
    Configuracoes.Geral.ExibirErroSchema = True
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    Left = 720
    Top = 224
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
      'Previsao_Entrega=Previsao_Entrega'
      'Dias=Dias'
      'vlr_Desconto=vlr_Desconto'
      'vlr_Total=vlr_Total'
      'Complemento=Complemento'
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
      'Valor_Pagamento=Valor_Pagamento')
    DataSet = cdsItensVendasCP
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
      'Responsavel=responsavel'
      'Cod_Funcionario=cod_funcionario'
      'contrato=Contrato'
      'InscricaoEstadual=InscricaoEstadual'
      'SequenciaEntrega=SequenciaEntrega'
      'Email=Email'
      'EnderecoObra=EnderecoObra')
    BCDToCurrency = False
    Left = 130
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
    BCDToCurrency = False
    Left = 158
    Top = 217
  end
  object frxVenda: TfrxReport
    Version = '4.9.105'
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
        Height = 113.944960000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 0.779530000000000000
          Top = 4.661410000000000000
          Width = 710.551640000000000000
          Height = 105.283550000000000000
          ShowHint = False
        end
        object dbSetEmpresaNome_Fantasia: TfrxMemoView
          Left = 93.283550000000000000
          Top = 24.897650000000000000
          Width = 502.488560000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Left = 93.283550000000000000
          Top = 72.472480000000000000
          Width = 504.488560000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Left = 93.283550000000000000
          Top = 41.574830000000000000
          Width = 502.488560000000000000
          Height = 31.897650000000000000
          ShowHint = False
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
          Left = 93.283550000000000000
          Top = 88.370130000000000000
          Width = 504.709030000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          Left = 26.000000000000000000
          Top = 27.102350000000000000
          Width = 57.000000000000000000
          Height = 76.000000000000000000
          ShowHint = False
          Picture.Data = {
            0A54504E474F626A65637489504E470D0A1A0A0000000D49484452000000B000
            0000EB0806000000C9FE1C6A000000017352474200AECE1CE90000000467414D
            410000B18F0BFC6105000000097048597300000EC300000EC301C76FA8640000
            18DD4944415478DAED9D077814E5D6C74F209800A109088248538AE805AF88BD
            84EF13B1015E15B96201152FD8C002B62B01EFD58BF2291154E4A260A388A211
            2C280AD800B18005010B550288D202218104BEF9BF9B77989DCCECCEECCCEE4E
            39BFE7C993D992DD4DF2DB33E73DEF79DFCD38A8400CE353325860C6CFB0C08C
            2F58B56A2B1515EDA3AFBEDA18759905663C01C42C2A2A55C4FC435C86A08585
            45B4EAA73F62FE1C0BCCA48CC2C25D11291539E7CF5F73E8BA4D45093F260BCC
            B88E369AAAA7FEAF3726E5B958602661644485B0DAE85AB47B5FCA5E030BCC58
            0282CE9FBF5A44537C8F979BA60A1698A9044EFF9054CD5717AC49F74B328505
            0E39325F95C2262B574D066DDB346081C386AC00A829410AF355AB3439B21635
            69525B1C77EEDC547C6FDBB601D5AA95A57C1DA61C3754EFCB02071859011039
            ABAC08784058BDA04D9A442EEBE5B4020B1C202068A422501449091CD4579D82
            D33BC484905250194DDD8405F6315E10B6F3494DA3044D248A3A8105F611326F
            4D87B088A8C841E5293F37B795B89C6E58600F23859583AE54085B2B27124131
            6892B2A632A2DA8505F61072360BD2223548C5640152009CF611519395A72613
            1638CDC83C76D6AC95491716698036059095003FC302A79854E5B14805A4A4B9
            B92D3D9D063881054E0188B288B0C914565603202DBEC2020B9C24922D6DEEB9
            2D7D9BB7BA090BEC1232974D46C5404E0A40545921F04209CB0BB0C00E109582
            8ADE02379B60E4542B72D7A00CB692050B6C93485D76B5AB8D301036226A70AA
            03A98205B680ACCBCE9AB5C275697BF46817D80A412A60810D90EBB920EDB313
            96B8F2982C6C72608135C81AED9429DF3A1E84C929D9BE7D3B7A7E3AD6CF845E
            6037CB5D32CAE22BCCA5AD54124A81DD92362CB35D5E26340223AF1539EDB34B
            1CF51C4869C336E3E555022DB05CAC28BE1CACAC95A901D20296D65B044E60B7
            A5E5AA81B7098CC072460CB5DA44F35A96D67FF85EE0295396392A7BB1B4FEC6
            97023B9DCE85B4A8CFF2B4ADFFF18DC0481110691395161D5D88B22C6DB0F0B4
            C072664CB4292630206369838F270586B0A3477F9A50BD56AEFB8A4CE1B2B441
            C753023B1990C9150A3D7AB44FF7AFC1A490B40A2C6BB691950CF6735B29AD57
            36D960524F5A04466E2BD304BBD262F1A2CC6B595A26A50223454864FF03D97F
            80BC966BB58C96A40B9C68E717A4453ECB130C4C2C9226B09C6898357BA5AD9F
            438A307060175E79CB58C25581E5A00C11D7CE2A5DAED73289E28AC04813D067
            6B77B201558448B4E51481498C840546B485B476775144B4957D089C22304EB1
            2D70223D09BC8A81491696044EB4491C5D5F43879EC5D2324923A6C0892C33E7
            FE5A2695180A2C6BB77676A2919504D46E39B765524594C0766BB7C86D5145E0
            F217932E84C090167D0956D304AE24305E21A377EF6907AD94C1B892C078918C
            8E9DC6C5AC42605086BC16A902C3780D5381D1933074E8995C49603C4D94C03C
            2863FC86109807658C5FC99837EFD7833C2863FC8AA71675328C5D5860C6D7B0
            C08CAF618193C4C1B29DE27B46669D74BF9440C302BBCC81920D54BA7A389122
            6EF536F9E97E398187057691F2DD3F50F1F79753D59C0E54E38499E97E39A180
            05760944DE3D4BCF532CDE45D9ED2751B5FADDD3FD9242416805867055B29BB9
            F678C5DF5F46E53B1789E35A6716A6FBD70B0DA115B844C953B35B3DE4CA6395
            ED5C487B95D40164641D453927BBF3E99E4C7C422B3022A65B79EADE9F8650D9
            EF33C4310B9C5A422B70D1674D28E7D415AE94B98A16B513B9AF845388D4116A
            81B38F1D43D51A5DE9E87144E56159B7A8EB6A74FA80AAE61C9FEE5F3114845A
            609CEE6B9E38D75114DEFFE71C2A59717DD475592D47D2614D07B8FE9A313952
            BE67B938AE92D5CCD541A85F09ADC028791D506438ECE8BB284BF94A14A3085C
            FD84D729B3CEE98E5F231E1B958DB26D7394E3E551690ADE7C5595E7A8D6A8B7
            2BCFE557422B30AA10FB0B9F13C74E85DBB7712295AE7F5C1C23F23A7943A0BC
            B75F1910EEDFF22A1D2CFD2DFAC6AAB5C5E3573BA23747DF0A422B70D4A95F11
            23E7E42FD2DAB720A6A0953781AC66E8A9D6E446F1C6E0DE8A68422B30D0560F
            AAD4C4F4EFEB691104D1B6E4E73B0C6F43AA90DD263FD469422C422DB0B67E0B
            9C4A8C090D2D56A4C3C06CF762E34F56CA3CFC7C212F475D73422DB0E85FF8EA
            94A8EBAC4A8C9F2D53D2907245DA324C216B06585128E94966FDEEE2CBA83FC2
            68100832953C97BBD9E2136A8181B687410289515E33025176BF32682BDBF67E
            D4F5A22AA0FC5C155DFD171116D50E3C07EE833C565F7B96151109F25DB7A6B9
            834EE805368AC2405F99808825483934E242F4C314D950CE8A5715C0CFEFDF32
            83F6154E14D1BD7AFB49EACFE0B67D85CF89685EADC900EE64B341E80506FA5C
            186805C6697EEF8AEBD5B296D381952CBB2155E1193B67B0C0148980388D4B41
            3178AA7EDC64712C9BD4658E8BDC34BBD5C89839B21CCC6528F9AF99A0F24D81
            48CC12270E0B5C81769A5646566D93BAB8DE646025271F30A8D3E6B2828A411C
            725F7D9A819F9312F3C44462B0C031D00EAE8CE485F44805E48C5E4C149111B9
            F50338485CF2F3105E8294202CB00910735FC5F4B05155429F175BC5A8030E8F
            85C1A19329E8B0C2021B202617BE3C454D1DF41509310DAD0CFC4C6BBF71305A
            3387370CF738D8870536401B7DABD6392DEAF4AE1FD42584924E20A2EB654575
            22196D984186053660F7975DD4D4407BCAD7572B9CA07F6300542FB8CFD71E2C
            B00EFDD4AE76D991A8DFAEC9B3F4381054DFC3ABC7A88D13E9094F64588705D6
            A195543F78D34FF91A810679CCCE41FA78E986B6DE2CC1CF705DD83A2CB00E6D
            A3BBFE348F6548B130AB301835EB488C1696EAF7AC90E53AD14F91595B4C5D43
            7E163DA002E31F9E680BA2B6B9472BB076EF07236235E06807857AAC2C2C359A
            EA96AF0F113FCCBDC2811418C2C8D3B85DCC048E17496375B0E9CB725AACB44D
            1A75CC453D4688FB860329B088963F5E6F38F305305002998AA0FA7FBA368540
            B9ABD669873EB5345E0A0189F165D4FB1B2B8AC69B8533FB59FD73A76B45493A
            09A4C060EF8FFDD5D647FC73913B1E2CDB15350833FAA7EB2B0DDA49076D792D
            1EFAC86AB4FC5E126F23146D2B2784470E8C46A10C254FC6EF73A062262F8C7D
            C4811518FF744CF5C63AF5027D0EAA4F15B4224645670B681FDBACEF18B8B193
            0F5E37D6D585AD3128B0024B620DA080D12624FAADA26A76FE4248114B4223B4
            65B2586BDFDCDA8A4A76D485695017788181E95E0B2653BAFA489B6814D60EEC
            CC5208DE0CD019A110580B4EB5C81B910F63B06574BA8DB5DB0EA21C2627E24D
            68006D04361B88F1E24D67844E60ABE84B57DA019F5589E5003056EAC1BBB93B
            830536C168E2421F2D457EBD71A2617D575B1130ABE372FAE01C16380646A77D
            FDA00FD118FB4268A3B1769A375603901BDBBB861D16380666336856B74F8DB5
            659495090C263E2C701CCCAA07B156278B8987D579E6B36726D50FC63E2CB005
            CC6AC972A71D5433E4E00E2B9371FF5833763C70730F16D82256FA11ACC079AF
            BBB0C03670243196D5B7C98F1B7951FD4014C7D222ECBE1EB6E61CBBB0C036B1
            DB0F013060C3C02F5E03BABE7417AB459389C0022700442B550669F12632CC76
            A334C328C273CA111B165887DCEAFF60E9061101636DEB8F0A85DC23580CDAC4
            5E68919E60F1012C36076A46D19DA3706C58600DB2115E5BF74D658FAD59DD59
            76C33195618129F61E67A99E70305AC9ECF4A3C0824CE8058EB74D94D1D2F764
            A3EF86E334C29CD00A8C74615FC5527533107DB1C2211DA52C7D0F855B9FEB1C
            344225B0DC05D2F043042B880CC04E131BED25BAEF02068207300874B84D94B6
            8BCDAD4FFF0C1A811718B262358661A4D5560D2A2A074E074BFA94C449194CDB
            47CC79B0318117588B5C3396CC0DF4F4BDBF4E7B7E656D980536265402A7824A
            FBA7E9F696B08B8CC22CB0312CB0CBE83BD7DCA862E04D213F67838986057619
            7D13BBD5E6F7589456BC2158E0CAB0C02EA36FC87163160D02F36E94C6B0C02E
            A315D8AD25F388EADCD0630C0BEC326A0ECCCB8652020BEC32B20AC16D90A981
            05761139FDCBF2A60E16D825646FB0D147CA32C98305667C0D0BCCF81A1698F1
            352C30E36B5860C6D7B0C08CAF61812B282B2BA7CCCCAAE97E198E18F1D4CB87
            8E6FBD26DD2F2725B0C0151CDFE3265A3CFD49CAA9513DEE7D9F99369B96ADFC
            551C8FB96720D5AC919DEE972FC8E9DC938AF796D24D575C48CF8EB83DDD2F27
            25B0C01554E9D09D5A353B92164FCBA706F5622F9E84C0B7FEFB69715CF46501
            0B9C4658E00A20306872447D21F1518D1B9ADED74D81070C1F4393DF9C4B35AB
            67D3CE256F38FA1D58E01023050687D7A9455F28E944EBA38D3F5AD66D819F9F
            F93ED5AA5983054E0016B802ADC0001111397187639A57BA2F0BEC1D58E00AA4
            C0B75ED5839E9A3A4B1C57AD5A4549279EA4933A1C1B75DF7802AF5CBD813EFB
            6639ED2D2DA58E6D5BD1D99D4FA0ADDB76A8B7373CBC2E959797D3B69D45747F
            FE6455E05FE64C526F9714EF2DA182798BE8B7CD7F50CBA31AD115E79F4DFBF6
            EFA79D457B2ADD97050E315A81CB0F1CA0F1D3DF566FFBF4E5C7E98CBF76502F
            C712F8A6BC7C7AEEF539518F7DFE192729A2D5A15766CF1303C4DF3F7B955E7B
            FF13BAF2CE472ABD8ECBBB9D4533C63C50E9792447363C9C460F1D40570F7B54
            5CFE63E16B22E5012C7088D10A3CF6819B69D0C8B13461C6BBEAED1F4E1A455D
            4FE9248ECD04FED7F8A994F7D44BEACFB4697114FDAE44DE1DBB76D3D59774B5
            25F0A75FFF40E75C7BB77A7DE306F5A85A66266DD8BC95CE38B1037DBE34B274
            9F056681057A81C19D8F4EA0FC97DE54EFF3F6F887E8C2B3BB180A8C537D4EE7
            5EE2BA668D1BD247931FA5632A06814F4F9D4DB73D1CB9BF141860F264D04363
            D514E24F454680099553FB0CA625DFAF1297DF183B9C7AFD4F645BA9054BBEA3
            AEFD87A9AF8905668105460283FBC74CA251CF1DDA357DD6D32369FDA6DF2B09
            FCE1A2A5D4EDC6FBC4752F3F3A8CFA5EDC35EAF1A5905A8181D9204EBE9E1B2F
            EF4EFF1D3924EAB1EE7DE2797AECF988EC2C300B2C3013188C7CE6151AF9F42B
            EAE5A7FE794B2581C74D798B063F325E5CB7FA8317A945D346518FD1EFFEFFA3
            97DEFAD092C03FAFDB486D2FBC411C3F33FC361A78E545518F35ED9D05D477D8
            2871CC02B3C0825802834795287CDF984895A046F52C210A90023FFEC24C1A3A
            7AA2B86EFD472F579A08E93B74144D7B7781258197FFB28E4EE8F90F718CE88B
            28ACE5C582B9D4FF81C866272C300B2C88273018FB4A010DF9CFB351D74981A7
            BE335FAD0CBC392E8F7A763D2DEA7EED2EBA917E5AFB9B2581515E6B70FA15E2
            78F035BD68CCBD03A31EEB1F794FD2C4D7DF13C72C300B2CB02230F8EF6BEFD2
            C01163D5CB4683384C7E2C787134D5AF5B5B5CD65627ACE6C04821904A80F92F
            3C46E79CFC17715CF0D142FADBED873EB38305668105560506C86591D3026D19
            ED36252F7E7ADA6CF57E27B66F4D6B376EA1EDBB7653FB5647D38AD5EB2D0B3C
            63CE27D4E7AE4365B6D6CD8E14F5693C1E6609F7286F18C002B3C0023B020359
            C7D54F64403AC8A7E5F4138FA35647358EAA034B624D25FF67E2ABF4407EF4CE
            96F56AE7D0386510C913191158E00AF61497A8C7567B1B66CF5F2C2637F4F75F
            BAE2175AB87405EDDA534C271D770C753BE324D3C78FF7BC7F6CDF49B394E7D9
            B069ABA86C5CD7EBBCA89FB3F358418405667C0D0BCCF81A1698F1352C30E36B
            5860C6D7B0C08CAF6181195FC30233BE8605667CCB0BCBB6B2C08CFFD8515246
            43E6ACA317BF6581199FB1764729F52BF8953E5E17F930751698F10DCB36EF11
            F27EBBA558BD8E053660E26BEF892542DF153C6B783BF67DE87DE7C3B470EA18
            4B9B01A28777F8B8974C1F8F890FF2DD2173D6D2CED2F2A8EB59600320F0B0C7
            9FA3ED8B671ADE0E819F9F3987F26EB9DAB2C0778C9A406BE6BE98EE5FCD7768
            F35D23586003E2091C8BFDFBCBA85AB5CCA8EBF402639F88BAB5734C1FA3684F
            B1E80F366377F15E4B6F1CBF639432E861810D8827F02FEB0BE9829B1EA0EFDF
            9A40D9598751C74B07D1BF6FBF8EA6BC3D8F66CEFD8C0E1C384837F7B958349E
            0329F02343FA8BBD26B6FCB95D6C7A927FDF40EA7E6667711F2C1FBAEDE167E8
            AB1F7EA22A55AA508DEC2C11E1FB5FDA4D7D5E2C0C9DF1FE27543D2B8B9A36AA
            4F79375F4D7D2E3C37DD7FAEA4609632E861810DB022709B0BAEA7E26F66A902
            373DA23EDD705977BAACDB99F4F197DF516EBF6134FDF1FBA977F7B3D5756C97
            9D77A690B641BDDAF4E0D897E883855FD3B237224BF171FFDC533AD2F0417DC5
            E50933DEA1BB1F9B48455F1588CB5899F1E78E2275A50556845C7BEF68F11A32
            3232D2FD27730DA40C88BA6FADDA1EF7BE75B2AAB2C04624227057453EEDEA61
            EC9E93DBA5133D38E82A5560A410CD9B44F68B58B8F4473AEB9ABBA8FC87C8EA
            E2170AE6D2054A346ED4A09EB8FCABF21CC72ACFB1F993E97444FDBA74CD3D8F
            89B570DAA542EF7CBC442C556ADFFAE874FFC95CC14ACA2039A7796D2AE8D386
            05362211816FB9EA12B1164D72E96D23A953BBD6220D80C083468EA34D9F4C53
            6FFF6ED56AEAF4B79BE9C0F2431B012205F966F9CFB4B6708B72FB1AFA75C326
            55E0F73EFD52ACC1C3FAB7DC2E1DE9ACCEC7D3E54AB4AF9D5333DD7F2E57C85F
            BC89462CF82D6ECA00AEEBD8905EE8D55A1CB3C0062422F05DFD2EA36B7BFEAF
            7A1FBDC0FA2A845EE0E32E19402D94E87C49EEA962597EBB96CDA8F1D97D5481
            01F6529BBD60317DFECD72FA70F152DAB4759BD83913F9B45F895765D0829401
            E2F66A77B87A1D0B6C40AA057E6BDE22B12DEB964F0FAD565EAD44DF63BAF757
            05C65E68B95DFE42279FD056BD0FF65BFBFB45B962F3133F8294A1D7F49F68DD
            CED2B8F76D5E278B16F43B8E5AD4CD8ABA9E0536400AFCCEF87F19DE0EA1DC14
            78EEC26FE8FC01F7AB3932222BB68EFAE0F3AF55812F1EF4A0D8F5727C5E2407
            FE6DF3562587BE5BECD376D1395DD2FD27B30D725D2B511720DF85BC46B0C006
            40E07B9E78DEF0B67F0EBC8A7A28A7F92E57DE4E850BA63A12F8DC7EC368DBA2
            D7C565ECF380125C4B65508612DAC383FBD1BD4F4C1235DF9FE74C1611F9A6BC
            2769F1772BA861BDBAB44EC99387DD70058DBAF38674FFB96C6167A006069FD2
            98F2BBB730BD9D05F61098C0409E5BAF62A312799D7652636F49296DF97347A5
            DD2FFD00066A77BCBFCED27D913220DF3DB745ED98F7638199A483811A725DD9
            41168F8E8D6A08793B358E5F61618199A482A89BBF78B3A5811A90F5DDBAD999
            96EECF023349C16ED405937BB6A67E9D1A5ABE3F608119D72958B94D0CD4AC4C
            4A00E4BB88BA5652063D2C30E31A582D81061C2B7D0C12A40CC877F5F55DABB0
            C08C2BD88DBA60CCF9CD69C8A9473A7A5E1698714422511753C2057DDAC62D91
            59810566122691A8EB3465D0C30233B6B13B9B26D17691B9050BCC5806A531D4
            7451DBB51375ADCEAA25020BCC5802E902DA1EAD4E4848EC4E4CD88505666262
            A75F570B066AA8308C3837B9BDCA2C30638A9D55125A9032E4776F1ED5789E2C
            5860A6120BD6EEA25ED357D91617A0FD1151375929831E169851414D1711D76E
            BA009032405CA7131376618119212ED205ECC59048D475BBB66B071638C46080
            066913C97325897490B9090B1C52501683B876272324769ACE93090B1C323040
            C32C9ADD7AAE245DB9AE192C704840C4C52C9A9D06733D88BA68C24947AE6B06
            0B1C701071D12D9668AA20497579CC2A2C7040719AE34ABC92EB9AC102070CB7
            C44DD554B05358E080006921AF5371413AEBBA7661817D0CEAB810F7C92F36BB
            F278A9EC61700B16D88720D26202C2CE329E78787590168F8C8EE3BF3D885C07
            CDC67E38658415396B666793102B787D90168F0C1AB1488DC03DDBD613D3827E
            3A85041D2CDF419AE066B4057E19A4C5234A600972214464C89C8C65204C6C64
            734DC1CAEDAE465B09D205C81B8433AEA1C05AF04E955199654E1E9056CE9625
            435AE0A7EA8255E20AAC45CA0C9139CD708E9416B9AD1BE52F3392B9A832DDD8
            12580F7266297390DED5C90453BB903659E9819EBC73D078D3D877D505AB3812
            580BDEE59D1AD710111A235A163A020661CB36178B288BE344FB6EED20CF9441
            C97363E19AC07A509E81C888D010DBAF651ABB48611169F1958A28AB2588796E
            2C9226B01188D2BDDAD513A7337CF7BBD4901592EE282917DF9DB42A3A05E262
            16CDEF7F53BBA454602364EA813F7CDDECAA6AD4F612186CC9C82A8F9339E8B2
            831FA77FDD24ED02C702510540703908D1CB9DA8EC98D982901288892FED6DA9
            CA5913FDDB6012C26B6FF654E369819D20E5878C5E89966EFD5E2CEE21022B70
            D040C952F6AC308760813D0EB624451D376C8333ABB0C01E4436DA047902C22D
            58600F81FC161310E9DC28C46FB0C069264CB366C980054E131894A176CBD1D6
            192C700AC1F4BA6C4DE568EB0E2C709291D3E79C2224878CF96B761E943DA95E
            9D75F21B2C6DEA885A952C3BA8D2DD98E24790D3A2568B1481A54D1DA6CBEA65
            6F0022733ADA02BD8E5C3788481BD6461A2F60795F08C8AC8DD061131AC222B2
            627201DF7966CC1B24BCB1898CD090597E0F8AD4A8CDCAB6CE88ACE169C8F71B
            AEEFCC2323B43CF67A2EAD6DB297C2720EEB1F52B6B5147A6B23CDE0C5EA65AC
            64C075C98ADC329202D9C5257B8BB53DC68C7FF1DCDE68FA46733BB094E1C373
            02338C1D5860C6D7B0C08CAF6181195FC30233BE8605667C0D0BCCF89AFF0782
            AC99723BE0E2030000000049454E44AE426082}
          HightQuality = True
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          Left = -1.220470000000000000
          Top = 4.440940000000000000
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
            'Pedido')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 512.000000000000000000
          Top = 4.102350000000000000
          Width = 197.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
        Height = 105.480210000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Left = 2.779530000000000000
          Top = 5.039270000000000000
          Width = 712.331170000000000000
          Height = 97.504020000000000000
          ShowHint = False
        end
        object dbSetClienteDescricao: TfrxMemoView
          Left = 5.118120000000000000
          Top = 24.559060000000000000
          Width = 555.433520000000000000
          Height = 18.897650000000000000
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
            'Dados do Cliente')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 568.000000000000000000
          Top = 4.582560000000000000
          Height = 96.000000000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object dbSetClientePto_Referencia: TfrxMemoView
          Left = 143.000000000000000000
          Top = 82.582560000000000000
          Width = 415.370130000000000000
          Height = 16.897650000000000000
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
        object FormaPagamento: TfrxMemoView
          Left = 568.000000000000000000
          Top = 80.582560000000000000
          Width = 145.370130000000000000
          Height = 23.897650000000000000
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo5: TfrxMemoView
          Left = 2.000000000000000000
          Top = 1.015460000000000000
          Width = 56.692950000000000000
          Height = 18.897637800000000000
          ShowHint = False
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
          ShowHint = False
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
          ShowHint = False
          DataField = 'Unidade'
          DataSet = frxDbItens
          DataSetName = 'dbSetItens'
          Memo.UTF8 = (
            '[dbSetItens."Unidade"]')
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        Height = 21.062770000000000000
        Top = 283.464750000000000000
        Width = 718.110700000000000000
        object Memo4: TfrxMemoView
          Left = -1.220472440000000000
          Top = 3.165120000000000000
          Width = 714.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8 = (
            
              'Codigo    Descricao                                             ' +
              '                                              Quantidade        ' +
              '         Unid                 Vlr. unitario         Vlr. Total')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 121.677180000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object Line1: TfrxLineView
          Left = 1.000000000000000000
          Top = 57.661100000000000000
          Width = 314.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          Left = 3.000000000000000000
          Top = 61.661100000000000000
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
        object Memo15: TfrxMemoView
          Left = 2.000000000000000000
          Top = 8.661100000000000000
          Width = 575.149660000000000000
          Height = 16.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
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
          ShowHint = False
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
          ShowHint = False
          Memo.UTF8 = (
            'Vendedor.: [Vendedor]')
        end
      end
    end
  end
  object cdsItensVendasCP: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendaCp'
    Left = 816
    Top = 260
  end
  object qryItensVendasCp: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 816
    Top = 204
  end
  object dspItensVendasCp: TDataSetProvider
    DataSet = qryItensVendasCp
    Left = 816
    Top = 232
  end
end
