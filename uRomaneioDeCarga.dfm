object frmRomaneioDeEntrega: TfrmRomaneioDeEntrega
  Left = 0
  Top = 0
  Caption = 'Romaneio de Entrega'
  ClientHeight = 440
  ClientWidth = 811
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
  object bsSkinCoolBar3: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 811
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar3
        ImageIndex = -1
        MinHeight = 49
        Width = 807
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 0
    object bsSkinToolBar3: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 798
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
        Left = 705
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
        ExplicitLeft = 635
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 321
        Top = 0
        Width = 120
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 289
        ExplicitTop = -1
      end
      object btnGerar: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 97
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
        Caption = '&Gerar Romaneio'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        OnClick = btnGerarClick
        ExplicitLeft = -6
        ExplicitTop = 12
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 97
        Top = 0
        Width = 118
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 152
        ExplicitTop = -1
      end
      object btnCancelar: TbsSkinSpeedButton
        Left = 441
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
        ImageIndex = 4
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Cancelar Digitacao'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 2
        OnClick = btnCancelarClick
        ExplicitLeft = 359
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 511
        Top = 0
        Width = 194
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
      end
      object bsSkinSpeedButton1: TbsSkinSpeedButton
        Left = 215
        Top = 0
        Width = 106
        Height = 49
        HintImageIndex = 0
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'resizebutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 70
        DefaultHeight = 40
        UseSkinFont = False
        CheckedMode = False
        UseSkinSize = False
        UseSkinFontColor = False
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
        Caption = 'Pendentes de Entrega'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 2
        OnClick = bsSkinSpeedButton1Click
      end
    end
  end
  object pagGeral: TbsSkinPageControl
    Left = 0
    Top = 53
    Width = 811
    Height = 387
    ActivePage = bsSkinTabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnChange = pagGeralChange
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
    SkinDataName = 'tab'
    object PagNovoRomaneio: TbsSkinTabSheet
      Caption = 'Inclus'#227'o de Romaneio'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 81
        Width = 809
        Height = 285
        Align = alClient
        TabOrder = 0
        object GrdVendas: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcVendasRomaneio
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
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
          object GrdVendasNumeroVenda: TcxGridDBColumn
            Caption = 'N'#186' Venda'
            DataBinding.FieldName = 'NumeroVenda'
            Width = 60
          end
          object GrdVendasClienteId: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'ClienteId'
            Width = 60
          end
          object GrdVendasNome_cliente: TcxGridDBColumn
            Caption = 'Nome do Cliente'
            DataBinding.FieldName = 'Nome_cliente'
            Width = 250
          end
          object GrdVendasVendedor: TcxGridDBColumn
            DataBinding.FieldName = 'Vendedor'
          end
          object GrdVendasDataVenda: TcxGridDBColumn
            Caption = 'Data da Venda'
            DataBinding.FieldName = 'DataVenda'
            Width = 95
          end
          object GrdVendasTotal_Financeiro: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'Total_Financeiro'
            Width = 80
          end
          object GrdVendasTotal_Peso: TcxGridDBColumn
            Caption = 'PesoB Total'
            DataBinding.FieldName = 'Total_Peso'
            Width = 90
          end
        end
        object GrdItensVendas: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
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
          object Colum_Complemento: TcxGridDBColumn
            DataBinding.FieldName = 'Complemento'
            Visible = False
            Width = 150
          end
        end
        object grdDevolucoes: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
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
          NavigatorButtons.ConfirmDelete = False
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
        end
      end
      object bsSkinExPanel1: TbsSkinExPanel
        Left = 0
        Top = 0
        Width = 809
        Height = 81
        HintImageIndex = 0
        TabOrder = 1
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'expanel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
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
        Caption = 'Incluir Vendas no Romaneio'
        object bsSkinLabel1: TbsSkinLabel
          Left = 24
          Top = 27
          Width = 97
          Height = 21
          HintImageIndex = 0
          TabOrder = 0
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
          Caption = 'Numero da Venda'
          AutoSize = False
        end
        object edtNumeroVenda: TbsSkinEdit
          Left = 127
          Top = 27
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
        object bsSkinButton3: TbsSkinButton
          Left = 572
          Top = 34
          Width = 107
          Height = 28
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
          OnClick = bsSkinButton3Click
        end
        object bsSkinButton1: TbsSkinButton
          Left = 685
          Top = 34
          Width = 107
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
          UseSkinFont = False
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
          OnClick = bsSkinButton1Click
        end
        object edtFuncionarioId: TbsSkinEdit
          Left = 127
          Top = 51
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
          TabOrder = 4
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
          OnExit = edtFuncionarioIdExit
        end
        object cmbNome_Funcionario: TbsSkinDBLookupComboBox
          Left = 224
          Top = 51
          Width = 299
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
          KeyField = 'codigo'
          ListField = 'Descricao'
          ListSource = srcFuncionarios
          OnChange = cmbNome_FuncionarioChange
        end
        object bsSkinLabel2: TbsSkinLabel
          Left = 24
          Top = 51
          Width = 97
          Height = 21
          HintImageIndex = 0
          TabOrder = 6
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
          Caption = 'Motorista'
          AutoSize = False
        end
      end
    end
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Consulta Romaneio'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 25
        Width = 809
        Height = 341
        Align = alClient
        TabOrder = 0
        object GridRomaneio: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = GridRomaneioCustomDrawCell
          DataController.DataSource = srcRomaneios
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0'
              Kind = skCount
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object GridRomaneioCodigo: TcxGridDBColumn
            Caption = 'N'#186' Romaneio'
            DataBinding.FieldName = 'Id'
            Width = 50
          end
          object GridRomaneioData_cad: TcxGridDBColumn
            Caption = 'Cadastrado Em'
            DataBinding.FieldName = 'Data_cadastro'
            Width = 100
          end
          object GridRomaneioCod_Emp: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'Total'
            Width = 76
          end
          object GridRomaneioPeso_total: TcxGridDBColumn
            Caption = 'Peso Total'
            DataBinding.FieldName = 'PesoB_total'
            Width = 80
          end
          object GridRomaneioQtde_Venda: TcxGridDBColumn
            Caption = 'Quant. Vendas'
            DataBinding.FieldName = 'Qtde_Vendas'
            Width = 91
          end
          object GridRomaneioMotorista: TcxGridDBColumn
            Caption = 'Motorista Responsavel'
            DataBinding.FieldName = 'Motorista'
            Width = 270
          end
          object GridRomaneioOperador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 100
          end
          object Colum_NomeStatus: TcxGridDBColumn
            DataBinding.FieldName = 'Status'
            Visible = False
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = GridRomaneio
        end
      end
      object bsSkinPanel1: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 809
        Height = 25
        HintImageIndex = 0
        TabOrder = 1
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
        object bsSkinButton4: TbsSkinButton
          Left = 304
          Top = 0
          Width = 201
          Height = 26
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
          ImageIndex = 6
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
          Caption = '    &Relatorio de Produtos'
          NumGlyphs = 1
          Spacing = 1
          OnClick = bsSkinButton4Click
        end
        object bsSkinButton5: TbsSkinButton
          Left = 560
          Top = 0
          Width = 201
          Height = 25
          HintImageIndex = 0
          TabOrder = 1
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
          ImageIndex = 6
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
          Caption = '    &Relatorio financeiro'
          NumGlyphs = 1
          Spacing = 1
          OnClick = bsSkinButton5Click
        end
        object bsSkinButton2: TbsSkinButton
          Left = 48
          Top = -1
          Width = 201
          Height = 26
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
          CheckedMode = False
          ImageList = frmPrincipal.Imagebutoes
          ImageIndex = 4
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
          Caption = 'Cancelar Romaneio'
          NumGlyphs = 1
          Spacing = 1
          OnClick = bsSkinButton2Click
        end
      end
    end
  end
  object cdsVendasRomaneio: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    AfterOpen = cdsVendasRomaneioAfterOpen
    Left = 400
    Top = 248
    Data = {
      BC0000009619E0BD010000001800000007000000000003000000BC000B4E756D
      65726F56656E6461040001000000000009436C69656E74654964040001000000
      00000C4E6F6D655F636C69656E74650100490000000100055749445448020002
      003C000856656E6465646F720100490000000100055749445448020002001400
      094461746156656E6461080008000000000010546F74616C5F46696E616E6365
      69726F08000400000000000A546F74616C5F5065736F08000400000000000000}
    object cdsVendasRomaneioNumeroVenda: TIntegerField
      FieldName = 'NumeroVenda'
    end
    object cdsVendasRomaneioClienteId: TIntegerField
      FieldName = 'ClienteId'
    end
    object cdsVendasRomaneioNome_cliente: TStringField
      FieldName = 'Nome_cliente'
      Size = 60
    end
    object cdsVendasRomaneioVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object cdsVendasRomaneioDataVenda: TDateTimeField
      FieldName = 'DataVenda'
    end
    object cdsVendasRomaneioTotal_Financeiro: TFloatField
      FieldName = 'Total_Financeiro'
    end
    object cdsVendasRomaneioTotal_Peso: TFloatField
      FieldName = 'Total_Peso'
    end
  end
  object srcVendasRomaneio: TDataSource
    DataSet = cdsVendasRomaneio
    Left = 400
    Top = 275
  end
  object srcRomaneios: TDataSource
    Left = 428
    Top = 275
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
    Left = 213
    Top = 176
  end
  object srcFuncionarios: TDataSource
    Left = 456
    Top = 275
  end
end
