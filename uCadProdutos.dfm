object frmCadProdutos: TfrmCadProdutos
  Left = 173
  Top = 172
  BorderIcons = []
  Caption = 'Cadastro e manuten'#231#227'o de Produtos'
  ClientHeight = 513
  ClientWidth = 787
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pagCadastro: TbsSkinPageControl
    Left = 0
    Top = 53
    Width = 787
    Height = 460
    ActivePage = pagFichaTecnica
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = 14
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    OnChange = pagCadastroChange
    MouseWheelSupport = False
    TabExtededDraw = False
    ButtonTabSkinDataName = 'resizetoolbutton'
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
      Caption = 'Consulta'
      object bsSkinPanel1: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 41
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
        Caption = 'bsSkinPanel1'
        Align = alTop
        PopupMenu = PopupMenu1
        object cmbPesquisa: TbsSkinComboBox
          Left = 8
          Top = 10
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
            'Codigo'
            'Codigo Fornecedor')
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
          Left = 134
          Top = 10
          Width = 224
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
          TabOrder = 1
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
          OnChange = EdtPesquisaChange
        end
        object chkPesqTodoTexto: TbsSkinCheckRadioBox
          Left = 381
          Top = 10
          Width = 150
          Height = 20
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
        object btnPesquisa: TbsSkinButton
          Left = 565
          Top = 9
          Width = 109
          Height = 26
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
          OnClick = btnPesquisaClick
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 41
        Width = 785
        Height = 395
        Align = alClient
        TabOrder = 1
        object GridProdutos: TcxGridDBTableView
          OnDblClick = GridProdutosDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = srcCadProdutos
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
          object Column_Nome_TipoProduto: TcxGridDBColumn
            Caption = 'Tipo Cadastro'
            DataBinding.FieldName = 'Nome_TipoProduto'
            Width = 95
          end
          object GridProdutosCodigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
            Width = 50
          end
          object GridProdutosColumn5: TcxGridDBColumn
            Caption = 'Cod. Barra'
            DataBinding.FieldName = 'Cod_Barras'
            Width = 85
          end
          object Column_CodigoFornecedor: TcxGridDBColumn
            Caption = 'Cod. Proprio'
            DataBinding.FieldName = 'CodigoFornecedor'
            Width = 95
          end
          object GridProdutosDescricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 272
          end
          object GridProdutosColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Unid'
            Width = 50
          end
          object GridProdutosColumn4: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo'
            Width = 80
          end
          object GridProdutosColumn1: TcxGridDBColumn
            Caption = 'Preco'
            DataBinding.FieldName = 'Pco_Venda'
            Width = 70
          end
          object PrecoVendaExterna: TcxGridDBColumn
            Caption = 'Venda Externa'
            DataBinding.FieldName = 'PrecoVendaExterna'
            Width = 90
          end
          object GridProdutosData_Atu: TcxGridDBColumn
            Caption = 'Alterado em'
            DataBinding.FieldName = 'Data_Atu'
            Width = 100
          end
          object GridProdutosCod_Emp: TcxGridDBColumn
            DataBinding.FieldName = 'Cod_Emp'
            Visible = False
          end
          object GridProdutosOperador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 70
          end
          object GridProdutosColumn3: TcxGridDBColumn
            Caption = 'M'#178
            DataBinding.FieldName = 'm2'
            Width = 20
          end
          object GridProdutosData_cad: TcxGridDBColumn
            Caption = 'Cadastrado Em'
            DataBinding.FieldName = 'Data_cad'
            Width = 100
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = GridProdutos
        end
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Cadastro'
      object bsSkinGroupBox1: TbsSkinGroupBox
        Left = 104
        Top = 3
        Width = 536
        Height = 351
        HintImageIndex = 0
        TabOrder = 0
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
        CaptionMode = True
        RollUpMode = False
        RollUpState = False
        NumGlyphs = 1
        Spacing = 2
        Caption = 'Informe os dados para o cadastro de produtos'
        UseSkinSize = True
        object bsSkinStdLabel1: TbsSkinStdLabel
          Left = 79
          Top = 61
          Width = 33
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
          Caption = 'Codigo'
        end
        object bsSkinStdLabel5: TbsSkinStdLabel
          Left = 66
          Top = 108
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Descricao'
        end
        object bsSkinStdLabel8: TbsSkinStdLabel
          Left = 372
          Top = 30
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Data Cadastro'
        end
        object lblPrevoVenda: TbsSkinStdLabel
          Left = 36
          Top = 132
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
          Alignment = taRightJustify
          Caption = 'Preco de venda'
        end
        object bsSkinStdLabel3: TbsSkinStdLabel
          Left = 35
          Top = 205
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Plano de Contas'
          Visible = False
        end
        object bsSkinStdLabel11: TbsSkinStdLabel
          Left = 38
          Top = 253
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
          Caption = 'Tipo de Produto'
        end
        object bsSkinStdLabel4: TbsSkinStdLabel
          Left = 191
          Top = 61
          Width = 81
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
          Caption = 'Codigo de Barras'
        end
        object bsSkinStdLabel6: TbsSkinStdLabel
          Left = 74
          Top = 182
          Width = 40
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
          Caption = 'Unidade'
        end
        object bsSkinStdLabel7: TbsSkinStdLabel
          Left = 84
          Top = 231
          Width = 29
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
          Caption = 'Grupo'
        end
        object bsSkinStdLabel9: TbsSkinStdLabel
          Left = 364
          Top = 86
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
          Caption = 'Aliquota do ECF'
          Visible = False
        end
        object lblCadFabricante: TbsSkinStdLabel
          Left = 64
          Top = 275
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Fabricante'
        end
        object bsSkinStdLabel13: TbsSkinStdLabel
          Left = 325
          Top = 182
          Width = 84
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
          Caption = 'Qtde. Embalagem'
        end
        object lblPrecoVendaExterna: TbsSkinStdLabel
          Left = 292
          Top = 132
          Width = 115
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
          Alignment = taRightJustify
          Caption = 'Preco de venda Externa'
        end
        object bsSkinStdLabel12: TbsSkinStdLabel
          Left = 45
          Top = 86
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
          Caption = 'Codigo Proprio'
        end
        object bsSkinStdLabel14: TbsSkinStdLabel
          Left = 62
          Top = 296
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
          Caption = 'Peso Bruto'
        end
        object bsSkinStdLabel15: TbsSkinStdLabel
          Left = 306
          Top = 296
          Width = 61
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
          Caption = 'Peso Liquido'
        end
        object lblValorMensal: TbsSkinStdLabel
          Left = 53
          Top = 156
          Width = 61
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
          Alignment = taRightJustify
          Caption = 'Valor Mensal'
        end
        object lblGradeProduto: TbsSkinStdLabel
          Left = 233
          Top = 275
          Width = 29
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
          Caption = 'Grade'
        end
        object bsSkinStdLabel2: TbsSkinStdLabel
          Left = 325
          Top = 156
          Width = 81
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
          Caption = 'Garantia em Dias'
        end
        object edtDescricao: TbsSkinEdit
          Left = 123
          Top = 105
          Width = 358
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
          TabOrder = 5
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCodigo: TbsSkinEdit
          Left = 123
          Top = 58
          Width = 56
          Height = 20
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 9
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
        object edtData_cad: TbsSkinEdit
          Left = 449
          Top = 26
          Width = 74
          Height = 20
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          ReadOnly = True
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
        end
        object cmbNome_CentroCusto: TbsSkinDBLookupComboBox
          Left = 192
          Top = 201
          Width = 289
          Height = 20
          HintImageIndex = 0
          TabOrder = 17
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
          ListField = 'descricao;codigo'
          ListSource = srcCadCtoCusto
          OnChange = cmbNome_CentroCustoChange
        end
        object cmbCod_CentroCusto: TbsSkinDBLookupComboBox
          Left = 122
          Top = 201
          Width = 63
          Height = 20
          HintImageIndex = 0
          TabOrder = 16
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
          ListField = 'Codigo;descricao'
          ListSource = srcCadCtoCusto
          OnChange = cmbCod_CentroCustoChange
        end
        object cmbTipoProduto: TbsSkinComboBox
          Left = 123
          Top = 246
          Width = 358
          Height = 20
          HintImageIndex = 0
          TabOrder = 13
          SkinData = frmPrincipal.SkinEntradaDados
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
          Text = 'Produto'
          Items.Strings = (
            'Produto'
            'Servi'#231'o'
            'Materia Prima'
            'Brinde')
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
        object chkMetroQuadrado: TbsSkinCheckRadioBox
          Left = 14
          Top = 28
          Width = 179
          Height = 21
          HintImageIndex = 0
          TabOrder = 15
          SkinData = frmPrincipal.SkinEntradaDados
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
          Caption = 'Pre'#231'o por M'#178' (Metro Quadrado)'
          OnClick = chkMetroQuadradoClick
        end
        object edtCod_barras: TbsSkinEdit
          Left = 288
          Top = 58
          Width = 193
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
        object edtUnid: TbsSkinEdit
          Left = 123
          Top = 177
          Width = 33
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
          CharCase = ecUpperCase
          MaxLength = 3
          ParentFont = False
          TabOrder = 9
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object cmbCod_Grupo: TbsSkinDBLookupComboBox
          Left = 122
          Top = 224
          Width = 65
          Height = 20
          HintImageIndex = 0
          TabOrder = 11
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
          ListField = 'Codigo;descricao'
          ListSource = srcGrupo
          OnChange = cmbCod_GrupoChange
        end
        object cmbNome_Grupo: TbsSkinDBLookupComboBox
          Left = 192
          Top = 224
          Width = 289
          Height = 20
          HintImageIndex = 0
          TabOrder = 12
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
          ListSource = srcGrupo
          OnChange = cmbNome_GrupoChange
        end
        object edtAliquota_ECF: TbsSkinEdit
          Left = 446
          Top = 81
          Width = 35
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
          CharCase = ecUpperCase
          MaxLength = 3
          ParentFont = False
          TabOrder = 4
          Visible = False
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtPco_Venda: TbsSkinNumericEdit
          Left = 123
          Top = 129
          Width = 65
          Height = 20
          Text = '0,00'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = True
          Decimal = 6
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
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
          ParentFont = False
          TabOrder = 6
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object cmbNome_Fabricante: TbsSkinDBLookupComboBox
          Left = 122
          Top = 269
          Width = 105
          Height = 20
          HintImageIndex = 0
          TabOrder = 14
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
          ListSource = srcCadFabricantes
          OnChange = cmbNome_CentroCustoChange
        end
        object QtdeEmbalagem: TbsSkinSpinEdit
          Left = 415
          Top = 177
          Width = 66
          Height = 20
          HintImageIndex = 0
          TabOrder = 10
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
          Decimal = 0
          MinValue = 1.000000000000000000
          MaxValue = 20000.000000000000000000
          Value = 1.000000000000000000
          Increment = 1.000000000000000000
          EditorEnabled = True
          MaxLength = 0
        end
        object edtPcoVendaExterna: TbsSkinNumericEdit
          Left = 416
          Top = 129
          Width = 65
          Height = 20
          Text = '0,00'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = True
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
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
          ParentFont = False
          TabOrder = 7
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object chkMetroLinear: TbsSkinCheckRadioBox
          Left = 197
          Top = 28
          Width = 139
          Height = 21
          HintImageIndex = 0
          TabOrder = 18
          SkinData = frmPrincipal.SkinEntradaDados
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
          Caption = 'Pre'#231'o por Metro Linear'
          OnClick = chkMetroLinearClick
        end
        object EdtCodigoFornecedor: TbsSkinEdit
          Left = 123
          Top = 81
          Width = 169
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
        object edtPesoBruto: TbsSkinNumericEdit
          Left = 123
          Top = 292
          Width = 84
          Height = 20
          Text = '0,000'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = True
          Decimal = 3
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
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
          ParentFont = False
          TabOrder = 19
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtPesoLiquido: TbsSkinNumericEdit
          Left = 375
          Top = 292
          Width = 106
          Height = 20
          Text = '0,000'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = True
          Decimal = 3
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
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
          ParentFont = False
          TabOrder = 20
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object chkBloquiaEstoqueNegativo: TbsSkinCheckRadioBox
          Left = 25
          Top = 318
          Width = 243
          Height = 21
          HintImageIndex = 0
          TabOrder = 21
          SkinData = frmPrincipal.SkinEntradaDados
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
          Caption = 'Bloqueia Venda Deste produto sem estoque'
        end
        object edtValorMensal: TbsSkinNumericEdit
          Left = 123
          Top = 153
          Width = 65
          Height = 20
          Text = '0,00'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = True
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
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
          ParentFont = False
          TabOrder = 8
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object cmbNome_grade: TbsSkinDBLookupComboBox
          Left = 268
          Top = 269
          Width = 213
          Height = 20
          HintImageIndex = 0
          TabOrder = 22
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
          ListField = 'descricao'
          ListSource = srcGrande
        end
        object chkAtivo: TbsSkinCheckRadioBox
          Left = 422
          Top = 318
          Width = 59
          Height = 21
          HintImageIndex = 0
          TabOrder = 23
          SkinData = frmPrincipal.SkinEntradaDados
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
          Caption = 'Ativo'
        end
        object edtGarantia: TbsSkinSpinEdit
          Left = 415
          Top = 151
          Width = 66
          Height = 20
          HintImageIndex = 0
          TabOrder = 24
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
          Decimal = 0
          MaxValue = 20000.000000000000000000
          Increment = 1.000000000000000000
          EditorEnabled = True
          MaxLength = 0
        end
      end
      object pnlComissao: TbsSkinExPanel
        Left = 104
        Top = 353
        Width = 536
        Height = 49
        HintImageIndex = 0
        TabOrder = 1
        SkinData = frmPrincipal.SkinEntradaDados
        SkinDataName = 'expanel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
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
        Caption = 'Controle de Comi'#231#245'es'
        object lblComissao: TbsSkinStdLabel
          Left = 9
          Top = 28
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
          Caption = 'Comiss'#227'o Primaria %'
        end
        object bsSkinStdLabel22: TbsSkinStdLabel
          Left = 183
          Top = 28
          Width = 113
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
          Caption = 'Comiss'#227'o Secundaria %'
        end
        object bsSkinStdLabel23: TbsSkinStdLabel
          Left = 373
          Top = 28
          Width = 95
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
          Caption = 'Margem Secundaria'
          Visible = False
        end
        object edtComissao: TbsSkinNumericEdit
          Left = 113
          Top = 25
          Width = 58
          Height = 20
          Text = '0,00'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = True
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
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
        object edtcomissaoSecundaria: TbsSkinNumericEdit
          Left = 302
          Top = 25
          Width = 58
          Height = 20
          Text = '0,00'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = True
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
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
        object edtMargemSecundaria: TbsSkinNumericEdit
          Left = 472
          Top = 25
          Width = 58
          Height = 20
          Text = '0,00'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = True
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
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
          ParentFont = False
          TabOrder = 2
          Visible = False
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
      end
    end
    object pagFichaTecnica: TbsSkinTabSheet
      Caption = 'Ficha Tecnica'
      object Label2: TLabel
        Left = 328
        Top = 120
        Width = 32
        Height = 14
        Caption = 'Label2'
      end
      object bsSkinPanel2: TbsSkinPanel
        Left = 0
        Top = 23
        Width = 785
        Height = 33
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
        Caption = 'bsSkinPanel2'
        Align = alTop
        object bsSkinStdLabel10: TbsSkinStdLabel
          Left = 3
          Top = 10
          Width = 64
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
          Caption = 'Materia Prima'
        end
        object cmbNome_Produto: TbsSkinDBLookupComboBox
          Left = 146
          Top = 7
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
          ListSource = srcMateriaPrima
          OnChange = cmbNome_ProdutoChange
        end
        object edtCod_Produto: TbsSkinEdit
          Left = 76
          Top = 7
          Width = 64
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
        object btnRemover: TbsSkinButton
          Left = 581
          Top = 4
          Width = 110
          Height = 25
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
        object btnAdicionar: TbsSkinButton
          Left = 465
          Top = 5
          Width = 110
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
          OnClick = btnAdicionarClick
        end
      end
      object cxGrid3: TcxGrid
        Left = 0
        Top = 56
        Width = 785
        Height = 380
        Align = alClient
        TabOrder = 0
        object GridFichaTecinica: TcxGridDBTableView
          OnDblClick = GridProdutosDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = srcFichaTecnica
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
          object GridFichaTecinicaColumn1: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'Cod_MateriaPrima'
          end
          object GridFichaTecinicaColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 250
          end
          object GridFichaTecinicaColumn3: TcxGridDBColumn
            Caption = 'Quantidade'
            DataBinding.FieldName = 'Qtde'
            Width = 72
          end
          object GridFichaTecinicaColumn4: TcxGridDBColumn
            Caption = 'Custo'
            DataBinding.FieldName = 'pco_Custo'
            Width = 60
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = GridFichaTecinica
        end
      end
      object pnlFichaTecnica: TbsSkinPaintPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 23
        HintImageIndex = 0
        TabOrder = 2
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'panel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsBold]
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
        EmptyDrawing = False
        RibbonStyle = False
        ImagePosition = bsipDefault
        TransparentMode = False
        CaptionImageIndex = -1
        RealHeight = -1
        AutoEnabledControls = True
        CheckedMode = False
        Checked = False
        DefaultAlignment = taCenter
        DefaultCaptionHeight = 22
        BorderStyle = bvFrame
        CaptionMode = True
        RollUpMode = False
        RollUpState = False
        NumGlyphs = 1
        Spacing = 2
        Align = alTop
        object lblNomeProdutoFicha: TbsSkinStdLabel
          Left = 7
          Top = 2
          Width = 29
          Height = 19
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
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Caption = 'Ate.'
          ParentFont = False
        end
      end
      object edtQtde: TbsSkinNumericEdit
        Left = 394
        Top = 30
        Width = 65
        Height = 20
        Text = '0,00'
        Increment = 1.000000000000000000
        SupportUpDownKeys = False
        Alignment = taRightJustify
        UseSkinFont = True
        ValueType = vtFloat
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clBlack
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
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
        ButtonImageIndex = -1
        LeftImageIndex = -1
        LeftImageHotIndex = -1
        LeftImageDownIndex = -1
        RightImageIndex = -1
        RightImageHotIndex = -1
        RightImageDownIndex = -1
      end
    end
    object bsSkinTabSheet4: TbsSkinTabSheet
      Caption = 'Movimento'
      object bsSkinLinkImage1: TbsSkinLinkImage
        Left = 0
        Top = 61
        Width = 785
        Height = 375
        Cursor = crHandPoint
        Align = alClient
        AutoSize = True
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000100
          0000010008060000005C72A8660000000467414D410000B18F0BFC6105000000
          206348524D00007A26000080840000FA00000080E8000075300000EA6000003A
          98000017709CBA513C000000097048597300000B0C00000B0C013F4022C80000
          FCA949444154785EEC9D077C5455F6C7E95D5A202165D2137A02494880F44209
          09E9858424F45E54043B5514A409D875D5B5ACBDF70ED2AB0A8215C18E820AD6
          75DB39FF73CEBDF7BD3793C1B6BABB7FC97C3EBF1D9841D75CDEF9DEDF29EFDD
          4688D8A00635E83495D70F1BD4A0069D1EF2FA61831AD4A0D3435E3F6C50831A
          747AC8EB870D6A50834E0F79FDB0410D6AD0E921AF1F36A8410D3A3DE4F5C306
          35A841A787BC7ED8A00635E8F490D70F1BD4A0069D1EF2FA61831AD4A0D3435E
          3F6C50831A747AC8EB876FBCFF46A3FD87F635DA47E2F753E97FE0FBC6F4DE8A
          D48ED49EE4A3DF9B93FE17FEFBBC7E6EF43FF1FDBBFB1BBDFAC6AB8DF6ECD953
          4FBB77EFF6FAB951C3F7FF7FBEF716E72CAF1F0E9C3AB0517099AB91AB3448DE
          4FA5FFF2F7BEF4FD40D26CD2125749D06541C581D7D2FB32FAFD78FA3E97BFA7
          F73EA408923FA92DA92949FE1DF4BDE7BFD34DA7CBF75D06FA346ADCB471A386
          D71FF7E52DCE595E3FFC1F074073D260FAEEFAC0A2C03D412541DF8794076378
          7528F69C1885E155A14010F88EBEFB38A030F055D206FAF5A3F4E76EA37FE672
          FA67CF225591181083E8BD3BA913A919C9EDFFEB57FEF759FAFFF27D0300FEF8
          2F6F71CEF2FAE1FF3000FC48D32998B7071507FD33F1DCBE5078432AD6DC3F14
          273C3102CFDA568A131ECFC3F23F67E2F03583307D713C0C3C2F066367F4C488
          D16140FFBE7F0414047CE53F32E023FF828037030A03F60416076E2060DC1B5C
          EA5A43FF6E0387E1A478FAF3DDE8BD25C9F3BF43F43BFC7C6EFA4F7DDF00803F
          FECB5B9CB3BC7E38706A925C1CFF436A491A4E7A30B030F0585855E83F0BAE4F
          858BDFA9864B3F1D03CB8F8F85CB3F1F0F2BBE98002B492B8E4F80E59F8E8765
          1F8F854B3F18038BDEAE85737696C3A427F2A1E2CF5990BF3E19B29725C2C073
          63A1E7F8282007F12F02C3F7DDF2FDBF207DE23FD2FFBDC0A280B7080C7BE8FF
          F331D295A4F349E349234831A44EA426246FFFBDFF6FD40080D3E3E52DCE595E
          3FFC1F7300EDE97D0AE923DEF5FB9FD50B276FC8C7A5C7EBF0D2637570E9B131
          78D9F131B8ECF8585CFEF938BCFC8BF14810C0955F4EC0555F4E84352726E19A
          939370ED579371FD3753F0CA6FA72A7D330DD79E980A977F381E2FDA5F8D339E
          2FC231F70EC7B29B3271D8AA419830A72F468F8D80D0CA907F1108FE1E541CF8
          03A512DFD3FBB7AE92C093F4DF7384F424E92AD2C52486432689EB0D9DF57F77
          1B7AE794A5DECFC6A2EFBD7E6EF49FFABE01007FFC97B7386779FDF07F04008D
          E9FB10D2FD148018511386D9AB1371CE81525C72BC06177D3A1A177F5A034B3E
          ABC5A59F310C0804240B049F8FC7155F8C6747C020C0D52486C115AC9393712D
          69DD5753E0CAAFA7E2D5DF4DC7EB7E9881D7FF6D26DEF0F759F4EB59B8FEC434
          BCECBD7170E12B55387B43314E7C2C0FABFF320487131C065FD00F63A7F7C01E
          E32220AA364CEA0F2115C148FFAD0C8B2F09548709145B2855B9953E9B4D3F4B
          28A989E36713FDC4CFFF1FFBBE01007FFC97B7386779FDF07F0000BC73A65030
          DD47C1F4B7BEB3BA63D9BD9978EEBBE538FFD32A9CFF71152EF8A41A171EAD86
          45470504780A10706AC0201057B08A5C81070860EDC9290C025CFF15B9021601
          E1AAAFA7E1D5DF4EC76BBF9F01D7FD3013AF67FD8DC13053BE5BF5E9245CF276
          1D9EB7BB12CEDA5482539E1C8995B76563EE9AC198BA208EDC431F8C99DE1D7B
          8C8FA4F4C2F53DFD9CF7D2CF3380E4E6067EC7F513FDDCEFBB0C6A00C01FFDE5
          2DCE595E3FFC2F03C087348D027F5770A9EB87C48BFAE284CDB978DE87E578C1
          C71578C1471578E1479578F1C7A31804A040309A1C418D80E01277108071042B
          DC40C08E8052831393C0B80137101004AEA440A76087ABBE998E577BE81A720C
          0407BCEEAF338184D7FE75867CBEF68B2978F9871370F15B75C8CE61CEC63288
          3F3306FD0B02FF4A3FD32324EE38583FEB7F697D2DC9F7E5AE469D133A376AD4
          10FF7FE897B7386779FDF0BF088068FAECBAA0A2C08F236AC320E7AA4498FA4A
          1ECEFDA014E7BE5F8AF3DE2FC3F33E28C3F319061F0A084083403B02E5061C20
          D03582B1B8EC731B042B1904BA46B0FA847604060404817504010D024A110404
          78D537D3EA818001E1F619B9866BBE9B417098C970C05547C7C3C86B53306C54
          38929BF98E7EBEB349ADCDCFFB3BAC9F9B7ECEF794AA346A1BD2465F260DAF3F
          EACB5B9CB3BC7EF85F024022FD7E3305FFF7BDA64561C9436938E3CD9170E691
          423CEB48119E7DA418E7BC57222038972070DE07E50C02B880DC80E5083EB141
          A0530310101CD38E8041601C014140BA060A04B89A20E00401BB01AE113008D6
          9F0202F5006069065EF24135CEDC930D93B7A6E1F06BE230B42A846B04BBE9E7
          0C323FF32F5C9F7AFA77BFE7DDDF7F78B7464D5B35D59749C3EB8FFAF216E72C
          AF1FFE0701C085B18EF43E87742CB8C2F5AFA44BFA62DDF62138E3DD7C9C7E28
          1F661C1A89B3DF2DC033DF25101C66101411088AF11C82013902B01C814E0D2E
          720341352C26102C318EC00281AE111C1F070A048ED4C0DD118072041EA90181
          40E40500EB4E4CC18BDF2EC5693BD371EA8E3498BE3B1DC73D9F8C71E744B30B
          F887ABCC55E3F8F9EBAD8953BFF7F72115C18DDA85B5D39748C3EB8FFCF216E7
          2CAF1FFE87E600B8B79F44BA8902E364E4983018724B228C3F300CA6BC3302A6
          BC3502A6BE3D02A6BD9D0733DE2110BC331266BD5B00B30F17028100C8110039
          0238E7FD1298F77E2981A01CCE27516A009C1A1008283D901A01E862211008B8
          6B009748FBB00E748D00A458A83A0622490D540B11AE2009084E4E8175240201
          5CC9E2FA801605BEBC5F7E740C9CF31AFD7753E01B110860CAF634C85AD5970B
          823C8CC4ADC366246F6BF21F13EFFEDD72FC1A8A7FA7C9CB5B9CB3BC7EF81F70
          003EC1A5AE1A0AFC6D7421FEA3EF9C68CC7F68308E7F6B288E7F93F4C6509CF8
          E6309CF4E67002412E120870DA3BE40848338D23382C8E8041206EC0BD466015
          0B19044E4760DA87A66B60D7088E8F53ED43ED06B423003B3598A45203F7AE81
          1409F9B3C5EF8DC2D92F0FE15D5F641C00BFB30B28BF2F11A3C787711AF015FD
          FC61BC0EBFE3FA8A7EEC7BFEAE8DAB21F73F5D5EDEE29CE5F5C3DF190011F4F9
          BAA0E2A0F7C26B4361E0CABE58BC21056B0F6663DDC11C1C431A7B70088E2308
          8C7F63183008261304C8115820204760400002024E0B9C35020181B34630CA4B
          8D8020606A04A66BE00041FD1A817BB1504300561E1B8F17BC5984D377655A81
          6F6400306D573A4E782915E3E775670020A50117F25AFC4EEB6BE994DF57B81A
          F9A676A5DCBF89BE3C1A5E7FF497B7386779FDF07704C060D29314FCDF474D8E
          C0CC5BE3A07C572A56BF9681D5FB3371F46B9958F35A16D61DC85620787D088C
          7B7D284E7863983882C96F1208080253DFCE2310E4E18C43F930CBE90834088C
          23201000B70F6D47E00481140A41DC80DD35B0414010E0D440750D1802248200
          3B0205812978E9C7B530675F2E4EDB21C1EE16FC6E0020B10B187A553FA43480
          21B099D6A1F5EFB0BE6E3AD5F74145818DDA06D3EEDFE0FE4F9B97B7386779FD
          F07700403B528DABD4B537B020E81FBDE74461EED303B1FC9554A87835152B5F
          4DC3CA7DE9386ABF0304070404A04180E31D2098C48E80DDC0DB79A04180B30E
          1510080A0904454E10707DC0D135D08542E91AC84011D7074CC7804050AB8B85
          04010502B0DA878E4221BF2F385C2E557E0E7C6FC1CFF20440ED9383306A4C28
          01C0F529AD47DE6FB8BE5EE5F57BCAFD7D927C1A356DDD50F93F9D5EDEE29CE5
          F5C3DF10007CEF7D1F7ABF83F2FDBF86560543C2E5BDB068F7602C79753016EF
          4D86D29793B1EC95148601561008461108AAF6310832080459C08EA0D67604EE
          207833978B85CA11901CA981D71A811304668EE0220601A5059C1A300858CA11
          D471D740D5088EA9D480EB034B8FD6E239AFE549D03B03DC9BEA7D4F4E21E9A2
          9E185414F4775A97DB695D4E799F00EB37587FF7CF28F8830A021B72FFD3F0E5
          2DCE595E3FFC8D00D08EBEE77BEEB9F78DDD674660EA6DB13872CF402C100DC2
          C23D83A1782FC18020700A108080805C81388283EE20503582E1CA1168104C67
          109023984910E0AE810681676A6040506F8E60A106C162A911D4820601A50763
          70FE914A9C2585BE540AE85F0E80197B33B0F4AE44A41408C8056CA1B509F758
          3337FD9BEB5FEF7BFE7DE7F84E8D9AB468C8FD4FB797B7386779FDF03700808B
          749EAB38E8DDD0EA60ECBB201A331FED8F23762762DEAE44CC67ED4EC291BB07
          02C3A090602020D8CB20482110A41A108087231010588EE0E010E08E8172041E
          2050C542508E805383FA20507304A646A0660818040B6C10488D60E147D538EF
          CD0229F44D91E0F71EE09EF2FC7EFAAE749CF8522A46D685615049D087B47EFC
          EC016FEB27FA37D65FE4F9BDFF30FF462DBBB4D49744C3EB747A798B7396D70F
          FF8D3980E6249EE8BBC95514F455C4B85048B8BA1764BF1007C37726C0F01D09
          904BEFB93B07C0885D89403000020168100081801D019023A0D420050804C075
          824A06C1ABE9A01C4126486A70201B748D00B858488E000804EC0860B24A0D64
          868040C0C3440C0290AEC1BBF61C01D708080440A9819A2330330424AE0FCCFF
          B81A2E385C06B3F70D935EFEE4EDA93085829A03FBD7885C03CCD89301A94B7B
          436051E00FB44E5790DA92BCADE56F2B0240C77E1D1B356AD8FC4FCB97B73867
          79FDF0573A800EA4A994EB6FA79DFFFBE899E1987C6F5FC8D9DA1F87EC88C321
          DBE370D8F6781CB6231E09044810603104C81524194720A941D15ECB114029A5
          05E20874B1501C81552C6410A8AEC1587204E33835D08E60123982C96FE5F230
          91ED08C80D505AA06B04325E0CC611388B855C1FB8E0C34A3CFBCD0298BA3B13
          276D4B1111009040402E4015FE24B01D3BBCA754D0BB7F4600C0B27B13B91BC0
          4341DB68CDF82E41E73A5AFA85EB5F4FD6F794FB078CF06FD4EC8C66FA726878
          9D6E2F6F71CEF2FAE1AF004087E052D76A0AFE13C115C1FFEAB3241AD39E89C5
          AC6DFD207B5B7F64E56C531018AA41C0106047309C403082A4520386800181A4
          068E1A815710B02390AE41AD552318422050C344EC0834084CD7C002C14CD535
          00D53528A6D4A04481802030EFBD529CF12AFDF35B9361C2D6C138715B32C909
          0112A502EC0A04043B7FBA0BE0D4C44DA9187B6634920BF89AD66E26A9855E47
          37FD560008A90C6EE493E8A32F8586D7E9F8F216E72CAF1FFE0200B4A2F7147A
          7F8E008091934231F1E6DE98B5B51F073F666E8905F9B5960201390282C150D6
          F678308EC0B882113B559D408340D5080802A728163A6A0404022E165A73040C
          02490D7EA44640A9C1BBEE3582596FE4E344DAE5C76E1A88E3B70C82F15B0613
          08580C8164871B1018506AC030B01C01C1C00EF4530180957B6D7F9E076017F0
          14AD61A4735D8D7EC6FA7BFDDC48BEA7DD3FB020A0A1ED779ABFBCC539CBEB87
          3F03007C134F37FA7E12EDFA87422A5CD0F3FC081CFC401FCCDAAE829F03DE13
          00460E108072052A3518C610D8E1740489603B024E0D3408AC62610AB023706F
          1F9A39826C02410E58A9812708F41C81E508DECEC729B4EB8FDD928C635E4A12
          008CDD3C08C66D1E4420182C1208B88380EB02DE520309F2530260573A8E7A28
          09BB8F0F83A092A08F682D33488DF5DA5AFA770120220074E8D3415F060DAFD3
          F5E52DCE595E3FFC0900F0E3B313E8BBAB28D73F1A561782FD56F7C0F4E76231
          7B877BA09F0A00AC6CD6B6FE601C8105029D1E386B04DC356010141008B863E0
          E81A70B1D04A0DEA81607F1670C78053030681B40F1D5D03AE113008261F1C86
          E328306B29F06B3726621DBD8F21009080208002010D02CB0D080852C0A40556
          6A4020504E40DE4FE900B81B3068414F082A0EFA87ABD4B580D6949F82E4B6D6
          FF360038F71FEEDFA879FBE6FA3268789DAE2F6F71CEF2FAE18F00801F915D49
          BBFE0657898B0B7D90F8E75E98B999825AEFFA4EFD1800B48041C010B05203CB
          11A81A814A0B9C3502AB3E8045CE39026FC542D53590F6A1A911B8170B87C3B8
          57B2B18682BBFAC501387AC300ACD99088350401860181001804DA0D0808C659
          6E4040000C0281C03605010B04CA099CB248C89018717D7F081D25CF127C85D6
          35D0B1CEA27F1B0024DEFD1B376B98F93DDD5FDEE29CE5F5C35300A01DED540B
          29F8DFE7FBF67B2F88C2E447FA4266FDA0B6F45300707EAF1D81020141403B02
          D02040AB58B8D39A216047006E5D83FA20503502EE1AE8FB0CCC0CC198033958
          B3231546BD9880A35E88C72A5235FD9A21202060086C4C027603C6118CDD3C50
          43C04A0BC0B8019D12E0242704B6A7AA22E10E0A7A9603003C1330FAF141D067
          7A24CF047C4FEB9BEA586BD1BF0500DAFDBB65FB356AD1A985BE041A5EA7F3CB
          5B9CB3BC7EE83107C0CFBE8F25DD4596FFEBB0BA5088BFBA2764BC44C1BBAD1F
          07307020FFBBCADA2A30604740E2D4200E748D00282D20E939821D038040A066
          0876E919020502509385C950F2728A638E200D74B110A46BF05A2654BF9C0195
          B4BB973FDB1F2A9EEB0F95CFC791E2814000552F2400810008025043A2948024
          20200D644700E408B8362012089008024A2A2D80C9AA3EC04542992198AA3A06
          8E99807498B43915062FEAC553815C0CFC935EEF7F5B0C00FABB6A7446D4190D
          7DFF8697BCBCC539CBEB870E07D031B8D43596DEDFA28B14BB9F1D81298FC660
          F6CEFA3BB837FD3BDF8B232018D44F0D74D7C0D408D811B8B50F4DB130991D81
          AE11A460F9BE34AC7C250DCBB79353782E0E4B9E8EC1D26762A1ECD97E58FE5C
          7F241020810047B1D811901BD020703802BB3E2069C1A641AA46A01D0181C0AA
          0F6847E028125A6981489CC0AE7428B8351E236AE471611FD09ABBD5014C309F
          4A3FF6BD6F5AD746CDDA35F4FD1B5EEAE52DCE595E3FD40008A20B8C2DFFD150
          BA40FB2E89AA57E8FB3D01A0253502B7F6A13B08D81158AD430302532C74AB11
          EC4EC6E28D03B0F0A9BE58F4541F2C7E2A86210004012C239513081802160808
          02EC08382DB0EA030400969D16E81A81AE0FE8B48040A08B845B7591D0591FD8
          916A4180D20018FB7C32C6CC8A6400F00D42B9CE20FEB500E0DB7DDB85373CEA
          ABE165BFBCC539CBEB8704003ED5E646D25711934231FEDA9E98B151067BDC02
          F4F70680F37B4A0BEA150B25351010881BA85F2CDCCD69C1202CDC4E5078B63F
          E63FD11B47920A9EEC8385A4A2A7FA42313901ED0650DC80010141805303871B
          F0A80F0808805B86C611487D408340BB014A09A45BA00B85AA63E05624A4F7F4
          657D30B82C082878EF26F16C8504F2AF05805F866FA3A66D1AFAFE0D2FFBE52D
          CE595E3F24008C24CBFF43E4B45018707B2F4CDB1483195B94282831732BC1C0
          2340BDE9F7F8DEB8819CED0202F0982CB440C010C8DF9904791BE3700405FB88
          477B60DE633D31FFF15E028202124100080258F4745F141010044A9FD520506E
          80EB036E45C26A03010502A87DC991166C76BA0101811409252DD01010101808
          6C4F8569BBD3B1E281240C1F1D82946E1DA1004E3681FCAB0050EA52B97FC3AB
          E1E578798B7396D70F074E4DBA8973FE3EE7F786B29D5958F16A268EDC359802
          2C1173B6C663C6E6FE0285B4CD7D217D737D3018FD5E8070A4055C28B46708F4
          30D1F09D04826D0938ECD918184A813FEC91EE389CDE73492308027902815EEC
          0640DC80A4050C0286809B1B0005027103CEDA008E566901386B03752FC9EC80
          D30DC824E17803010708744A400E2015276E4EC598D9917C9BF03714C43C1370
          EA0077A8DEF7156AF76FB8DDB7E1E5F9F216E72CAF1F12009E7795B8307B5932
          AC3C518B577C57872BBFAEC1E527AB71F1E7A3F0FC8FCB71C6BB23B1EEC050AE
          B24BD16DC4CE24DA9113306B4B7F0242AC28734B0CC83B814100E194FA8C02DC
          1D1A4EA9EFBD7FC7928E8171040C02490DE271E846FA3D057BF6839190F35024
          0E79380A873D4C10201030047209020282C77A02A7042309024E10586EC01409
          297D70D606D80D388B84EC0618027A764020A041005C20B467078C1B702F124E
          DB9D86B9D7F7C780C2C07F12781FA360EEEA35C03DE4EDFB567EADF45F79C3AB
          E165BFBCC539CBEB8704805B5D652E2CBC3105D67E5F876BBFAFB5B4EEAFB5B8
          FEAF7578E50F63E87D0CAC2538ACF9AE06577C3D1A977C5E257098F96E218E7F
          63388FE442F9ABE958B8270547EC1888430910395BE3AC00CEDC222D441B0A4E
          5980A81FF846D6F7DBD81190083E59CFF4C68CFB2331F3FE70CC7A2002B21F8C
          C09C072331E7A1281CFA70B41B08282D000601A705521B78A21E084083C04E0B
          9E77EB1680B33E600D11694730E6256919D69B1F901B8C9423E0B6214EDE998A
          75CF0EC6D0AA603E3BE0630AE43A0EE65F02007EC63F57FE1B376918FA6978D5
          7F798B7396D70F0900B3C801C0C00BFBC1E2F747C1BA1F6AE18AEF6ABC6A2DEB
          FB5A58475AFF57569D88C041DFD7C2AA6F6A60D989D1B0F0B32A98F74119101C
          60F23BC361DC1B43A07A7F1694BE9C0A945EC0F0ED8964E7E36506805C0481A1
          1F646C8E2507212EC26D6640A4E70658999B6221FDF9DE90F6587748BD2714D2
          EE0D85F4FBC220E3BE70C824082810901B200D79281A08044069010C7FA40710
          0818024069011008D811705A005C1F201040F1530401D52D80524A0908049C16
          58F3030C010D02C7FC00CF0E707D40CD0F6810B8CD0EA8FA809E1FD8960C9377
          A440C2F9DD21B028889F137039A91507F8CF91DCF0931FD0B0FB37BC4EF9F216
          E72CAF1F0E9C3A309476A26351751130E5F91148007073014602002F9FDB52DF
          2BD7A09CC33A72140406E51ABE1A0D4BBFA8C2F99F56E0BC0F4B70F67B2371DA
          BBB938E1CD61E41EB2B1746F1AE4EF1C4479FD00C9F3B3C93D101854378294FE
          620CA43DDB0B531E8DC2C1F786E2E0BB83319994724F08A6D2EFD3EF0D231084
          93230847020166911B2010881B18426E8041C06E40EA038FA922A1AA0F58DD02
          0681232D70D407749150EA032FB8170AAD22A180C06A195A85427603E337EB49
          429D1A4CDE99827937C7F103437930E859DAD57B49703B767C4F39BFEF14DBB1
          5193E60DB97FC3CBFBCB5B9CB3BC7E4800E0936B6E092E0B8682EB5370E5C9D1
          B89602D833C07F0A009EDF5FA13E93E097F76F470389DF71F537A371E537D594
          4A54E1F293A370E99795B8F058395CF84929CEFDB000CF7C2F0F67101C6A5FCB
          C1F487E230666534C6AE0987A4BB5D98F497401C7867100EBACB25B220704F08
          BB014CBB2F0C33489C16281010041E8C6210B01BA0B420DA4E0B040256B700B8
          5B50F0948240D15331CEFA00834017093935B041C010D0B3033C4DA8D302BB3E
          A0D2025524B4D38264AC7E32097B4C0AE362E0710AEAD1F477C0775DBA05BD53
          66F7F71FDAADE1515F0DAF1F7D798B7396D70F09008D5D65418581C5417F8B9B
          D31B2F7AB354767167304B40FF0C00988057D2C14E5A45C14E010F2B29E039E8
          577C5585977F354A827FF9C94A52052E3B5101979DA8C04B4F94E3D22FCA7009
          69D1F1529CB46538464F88C45ECBFD61C09DFE38E08E004C2425DD698360B002
          011837C010A0B440B981FB09020482EC07A340DC80A90F881B708240D2027B76
          C0AE0DC8EC0081404F121A4750AF5B0056DB9020C0620858DD82CD8EBB0DB950
          48AE2075796FBE37E05F14E06B28C03B7906BDA7C8A935EAD0AB7DC3115F0DAF
          1F7D798B7396D70F09007C7105D1C5F55C5855084E786A88ECDEDE02DCFAF5F7
          B4AB5BEFF60EBF9A827EF5B7D5B88A2541AF039E44010F2AE82B711949053BE9
          4B0A78D2255F94C1922F4A71C9E7A5B8F87809057F312E3A568C4BBE2CC189DB
          8762DC4D4110779B1FC6DFEE8F09776810901B708000ACB4E0DE10546E805203
          0B04E15C1B70A40536081404549150D2020D024E092C10A8FA805B5A20206037
          2085425D24DCA0644060B70DCD24A14E0B0802F9B7F5C7B06A2906EE2700C47A
          06BCA7B8F0D730F2DBF0FAA997B7386779FD5003804FAE392FB028E85F59CB06
          E0B26355F5D200B5C3CBBBBDCBEB1D5E829E77780E7A6B971FA57779DEE129E8
          CD0EFF6585043CEFF214F42AE04914F0B090027EE1B1225CF05911CEFFAC102F
          FEB4102F3A5A8017D3AFF39EE907313777C5B8DBBA613C8B41401AF017050282
          000C2210B01B184CA9824E0B04040C012914AA6E814E0B22B51B203D2220E022
          218E78545A863A2DE825DD0201811E24B2D3827ECEFA003B023549288EC07D90
          48DA861B13E56E43531F6008543F9D88FDE746B10BE062E078FA7B38E5D9017C
          B6FF19510D23BF0DAF9F7E798B7396D70F3500F82EC0117491BDDF637C249EB7
          BF58D20093C76B510EEF0C7A63EDAB4CD0CB0EEFDCE529E8AD9D7EE917E52041
          FFB9097ADEE54B28E029E83F2BE6A0070E7813F4177E32122F209DFF713E9EFF
          493ED6ED49857E7FF6C7D85B7CB1FFAD7E1608040292160482B33EA0D302AB48
          A8BB05AA3EC01090B480DD800181740B70F8238E21A2C7AC2122B72221D7076C
          37603902EE16789B1F506E40750BD4FC0041806B0363283DC858D307432AE408
          B127E9EFA1B333E82D51EEEF9BEEFBFFEF515F8D1B0E24FB6FBCBCC539CBEB87
          1A005C640A20DD1E54E282CA3B3365D757BBBC15F4C0C53B097A0A78B3D39BA0
          A7800763EDD54E6F597B097812286BAF82DEB9CB5FFC6901073D48D073C093CE
          FB280FCFFD6804CEFB7004CEFD60044E7B230706DF13817D6FEE82B17FF6C57E
          240B04CA0D8071034904010B04262DB827041408547DC02A126A101004400D11
          A922A1EA16E821225D24F45A1FB0BB0560EA030C011B040A029416A841227103
          BA4848E940E15DFDB1FB84304E03F824E144B7C0D7A2BF9746EDC2DAEABFDEFF
          D1579346CD09509D5B766919DB36A46DD91991ED2677E8D5FEEC76E16DC7B471
          B52969DEA179F7C6CD1BB7973FA95EFCCE806880C46FFCF216E72CAF1F3A9E07
          D082746E4061E07703E6C6C0F22FAA80839EADFDAA6FAAC8DE5701EFF22BBE96
          5C1E2E3F390A68A7076DED81AC3D497679907C9E025E073D687B0FBCCBCF573B
          3D48C0936897070A7A38FFA33CA0A0877349733F1C01E77C900BE7BC3F1CCE7E
          6F189C7D6418CC7A7708E43ED317FADCD405626EE90AB12482001004208E446E
          000402770430088040000402E0D480DC0024DF254542D0DD027203A16A76E0FE
          708FD901E916E8D901490B80D202991FA8373BF0645F4E0BF826231E2292F901
          0101C99A1D30CF1EF0981D2010003901A87A7A00F43F37CA3C2760B9FEBBB044
          EE40CEF6FF1F1BF96DDCA869A3964DDB34F56BD5AD5572FB9EED67774EE87C8D
          6F5AD787FC8775DB193832E0BD80828063A4138105019F04E6071CF6CBF6DBD4
          65A0CF6DEDBB9F7136C1A00FFD1BF8CC3203017E37BF6E78FD9B2F6F71CEF2FA
          A1C301F0FB10DA890E865585E3BCD74A70CDF7AA55A777790A78DAE9BF626BAF
          8B78B4C3CB4EAFF2790E785C729CF379DEE5EBEDF41CF464ED0B2C6B7F1E8902
          5EEFF214F01FE422053D9E4D3AEBC8503C9334FBF0109C75380767BE9B0315DB
          06D0EEEF877D6EF2C1BEB7744102817203B78A1B00CB0D388B84262DB8D35124
          B4D302BB48A88688ECB4809CC0507202AA5B206981A348E871A7A1BAC1C82A12
          963ABB05B61B00F79B8CECC791A5AFE98D21950280FDF477C0CF6174DBFDFFEB
          E7FB356ED48400D4BEA54F8BBE1D633ACEED32B8CB9D14EC4FF90FEDF63205F8
          FB943A9EA060FFA1DB48FF7FD2AF918BC93D274661FFD93D317A6C38D2CF81FE
          0501105814F077F9B323FCDFEE9ADCE5D14EFD3AAE6CE5D732AB71B3C69DE8FF
          C5E43706080DEEE057BEBCC539CBEB871E00E8E22A0BBAC77F64C0BF86AF4FC6
          557FAD7656ED69A757B6DE59C063493E4F3BBC1DF024CEE549B4CB4BC0CB2E6F
          AC3D05FCBC0F7339E8F19C0F86E31C09F8616007FC100E789C79281BA793A6BD
          93C98271AFA562F203E1D8F3C6CED89B20D087D281BE377735206047E09916D8
          6D437204A7AC0FA86E812A12EA42A1DD2D90212229129AFA803544A4BB05054F
          DA771B9AB6A113047A76A0DEDD867C9311DF6158F2501C769F18C600F896FE0E
          EC3480767F0A94FFC473FE28C41B35278BDEAE49CB265D9AB66D1ADC3AB07526
          05FBF9B46BDF420E645B407EC007F4DFF73DFD37FD33B82CE85FC1E52E08AB0E
          811EE3233076660FCCBE6C008C7B60389EBFB7122F3D3C16D71C9B84579E9C8A
          AB8E4EC4050747E3D8078643F245FDB0D7C4480CAD0C4657998BFF1DFF0C2A09
          FA2620D7FF50D794AEF7539A53DBEC8C66BD09365D1B376DDC9AFEBBB8E5D100
          835FF8F216E72CAF1F7A00801F573D83287DBCF7D4EEB8E893320A7EB5D3F30E
          7F896ED32DD1B93CB7E9ACA0A71DDE2AE01D7514F03EE65C5E767990807F3F57
          029EAC3D9EF59E6397A71D9E837E86047C164EA5A09FFA56064E214D7E331D27
          BD9106135E4FC5A1CFF4C25E14FCBDFEA421C06E8040A0D302ED0818027E7691
          508180D302A90F901B101028085820B08B84A63E20F716C810912A12EA7B0B78
          7E401509F5BD050A048E2261BDFA0083C02E123AEA035C17E0F7F80B240DA0E0
          725D436A2A23BF23037F8FA19FC68D9B346E4181DE89822DAC45A71671ADBBB5
          1A7A46D419137C127DAEF4CBF17B8976E877B933114C811A42A240C7EEE323A0
          DFEC1E38E8C2581CB22211ABEFCAC139DBE95A38548B2B8F4EC0ABBF9D0ED7FF
          6D165EF7D79978ED7733E8F7A46FA6E335DF4DA7CF66E0F53FCC84F527A6E265
          EF8DC3D91B8B316FDD604C3AB72FF69E1C85E1F4EF27B030008140F3916F7AD7
          A73BF46C7F1EFD778DE0748180E043E1CF0F3C6C80C1CF78798B7396D70F3D00
          C0EA195CEA7A992703C73D33142FFBAA5CEDF292CB2B6BBFC0A388A7AD3DE7F3
          8E029EB1F623689797A0E77CDEDDDAF32E6F073D4C7D3B13A79026BF45014F41
          3FF18D34E4A01F4F1A772005C61E4CC1E2ADF1184B81DDE3C64ED893206081E0
          E62EE096161837702BBB010101D7078C1B7014092D37A08A846676E03E991D70
          BA01AE0F683710ED3E44A44060170935088A39352008E869C27A8F2463B11B18
          FD52020EBDA92FF0990BB4FEAF92E424619F019D1B51A0EABFD65FF9A26CBD49
          F32667346FDF3C8CF2F58C36216D46511ECE39FB1ADF4CDFC7FD73FDDF0A1819
          F03905FCDF280855B04F08C7B8737A61C6D2381CB17E108EBA2B0B676C2A808B
          DFACC24B3F1C83AB3E9F88EBBF998A577E47FA9644BF5EF7D55458FF15FD9AF5
          356B1A5E65F48DBCC335DF4EC76BBF1718C8E7977F381ECFDF5389B5F70CC5DC
          358320716E5F8CAC0D6318606049E03FE8BFEB58B7217EDB3BC7755ADF36ACED
          44FAEF1F42D08A2477C0FD504E190C0C1A80E078798B7396D70FBD00808FAEBA
          3EA838E86FE9CBE370E167BCDB73C04B11CF0E788F9D5E0A7862ED259FB777FA
          232AE829E0C158FB19EF66E30CDAE5D9DA4BD0AB5D1E9C413F8E827DEC81141C
          732019C7BC36186BF70F829AFD7431EE4DC2C47BE922BDA12341A023A5039D14
          04FED4197ADF6CD2822EE87403FD0902941680332D6008986E819A1D0806F7FA
          80639A50DC40A40C122937604060EA03D22D904942F7FA00B901EB0124FA9164
          0C0192A4051A04551BE2B1ECC938889E18CADD80E3B4FB4FF41FEEDFA895EFAF
          B8E1A769A316142401AD035A67D0AE3EB143EF0E1753B05FED9BE1FB08EDECAF
          0552500514047EC71388BCBB47D68662FF393D3163793CE45F3F182BEECEC089
          CF537AB6BF1417BE371A977E5287CBBF18872B4F4E80552727E0AA13A42F8D26
          E26AD29A13935870C5C9C9B8563445B4EEAB29B85E2440002710943B982140E0
          5F5F717C322C7EAB0EA73E3D12CB6FCEC48C25F1D8734224D25A60405120100C
          BEA4FFFE377CD3BA3ED631B6C38A7611ED26B4E8D8BC0FB9197E228AB7FAC169
          FBF216E72CAF1F7A01006B08FDFE44CF295138636F2E2EF8BC48DA741CF8CE02
          9EB355C7557B0978CEE769A7F7B2CBC3F477543E3FF56D376BAF82FE602AA8A0
          A78027D5A9A0C79A7D0371F4AB4958F54A228C7A251147BD9C88194FF4220074
          2275C0EE04017103377602871B3069818040BB01E84FCE81EB03262D48FC8B01
          013982BBA45B60D506520802A90401FBDE02BB48688340BB01551B5045429316
          30040C08545A208F2493DA80C7109186000C5CDA1D038B82FE4610B899F2EFB6
          9493EBBFD253BF68376CD59CAC7CDBD0B625F4CF2CF249A29C3DDBEFC580BC80
          D7030B033F0D1819F84D6041E03FE8EF937376EC392512072D8AC1DC1B0661F9
          7D1938F639FABBDA5788E7BD5B0E177FC0C7A557E3E2CF6AF09263B5B8545427
          BAF4581D5C766C0C5E767C2C2E232DFF7C1C5EFEF9785CF1C5785CF9C5041630
          141C40C02B481610BE9A220E613DB90316BB0403040600A7100C04FEF5BA2FA7
          8A3B387757054E7864040E5B35107B4F8A82108641610090BEA79FED68B7A17E
          3BE9E7BDBD7DCFF6F35A766D3998D6AB0B2D89B14CC6199C7630F016E72CAF1F
          9E02001DE9F76FF00E5178DB60BCF0D3020E7A38EF235DB597A0E7029E339F77
          14F138E80F296B3F9D77FAB7B338E0613205BDB5CB93C4DA9BA07F6D303883BE
          5A053D72D057BE3C002BF62640F9DE7864E56D8AC55E3777C5A8EBDB63F4F51D
          309ADC00390250690139829BBC80808B84E206CC1091A348C810702B12066332
          43C07203A6486886881C23C51608BA83DB93881804F610915D242499DA001709
          0D08466DE80F7977F5E5E218041504EEA780CED07F9FF26ADCAC71AB66ED9BB9
          DA04B719DE31B6E39CCE099D167619E4739B5F86EF73BC330615051E0B2C0AFC
          9676F7BF5370703A819163C3B0FFB93D31FBEA042C7D280DEA360CC1A9AFE6E3
          D9878AE584E4F33E28C3F33F2CC70B3EAAC00BF9A8F48F4721EBE28FAB70FE27
          5502838547AB71D1D1D1B8F8E86858F2592D5E225250F000025C4E5058415058
          A9A1200EE1046B120B9C405867390402828743D04050A25F73ED60E9A13170F6
          96522CBD311DFBCFEA2985C46E23FD19067F2737F3556041C0077ED9BE5BC9ED
          5C45A9425693164D7C69D9CCDC3443E1B47106DEE29CE5F543C71C80A7CEA29D
          08122FEE03B35F1F0E14F4D29767CD794FF5E729E041AC3D17F0688757BB7C16
          50C0830E78606B4F012FA280E75D1E28E061CC6BC91CF0C0D67EF4BE8140010F
          BCCBB328E08103BE6C0F69771C94924A76F587E29DFDA08854B0BD1FC4DD150A
          11D79E0191D7B507020110088021A041C06E00242DB8C907FA9008046A7E4075
          0BD4FC00A705667EE0763D3BA04000D236BC4BD20248B99BE707EC670FF0EC40
          E6033F363FA09F3D40CA7BACFEB307D80DB04AF4B307CA48F248B267FB43AF99
          61105418F41DDB76B2B9153E033A2FA73C7863607EC011FA3BF986A00CACE04A
          1770E18CABF1ACC8B1A1D0FFC29E90791DADD513A950BB3307261DCC85194746
          C2991F14C2ECF70AE9EF8BDE0F2B9D79B808F491E970CE7B253097445080733F
          2883F33E2887F33FAC800B481A0C405080F92482022C24111460F1A735B0E4D3
          5A2028C0D2CFEAE052D6B131B0ECD8582028C0F2E30205118101B44B00720922
          491B449381C020223080AE2700B904AD69402080EBFE3A930B8D70E557D3E0D2
          C36361CA13F9C0DD8798E9DD216274985A0B2E2696BBFE45AEE7A85FA6EFD3ED
          7B9C31AB79C7E6FD9AB46CE27BBA7416BCC539CBEB87A77000AC6802C0B751E3
          2270D4936938E783E16055ED8F98561DE5F2D62E9F095CC0636B7F8A5D9E827E
          B0587BCEE529E8D52EFFAAB5CB73D0D30E9F8065BBE3B164771C16EFEA8F14F0
          58482AD8110B23B7C760FEB6BE98BFA32FA63DD91DC3AF3903C3AF6D8711D7B5
          4705027203A47AF50172030C0276037D1D69819B23B8DD1F127491503902F769
          4205017204F798D901D52D90B4403902B9DB50DC00C99A2624C948B14080EF2D
          70D4074CB7E0695524AC78A13FA6AEEDC175007E56C03FE882FE27BB302E8AD1
          DF0757C9F9BE01BE8558FD19F36BFA3C7A52380C5E1583058F908BDA9B8313DF
          1C8693DFC9C5C96F93E4A4E45C02739EC7B1E923C9AD59A725C3D9878B908020
          47A79FF35E29B98432242090532827A7204060A780177DC42E6194A74B6020E0
          129272092A7D2020904B18C32E01386D58CE69832375B06B099318089236386B
          09EC14B44BA0C0D7A9C337D3F01A2E26FE6D962A267E301EE76E2F83F29B3230
          7D511CC64EEF810404E960045704FF831CD57B7EE9BE8F100CE6B60E685DD8A2
          738BC4A66D9A06346ED298072CFE70C5446F71CEF2FAE18F00A01D7DB621A43C
          18875C9B8033DFE1229E5DB5E7A0E7021EE7F3DADAF32EAFAAF614F01CF4562E
          FF1AD97AB5D33BACFD000AFA04B6F658BE271E4BF7D0CEE50CFA1DB11CF498AF
          837EC4D63E90BBA537B2866FE985391B7A62F48D9D31ECEAB60A02CA0D601449
          A50506045C1F906E01BB014A0B3C86884CB7E0363FD0DD02E7EC806A1B7A1609
          09026E43440A04BA4868DD5BA0EB03E691643DC90D38EB03EA91640C017E4029
          8100F829C5B977F5C188317287A00AF0A240246B8FAEE220B2F5C1185D1B815C
          2DCFBA6C00E62C1B8003CF8BC1A8DA70FAB32E082808A00B3E0863E675C78C6B
          E3B0F08964AC7D395B9D8DF8D63090D392450204FABB1B81D3DE3140C82717C7
          4028703B429D5C02CE11208843C0790484730908E751EA4050A0F48180F0314B
          5C82030AA37111C140A0A080003610C6EAD48181C0B5044A1DBE108740509868
          15173975102828209043704F1D18080C00DD6A046E3FAEFD7C0A2E3C50C37307
          52480CAFA154A1C80FBB15FB01BDFFB35BBEDFE7DD86F9EDEB3AB8CBED1D7AB4
          3FAF8DAB4D293984DE9462F19832BB03270CFE5F02C15B9CB3BC7EF82300681A
          5C1A348D2EBC7FF69BD70BC7ECC880E98754D05B053C47D59E829EADBD7B016F
          BF2AE0E9A0276B9F881594CF731E5FC6414F014FD6DE043D48D04BC0C7609E0A
          7ACCDD4A41BFB9170EDBDC13866EEA89435EEA81395AFDEE0AC490ABDA60D835
          6D49ED38256010B01B407737A08A84DC36ECEDAC0F10041C20E0B4C0B801CFFA
          00BB01306EC0AD5B4010D020A094C07D888821C01237A0D202FBDE0203028F22
          61C1237DB1E74C79500886578561DFA93D30756102165C9B0AD5770DC169CF16
          E2FCD747E3F28F29683E99808BDFAEC5E9CF1561D51D39306CC540EC3D311AC9
          FE62607120464F0CC3014B7A63D64DF158BE290DF89CC4F16F0DC5F16F92DE18
          661FA14E40E0D393190853C5251010B44BB080F06E21780001E732106C97C069
          035EF061A5C32554E1C53610286DD040F8B45643816B0963141438757014179D
          05465D5C04AE2728974040F86AB2B422AFFE7E3A5E4D00E0D461C527E3F1827D
          1558735F26E65D3B00E3CE8FC44E85EDB1797A736C9ED60C5AA435C796592DF1
          8C616DB1737E27F41BD9F53BFF7CFFF7BB65FB3DEF13DFF99AF6DDDB9FD5CAB7
          650AA70B14477CCCF2FF4B18788B7396D70F7F0400AC7EB40B1D8EA80DC3A287
          9328A73F45018F44BBBCB4E9A46A2F3BBD5B018FAD3DE5F42AE825E07759D65E
          077D5FC8A38097A0E75D9E839E027EE8A61E2AE8377687EC8DDD316B433466BE
          1885991B2231E931B27957B51308845EDD160802921618085820506E4015091D
          69817BB7C097EB037A88888B84CA0D38C68AA54838508A841A045C28D4CF1E50
          4542E723C9EC22A19A26EC2E771B3A8B840C021E22D26981140947DCD70723C7
          876244752896DD9E89E7BC5A8E0B0ED7E0A547C7504E3D5E76C735BC235200AC
          E36A3AF7E3E97DDD8929B0FAD34978F1BED1587BF7301C30270643CA4250B902
          17F69C110149CBFAE0F07B12B16A4F268E7D338734448E519713945F1F0A0A08
          D671EA047A0D04E5124080409A4D506087702601E1AC230A0AAA8EC04028B5D2
          0676098EB4811C82491BAA702141418A8B3A6DD0B504BC94A020C5C563AAB868
          A0B0E2CBF1B0FAAB89B8F6DB2978C5379371E5E713F092F76B71D2B3C370E49F
          1271D0253DA0C7AC20F4AFEC8C6D735A618BD46614F84DB1F5D016E85BD601C3
          27768390B1BE78C688D6D834AD0936496E82CD339A619B21ADB1C388F6D075A4
          CFDFFC0BBB7D1E30C2FF75BF34DF273BF7EFBC9ADC417ED3D64D0328A69C67AE
          FFCF03C15B9CB3BC7EF81300E8429FDFC0F63279550C8CDDAFAC3D07BDDAE5DD
          F279907C9E02DE0AFA3D94CF4BD0CB2ECF053CB2F62AE84D3ECF013F8276F9E1
          5B7A83043DC9ECF22AE0BB53B04763C68B5190FE4224A691529F8FC094E7C271
          F033E118F5A72EE8BAB235430008020C02820081C0E10622AF17107081506A03
          AA5B600F11496DE0E6AE5C24F4480BAC21228600A82711396A03DC2DB0D30270
          9F1D2037E07C2EA17E2419DF5FE0FE2422ED087892F0E93E98F1A79E9CFF63EF
          2951387347012EFD9C6CF3710A8AE30400BD3B7295DDB4DBD81E4B9EFCF514B8
          92FBEBDF92BE998EAB8E4EC2737754E2C87569D87D4C248120902BE69217F79A
          15892957C562F18664394EBDEE8D6CAC3B900D750772E4346506C2B8D73D5C02
          3904050495364C2387C0A9839536A8C2A29536983A82ED12CAB9B82869030341
          A0E0DE71E0C22241C14E1B2E3D3E06979FA03481B4E8C3D130E7D562AC7B3C1B
          D357F5C1EE330231A0A633B6C969892D529A61B3414DA1595A536C33AC050654
          F960C6F2589CF0F8309CB7A70C2F395C87AB3E9B083CB178D16B5538F1895C4C
          2667D4B5B4033623483419DC84A1002DB39B63DBA16DB0436EFB7FFA1674FD6B
          6071C0F1805CFFFD5D127DFED436B46D55B3339AF56CDC945205BE154A1512CD
          FBFF140CBCC539CBEB873F0180A6A44AB2A327A2274640D9862495CFCB2ECF05
          BC248F369D0A7893CB17EB80D7D61E389FCFDBA602DEDAE549DADA03EDF23AE8
          D52E9FFE62244AD053C0A73E1F0E1CF4C9CF8651E087E1A0674271E03321D8F7
          6E7F74AD6FC3108060720221578B1BE094408380EB03A648A8EA03020212BB01
          56EF3F911BE06E81D3116837608140750B1C69811304323FE0782499A35068A7
          05EADC02AB3E6017091904F94FF482BC477B639FB99194F70761D6CA043CFFDD
          0ACAA3D52EC939345B65DE114DBB6D15D96306816EAF81951BEB561A8FE0F2A0
          CDCA8F27E2EC0D259072511C46D6C8ADC71830929C41B90BFBCC89C261F70FC0
          B2EDA950F54A3A3FDE1D6B0EF0D1EA048603040602C21805042097A080F086AA
          25B8B984B7F3C02E2E16386A09964BE06E031A97C05010207C4469C3C704848F
          551BF2820F2A71DE3BA578D66B453871D3302CBC6320F6BF281CBB949E012DB2
          9AD105DB8882BD09B6CE68891D86B741BFCA8E183B2F028B6E190C676E2BC445
          8746E3AAE393F01AFAD959571110D5A422CF214CA1DF4FC76B7F98295AF9E944
          9CB7AB1CF3AE4EC2A82901D0A9A09D00A5593A03A1313984E678C6F076E857EC
          8B81E5014040E0FB16F675EAD7E9B2965D5A66346DD334B449F3261D28FC795E
          FB7FA6B3E019E3465E3FFC0900B0BAD3774F06970743F66DFDB07ABF5BD05BBB
          3C053D48D0B3B5E78077ECF292CFD30E6F5B7BDAE529E8259797A08FE6A0070E
          7ADAE925E879974FA5804F792E4C05FDB3A12041FF7408263D1582894F05E380
          275D18FB6010057D7B0C5ADF0AD809045F256E408140D5060404522474AB0FC8
          EC80B35BA08A84371908D820B08A848EFA803552AC41401050771B8A1BB09F44
          946139820850F716684760EA03EC061EA375B8BB27C45C104DB9BF4BEEA01B4D
          3BDDC59F28CBCC7699FBF0A6B2CE05B4E5C775CF5D57D1B9A5C6957353353783
          360C022E8E71FBEC8AE39371DECE0A2CBB291393CE55C5C3C0C2400C2A0DC21E
          D3C3216905A5080F2562D14BC958C93038902940609750FB5A16D41A201CB4D2
          06E51254DA4029A20102B904E936E439BA0D05E4100AF1ECF78A70CE07E40EDE
          2FC139878B71C681913871E7301CF3520E943F9A828356F4C4B0C97EE85BD101
          DB0E6B49569D0291EC7CC711ED20B0DA07A368E71FB4B42796DE9982D337E5E1
          05072B71C5F109B8F69B2940C22BBE9E4C29922A1E1A3120D79C98EC9843E014
          8AD6496A08DC51988E977F3C1EE6EE2AC1517765E0C0453D3965409FA2F6D83C
          B32936A394A165460B683BA40DFA8CEC8CFE25DDFEE55FD0ED73BF2CDF4D9DE3
          3AAD691BDC76548BCE2D06346BD72C8C30C0AD46270CFEE340F016E72CAF1FFE
          C81C80511BD252DA957E8839371ACA774B2E2FFDF9925D12F4D29BA7A007DEE5
          29E881F379AEDAB328E045B4CB83ECF224DAE541073C686B0F69CF4702053DEF
          F240010F834914F040012F4A7A2A18129F7401053D243C1104F1ACC703A1DFA3
          811049BB77E0BA96A021202237003A2D8030551F80F06BCE90D9017204323BA0
          D202353FC0B3035C28EC7593C7EC00A5060401C7EC80E3D9039EB30304019676
          0322333B406EC03AB780C78A0902FC0012991D48B9B13BF49C1D0181452E88AC
          0D85BC9B06C1D96F17C3051F711FBE827367E9BF73AB8DF2650281EEB71F1F2B
          3D76E9AF931802AAA72EBB9DF4D2090296AEF956F5D24D1F7DC6B38530E28A64
          889BDD1B82B98B501800A1B5C1D0EBCC4848BEBA2FE43D99447FCFA930EAB574
          A87A2D03AAF66740F5FE4CE043606A1808AF71DA900D630EE4C0D8834380A0C0
          2E816B09DC7120200C87A987C8191CCE8369F43EE5F55CA8DD9E05E5CFA440C1
          830321E3BABED0EB5CFAFFADED0C5D4ACE8036435B42E3E4C6D03AAB25F85774
          86E8E98140BB3F645DD90F463F9A05B37717C2856F57C2D2A375B0E2C47858F9
          D50479BFFC0B336F40BF26F1CCC18ACF27C8BA3845A0B4661074DB51ADD94982
          E75793E1CA6FA7C2FA6FA6C14A4A1716BC590D939F1B01D96BFA41CC3961105C
          EB0BAD729A43D3D4C65C4C843639ADA0635E07E85AD8057CF3BA7EE137C4F715
          DFD4AEF7B7EFDE7E4E9BC0D6052D3A368F959B98DCDB8CFF9174C133C68DBC7E
          F8331C00AB806CE33BA1D5A138E2E97E58B2C7D9AA8BA19DBEAF14F1AC02DE16
          376BAF7779097ACAE76997A71DDE61ED259F57411FAAAC3DEFF224B3CBB324E8
          1F0FC43852FFC703B0DF63FED8EF517F8C2545DF4E166D5D1B86003B01526BA9
          0B048B232037E028128A23E0FAC075C60D586901485AC093848E6E81D407C80D
          C4AA21224A0B1CF581DB544A608A8432526CD202CF6E819C5B60DF69C8A71865
          3F1885496BA3306A7218EDC4411039260C0BEE4AC6D96F15CA0EA9A6F55421ED
          A28F2A41DC802E9C49C14CA7045224FB623C5FE0DC4F975D4FDC00EF725C2824
          27C000603760C4A9C135DFCEC035C726E382033538E6DEE19075E900EC3E3612
          FDF30330A82410A3E9BF2B9E76DB8CDBFA63FEF303A1ECE554241828ED4BC7AA
          7D1958B59F1C024980400E61EC1BE40E74A761CC6B3958B9350D473C9480C9D7
          F682BE0B4330686217F4293D03DBE7B6A15DB5193649694C7937FD9DD5758598
          F3C8EDADEC8545770EC6495B72F1EC03C578FEA10A5CF8F168BCE4782D703D64
          E9F13AF9D92FF994DC909E4854ED453DAAAC651510B55BA2356248906B92B5B2
          3A0C2C4EA518A0A6FDC80E622D3909D68A63E371C9911A9CBBA714CAEE48C5E4
          A5BD30725200B6CB6D8D4D539A60B394A6D822B339B61BDE167C4676FA976F7E
          9793DD46F81DEA96E3B7B9EBA02E77B48F3E63168F293769DEB833C5A6B96781
          41F0BBC1C05B9CB3BC7EF833011044DF3F19441769E29ADE58B8C7F4E7FB2057
          EEB5B507CFA05701AFF2F98C1774114F17F0AC7C5E825E021E9C419FF0840B69
          97978097A07F2C004812F0B18F76C39847BA615FD6C37ED8E31E3F745D7506F8
          AF6D4920200904480400475A6015091D69810C11714AC06EC04E0BDC8B841A04
          BA48680F11C5914CB7808B84A63EA020A06E32321048B957DC805524CCB83F02
          FB2F8DC4D0D1A162C3A3C78743C923A96297674B0FBE508672B888C655751EC4
          B9F0C34A9CFFB16AAB2DFE74B414CA3808F882A70B1DECB699B35DC629C114E4
          5DDFA4044EF11D7A3C83CFDFAFFA74129EB77B14B71431E1AC3E183032901FE4
          8121A3282D991A0EFD16F5C0E4EB08F62F0EC4F2FDA958B13F0D471DC8C0EA37
          480733A0F2D5741CFE783C26AC8BC2BE978462C4D9DDB06B757B6C37A235B64C
          A7DD339972EBD4C6F2FB886994465DD61D87DC1887554F65E0F457F2E19C774A
          F0BC23655220E4F62103CF124F22D23BFFECBAADA8660D5804C4C5476BAC4124
          7B1889E06043426A2802080D0725358B600061DA8F6A2D55D7458F3303771E96
          1D1D87F3DFAEC6A92FE6E1C81B9390DC01B61FD1061B2737022E264A678180D6
          21F70CF4C9EFF40F4A158E07E605BC4EEEE0914E311D2F217790CFCF3BD0B1CA
          AFDFDC19788B7396D70F7F26009AD3F7AB5DC541DF779F1181B99BFB4A7FDE04
          3C4B5B7BAB6A6F8A788EAA3D5B7B0A782EE271012F547679B2F698F8A4043DDB
          7B2BE8FBABA0A79D5E053D053C48D053C0F7D1EAFD902FF67AA82BF6BCBF2B86
          DCD89E00D002590102010D822B5B09045C57B601871B2039DC8047915040E0EC
          16283700BDB51B30B501E508FCB0BF7AF680A348A80B85EE6E408A8469F79123
          B83B0C7BCE8D405769B0F4FBFB9FD7032B3766C0947754418D8B69B30E1570EF
          1DCF3E522415F579EFCB882E0507B901DD4EE38B5F5DEC0201AB8FCE17AFBA70
          3504546D80C76A951BD077E3794839042E921110B8A538EB8562CC5D35485C41
          6071100416B23308C28871A1987039FDDD3F91403F4B1FEC75890BC3E67603BF
          F11DB1CD8816D82C95F2E6E4A6D89C77C7ECA6D8B9B41DF698EB828C6B63B1F8
          E1C13861D7303CEBDD229CFB41A9ADF74B611EBD4BC740750D542B91C49D0306
          20CF18F0E091E922705B51C90310473D00C19D0501849A3FD08349220604B907
          6E3F2A401C5712382830D88060307CA9B492EF8A3C39112F3F3E1ECFDD578EB5
          0F67411201D2A7B43D398266E20CB8DDC885CB7643DB40FBDC33FEE933B23377
          164E060CF5DFEB33A0F375EDC2DBD5346BD72CBA71D3C6671002F87907CEAE82
          D12F7E79C6B891D70F7F2600F8FB81F4FE5648450824FF85FEF2B7729BAE0766
          D9557BC87054EDD52EAF0B78AA6ACFB9BC0AF8A7B4AD57D69E825E025E767813
          F03AE86997F75341FF901F70C04BD03F48414FEAF14017ECAE157E6B27F05FD7
          0ABB5DD15C206081C07604C08E20F8CA36CEB4C02A14AADA40BDB4007BDCA03A
          050402EF771B320448AA3EE0D636141038D20229120EB83E0C23A7856150A14B
          0E08E5DEFCA81D196C99A50FCFD5F529D26A531575AEA46B3700CA0DD8AD34BE
          F0790C57ED7CDC25B0DC00F2C5CA6EC06A179E707409F404DDD50E1078A6080C
          82EBFF36531EF0B1FC83F178E64B25307CF560EC3BB53B868F0AE5C944F42FF3
          C596592DB0C9A0C6C87971BBE1ADB063695B744DEA8AF1CBA231F7EE04AC7831
          0D27ED1F8E7C2FC2591F16E199EF1791C32910C0CD3A54283F9F9E3C548346BA
          8DA8068E4C3B5164CD191848D88010C920D285CE36234B434200A15B8EF38D8B
          F8C40042DDEC4490D06B49502558582EC2E1206C1761D20C022E0161F5D79364
          4E61E191D1386D733E16DE32187BCE76A14FF119D86E586B6C96D114B8B3D092
          D205EE2CF81675C5C032FF7F0516041CEB96E5B7891F8FD6DABFD5300242043F
          958930C09D0567FDE067C3C05B9CB3BC7EF80B00D086DE1F719504FDB3EFA228
          0AFC68CCA07C9E039E25053CCEE729E039E83997B7F3790EFA60D9E155C0F32E
          4F3B9FD9E555C0D30E6F82BE9BDAE51D014F829E14E81CF412F8F7FB88A2459D
          31F2EECE1070751BF45BD35C20D04D43C07F9D05022E12DA6901892160B50DAF
          6ECB4542490B22ADFA805BB7808B849216B0AC2711DD4C102010709150EA038E
          27111910300492EE0882D8D521183E2194823F48867D526947ACDC938EB5AFAB
          3E3C0FE57065DD0CE24C2310CC3864B901BE7907E752309C4B41C017BDD90579
          B0862E622E10EA1DCDD12EB452828956157C9D0302C60DD4038043F2108FBFCD
          A214623A5EF2CE189CF468BEDC56CC4346BEA53E18312700075DC96DCC442CDB
          9882752FE7C87D08530FE7E1D47747203B1B9E34E4F163861B4BB70EAD516419
          34D2730566B640B51265C6C09A445473060A129C2299A9440184C04101428D2C
          DB03490610EACE4705099E56B42616B583707711CA4968172129860508CB4598
          34638C0062F9176371C54982EF571370F18735387B57218E7A2003072DED0511
          5302B00B398496D9CD943BC8507307DC59E856EC0BDD0AFCBEF0CBF1DDE193D4
          F9C676E16D27B6F26D99D1EC8C66110403D359F8597307DEE29CE5F5C35F0000
          7E9F44EFDF474EA55DFDE1284C7D41EDF4C9B4D3D32E2F6DBA4114F06AA777E6
          F312F4E0B4F6CE5D5E5B7B30B65E05BDDEE94DC03FD005EC8027DDD719A31C8A
          BCB733B86EE880BE04003F0200CBE906485224AC5F1FB08B8476DBD031444432
          4542FBD903767DC0E106E491646E43440C823BFC31FECF81D86B510884D48448
          F0779F168ED9F7C6A314D5F6A763D5FE0C6EB701F7DED5208EEAB74F2610704B
          4D0FDC80B801BAF8F9A2772F101204E8029676A1BE380D044C4AC05570E306AC
          02A1B40BB940581F005C2034BF5ECFCFF63B3601961FADA31CB806E71FAEC094
          EB6330A8827E96C91158B62103EB5E1F026378B2504F178E3D684F19F2CF2373
          047C4F82DD3614B763E60926BDA900A1C6913520040E0E40100C9D80103828F7
          6039083399E8D5413800C1703069867210EA66277D6BB40204C1D53808030886
          AD720F0E407C6A0382E1B0E433966AD92EFB925C024161F1C7B530EF60194E78
          61180EBB2E1EB9E0E91AD35526151906CD539B01BB294A151808E09BDFE52BBF
          E1BE6FFAA6777DB443AF0EE7B6F4699944B1CD20E0548127134F09026F71CEF2
          FAE12F0440B0ABD4F551C8A8608CBD9202FF793D90A3AC3D7854EDD1AADA3F16
          C8D61E24E83D77790EFA87259707B6F562EDB5BDEFF180BDCB53908333E0BD08
          C26EEF8CBE6B5B12049A592070B80108A0EFDCEA0324551F101080ED065491D0
          511FC0A8EB3AF02DC7C60D38EA033244244542B77B0B1802B7FB61EC8D011835
          2F04832B83817BFCBDCF8DC4218FC563C9CB83B1F495142C7B25152B5E4DC3AA
          7DE9DC62E37EBBF4DA3978AC9440DC409E1AC5A58B9E2F742910922556F7F4EB
          2E81B8013562CBF3F68E0221BB016E8539260827E90942BEBB4E021E38E81906
          6BBF9C8CCB3E19834BDE27EB7C8802E575FAFF7C6518CCDA938D337667E2B43D
          995840BB7DE4C430EC312E0267EE2DE05D1926BE918BD5FBB270D4BE0CE49F85
          E7076A6486201B6B65D2909D8E9A3614405890D080D0E063390121F72A10209C
          73069683203120C83DC8FA284028F7A02021EE411C8435A97858BB07921B204E
          91622848684090B8186BA518E6CE489D622840D890B0520C6EDF1EA7BF93CFEB
          70D1273578C1A10A9CB16B2496DC9D8CA9ABFA608FD92E3823BF35364E6924DD
          052E26B61DDA1A3BE6B5C72EF93E5FF96675DD724644BB69941E04538CF32111
          FCB8A866A47A10F016E72CAF1FFE8C3900A7F804A1B50402E87E6128243E1E02
          894F93B57FCAE5D69BD7F93C70D093BD070A7A2EE041DF87BBF12E2FA25D1E74
          D08B7A3CC0EA023DEEEF0214F05A12F422DEE123E5BD935745DD47EFF7F840B7
          2BDB41D7D54D48CD80400094120081000804E07F450B2E14024140442050B303
          EBEDD9010502C7ECC0B52C353F402090D981687603CED901F3DC819B659A9041
          00B1B77585BED7F943D8D410E0516A5EB3D84BBAC390E7E261E4EE2428D83308
          8AF60C86E2BDC950FA720A94BF920AA30802DC6BAF113790CD37EF485F5D0FD9
          005DF43C6D077481834E09E45E7EBA68E51EFE0B3EAC848B3F1AC53B15D0CEC4
          3B92DCABCF2DB265645105023C53CFE980BABB0EAEF872325CFEE93858746414
          5CF44E099C7B70249C49C13E7D57264CDD99AEB4839566691A7D36F68514E87F
          4E3444D686C1F9078AF8D838587EA21A2EFCB81CA6BF3D1246EFCB81F297D3A0
          F2D534EBE7327304CE590223FE793524E4E71E737008A7442286830604B98861
          3267402E42D68500411238880810402986AC1543935C84AC9976107CC7A388D2
          2A2040B0AB12690721E2756571DD65CE9112FDBC845276102202843C3781C5EB
          CEE21483E0202238A8E728B0E42E49255DA854CF53F874B4887F3DFFC32A38FF
          9D0A98B071180CBF3101FA5F14099D4BCE909983C6831B43B3F4A64030F86797
          5C9F4FDAF76ABFA471F3C60C818E24BE9DD9DCB464BD9CF1ED94D70F7FA10360
          25D305FD8FB0712194FF8662FC93BA88A702DEAEDA9B569DD9E525E079A7F795
          5DBEE783C6DA5BBB3C07BDB79D5DA482DCFB772CF9FEFECE18727327ECB2B229
          765D4D5AD354BB01118380DC807604766DC02A123ADC805524E49440A505EA6E
          43531B90FA80DB23C91C45C25B7CB0C7CA6E183236185D452E0C1D1D8CF1EB7B
          C2D02DF13862D70051FEAE241CB97B2016EE1984C57B079323480676031430B2
          83EADEBA8CE3B28DE68B5EDDC64B2901ED7A768190DD808CD8F205A9DC00EF48
          B40BA902E1684909C80DF0433BF0924F6AF1E2239538EF0DFA67F70DC7E9BB29
          5FDF9E8613B7260309276D4BC1C9DB52E9B3549CC2DA918614F42C0E7C14ED4A
          C7892FA560E285DDE50C8073F78DC4753FD4CAE1B1EBF82CC9EF6A71D9896A3C
          FFA3721CFB5A2E96BF924EE98E408E7E4D7A957ECE7D6924354FA0C58010E7A0
          DC83ED2064349920210EE2204BBB085A17E52044E2204C9A616E6A72B808E520
          C83DA81A8433CDB0530C6B7251BB08670D82530D4E31549AC1A9985B9A61A718
          1F70B1D6FDA6A8F30512CA4178A619A68BC1758745C7B87B518D730E94E0E827
          333165756FF41DD5119BA6378656392DA06B5E97CFDB85B73BAF7193466114EB
          FC0834760326259097B7386779FDF05700A013A5019BF80EB31ECB5CD8EF5153
          C4D36D3AA7B5E77C9E825D55EDBB58453CB7029E09E29F13E05E3E3732DF47DC
          E5835D56B7C42EAB9AD0BB0681123B02B7FA800708C811D8F5017B88C8CC0EA8
          4122354464D202BB5BC08E8087887A5CEF83910BFCD155A5823F6212A547B7F6
          C2213BE260E88E381CB63D1E87EF48C0DC9D0998B72B5120406E00D90D94EC4D
          96B48053020E8A6AA90D2808881BA08B9B2F6ABE90F9E2E50B972F52B6B6E206
          F4F090D8D7F748474A71EEA1623CEB20FDD9BD4360F2CE0C9CB03515C76E1A24
          67139A538A39F019001CFCA2ED04010A7E2704A6EC48E5DDDF02C0040700E639
          0060C4674BAEFFA10ED77C538B4B8E8FC2B3DE2BA41D3E87009046B04B41FE59
          F99DDC0FA541920A09202A744AC462401848708AC48347BC263624342048D6A8
          32AF9595662848E83A8402C429D20C678A216906C94E3164ADA54869A7199C8E
          995A84478AA1012175083BCD9014C34042B53A9524C51007A701A1530C1E055F
          7074148E797608762A682F5D84B6C35A63D7EC2EAF376FDFBC90623D82C43305
          0C8166247102DEE29CE5F5C35F01003EC17626DBDAF0D9C1D8FBAE0069D589B5
          B70A783AE829D855D04BC0AB229E47E01AFDDC003F95ECEF7DD0FFAAF6D87965
          630D0125064057ED06FC9C207014098D23702F129A6E415B1924D26E408A84F6
          34A1B801885EEF83617303D0551E8CC1A52E8C3E330C931FEC8DD93BFA61F6B6
          FE90B3AD3F0ED91687430902C376C463EE0E72033B138D1BA09440B9010E0A0E
          06A71BE00B9C2FEA71BCC3D1EE3649EF66D3DEA28BF44DD21B2360FAEB04867D
          7461EFCEC27114B863B724631D05BBFBE9C47C44F9202BF8276C25D19F9BA01D
          807101E2049C10D8AE006020F05300706A3D1F342B29C268BCE89372D975ABF7
          67110452C9010D161754B497D3A1C1F4F3331808842C0283AA93D88060F76001
          42D6C738084931A4A06A3B08E5A20410076C40D875082720DC1D84A78B98FC96
          BAD7C1B888FA85CA3C0D0847A1D272114E07C152454A058812A9499C7D88D28E
          77E8BBB7E8CFBF9687335F198A33F6E69043CBC2C95B3370E8D5B1D0B1A01D36
          CBA0EBB9C0E75FED22DAADA1708FA3786727C053865C209449436F71CEF2FAE1
          AF00001F1E924D00F892ABDADDAF0D50453C95CBEBE29DEACD7BECF2BF51807B
          97F53DA701B776401F4A037C5635263511110CC0B8012B2DB0DC400B06810C12
          79A405DE8B84A65BA09E44849137100C56FB40C8F4400C2A71A9BBEC164662CA
          137D316B7B3FCCDA2A826C7ACFD9DA1F190443B7DB6E8021406E806B03261824
          084C8170145FD49433CB4D39143875AF6662DDCB1958B73B1D6B76A4E2E8CD83
          B1FAA58150BD3109AB5F1CA08E1F33A712ABE0E7C34809000335009C10502020
          014140B901CB092800680800B9000D80B45F0400A51AE0F4809DC1EA6F6B70C9
          E79538E7FD628159C52B193872D720601016EC6147C4A911692FAF855A0F552F
          2140BCACD64641C2018897DD01C170F04833DC0041EBA92161A7180C885A478A
          C177413AD20C60F8BA773214203424B4833805200ED929C6F4B7496FD0AF0FE6
          E2F4FDC371DA2B4370EAEE6C98BA2B03A7904B9B42291943D7022E39AE495BD2
          A0CF5C97740C3A8FEC849D133BBF40A63F87E23D861448E2C7A34B3DC05B9CB3
          BC7EF82B00C00AA51DEE09575930462C09C61EF74BE07311AFBEB5F70CD053E8
          B7FC3EE2AE4ED20D6017E08000704A60A5050602DA0D7091D0B801BB5BA05302
          050270B8010B04E1D7B5C3D0E53EE81A1704AE6295EFC7AE88C6B46763306B9B
          15FC98B92516CCAFC90D0804861004D80DA8946000484AB08782405FF4B21BEE
          A60B7DC7602CDB3608CA362761D9C60158F6623C963F1F27729C2F007CE29075
          EC989C3F48A23FAF21200EA08E8F2567087838010500760406029E4E20054C3A
          309501B03105075CF0F30070C5F7EA78793E667E8D6834FD9E4F9A1E8DCB4F52
          FEFB6939EF9CC0AE208F7ED6E1EC8CB84E424054EE4839A4024E97B86EA26B27
          EC98440C08ED202CF7E0090872102ABD7000E2550B0E7C5F83AE413801E14831
          1C0E42E0601C84DDC9100731413B340306EE8C4C246736F1B5613069DF109CC8
          CF6BDC958913775050D37A4EDAC6927586C9F4AEDC16A75C4AC6714DD9960603
          16870A007C0800BE695D0F346EDA7814057C322992C4371E7167E03F028056A4
          B3E882FF21644A3046DFD1D52AE2F1508E33308DFE930088BAAF1306DED0CE1D
          002B1B8338012704563B20B0463A05C60D28101837B04E202093842E8280D406
          C80D84100082177641578D8BEFE187D0EA608CBFAE07666E8A750B7E4F00B0DC
          2040E9C0B01D09C0177EEED604CCDB148FF91BE370E4F3FDB1E099582C7C3A86
          9F1B288F0CE37307F549436E670BB89D3DA81D803A8454894F23E6834805023A
          155020D010D83C083408040202020D0081005FA07271D2CE440018BF31F92701
          7005CB0E7AD0C7CCCB11F3462BBFD1C7CC9FAC82A55F902BA07C79CCC1A114D8
          29E4901254AAB493819008E294945B123088141C6C401010580C08E3A6144C6D
          40282938941214D869498AE1915E388B946E806038E8344300C10EE26036D412
          10B8CE51B78F40F13239B5BD993886027D0CD75DB624C338BDBEB2C6947679A4
          5C5283B1522E725BC671B1266F4B85844521D8349DAEE5824EE897D1F55D02C0
          340AF8E1A4BE247F12D7029A788B7396D70F7F25005803C905ECE1F3E322AEF4
          23EBFD9F0CF0FA727E1F490ABDAD03057A330B02F42E003032454203035F5D24
          F4BD423B82B5EE23C5246E1B2A377015696D5B0C9AEB4BF9BE043F464E0D8541
          F7F4AE17F846995BFA41E6D658CC54BFC6ACCD04898DB198FD420C0E79AE0F0E
          7DBA0F0C7BBC37F22943F2B830F524E1FAE70A58270D3920A0400015CF999388
          9513A822A7E00001D4901B907AC04B9212904C4A3088050E374017A87603E204
          44F6054A17E43827005E2500FCB5D66D876771B0AFFE96029DF54D35ACE480A7
          609780FF5A4E9CC6E52C75002DF039947C102DBF2FF8AC4CF2E8AA577370C48E
          81EC94406A27E298946B1ABE539C93110142402180303290A0774AB19483B052
          0C0309050A5D83E034C39162909483488132020443A25C434240F14ABA4C738E
          DA910AD5B43ED5B46E35B4AEB5948E19D02AB73550D6D76D8D2DD00A08AC222C
          B92D07083400B6A642FC2272003600DE2300CCA3802F2525924248F260536F71
          CEF2FAE12F9C0370AA13E95A5791EB5FA1E7B8209200C041F8BF20820044DCDD
          19BA51DEDE79651352E37AD28E40D465B5A4075C23E04261FDF901551F808075
          A4F50482CBDB41C0F46E1058EC8290F26018BC2806F25E1C0CC3762740D696FE
          A0777B9104FEA658C8D8180319CFF7818CA77A41E6133D21EBD1EE90FD50B43A
          4F80348C7E3DFC91EEEA3C81C7E409C290F7B8E34C0175F8A875A6003F4598CF
          15201040D933FDF8DC41395780DC003B01913E921CC8110081000402244E0794
          B82E900474918AC80DF0452AA20B544469011707B5649782C974B18FDB900C04
          00081B150C735F190964F37987070A7A584DC12E01FF35AB4A74F9572C39629E
          C4C14E9213A72BE0D22F495F94C3D22FF9005AADCF4B612969F1B13298FB4121
          90B586E23D6990BB339140900039DBE280DC13FD9A25700082032827652B97A5
          E0C00E424460D04AE2BA83881D8411CF6810181C1A0C45BB0910AC9D83A184D2
          B1525AA3F24D4950B12191D6790054BF40EB4B6BCCEB2B6ECBB9BE2F99F55592
          35D6EB6BD6984060AD33AFB1ACB3725D5C7B8149B4F6F18B428052002000806F
          46D70F0800F329E04793380D0827F16CC02F05C0AF7600FCB8B0C9C125AECF82
          29EF8DBCDD07C805D4DB998D74607AFD8EF55B7FCF2EC075637BDAED9B8A0B90
          A097DDDFA4058EF4401C4153A911B8D507AC2221BB0102C13A72044BDA63E0F8
          00DAF529DF27F733746D3CCE7FBF18177E5E0EB38FE49345CCC6615B13318376
          F7F40DA4E7FB60DA23D198F66024A4F36DC072E86884394BC07A70283F18C43C
          469C1F1536E2B17AC790C348E504CC5384F59902E6046273F8A8751CB97603EA
          387206815518542981290E9A9D8A2F52E306D0D855E304F405AA7728B2B41B06
          63827600E7BC928FABC9E25BB65EEFF22BBEA29D9E7678D9E955D023053D1F35
          8F14F472EA341F37AF8F9A0775086D69BD93A7171CE3D3A78BE0DC0F0B70C6BB
          C3C97667D34E3E98DCC000CCDEDA9FD2294EA9FA595D1691D457548D459CC30E
          8683A45ACA3D68590E621701821C8388D38CEDE41E4823E9EFB2605322166D48
          80127254A5CFC7D31A73ED459FF24CBF576E4B20EB4CB9F41A5B69975A5FE506
          C4098CB30BB0BCCEBA089BE2967A718D80D79BE14B00703A800F09008B29E0C7
          90D2495124EE0634F716E72CAF1FFE1B006045511AB089208061970440E40314
          7CA780C07F1A00ACB0DB3A61D72B5431F0D400B020C04EC0AE0F388688FC545A
          00DD2EEA8081354132CFDF676A2496DE31182F3C5C88979D2CC74B4F94D34E56
          4E176F394ED8331C1356F5C67E574461CAFD61E61C0175FCB83C0B205C9E13E8
          71C4983C34949F15683F2F500E1D351090D3875902019281804E09ECC347ADBA
          803E8E9C2E507603920E785CA42A25B02F5073919EFA0225089045750260CECB
          796CF341ACBD097863ED75C0AB9D5E05FC520A7873D4FC62097A0EF812B08E9A
          F73C795A1D420B177C924FEFF938EFC37C9C75381727BC9923F97BEE8E24CCDE
          12CFCE4BD22DEEB62830283118480208720E0207D10E557F19B28D2041FFFCB0
          CD71387C631CE6BED01FF3691D0B9E8DC5A267FAD1FAF693F525A785650458B5
          BE0AB0CEF555B5970156EDC54AB90802B4C650B7C9517BE1F535526B0C56DAC5
          72404000B02505E2EA03E0120AF871A44C52F47F03003C13B08020F0B5AB3A18
          C2560560D483147C0F74A4007407C17F030091777746FFABDB50F037F102807A
          3090EFEDD9010D822B482B5B60B7733A436055103F5D17E3E7F6C0299B87E0E2
          63A5B8F404ED5EBC837DA17630BEB02F7EBF04B3D60EC0FEEBF81981D65381E4
          F8718FE704DAE708A8E3C5AC07867A3E34344F1D31C64F0FB6EB02DA09143DA5
          0E1671D605CAE822755EA8B45B714AE02810BAB709E5026527A0DC80DB2E655D
          A05BD5D0D0A4EDC938E6C5419870BE02C0D97B47E08A6FC8DA9BA0A71CDECB2E
          4FD65E073D07BC0A7A6B97A7A0070978923A79DAFD20DA733FCA037526A53A7D
          9AC5E752CE3E3C14A7BC35046BF667924D1F8443B60EC08CCDFD90EB2DA6FEA2
          A100590400D116D24BFD30871CDA90E76370280134F7497E045A1FCC278D7C82
          01EBB6B6ECB42CC01AC8B22A0D649F8F57EBABD778B4B5BED61A5B45581B026E
          209022AC6727C68060C29664885B580F004B29E027680074277127E03F0A0096
          2FE9CFAE52D73F5D35C1187A890B236EED86910FF860D443048107150CFE1B00
          88BA97D3808E14DC520C7400C0F3DDD321D03B43600D69790BF49BE18B41652E
          F0CF0BC08117F7C6B96FE4E12512F80ECB7ABC04F89D2F68DED5C6EF4A97C786
          AB4787CB41A37CBEA03C1E8C2160DC808100B9013E63D0718E807E7230891F1A
          2A7501FB11E28EE2A0B950D5C1220A02FDDC0E1E355D022E0EBA43C0CD0970CE
          6AECAABA40758780357E8B7D81F28539E6050640B400E0CC3DB9B8ECAB4ACEE7
          AD8057BBBC920E7A6B7D1690E67FC6723B6E1E2EA480BFE063EBB87975102D1F
          39AF021ECEF96038CE5107D1CA1175D661B47C62D5A11C98F64E368E3B988DA5
          7B5330676B0266EDA4C0DF4500D8DE8F52B27E90F95C5FCC7ABA0F663FDE1B87
          90BB1A46B201CBEBEBB9B6EE273759EB6BADADBDBE0401A8A474C009010FB7C5
          750181AD3B0454CA45722FC212002CC7C500D83C9800107C2A0064FD3701C06A
          4DDFFF999CC0F7AEE260748D0AC7E069A11872010161553001C10F23EFE90C1C
          90020371074EFD4E002085DFD9197D2977E762A00A704790EBE0770780FD7997
          C5ADD17FAC3FE5FBC17CA1C388EB06E082A34512F87C212B518ECA792AED606C
          5BE7D305BDF078314E7A2D0D07DDED721E24621F2D26CF08B41F1D2E20E0E3C7
          9D4F0DD66EC080808B831A047296807103F65983A64B60D705EC94402E54A874
          74091408DC6606B87865DC80B79DCABA40271000EA5E1888F11A00B3760F9714
          48029E82DD99CBCB1A51B0CBFAD0DA5801FF09CB2DE0C104BCD9E1CFA11DDE3A
          7DFAC850FBF46939A2CE712EA51C399F0953DF52A756B1CA36A662FC3A4EC3A2
          71D06D3D08B0D104585A57D250CB69A99A0B4340175FA5EE52DF6989DCD65781
          C03802710360A75C7A7D5FD0A0E5357E710017611D8E4BD75FECB4001C6EC001
          02E5BA266CFADF06007FEF43EFAB83CB825E0D2E0D3A125C1C74D25518FCAFA0
          62BEEF390C83670543C885A118B62608236EEE8A91B777218BEE23C53AA91B48
          1B51C1C09B7E3520083A01D7B6411F0B00F5839FE5E6002865E87A715B0CA80E
          4417057F8F89E15876F760E040E7E0D69655495FD4171F2D848BE9C2E68B9B3F
          9FB02F85823F481F24E2524F04723B48A4DEA3C3F9A9C18E944041C0E106E468
          31C78EA5DD807DB29073C7928B541D3A6A762C90DDCAB2AC1E10505D02B1ACCE
          0B748C970B743C5D94B5CF0F540E605408CED8394C52209DCBAB5DDE637D685D
          6887B76DBDE72EAF76783E729E02FE7DB5CB53D0E39914F01CF433DFCD81198E
          7329A7C9B994FA98BAB7D271923A815A1D53F7462AD6EE4DC6A44BFA62D4D410
          4CBE399CD6549FDD685C9605012BDD5247B799362CAF2D494140EA2EC020A807
          01CFF5556E4B83403B020501E0FA80596303028100AFB35524B4216040C01018
          4700E8BFE07F1B00FCCE4F0D8A271593E691EE2618EC082E09FAC055E4FAC155
          1C824115048309C10484100CB98880B03A0023AEF72597E0CBB7F362D4030401
          9614136D20FC6A00F068F09F250D70ECF0F5D5795563E8BC9A827F7933F43DA7
          23068EE2E07761FF39DDB1EEE974BCE89302D9E125D8D5056DACABDAC9A448C5
          3B5ABE7C36FE15BA00EF0C54CF06546707A8B3059D0F0AD510D0E70BCAD16299
          F7BBD5059C1000951218081837605DA82017AABE4859CE8BD4EE125896D5BA48
          F90225815517B0762A295E995DCAEA12705DA0F6F924E5000800D3760CC1459F
          178354EB29E835103D737930413FCFB1D38BAD57BB3C186BAF7679097A1DF0D9
          B4CBF3B1F314F47A97977329497C4C9D04FDC1143E7A5E9D4DA94FAECA7B7400
          0EBA219AD69653AD707E24BB1CD9E628BC0A040C608D1B186120EB8480ACAF72
          03667D1508624DDAE5B6BED61A6B0890DC8BB00E0868D882B7294D29C41200B8
          45FB3B01E057CF01FC94F8D901FEA44452096901E92ED26E5771D0714204B84A
          43C045D63A785C30044F0F85908B82818000E1D77583883B0808FC3C800729B0
          1FE808943678EDF9FF9408223213E0BBB695D77900910A7EF0B9B405F8CDF081
          C07219EB85C18BFBC0E46DD970D1A705220A749104FBC723F982169DF7711E68
          0B2B3A8F3E1BFBF2603933809F16CCEFCEB303F4212290728F3A3F800B84BA4B
          C010804CE506205BD505D41902AA4B00C31EA60BF551352F90FB684F3533E09C
          1778522E54DAADEACF0BE88B94772A115DA0F5E605B413503303BA9F2D1727EF
          5024E9636F190435CF2541FC79D1320730655B0EC3116497276918CA3A9875A1
          8007BDCB03053C502ECF010FCADA0F81D9EF0E8159B4CBCF3C940D14F440BB3C
          E5F464EBF9D8F9B73260F29BE94041CFBB3C4C783D0DC61F4CE580E703698182
          1E28E0A176FF60A8D927A7504335A96C7B0264D1BAF1DA3AD79540C06E40D696
          D7D55A5B0501BDB6F63C06AF6DFEE3BDADF51537F0A4B7F515C85A6B4C10B0D7
          581509DD6632648D1DEBAC0BB10C5A3533B0595C97CC0C8C7D8901E002028099
          03F89F7400A75263FABE2DBD079162484328555848EEE076D2CBAE12D7777C77
          A1DC45C7B7D1D685A06B5A1886CCA7DC7B652086DF18403B7C1786812A2A7AB8
          03960A76C7CEEFA1A01BDA43E715EEB6DF4876FE25ADA0DB243F0CD4C7720F59
          DF1FE7BC954B3B18EDEAA4F355C04B455A57A5ED2215EF667281AB5D8DABD5B5
          7B07CAF3001348EA01A1810C02FB91E1EA49C1EA80514E091802D69162EC0454
          8130DBB80175A1AA1DCB3D7735BB957409946555478F7BCC0BE82E812E6051DE
          EA6157DDBA04BC4BD56C30BD6C7103AA4B20BBD3401CFD5C22C69F1785A1A382
          2947CDC20B0990BC3E66973FD7AC8BECF252B107DAE5F1EC23CADA3B7779C9E7
          DF91A0175BEF66EDDF4C33275073D0DB07D2CAB1F3FA146A3EAAEE550A7AB7A3
          E70760F1B67E98F970A429BC8AC3F2E6B2941B8856673792786D9D1D989F5CDF
          A79CEB6BA50432A1E958634797404F68EA9440D65A00E048093CDC000F13F55B
          E0FA9F4F014E298FEFF98E424E173A915CA491F4FD1282C143AE52D7C7D25128
          75FD8B047CC351505538BA668443E8421786AD7161C49FFD294DA0C0662070BA
          4030D0BBBDFCDA1B00C2FFD28976FBA66CF5DD01B0A611765940F97E4D00F070
          4F787508E6DF9C80F3DECFC3F33FE18BD90A76AB0DE5BCB04DDE2ABB9A2E58F1
          EF6B7627A9E701F2C341150404003604ACE2A04909A44D68EA026C5BE56265DB
          AAE605D809385202D521705CA830822E50B6AD7C91F2D090BA482DCB4A17A833
          25D017A9C705EA09017D713204EC361601A0FAD9448CD30018BF3903CFFB8476
          7AC7DACC795FB5E9CE7E6F38E5F352B1877AD6FE1017F0CC91F3B2D32B6B2F01
          6F9F402D41FF1AEDF43AE0597220AD3A9456829E021E2AF6F2D1F37C5C9D3A7E
          BE604B2C663C146E0156ADAB02AC595B8680028102AC5B07461FE29AAB20205D
          1803010302EEC2281038BA04227B7D658D9F53F76A68D85A6BEC58676B54DB40
          C080800150B7F18F05807A727CDF91348C7419E911D25B04862FF84C0257A1EB
          5F4185A118541189C133C2316C7110865D11881137FB714151BA0C5254B440E0
          04820FF8AD6FCBC53EB5EB73F073B1EFBCF618581A82C164F9FB4C8FC4D14FA7
          52E073C0D3C5AC77741DEC12E046B29BE9429514ABD8CAD2C5CD17395FF055BB
          06C823C2CD094209B7FB533A601E17AECE0CB0DC8080C0053C33C0C541050273
          B1AA0B566CABC7F4205FACAA2E202050452C8FDC75E493E642F5D225D0556C75
          818A5D755CA06697F272816E4A22000CB00030F6A57472407A7DF4BA985C9EAC
          3D92B547B6F6D39D053C0A76D9E529E06597275BAF7379F75D5E073CEDF2309A
          829D25BB3C9F424D01AFCEA79480073E7ABE441F4ACBC7CFE76DEA83690F8469
          C006DB80759EE2ACD696D6551709F501AEB2B68EF5A5B5A59440AD2FAF6D7D10
          E8F575ACB1C0C0ACB16711D6C0D686812AC20A703574AD42EC40ACDB9008B10B
          824E0B0038D58C144D9A40DFAFA6F7472975789980F01105ECD7AE92107208DC
          6588C0E0B343209416286C9506C25F3CBA0C0F7682A06B3B62E7E53C1A4C8B78
          5973F49D4DA941994B1EDE9170410FCAB3D2C4BE4BC03B835D05BC14A974B06B
          A980D71739283B9B239F8DDA91208F08E72704F7574F080673B0A80501E306EE
          1437A00E1725D910B053029214B1D491625E2140F9AB5B4AE0799172DE6AA504
          CEDD4ABB01CE5979A772BF400D04CC052A172605E13336006A37A672E5DE6ED3
          E975A0A0979D5EEFF2B2C34F79D3B1CB937897D741CFF9BC3A769EC4C7CE2B6B
          4FB0218D7A251154D02738835E4EA2D641AF8F9FE793A8D5C1B4C337F6C294FB
          434DE19500ABBA2FEE6BAB41A06A037A6DCDFA3ADC80E9C278145FF31FD7EBFB
          441F5D243CE51A83BE69CB33F5D220F01C257687402D0360FEE907004BF47D13
          7AE756E380E072570D3982F3BB65FBDD1B30BCDB6B410581C75C45AEBFF30C02
          77195C13C330E46C17865C1C42290301E126D565083A33187D2775C3AEB3BB60
          B749BE94EFD39F29A7A0BBB40F4EDC9901733FE260573B18CB0AF6C372616B0B
          9B635FE072915B956AC961F9629F41396DF9F6787932B0794C381F1CC28F093F
          150448AA4B60A7046684585DA8A64B202981BE501F8C5217AADAAD5497802F52
          0B026E3D6D758192DC762A7D8152DECA3713E994C06397526EC0BA40F9A21CF5
          0C01EEDC4801C0E8179371F691215CC0B3DB742AE81DBBBC14F028E829E0D9DA
          BFAE777913F4FB070107BD587BB3CB9B53A85FA680DF1BCF87D222EFF22C3E89
          DA04BC0A7A3E7E5E9D44AD8EA0EF83435EEC81C9F78598590CEBF4669D12586B
          ABD32D8F36AC0D598100ADAF33E5E2B4C0A35D28A3DA4E081459776ECA3A4B97
          40BB017708A80122F0745D563786D6BBE6C50600A85F97BB1A05E607346ADFAB
          7D93169D5A04B5F26D99DE2EA2DDF46E397E7BC91DD06ECE453C170616BA30A0
          3018032BC9DE4FA45D7E4A30E5F86118309254104C0AC288DA501C76431C4E3F
          902D3B980A78BDABCB4E668A54B29B71759AF25675819B8BDCEA479B1D8E34F5
          9D4C2CDDDADF3E3E4C3D269C4F17B6CF0B30102029080402CF0DA8DA801302FA
          62250058B6D571A15A6E802E50AE0B7842C0B15B5917284B2E5033E6AA20005C
          BCB2A6DB3CE705E802B52E4CDA9D2A9FD600A80CC6AAE707733ECF157BAB4D67
          597B0A78679B4E05FD600A7ACBDA9BA007CBDA73D03B76796DEDE5F879FB505A
          DAE5B7E9E3E729D8F9246AFB60DA9EA2ECE7A371D0BDC1D286E5EE4B7DC0AAB5
          5510306D58739F860601AD2D8B2060DDABE10481AC2F89D7D7738AD0B3082BA0
          556E80646A03564BD62AC27AABC1F02051CCE90C0011053FEDFA8DDA04B66ED4
          B8993CFF90FFA779D3564DA2BB0CF4E17A819C5DD77D4218E65CD50FE3CFEF4E
          BF0E178B1F303210B8BA1F352E0C63CF8EC294E57DB0E2894138F3ED1C3CF33D
          65E16DEB6A8A54B2B3AB60A70037C16E763675A12B4BAB7638656DB97A5DBCA5
          1FC6FC599F13708B8000E41C4103017D8498B34BE0181AD2750175A1EA1D0BF4
          BC808280A392AD2F543E6EFC54052C86005DA02A25301070BF40635515DBEC52
          8E1D4A40C03B145DA072616E4CC0CAA7E22D00543C37900098C16D3A1EC83155
          7B95CB93F42E0F269FB77679473E5FB1770058014F626BCF01CFF97C2189029E
          8F9ED787D2F6951D9ECFA71CAE0EA6C5619B7AF211F4EA605A129F5399F16C24
          0EBCC7A5204B0ECB5ADBBBDD6731B41BB08A84A603537F7DED94A09EDB52ED58
          E306A408EB0101B722A1E506340468ADA506C3107003819ECDA87E81007071E0
          EF0180DF6D0EE037930140D7C15D1A35EFD0DCF91474FE554B0240770D00082A
          0E823E332361D6DB43E0CC7787C0947D5930EAA9C190776B02943F360826EE49
          87E96F66935D958097770A76B2EFA6F7CC0327B29BE91EB4EA434FA100A76097
          5E34ED6CD28F66714F5AB7A8ACDEF4F83752A170530CC86121EA5461914080C4
          E940DC6D9212705D800F1575CC0BF0852A17AB9A19E079019919709F1760715F
          9B2E52BBAFEDD6D356CF17A08B54F5B41FE50B54F5B4E902D53D6D473F5B55B1
          753FDBFDF902BA826DF7B237D05A3E1507040008A974D19F4F84896FAA9F5DE7
          F230E635D39BD77D79D5A6E35D1E389FAF7C390168978772922EE081DAE52597
          07DAE541073DE46F8B81BCAD72FC3CEFF240410FC336F7E28087212FF5047D30
          AD2873433464BE180D192F4641EAD3E1907877905ADB3B04B07A16C3CC63C878
          B65A5B12AFAD3EC6DD9A1B50EB1BA9E706ECF5556BACE606AC35F63A37C06B6C
          E632D41AB3C471E9B90129107A799683AC35A75E1B0640D5F3090C0068663F0F
          E0F471004185818D3AF46ADFA849733BF2F5CB130072DA6E9F19914841CE7929
          5979DAE1DF1F82677E381466D33BE7E7DC7E52BBBA6DE1A7D20E66EDEAB4831B
          0B6B763415EC2A7F35FD68D9E16877D3B656DA549CCFF2EFF35FEA23C786398E
          0F93E3C5D915485AC04EE056DD25506E00D80D78D4052C37A02F54474A601708
          331FD05D02D9A9946D959DCAB15BE5F2F090B6ABCE9DCAD8558680E50674BB50
          6E7FB57729B07256CA55CB9EEC8FFDC801F02951C54F25D04E2F01AF6CBDF75C
          1E2A68A777B3F5CADA1B5BCF012FC53B93CBCB2E4F3B7CEE667DFCFC26F7E3E7
          B33744EB23E8A390035E0EA67D21424EA34E7D2E02073F198A03EE0A54E9D6ED
          0C582BDDF25C5BBE6B53ADAF7203663AD39972C9BD1ADA0D58B50159677603BA
          486852022FF76B3008C40D706DC0EA12D8AE4B8A84DA0D28E7A5EF2960D7358A
          00D0971C40B3D32A0528D5963F980F40F1FAF20A80DE332270CAEB992AD8ED7C
          DD61E129D0596EC14E3BBBB6F02C0E7613F03AD8812E72AB706582DD71D14B11
          AB66FF40ACA5FC76C486DE12FCBDFEE46320C06E405202490B04026EE708AA2E
          0143C00304FA42B56F26F206016F5D027381AA9901AF556C0301BE408B1C5D02
          738196596D2CD9A1E4E2E49B5D4A9FB00150F0441CFFCC3C7DE719F42A972795
          ED76B4E976F55341CFD69E025E827E5B5F7006BDB2F562ED7108C91C3F9FBD51
          07FD8B12F4D669D47C386DAA9C5319AE8EA07F3614931E0FC1F83B034CCD859D
          80A45BBCAE7A3C1B0799F5E52E81E7FA923CD757ADB10D01BB48D85D8AB00201
          371030045491D0C0D6FD9E02334AEC2812EAB44020A0815B492EACEF4501A709
          0028D70F2A0A6CE493E8D3A845673E0BF194AF7A00E063AB7B1100261D48A7A0
          B7F3F5C9324E6A8A536A8EDC19EC14E8A07677B5B39BDD5D05BBCA6125D829B8
          55A09374014B76BB57C8DE4A5E9B88D5FB9270F88B3DB1E74D9DD5F981EAC420
          E873933948D479B4B8AE0BE8E3C53DEA02723F81760352C4928B54DD5EAC2FD2
          30D9AD32EE13CBAA762BBA403D772A9512F4D079AB5B7150E5ACA68DA57729BE
          388BDD0787A44B2017A600A01FF69B17812195C198FF583FACDAC7B69E2BF676
          018F737913F46CEB39E87997376D3A47018F839EADBD14EF3C73790E7A75FC3C
          073DEFF266A7E723E829E825E0C38083DE3E913A04073CE6C2B83BFCEB0156AD
          6D3D3740E99676036EEBEB5124D410E035F6E814C050EDB6ACDA00899FEDA8D7
          591561490A02366CB5EB9222A10D01ED0634082A9E8D833EA705002A5C8D0246
          04346ADFFD8C464DDBC839073FF6F20E80E9E1387E7F1A4E7E5B07BBB6F05645
          9A77F5D775A05380EB40E799726F3BBB88F3D8D1AFAA1DCEAD80C5A28B9E2DAE
          D9F12A5F1980439FEF817C9CB8484180CF0FB48E15773F48549C00F0BC804A09
          B855E880807202C0ED2C03016BB7A20B54B901BA40DD2DAB4080652E50930EB8
          CF0B5856D5EA12B841402E4E7B8712083CDF1F4B1EB70190FB482C96534EEFB4
          F6A6626F825EE7F26ED65E053CDB7A12EDF01CF42AE0BB3BAD3D66A85D1ED8DA
          73C05B41FF8CE370DAA74320E9A9604C3487D392E21F09C47E7774332EAB7E1B
          D682ACA30DABDC80E3412E1A04AAEEA2DD4084DB1AEB3B3761A8FBDC80ACB15B
          11D682ADFB3AEBB5B627350D04ACB66C9C38B03F3C00E8626AE43FA45BA3D601
          AD4C95FFA75EF50150A20030765F0A4E78D3DDC2CBAE6E767667A0AB60972A35
          5B786B57D701CFBBBA2E5EA960D7B3E6DC9F56BB1D595CDDA76695EF8DC79C67
          BBCB99818E9384C1799AB0D4053404626E612720C541191A3210603920A0BB04
          9665B521A040E0DE2570BB400502AA8AFD88BE401F553B95C309B8B7B11C3655
          43C0DAA178772A7E3C5603C045F69772DA3D7150BCD3A34D67767915F4AA4DC7
          D6DEECF2CADAAB8057053C15F00E6B9FA2833EF9D9705041EFBECBF389D4894F
          49D08304FD134118F7388B82FFA1008CE5139A09B20C585E57B5B65E9C96637D
          2D080808C80D28087081D05A5F2F6BAC46B5AD4E8CE39E029576C108ED06466A
          10D82981404075096CE0BA7564F8C1AFBD2FF4FFE30280D565908FDAF57F56EC
          CBCB2B007A12006A5F19EC66E329D0AD2295BDB33B833D89ABD41E3BBBCA63F5
          CECE556B096E13E8A57BD4508AB6B9D2A76695ECEE8F99CF4462F48D7C64989C
          1BC810801E7FB2DC80B338A821205D02290EEA1D4B2E540B02FA5E022B25D0BB
          9575919A7B09EA17074D4A60DD4B60762905020501BE409D2981BE07DEDEA1F4
          ACBB40800050F4580CC66A00E43C487F7E977B9BCE587BB3CBBBB7E99CBB3C05
          3DEDF4E92F464A11AFDE2E4FD2010F1CF0494F73C0AB63E813E4605A961C430F
          EA287A7D40ED63FE18F360378CB9CDD7382DB736AC81AC710324B7F5559075B8
          81BBA55350BF4068B901E914D8B50186AD7103AA25CB5D022770AD7566109080
          41E07CECBB71035C1C2C7BFA0F0C80C091018D3AF6E9D0887E20FAEFFF452FEF
          00981686D57B07CAEEEEC8D5C5C29BD15215E83262EA6EE1CDAE4E81CE79ACA3
          6A0DAA6A6D0A59B6C52DDC29D36852C56671712BE3E9083938D43A45581D29AE
          DD40271B023608A44B10FBE7AECEBA80F342952296191CF2B25BE92AB6BA48D5
          05EA06027581D67FD088DAA5F405FAA35D027D71F27C7BE1A30480B90A0099F7
          D33FB34DDA74B6B57756ECD52E0FB4CBAB80175BEF56C0E380573BBCE72E2F3B
          BC587B7006BD04FBE3013AE0FDF9805A88E153A9E5805A3F755EE5FDF47E6B57
          03590558E5066CC8DEA69C56C21D667DC50D58EB6BD2025E5FCB713104CC1A5B
          20304558E5B8BCB8019924F4480BAC7526A91A8C715ED690560CB90082C1D3B1
          D0EB82DF0500FF9D39000E7C0AD646BEE9BE8DDAB8DAFC5CCBEFF9F204000FFB
          408F6961306A77228CDE2FBB3A908597DEB3910E76BE7B4CFAD0A23D62E1AD9E
          B404BCDAD59554110B28B8AD1E75C18E18E953EBFC96D457FAD5B40B42EA93E1
          10757D7B88BCAE3DBD7700820103404469019F24CCC78943EF9BA436007D6EF6
          719B19502981991990FC55660664A722896525D145AA7BDA2E474F5B1E406ACD
          0BD0056AF5B4C509902425B06606543F5B43409D49A01E42EAD6CB16089013E0
          8255C1237D21666E380457BAC81AD33FBFA537EDF0BD806C3DE7F290B351F5E6
          6997075DC0E31D1ED25894CF93B5071DF4C0053C0A7818F8344B7279A0A0E780
          878427584110FF7810EFF040410FEA287A7F88A5A06751D043DF87BB811C504B
          D247D143AFFBBA42EF3F77E1E2EB8FCC6374B3D6574356D697DC00A5041ECF70
          70CC0DB008022259E3FBC2659D798DB3D48D45E4B8F43A3BE7061EE5B5AEFF2C
          075D8391B566A9B536CF1B8885E2271900DDFE207300E5F4FBE2A0469DE33BA9
          C19E5FFFF2E2005C4800C08A9D037014E5EEBCABCBCE4EC1AE7676CED91D36DE
          61E1CDCE2E7793C9CECEF9ACC969E9A2277BAB6C6E5F2BB765ABCBE22A36EF7E
          2CDE09939F08D5C7885B27083304CC51E2961330750105019512782910F26E05
          713A77E59D4A762BF79D8A2F5255177056B18D5DD55D029512389E3D684F0FF2
          C5A98A833A2DF070027A87523675E4237D9000200E20E5EE68CAE7559B8E7779
          AF6D3A0AF61447D59E7778B3CBAB7C5E825E597BB1F524DAE5CD4E4FB69E831E
          29E031E651B2F6BCD3EB63E8F551F41CF8FA287AA51EF776C55EB7B8B761FBDE
          EC585BE306544A4080D5EBABD758D70654CA658A84CA6D495A601508951B902E
          81725C8EDA80756391C0D69ACDB03A05B2CE6694D8DD75393B05454FC63000FE
          002940850AFEF6D167346ADAFA27ABFC3FF5F20A80EE0480D2EDF1EA26122BD0
          751F5A05BB0A74DD8FD6E29D5DB7A954A04BB05390EB60A7DD5DE5B5C6EA8ADD
          A5FC5615B678504515B738E71DF458883A425CC4202027701DA5039C126810A8
          22A15517505D829B7FBA4BC017A90181236FB5AAD86E10B06F2892834932F508
          31CB8200497628E7C569CD0BD4EF12702A90FF3001E09C70A4BF4FFAFF8CA4C0
          97E93B0AF87AD65EF5E69FA19DDE11F4494FA902DE8027ADA007B1F62A9FB773
          790AF8D847C4DA435F47D073B0AB80B7821E7A3CA84EA656A753FB60F7BB7DB0
          E7CD56CDC56AC3B2646D55F1D5D45DC0A45CEEEB6B402053843A2508B640E058
          638F516D0D025A630502715C025B0D5C531B90B516D725EB2C6BED06028640E1
          137DA0E7F97EFF8F015046DF53F007E60590E56FFD6BF27D6F2FEF00981A8645
          DBFA4B91CE0E76B1F16A6737812EC1AEAAD5DAC6D7DBD91DC12E7D6A1DEC220E
          7653CD16DBCBF9EE46D2A61E98F468B01C1F1E7E8D3A429C20C0E90046910402
          C609DC6041805302AB38A8DC8073B7B26F26B22ED23BF445AAF256A962EB5B8B
          F5056A9C80D405A48D25A7135917A7D9A5EC1DCABE38ED1D4A57AF0500726152
          9E9AF7506FEC7B4E18012088FEBFC3A588A7767A53B5E77C5E05BC0E7AD5A633
          BBBCD9E975C5BE3FDB7B1DF494CFDBBBBC96B6F62AE81FB277F99E56C07781EE
          F7DBA753F33320A2EFEA8C3D6EA2B5A5F5358035EB6B201B6BADAFE7BD1A3604
          346839E5526EC0DCB4E506015D84D59D02B5CE1AB60A02D6A4A6DB3A5BB319BA
          06A35D97C37909040A1EEF033DFE5F0380F2FD2E837DC8F2375361FBDBBCBC02
          207A4A28166C8E958742E8029DDC2E6AEDEADAC24BB0EB201FC1167EABDED5DD
          025DDD594681CEF9AD55D432956C87ED953616F7AEF9F7031E09C2500A7E3942
          9CDE49601C814A091C2050AD42AE0B58C541E785AA772BCE5B1D5D023FBA48DD
          5282FA556C7D57A1EE6973BEEA5EC1D65D02BE30F902552981B71DCAA34BF014
          A5390E000CB83D0C539E975CDECDDA9B36DD80A724E04115F002C5DA53C0BBEF
          F22A97D701AF77F9874DC0FBCA0E2FB6DEB9CB9BA3E859F775AEFF48380240F7
          9B786DCDFADA1D98FAEBEBD985A1F5352020D026DC1EA08A84B2C67681508140
          15099D8ECBCB3ADBA3C424937AD92030A3C4EEE917BB01EE148C7CBC37F438EF
          FF2900F8F6DD0E3DDB376AD2B209FDF7FDA62FAF00889A1282799B284FDDE108
          F6AD52A0B32DBC09760A72CBC23B77750A728F6057392E05B991C97375AE2B6D
          2CD18B9198F0502001A02D865EDD16C3580400010143C0AE0BA82EC1F5E206C0
          B801BE48AD0B955202B950F902B5DD805CA4FD6FE50BD47203FA025517A9DAA9
          BC5CA07271DA5D028755B5DB58E6E274F6B2658722ABAA2FCADC077B2A005452
          50DF1682839E0DE1029E55B537B9BCC9E755014F07BD0A78B2F6F62ECF3B7C1F
          BDC3F7A61D9E6DBDB2F63AE0EFE71D9E6CBD0E78CF60F7FA4CC8BB3A61F49F94
          D392F565A775A3DB7426ADAD5A5F8280EEC2881B7080803B050202B01C97A404
          EE20D0455849BD9CA3C40C02DD8DB16A30665C9B5302931650FA25835A561D86
          216040C069C163BDA0FB79BEFFCF0050EE6AE497E5D7A84D509B468D9BFC76DB
          BEE3754A00E46EA45D4A3F18C2B6F056B09B5D5D5B780976CBC29B9DDDCC9DEB
          60D7A3A88E3CD748E5BB604653F93DEEC1000CB9BA0D865C4552100082807203
          4E27A041406EC06A139A0B5540C01729E5AE7491425FB711627D91DA3B1557B1
          951BD017A840C0BA40BDB7B1D2BD3E11475D981E8343F6CD2E74510E7FC00640
          FF3F53D03F1D2C833856D05BD6DEB2F55CB1176BEFCCE5FBE85D9E0456014FEF
          F03D388FB7831EA2EFAB1FF846A70240140180D7B7BB637D1DD399DA0DE8F5B5
          DD803B68697D09046A945860AB40EB060175F7A6725C765AA020406941862E12
          5A85588FB51EAA1F4AEA068147ED7661DEA3FF9F00A0ABFC3E499D1BB5E8F4A3
          B3FCFFEEEB940018FA225DA4F27008DAD5BD5A786B67A70057165E025D647676
          BDA3B39ED739AEA3B8650A5CFA0614B1C05CE8E2FCB7DF03FE184CC1CF12085C
          D516C40D485A6043C07603D22E34BB9575A1DA17A9DD255010E079011B027281
          AA670FAA5D4AEF54EAE21408585D0253C1563B1483C0F389381192AB7AA40472
          2F815C988F535AF4400FECA30110730B05FC93F6208ED3DA3B72797016F0D8D6
          7301CFCEE5BB82CEE5EDA0A72066E980FED1A73E7B0340240120F2467259D791
          B80BA3E6314CCA65AD6FBD2E8C47A7401561A55D2829810281BDC61AB6D6A8B6
          551B1037A047B5750D8621A0816B434081C07EDE80B707BB3CDA13A2CFFD5D00
          F0DBCD0198E09727F6FC3655FE9F7A790240E600080090F37C0FA0C0573DE997
          BA438EB2F090BD41F5A6597CDFB8E95153B04B9F9A9546C19E2A92F973BECB4C
          F5AC456156EF9A825DFAD72CD3C3163D130231F7F981EBAAD6E0BAB235100480
          20202208882425B856EA02401050F302D7A97981686B5E80F256125DA4241F2E
          62B9F5B4256FBD558A57AAA74D17A9B39FCDA20BD47AC68040E06E16B9019917
          90C2158FB87A9D1760C98549BB13F7B21504C8093C466B7B7F77E8734E28B82A
          82A0EF4DAA3F2FBBFC232CA9D88BC4DAEBDE7CEF07659717714E4F012FEA4EF6
          9E77780A7AA05D9E03D916053607F72F169F2371672788B8A13D44AA02AC9AC7
          B8C1318F41F25C5F0D02B735260890F41A0B68C50D389EE3A0E63204027A9D07
          E99981E4BBD5CC00AFB540C0EBF306CCDC805A6B82803D37203303A4877B1000
          BAFE07E6002880B95AFF6B24B3FC43BB91E5FFCDAAFC3FF5F2EA0022270763E6
          73D1984D3B7C96B97DD414E97867D7169E65EE2CA3DDDDFD6613D6B3A69A2DE2
          40D7452ED5BB36852E1E4FD5C32B52F04A7CDA857DEEF5C5A02B5B8B080218AC
          40C04E40EA02AA40A89C807603AA4B60EA029613E868D201E87593C95B6D27C0
          F71168BB6A7509EC5DCA14087997B2DB586EBB949D12B87509CCEE94CDCF1D34
          37BB382CEA90FBBA63EF39A1D206ECFDA700DEE95511CFB2F68E569DAADA836D
          ED79A7B7F3796DED7FF10EEF94B7EF0900187E437B59DF48C7FAAAE2AB472BF6
          46BB0B63AF7157673B9640EB3637E0B6C67A78C84ABDCCD39EC571A96E8C8C12
          CB5ADBAECBE906EC1A8CBBF3122730FCE1EE10756ED7DF2F051008940435EA36
          A49B4CE7FD12F991F8693D1D633A366AD6B619FD37FCC75E5E01104100487F26
          92823E52EE24735A78CBC63B03FDB9300E74B99DD4F4AA9D412E81FE94DDC6D2
          379F58E2EA36E5BDD2C766F1EF7BDFD31503D7B7C2202DD77A71039412B0DA28
          08484AA0D202D325A0DDCA2A10F285CA1769BD2E81BE50DD5302BB4BC0156C75
          819A02A1EA125839ABD5C65217A88280E9129802215F983608787A50A5045138
          ECD168CCB92FDA0240CF1BBB619F47F4208E2EE0196B2FC1AE2CBD14F1A2EF77
          B3F576B0FE8A0077EA9400B89E002BEB4B4E8BD797D656ADAFE9C26810DC206E
          CBBD40E83E37408E40C39621A061EB00815B11D606811408799DAD1A4C8A359B
          E1586B9D8229E8BA838021C03582C879BF270068E70F20EBDECABF950AAB5FAA
          FFCE8BFF9FEB0360920B539FA260D74F87D1BB3ADB78D9D1AD5DDD0AF6501C28
          36DE04BBECE856455BDF62AA66D14D91CB88F25ECE7D55955BE5BFFCFB9E7777
          2100B4C480752D0D08C0B8014A0D546DE06A2708EC2E810D01B799015DC52608
          E802A107041C556CFB0235B3EE03AC0B5443C0EC520602CAAA3A7628EBC25410
          70DEEC4210C8BE374A032088FEDBFCB0D7C3AA4DE7E8CB3B767809FADF3CC09D
          3A1500C20800D6FA5EAB6632CC74A6738D797D8D2330A0F50001789BD0B4D759
          522FEDB8D811280828E08AEBB22735050296F3D26BAD8B84CA0D18E85AEB3DE4
          41064097DF19007904003F02C0FF9FD7290130F8490A74B5B3CB400AE7EB2AE0
          4370907367D7014F812E16DEB9BB273CA1025E05BB2A721999603705AF7E8F4A
          0EACDA5B8FF963F7BB3A4BF00B00140440DCC095E4062425B00B841A02AA4B40
          17A84E09D4052A17A9B8815356B1CD05CA17A70D017581F263C7A44B709B7AE4
          185F9C72617AEC505C1BF03642CC5D020D01AB4BC01764D63D91D86B4E880020
          FA7A5FEECFBBB5E93C77F9DF23C09DF2F67D040120F4BA760A008E2E0CAFAD72
          5B7A8D1DEBEB8480FB1ACBBD1A06B624B5C6961BD04542715C1A04769150806B
          4D6ABA0F69596EC05124B48BB10ABAE40A1E886A008097975700841300063E4E
          C14E813FF0696B280574AEAE6DBCCAD79585171BCF379D78DBD94DA0DB936A24
          09742DCE7D49D6200B57BEA3EFEC8CFEEB5A883408C02D25F08080B34BE0D92A
          D417A9752F81E319036E17A8C95BEB41C07409E4E2D43B941B040404EA89388E
          0761B013700CB490452510F045491764E6DD0480B31500A2AEEB8AD10F74066F
          D6DEE8BF09000D59307517055A7737C0EB2B207040C0638D41D6594340DC8079
          BEA35A678F07BA58A997596B5583B19E4CAC20208795A87B0A2405B32120D0B5
          DC40D6FD911031CFA701001EAF530220F1310E7A47B03F2977979960F7B0F16A
          50C50E7815F426D8F5CEAEFAD86A2EDDB4B69C3D6DAE76AB02D8237E18F5974E
          E8BF9600C0521000710314FC0A043A1D600890A44B60520273919264B7E20B54
          55B19D29817581CA45AA2F50EBE21408A80B9421D0FF36A960CBC5292981EC50
          0A023A25B0762867AEEAB0A9DAA22A0864DC1D210070110022AFEDC2C7B0FFC7
          03DCA9530120E4DAB68EF5B5D22DBDBE0AB2EAA62DEE1474306E40ADAF5963B5
          CEA0DB85D89BD6D8ADFEA21FE8E2AC0D58F5171BB85224541030CE4BDF53206B
          AD47890D74DD6FE52617160111731B00E0F9AA0780600D808447493282AA829D
          A48A74CE9DDD3DD8A1DECEAE7BD83AD8D5CD28242BD0590F59D56E7D379AEA71
          47DCD111FDD636C76E220101F83B5202930ED4EB129CFA22ADDF25707702DCCA
          526E402E4E7708F005CA93834E08F005CA3655A504DCC7561726CB8280B9E38D
          00A0A6DA549E9A7E5738F6D400882000C851EE1E01E8D47F05007FE988C1D7B4
          B1D6579C965E5FB3C6764AD01E3408646EC013B424F7516233A1C91208B88F12
          DB2050EB4C1000EEC6B83B2F674AE098D4D420506E80533002EE7DE1103EB7F3
          EF01003507F0FF18002D9AB46C12EE33A0F33D0400A09F0542468740ECED6110
          FF94ECEA10F798DC68C2012EBD6A3D95A6A4ACBB25BEAF9C7674AB7F4D01CE23
          AAAA8F2DD36A762FDBF4B359DCCF36E2DF87DFDE01FCAE684E6A26EFDD586B9B
          838080242901498A83223D3370A59E19B85ACD0C70EE4A172949AAD8A0DB59D6
          CC005DA0D09D2E4EB940D545CA4E00744A60F5B3597481EA7901DDCFBEDD9E19
          E03616DB54F79901D5CB968335B98FADF254C8788060706718F43C2B58E60008
          00C000E020FC5F1101000800E0BAA68DB5C66EEBAB256BAC0AB010C192F5D56B
          ACD22E6B9DDDE7061CEB4CF25C676ECB120CECB901AEC1F05AF3E3C955CBD07E
          DE008940E0586F76036A6E406634EE27DD1B0E61E7740602C0EF3307F0FFD901
          346EDE38B8535CA75B29F8FFC9A700B1A21786CB0EDFEF71795A8C6DE19DBBFA
          C3CABEBB5978B59BDB3DEC07ADB97455E57EB08BC879530ACBB4B944F4FBB0DB
          DAA3EF15CD4404001603C0B801531770A40474911A37403B95B80192DAA964B7
          02531770DE4BA0EF2360D105AAEC2AEF52CA0D38AC2A5DA03CE2EA56B8E21D4A
          EF521A02DA0D387628BB2E00C97FA19CF5B6504CFE73280EBC2114BBCF0C560E
          E01A72000F50D0F121AC1EBBB0910E4AAFDFB17E8FEFD90110008CE39236AC72
          036A7D658D75DA1576753BB72221AFAF5963B5CE761156B92EB5CEBDCD6C8682
          809D7EE922A15A675D83A1B5D66EC0A405ECBC64AD3574D57A6BF7E59C1B48BB
          278C01400EA069430AE078D900E8DFF1161B0041183A2E047B5E19827D1F08C4
          98C7D8BAFB59A3A8B6DC829D777767C0AB5E3605B36E6DF1EEAE035E07BAA978
          CBAF3B03F7B8F9C2E3DF87DE7A06FAAE2100B00402E204909C80A405521B58EB
          EC12E822A1050105020381D06B4C97C0D4056C0878BF40A52EE048097497C0BD
          70A56DAA5C98561F3BE92E02008B2ECCA45B298DBAC685B1CB5CD0E31C17464E
          0BC2B07181183A26105DE581185416886117F961F8155D21F236FAF9790DF43A
          38F5DF0240D0D5ADCD1AB30BB0BA306EA0552981ACAF13026A9D392590752627
          A061EB182576A405E4B8D45ACB3A0B04CC5A0B70A506A3D6DB4A0BD47A2BE8BA
          0D6A31049CB773A7DE1D0A61731A00E0F91200342100748EEF749BAB2CE85F52
          0720F10121AED1C118792181E0C620DAD9BB419F47DC025E0DADD8F796D30E6F
          05BB25C76CBA1E6431AA37D0625F80F45D0801A0EB9AA6220D02F0554E40643B
          016F5D02AB2EE0DCA580EF2E3410F0D22A747409EA55B0B955A8BA041E371409
          040800F177503AF017BA306FF5C7B8EB0330766520F6BA2808A3660561704D00
          073AF049CA7D264563F245FD306D411C0E98D307236AC230A83410032B0220E4
          4C7F0C5FD31523EF546BE0589BFF1A000209A401CA71C9FA9A35B6216081D651
          242439D6D81409EBD506CCB31C483A257002D7068182809ED434D05510901B8B
          546D805302ED06DC6A03AA1673570884CEE9D400008F1703A0B9D400123BDF4B
          3F07F0E1A0BD274762F14D83B0CF94480C280AC4E0DA608CB820047AD205DEEB
          110AF687948DB76E357D4026D64082DD0E789115F014E03FBBCDA501D0653501
          804500200183C06F8D06C0152D04021608D64A4DC0BA401902CE94C0F302B576
          297571BA75094E010179228E05017602B7D185793BE9663F8CB9CA1F7A2D0AC0
          A8D96A770F2CF52788066278550826CD8BC1CA3F67C1CCE70B71C181D1B8E2A3
          F1B8F29309B8F4D0183C7B73298EB96F380E9C17C3E7326260650086CC2210AC
          2310F05A3CE0657DBCE8F7F85E01A095ACB10040AFAF27685DCA09B81509AD09
          4D1B04BA082BB0B5D6B9BB0D011925F6705D564A10F3675FBE6F8380EBEEBC9C
          454271031604EC22A1B8813B83214400D0D00570BE04004D5B3589EA32D0E761
          B3F3F73FB307AEF8B20A2F7AB31887AE8EC788D1211854140421634330627130
          76BFD30F7B3CE443416F073AC97D87A70BC82DE0EFFD05556E01403B01800581
          D54D814160A704C6099874800B83CA0D04AE735CA43604F4056AB70A1902B613
          A00BD4F3E2B4BA047A87628B7A0B8B407003B99F557E18794E00868D273B5F19
          080105B4D3D3FA751F1B81C35624E1B4A747E245FBAB70E5D18978D5D7D3E0EA
          6FA6E1D5DF4EC76B1C52BF9F81AB8F4E84A94F8EC4F8B37A63204197FE7D183A
          DB1F23FFE4C3F581FF4A9720E24E0D005A67E7FACA1A7B42C0BA5743C90B04AC
          51620B0237B8B9011925561050AECB7E9683B8014AC1CC28B10D01871B701F25
          D610E0CE0CD70506DFE98290B31B1C80E7CB090069035A0038518557FEA30ED7
          FFBD0E17BC5B8A9997F587A8BA307415538A501B82E14B82318A7640B958945D
          FDED2E40038055446B9280605513D020B06A037E4E105C211D029D1648CE4A17
          A96917EA0B5481405FA0E6223520D0F712B023A00B545D9CA69F4DBBD4359DA1
          FB9A2E18B5C81743A7F86370150529B9A5E0D260EC39210A93CEEB0B4537A4E1
          595B4B70D9C7E3F0AAEF29D8FF3A1DAFFC761AAEFF6A2AAE3F3905F8FDCAAFA7
          110CA63210F02A0602BD5FFD0D81E09BE970FD0F3371CDB14938EE81E104825E
          1842FF6E577910869EDB0D23FEE40391F7D03ADDC785C2FAC5C2DF0300E1E400
          FCAF6A69ADAF715B8EE12C5320E4DA80BA57C3B1C606041A06BA0663806B1709
          755A60D560EA3F7444DC80140925252099F4CB911658CF1B1010080C34080802
          03FF1204C167776C0080C78B01D08200105D0F00E400D6FDB516D77E5F8BEBFF
          5687AB4E56C3397BF2316B797F8C1E138E2EBA3883270563F8F2408CBC4DECEA
          6F57C5D600E0E0376200588EC0AE0B68100804A44BE084800D02D9ADEC2A365D
          9872915A17A70240F8759C12F0054A17E7FA8E18B19C76C1C55D306CAE2F068F
          F507DE95398F8FAE0BC7F839BD088AF158754F369E7FA0122FFB642CACF96A12
          AEFD66325E41EF6B4E4C244DC22B4E4CC6B52745B0EEE4145CC730F86A8A40E1
          4A0181868138047203DFCDC06BBF9F81CBDE1F87A3FF928371B37B63481981A0
          36004217F861C40DE40808049E6BFD6B02DC296FDF0B00AE2400A835E656AC95
          729902ACAC31AD2F491709CD1A3B612BEB0CA1579B29424F080808F8366E055C
          8280C379399E376006B51804E62E4E0B046A508B2410B00688545A90744710B8
          CEB201E09BDEF583DF0800FFFFE7001C00E03C14080040000002005CF15D8D68
          2DFDFAC9BFAF87DDDF3E81EF7CF12A6E7DEB455C76C752489E9E0221335D10BE
          3200226FF355FD6CBE979C2EA85F2B0200100080021F3AAF6C2CEF461A04EC06
          440400115DA48E79013D2BA0E705589416E87EB679C600E96A4A0BAE69C3C541
          08BDB21D84ADEA00614B3A43E8795D20784A3708AA0C00575920848D0A813E53
          A2216D491C14DC900C139EC985F30E56C0928F6BE1F22FC7C3CA13E361C517E3
          E1F2CFD5FB4AD2AA2F26C0EA2F278AD6B04E4C0282013008340C60DD57E20A80
          400057D23B434040F0F5742008C0D5DFCE8085AFD740D99F32A0FFCC9E32A3E1
          1A1B0061F3FD20E2467204BCCEF793FECDF5F62602001000C07F7D4BF05DADD7
          D8AC2F89D7D748ADAF1409F51A9B9901490BDC66060802F6DC804A0B646620F2
          3A1925769B19200858B3199282491D8641E09819201104F85663EB7903DA0D38
          9E371008F1370742973167000100BA14FA4097413E871A356974095DFF0C804C
          D269ED00AC49406F0EE0A6BF9E8947FEFE32E23FFFE9552FEC7A1673CF1F01A1
          67BA307C3539823BBB6214E5ADCEDD445F546E9F39E5F6BDC301745ED598DE49
          0A049216587501E912584E808786B45D35BB94ED06F405CA56155D94D7CA1D85
          EB68875ADE1E43CEEF8CC1B37C29B8BA61607900B99B20A9CE27CCEB8DC3AF4A
          C2510F64E1F4ED23E1824315B8F0E3D1B8F4581D5EFAF918BC94DF49971D1B83
          971D1F03CB8E8FC5E5C7C7E1E59FB3C623818034010906A86120AEC0E90C942B
          1067A05304E30C548AC06E60DD9753F0C2574641D17569D8737C2406160560F0
          C4000C5BEC8791B43BB21B601038D7D353BF68FDB5D801745BDFC2A45DD28635
          727303CA093008ECFA4BFD76A13DAA6D5CD7357CABB17603E6A9CF940EB0D809
          B8B901AFCF1B504542DD2EF4FEBC813BFC31F1CE008C5CE40B2D8734C756D92D
          D1BFD41F3BF6EDB097AEFEC574FD8F273100A2499D490D00F004C027FF785302
          FDC8A14378E6ECD9989E968685050578CB4D37E189CF3FB740B0E4A6C51854E9
          C2D0D9C11871552041802E4E0D825F74017A018076022A1D58ADEB0216080800
          CA0DD817A863684872D62B5B1000E8025DD50683E67740D7EC2EE89AE48741D5
          FE12504125411051138A8917F6C1E2BFA4E2F80DC3F0AC03C578FE7B1578D147
          A370C1D12A5878B41A9546E3A2A335B8F8D31A5CF2692D5EF2592D2EFDAC0E2E
          FDCCC0602C0A0C0404E370858201390382014180416060C020B842528429B056
          40C0E9819D2270CD40150FA7C1DACF27330870C4DAC132AB1150AC41700981E0
          0E4AC174C7C09B7E1D003AA01F0140AFB3ACAF5B2B56D659AF31BB019312B054
          DA65A504CA7571DAE59E7A3952027B9458A50476815041C07ADE807A9E83EAC8
          388B84BA5D88FDB8267007A502772A00F458E1876DF25AF21420761C417FF765
          41D836ACED060D8071A40C5214E9B40480DBBD009E0078F56FCF4870BFB2772F
          76E8D08156A1919BF8B32B56AFB620F0C48E47E4DF115C118CA173836987A28B
          932F30B2A9DE8A57463F1F00FC7B7A170838DC00A704DA0D48CEBA96B4AE1976
          5B4317E7B2D618784107089AD295029E833D90BB1A185A198C3DA74662FAAA38
          1CF544264CD93302E7BC5B8CE77E5886E77D40FAB01CCFFFB0022F50828B3E1E
          85178BAA70FE27D5B880B48860C020587CB4062C181867707C8C028172069422
          100C8C2BF8D20103E50A40814060A05D8106818201A707D239B8EAAB69386F67
          39662C8E979A04B71B43260440F82A5F5A475A4B5A3FE7DAB27E3500D63527D7
          65AFAFB5C61E9D18725D6E4558018155842537A0522FE50604029E6E404F6AEA
          012D01819E1BD06E409EE7206EC09A22242760DCC02D5D20F6D6AED221E87BA3
          2FF658D30503E774C28E556DB1E5D0E6D834AD31B41BD206034B089A152E6C17
          D1EE25BAFA17D2353C8694468A2475223500C00980E3FF3822811D1B13532FF8
          9D624760DCC096779FC1BED3A230B8D885AE510482F35D1871831F44DE639E4A
          5B1F04BF1800463608A44BE0BB922ECACB5AA1FFFC761830BB3306D575934A7A
          704930E5F2A112F009F3C9DADF9284755B7370DA1B7978D6FB4578F607C570D6
          7B4578D611FAF591629CF35E099EF35E29CE239DFB3EC1E0FD326020300C2EFC
          A8925C016B14CE2720CCFFA48A61008B3E6167A080B084A49D8149132445F074
          061610B866208543E30CEAA5095C33B080C0A901BF9FB5B914D316C661445528
          30D442A6FB93FBEA8A917FF15173047AAD7F0D00C20800BE04005E67538415D8
          6A083841A06A03F65C86E914388BB0262D904E81BAC3D0AD4828DD1812A70422
          CB110808A44BA05AB31DA555C8E3DABD6EF4C11ED774C1A8359D21646167EC3C
          AE1DB6CE6F89CD339B61D3D426D892DE3B14B4C6C89994229C1321436E2104FE
          4EFD3ABDDAA849A3F974EDD69252490C808EA466DEE29CE5F5C33F32001EFC61
          99B5FBD39FFB4931240C04F69DDC8823AF4BC23E53A3E8DF4920A8A1009C4F20
          B8911D81CA5B9D20F87100D0BB23051020AC26F1772BE8825CDA02FDE6B7816E
          E79D8101537C30B0AA9B4CD7F1EE18352E1CFB9DDB039357C542FE7D83B0667B
          364E7A7D384E3B9C87D30FE7E3F443A477F271C63BF930EB5001CE7AB70067BF
          5B88671D661028189C433098FB5E29CC7B5FC3E003DB1918185CFCD128D020C0
          85C6199018044B080404035030A014C19126987A01C1808B87DA1DD8298281C1
          5A5540B46A069C265C49A9C135DF4FC7559F4EC2C94FE443CAC5FD30B4220483
          CA0331F4AC6E6A98E82E5ECF4EDA81E9F5F5A29F0200C9EEC278804086B3D6F0
          8D5B0202675AE07403AA4BE0480B746DC040808B84C60D58B5018100A7043774
          003E2E9E21107D4D278C58D5018317B6C76E679D811D46D32E3FBC39344D6F8A
          CDD29A62BBDC96E85B7906F69CE38F696BA2B0E2E1789CB82905B256F5E5544F
          00D035A5EB6102C002BA6E0D0022480D00700260E7DF1F92605EB86041BD603F
          959C10D8FED70770F6F65C1CB22A1E7B4D88941D2A787C30865D1A88917FEEAA
          2E340D821F0780043B48D0937C2EA71D69490BF4BDB00D769BD51103EBFC30B0
          DC1F38E8C3AA42B0E78C488C5BD013D3AEEE87231F1B8455BB3271CC812130E1
          AD613891F5266B384E7E3317A7BC354234EDED1130FD1D8202C160E6A1911A04
          0578A60D039863C300E71108CEE534C186012818A834613EA5090283A30A0624
          60677009A5090C02270C549AA05204818180804469825D2F98084E572030D08E
          40E609BE9D0ECBDE1F8BD577E660C2D97DE4B6EEA0AA000CBBB01B465CDD855B
          87BFB84D6B0160A540D802003B2E0300871BB08A840A02F55AB2EE939A1A0206
          04D22970A4043C4A1C711D89829F2110B6B603B82E698F01E79F813E93DB61DB
          E216D83CBB2936A15DBE496A636C3FB2158411FCE31785E0F03FF5C6F20729E8
          37A7E08C3D19A2A9DBD32163451F0100A7007E597E471B376DBC88AED90600D4
          074077BCFC8B2AFCE81F072590B9E8477FEE678BFF3CFF73ACFBBEBB14977E5A
          8E33B70D871CCAB5C32A43280F230A4F7361F8650482DB55C7C06D873200A00B
          4D029E00D0E5B266D0757E6BF49BD70EFDA775C680D114F465FE92CF87D78462
          DF79D190447FC1D97F89C7C2170663F9CE34ACDE9781B507B3457507B261CCC1
          1C1C7B70088E7D7D088E7B7D284E788340409A443098F4662E4C7E8B80F036C3
          804190C7AEC0090310189814E108A70804037205DA19403D67F03139032B45E0
          22A24E118EBAA708AA6630062C18E81441C160829D22300C9C298201814E11AE
          FA761AAEFD720A5E7CA01A2B6FCDC27E337A60607120B92F010144906596A2AC
          1710FC1800C87DD90E4CD75D9C4EC00040DC805B6DC0760224E912047021D640
          80E48080EA125CDB06C3AE23085CDD0E5D2BCEC06EE7D37530BD0D9E51DD0A5A
          8E688ECD329B62E39426D882AC7D97F276D8FD2C3F1CB03414F36EEB0B75CF0D
          C4495B5371FAAE749CBE3B03A7D1FBB49D4A53B6A5B90320DBEF53020017019D
          29C0AFA901FCBF9F03700240CF017487E59F8F828FFEFEFAAF02008B5D03FFB3
          1FFFFD0D5CF1F528B89CB4F4B37298BA71280CBAA83704160642606910844E0B
          86F0152E88BCB70B443ED051F5A0790EE0F67640171B745DD00A28E021B0D60F
          82CA0320B02850FE1BA3C68741BF453D60F0753130E4910428DC32084AF7A440
          F92BA950B92F0D2AF7A7C3A87DE950B52F03AAF7B33261F46B59504B6218D41D
          C821200C018201100C60FC1BC3809C01100C809C01902B80A9E40A0806E40CF2
          8153048201100C80520438F370219033605720221800C180D2040681D40B8060
          00177C58C9CE00C81900B9024E1380EB050403D0AE808B8740CE805304584A20
          6018100844040376067AC6600277128052043563706292CC17B0CC8C018360FD
          D75361ED979361FEC16A28BF3903226BC2C07FA43F048F0B80B0457E1079AB0F
          AD75A71F9D1F20000001007CD73697590C237602E2068C54ED45698D632EE38A
          66D6CC0081C06D6640BB013537C0138457B782E06BDA806B7D5BF05F427FEF67
          B5810E75ADA1F5C81640010F4D521A8BDA0C6F0141E33A41FCE260187E736FA8
          7C2C01C66D1C0C93B6A4C094EDA93075671A4CDD515F0400D000906B8700001A
          004BE85AE522603A89BB000D4540E300961DAFB47671FA335EC51D80909010AF
          DFB1B876C0FFFCD6EFEFC765272B61D9C90A5CFE7525ED7EA538E1D92C4CBAA0
          97B4B3824A8231644608445C19403B11ED3EE4004257F862E0783F7495F1C8AD
          0B43470543F759E198B0BA27A6DF138B23362562E1DE4158F4CA602C7A793016
          EF1D0C252F2763E9CB2958FA4A0A9691CA5F4DC50A1201010506FB33906080A3
          F76722C1006B0F883340ED0C08040E6720AE80D2047605A4A90484693A459841
          AEC099269C7558D204106720C543E50C548A607513E0027205CA19509A40AE40
          9C81D556542982A3AD68751274BD806120CEC0140E3945E07AC12A72050C0471
          06E40858EC0AD67F3D05AFFA6E1A2E78BD1A73AF1804E155A1D2FD081E4BAE69
          B9AF4C149A42A1B71A815707202999A9C5487150398255AA08EBBC83D372024A
          6A94D88C11CB139F5BA1FFCAD6D89552B9F6E35A439B12B6F5CDA578C76A91D5
          0CBBD5B4C77E0B8230E7861E50FE481C8EDF3C18276D4F51DAA6DFB7A7E2E4ED
          293099DEA7EC50A2C057FA7107C09380A60D78DACE01D403403F02C0A5C72A7E
          14001CF826D77FE88107BCB6084D2AF0F9DFDFC7655F8E824BBF2CC7A55F94E1
          A527CA71F93795B8F0E362AC7D2C1DE3CEE98121A52E70951308CE0E26BBEAC2
          E0EA60F56092596138E0AA5E98F9583F18BE2D01F35E4EC4FCBD4998B73B11F3
          7625E2C85D493872771216EC1E08857B0621AB68AF0001151092150CC81954BC
          9A8695A451AFA663D5BE740B063504839AD7D815100C0E300C7208044370FC1B
          0C83A1264D804906069422A834418A870A0687C419E0995C2F909A81AA17D869
          42199C4B298295267CC4F305523C947A813803A917B0EACD18509AA05304926E
          2B2A18A819030682CC1948BD406A06769AB0FE9B69A4A9306F4F050E5D9584DD
          EB22D47D0C53F4EDC77F11101000DC53835303C02986000380DD8082817340CB
          911280DFAA16E8BBAC057659D01A3BCE68856D2A5B608B5C0A782EDEA53681D6
          439A6387C2D61838AE23C62D09C6DCDB7AE398979270E28E64164CD83618C76F
          519AB075304EDC4A9FB31804DB920900290402860141406090269A46E9A01700
          7C4600B88CAE53CF51E016DEE29CE5F5C33F24006677A70BAE1CFFF68F6F2480
          BD05370F01F177DFFC4341808784BCFDB90D2FBC20DF3FF7ED9FE192CFCBF092
          CF4B7189D6255F96E1D2936538EFED7C2CB8390962664661687908BA8A8331A8
          3008232744E070BA0086EE8AC761BBE261D8CE041CB62301879372E9D7B93B07
          E0081283207F571228180C64180808D82130088AF726130C5280DD41D92BA90C
          0372060C83747606040376069C222818D4BEE6E60C140C284D50CE40D50C9433
          18213098AE6000E20CDE55CEC02A1E92B87848CE00E6120CEC4E421981C0C040
          3A09E0563C9402223B030B067089553C540347CBC81D080C54BD000C0C78F2D0
          63C6804100577E3B15571E9B80B35E2AC2CCA50918393A4C3A0621B3BB310820
          F2761F9E28A4E05720F87100D473039C12A802E1152CAE0F509E7E19FDF30B9A
          63A7735A40BB312DB16561336C9ED30C9BA635C5E6194DB15D5E4BEC56DB1E7B
          CCF58394F511987F771FAC7C3A0EC76E1988E3B60EC2B19B07E2984D0371ECA6
          413076F3201CC77240608281C0D664104740F284003B81C9DB524F058089A406
          00B803205A6CFA077F3B20C1EBAD066002FBF6AF17E2A11FF6C8AFBDB50B793E
          80BF7BFF8703B8F878896891D1B162D1E22F4A70C167C53063F750CC5C118B21
          E5F4DF511482B957A6E27947CBC8AE6753D02741CEB6FE38647B1C0EDD414020
          3108140C04043062A77205040371050203DB1580B80281814A1504069226100C
          F6A571CD00559AC0298286C1812C0303AE17488AC0CE805D817B9AC035037206
          8E4EC24C9D22CC9614A190520482C17BCE4E824A13D819100CC06E2BDA034706
          0692227001513B83A5569AC02982140F294570B415759A600F1C49AD00D77EC5
          8E600A5EF6E1589CF8C4084C99DF4F15662B0220F46CED08EE2607F0C04FA500
          CE77D29AC6E2007C5634C3CE8B69279FD71CCF98D2025B5736C7162328E02997
          675BDF7A5873EC52D916C367F960BFC581987E6D24163CD817473D170FB594D6
          895E226D54AAA30D804510000D0205014A050402028264164CDC96ACD20286C0
          360501010103602B01E0F27A005846D72803209BD4000003805802C0A2A32504
          80D77E1200B79D5C806BBF9C8C1FFEA00A86DE5A86EC0EF8BB755F4CC58514F0
          0B8E15E1C66FEEC1F7080AFC39EBBD1F5EC3ABBE9C8DD58FA66208FD05C59DD5
          1B171DAEC4B5DFD7E1F293D538F78362CAE1B37008A501D95BFB2910882C1880
          03061A042403024911066251BD148140203048911441C1403B037718805BCDC0
          82C1305D3318C6C5430583B795339846CEA67E8A60DA8A8E4E826A2B528AE06C
          2BEA7A01A709CA1970F1D09E31F854CD18383A095C3CB4E60BAC4EC21756CD00
          1806E20ABE5420B8E2E4245CFC6E2D8E7B78380E3C2F866F36C2A0CA000C9DDB
          0D23AEECAA00B0DE13003AE8B93BB386D5043B2F6F861D2EA01D7E7A736C53DB
          9C76F9E6D82CA709364953B93C077DC0F80ED0EBA26E987A2DB9BABB7B61D163
          3158F16C7F1CF5623C566D48C0AA17E3A1EAC504AC666D1880352C7708401D01
          404180A4DD8095126C190CE20628F8554A4072A404930800E93F0E801EA40600
          18002CF8A418B77C7FDF2983DA72002717CA6E7EDBC985C0BFE7BA80672A60D2
          85A7BFBE19E77F5A881BBFBEC70A7CA7FEFE8FEFF1DC0DB5486B891997F6C355
          2747CBBD085A7039FD9E77D0E23D6998B12516B3B71108B6C56918508A20CEC0
          4E1118042308021A06E0808172057B063B61502F453030D0F502EE2448F15039
          03058231264578835304AB5E202098CC3306765B1166BCC3C543336C446902C3
          C09A3C944E82E50C1804D628324140771204060C0281819E3150AEA08652845A
          BC84D203DD569414C1C040BA090402DB19707A3011D71004D8192C3E5C0B750F
          0EC398E93DB05BBE3F068FA6D460AE1FFA5EDA5A6631780E4382FE0A0EFE26D8
          E9B266D8FE9C16D8767C336C554AB9FC501EC469828D931BABBE7C612B8C3CA7
          2BC62D0FC2F43F4562FEC3BDA1F8A9182C7DB61F963FC7EA8F15CF2B553E1F87
          A39E8F83512F100C1C1018ED8040EDC624A8B5DD8038013B2520106C26006837
          A052020D0176030C802D2990D600807AAF530260FE474578EFD7974B6072918F
          FE9C9B4C9B6FE7B78F937D2FC2F99F15C25BDFEF94CFC6D4D5B9FD599306BC49
          DF5FF8C9483CF2D7FACEC240E2A393EF62F8A850CCF40400DF924CEFEBFF5A87
          ABBFA9A1202AC491BB52C80DF417517A000C02CB1938D304552F8011BB943330
          EE40170F55BD60CF20A8E70CA49BA03B09AFEA1481E57406264590B6A2D31910
          0CDCEA05B960C3C0E10CDE1D69068EC09E3170A409A693F081B4151D33067AE0
          48CD18B033E0B6A28181380371071A06971D93B6A28181ED0C4C8A706222ACFB
          9652838FC662E94DE9F254237EF84B605D37EC3ABF2D0F5F41C78B5B60BB292D
          B17505D9FA61CDE4DE7ADEE19B67CA2E0F7E75EDB0F7423F1C7415A56F0FF5C4
          A267FA62B156D1D37DA1F8E9182C7986154B2088C53281417F0583E7FA8380E0
          8538AC7203418202C186012030E0F480216040B0D97203E0B536A021305100D0
          FBF700C01F6F0E206676345CF86101ACF8A2CEDAD5E9CFB98927FEF8BBA33FBC
          8B171D2D00D64327D6CB9FF7AC05B023E0CF7FF8C7D778DE47F9F26758CE3FC3
          32AE62E9AD4B80000004000E7AEB9904D6B309BEAF0102015CF6E568CABBF3A1
          607732E46C8D034A0D209B402030D816C740007606E20E482A4D1800020352DE
          CE4420188014102945D06902509A40929A01B716D91900A509326350A1BA0940
          CE000806DC5A84D15C4024E93441660CC6AA9A01E8E2214C7C63B863C62017A4
          AD68CD188CF4983128921983B30F1783760640309019034A13E07C82014F1EEA
          E943BE49890B88326740CE00167EE29C31206760660CF88E45D54D5033066AFA
          50CF18C8DD8A408E80403019E6EC2C857E337B40506110742DF681D6C5CDA159
          56336896DA145A643683B6792DA063592B089CD201E2AF0882949BC260E883DD
          61E4D3BD60E453BD21FF895E90FF786F18F9446F2878B20F14928A9E62090880
          2000A5A4B267FA018100CA590A02A251CF534AF082A4054020008280A866A380
          80DC4022705AA06B0340690117098141401010E9B4806B03F4EB64485BDEDB39
          07D0E000E8E5D501C4CC8AC6F33F1829B93A073807A5B79B814C9FFFC113EBF1
          824FF28184EFFF554D0FB2436071509B3FF7C6773BF0DC0F47C8AF599EFF3EE3
          14761DDC5ECF01A8C0D76E408B6F56BAE2BB3A5C727C144EA2A02AD8938C59E4
          06B2B6F633AE80520496B80206011208ECE2A1A40A56CD8041E0AC19E8344175
          124AF63208BC140F49BA93C00347E20ABCCC18709A00AAADE8D949B0DA8A0C03
          3563A03B09E69E045D33201898B66299DD49B06B069222A83441B9027BC6403A
          09F6DD8A6E9D045D2F2000708AB0ECB33178C927A3F1DCFDA5187F0E3F9F3008
          BBE677C19614FC1D2B5A63C094F6D87D7E574CB82A08536E0BC39C07A330F7F1
          EEA41E90CBE7F093F87DC4633D31EFF15E984F220890FA3008B0F02972032476
          03CA11901B206910B013A0B4204EA505E406545A10CF6E0046BF68D282012A2D
          2037A0EB03522474B801AB36A01C41324EA0148100D0900278BCBC036066149E
          FB5E3E5EFC69016EFFE631094ABEE597FEAC9BD8EAF37747BEDF8FE77E940724
          BCF1D88556803BF5DEF707F0928F6BF19C0F865B9F79FEFB5866B6A06075DA4F
          02C08841B0E6DB5A5878AC12C75180E5ED1C88195BFA61E6D65895221004D815
          E470BD406010EF2C1E1A18B03370D40C5427814150B0476060A7087BD57C8149
          1318069C22B8B715190676BD8060A0479179C68052043370F486EE24A8E94305
          033D86CC3503738392A4088E9A0183E01C992F3003479422100CEC4E822A1EAA
          5B97ED1461D1A72A4D30E9016B0905FC82F72BE1C2432538E7B511386B6F364E
          DE928159ABFA6168251F5F168051177485C41B5D987A57989C6D98F3702429CA
          790E3F0CD567F10F27591030202027C02010086810143FAD4050421237400030
          6981050202804080DC80A40424951224D62B12724A206981D529D020A09460DC
          260500570300DC5E5E01D0970030F7F008BCE0E848BCEAD8591290DE8A7B2C53
          E17FECCB1B60EE07B914E0B978DD6717E0B3276EC76748D77D7A3EAEFE641A9E
          FDFE3038FBBD617816E9E3BFBE23FF8C375761D280B97F99FCB301A005EBE87D
          D5373504AE721C43013674DB00CCD81C238E80C4E98181818040170F0D0C7417
          41B90256DEAE01AA93A060C0698281815B27A1447711B87858EE281EBA7712B2
          80EB050283839E9D048101981B944CF150660CEC7B123845B08B87E20A1C6D45
          3586ECB85BB11E0C54178120C09D848B3F1C85E71F2AC6B96F8CC4335F1D8A33
          F664C1B45D19D6041DCFD3573F32107B4E8AC0901A170EBA2514D21FB44FDED5
          479E63F6037C0EBF4000180416041E6531042C3740298172030C01E506FA586E
          8020C02941BDDA003B01A5F8531609556D208953020180408082DFE906C61200
          5297F76A0080C7CB2B00FACC8CC439EFE6E2791FE7E13CB2ECAF9375E7A0F42C
          EEB18C6DFFF487236447E9A2A40037817ED611D6503C5309661F1982B30F0FC1
          4D274E7D97A1292EDEFAD2B5BF08009EDF73A1F0A2A3E558BD2F07D337F56310
          800681A4099E20D0F5027105A71836E27A81E50C461A10D89D046B14595C8155
          3C4CD730305D04BB78289D04993C941B94F89E040303E77C818181DCAD38E390
          D5569414C1D15674A408B63310107CC49D840A38EF48299EFD461ECEDE3F8C03
          DEBA51864541CF73F33235C7BF9FBE3B1D6B9E1884BDA712004607E1C09B83F9
          6C43741C772E32C76F93408380DD0041205A9CC0F047AC9400463CDED39112D8
          2010083C15A38B84B1BA484810302981486A03C60D2808385202A90B1837B0C9
          1D040C81B12F0D82D4650D00F07C9D1200671E1A8A733FA41DFDFD5CBCF7F32B
          24287F6ADA6FEFD7CF4B80B3661DCE21EB6A6BE6A16C20D1059C8DEB3F9E7BCA
          7FDF6F0500D67A4A0DD67D5F47E9492996BD9C0E595BFA63E69658918101CF14
          703B3167AB140F9D3503A91738D2049522F0B091C7C091AE1770F150C3C0396C
          64C140E60CEC14814040E21441A709606060EE499034C1D40B54F1904060D204
          6727419C01DFA044C02DB63A0967BF5B846752C0CF7A6D384EDB9B059365228E
          DB6229322527BBBD0E7806801308EC006A1E1F84BDA6280024DDA44FDF759CB7
          6740A08FE0866C4A0D1806262D506E408180202035827AB58127755AA00A848E
          DA80A405CA0D3C2B6E00AC96A1D529D020509D02E0D901551B50750103029926
          DC38B001005E5EA704C0ACB787E01CCAD7CD6EFEFAB7CA0578DBB59DF705FCE9
          E8620972A3E9EF6489A6BD4316F39D4C9CF676265DC09978E0EB6DF2E73D6B0B
          BF3605F8B1EFAFFCA10E577C5D03671E29A4A04CA39D3F5EE608B84660BB024A
          110C0C3CDC81860158CE80E43E6390C452298282813D704420D030007BC640DD
          A0A4660C2C187017C1A37868DF9340921441C3408F218FB0260F09063083C030
          E30DFAECB5A138F565CAE32990F5982CB7C2DC67E529F8CD98ACD68F0220F14F
          2E187C8FF3BC3D82008921907E9FA404C06EC038829C87140804022A2D00E306
          72756D802190FF840502E0DA8072036EB501810089BB04E2062A2D102837A0D3
          02EE121008ECDA80736EA06E631201A06703003C5EA704C08C3773F0CCF7865A
          3BFA559FCC3BE5A00F8B1F16CADF1FFDEB61BCF048A515E8AC296F65B06807CB
          205B4B7A331D2F3D3259FEBC810083C53C5BF09DF7DFC49C65F1BF190058EBA4
          465087977E5945602AC092BDA9B4FBC71108620404E40A1C298271066E9D044A
          1154CDC04A131CF50272063A452099E2E16E3D864CE214819D01BB02776760D5
          0BF4DD8A3A4530302008E84E82DCAD2829827EA0C9244E150E92F60FC1892F67
          C1040ADAF1B4C35BD56F92A3170E931CE3B15E20C0B7D35A77CF790260C08D41
          30884FD8F17AFAAEA405E0561B5069817203040002013008242D6008905481D0
          804015095581D0AE0D98B4C01409392D1010E8DA004340D5067491D0511B1008
          901802B51B9220E5F701C01F6F0EA0F78C0898FA7A16CC3C9C03B48B93B228FF
          CC82D7BEDE2A01CA433BF4CFD593D9BDF77FB595831C26694D7C23CDD204D6EB
          A9A22587275A33014EE59D3BE247E700FE1DF10CC1EA6F6A61C9E7953085F2EA
          91BB0743C6E67EA41860080808140C2C39E70B72ACF9023563402010E91441E6
          0BC81938E60B9264BEA0608FDCADC89D04355FA0DA8A50FA8A38032857290277
          12D4730C64F230836F50E2E2A19E2F20EDA754E1D54C18BB3703C6EE4885B1DB
          9261CC96C130866F96D934D07B1F5CC400B0A56F9F95FBE82DA93A8088000004
          0020004048751024DC100403EFE223B8E5186E7D167F883E8B9FCFE1273104EE
          0B67104026A504590F725A1009E4064851DC2510891B78B43BA704C0B5018200
          A997CC0E1004ACB981429E1950B501A094406607D8096837005C172010A8B901
          9E19F0981BD0C3433C4108B51B1221F9B29EE06A9803707BD57300B440D86B46
          044E3E9881D30F9175A71D5CEFE630FFC868FCFB3FBE9320F5767F003B03930A
          DCFBE95548412E1AFF3AED4A075360DCC114648D3DC04A162D3A341EEFFC642D
          3EF4E99FF02F1FAFC5594F55C9639B7FCE1C80D1152C15E0FC2E5AE3A6D1B8E6
          DBD140E2775CCDEFF4D9CAAF47E38263E5B49BE692AD1F08E99BDDEB031E2210
          585387CA19A8E2A1720502033379685C81DB3D096E5D047106EEF50202013B03
          9522549814815DC12B6958BD271546EF48C69A2D83B096725B2BCF658BAB6CAE
          F4C1DDDA5FDA05E8A9383053714B5E1DAB6B010E27A00060A5049E0E20FE06E7
          E9BBFAE04DC7E9BB0C01675AA06A039C124462962E129ABA80A4055220B4DB85
          0A04764A20750171033245C84E408A842A25B03B058EB9018280991B9094C09E
          22241750F3E20002408F8614C0E3E51D00D3C371C26BE938E51D6DD9DF4A373B
          3A3E71EC5609706F77FEB14C57E0E40F9FE19CB78AAD401F738076AA0383B1EE
          35A5DAD7E842DEAF54A304A3F70DC42177C49C1200577C4FC1CDD241EE16ECDF
          D6807A57015E4FDF54C3AA6F46E3AA6FAAEB69C5D7D578F1D172A87B6D18666F
          49C0F4CD7D757DC08681334590F4C0D149D0F305E40C544B51A509A69360C1C0
          EA2238878DF86E45D34550F5029D22EC49C68A1D8371D4E624ACDA3840725CCB
          DE3A2CAE810049DD2DA70120A2E09FB96318AE3E301B1F7FFF167CE7C42BF277
          C37AF7E43EB79B65C40D30083400A6ED4A730340FFEBD5E9BBCE8337CDE9BB02
          0272020A0421EE10B041C06E40A7041A048F68103CAA8A84A640A84060770AF4
          F010B901951648BBF01935335066EE2BB046894D4AC03718190824E2E81706C0
          E04B1B00E0F93A2500C6ED4BA59D310D27BC6176F154187F90DE69073FF4CD3E
          B988BC1504597CEF8040E2E4663BC0F70D9400B7F46A125693AA58AF24B26014
          BD67DFDED701806A4780EB1D9C766ECFE05EC5EF1CE0DFBA07F64A1605F7CAAF
          AB58A0DF29E0B5BE1A85976BADFC7A147D5F8D177E5241F97736E66C4DB03A06
          DE6A044E2920F4932E82380391DB8C8174119C4060181820080C762641D1D644
          2CD99480651BE2655753052FEBA25677CBD1055DAF07AEA4FBE0AAE8B5E8E5B1
          F8F609EFA73999C9CC273EB8451C818040D2027203DA1130004613007A3300AA
          03B1DF75FEC0876CB81FBCA91C810201A704EC062C47E0D6325445C270354464
          40601C810281EA126847606A03020105024E0BA43650F4945D20B440608A84F6
          CD451A04F1B266552F243400C0CBAB3E0068817A1200EA5E4916EBAE2CBBECE2
          A076F2C1B8E2B02AF8B1BC0DF3385381B587CF9740AFA600D7818E1CE8671D2C
          C16B8E2CC2256F4FA5EF92B0626F0254BC4C41775B6F0C2A0B94BB01F9846247
          A0C36A0A709633C8ED60A700E7771DE46E81CEFA6A149860375A7E92556904FC
          BEE2EB4ABC8CFE7FCF7EAF887BF764ED0750F0BB3B805348BE57C543F74E822E
          1EDA772B6E271090F208322337C561E18BFDB1F8B97E320853A62F68FB8E39AB
          D8C539AEBAA0C5E22A08181030004C5AC0C16FFE7EF8EF816B330C6B93B6F13B
          7FF7D689BDF6ADB35C1BD06E8021C005C1D18F0F140004130062AFF587B8DBBB
          E9D3773508C81124598EC005961B306901C97203A648E8D1295073030202F04C
          0B1C53840C022878C2911668376046894B9FD54542E50664CD0C3C79CDF8DE82
          4197766F0080C7CB3B00A68563CDDE4138E6A06DD9EBC8A23B76737CEED8BD72
          119D2A15305D81B7BE7E152B5F1EC0A2001FC0818EB30F14E1DFFEAE6A09AC8F
          BE3D84AB0ECD83D2DD7198F1E75E16002E3F318A82DBB2ED64E1DD7674CF4007
          13ECF5025DA402DC6899D1890AD165272A80C4EF22FE6CD1B172E4BBF52A5E4D
          C7A1DB1220E3476A04DE00C120B03A095BFBC3B0CDFD71F84BFD70C40BB198FF
          5C0C16F05D727C218B62A0E4693D04C320F08000092A4D8E4B52105039AE8680
          0CC2F07CFC5FDE5923EBEA6D7C9BE50600DD25207171D04A0B1800D58FD90088
          B9B61BF457C77063BC050205019D1680332D3010603104B84068DC80010143C0
          4A0B5491D0AD36906B4F11B21B80D1CF25E395FBE6E38B1F3C84474EBE615D3F
          ACEF7FF80AF77CBA11AF3DB0C831406443A0F23902C0D2060078BEBC02A0C7B4
          30ACDA932479BAB2EB62D9417672B1EDB49393DEA6E0E6C53F552A60ACE6031F
          DF48396D3C94EE89430EF2ABDE55C33EDC4D309D03D6A6E34FE0F03B122C002C
          FF92ACB9BDAB5B012EFA8AE516E8A002DD6D57B703FD6405E84077133FA790B5
          F4CB7220F1BB3CB7F012D2527E64D917E578F1A72538E3501E98D6A1C7FC80C8
          AB432060E46C88C1A12FF4C5E1CFF481DCA77A631EED66B6B5553B9AB2B5EA76
          59E7AEA6ACADFBEDB2E682563B9B1B04F84E3971030F1DBEE147FF5E9C00B06E
          9BDDEA7CA4560A4ED9994A00482200840B00FA5EE307FDACF3F8D531DCEAF0CD
          001CA02000EC06140482ECDA80E506A453206E20DD40E07E552414083CA84689
          A56568A6081902A475AF5E8CBB8EBE88DFFD70D2BA567E4C6F7DF132CED95AEA
          E606B863D00080FAAF5302A082F2D3EA7D2A3F67CB4EA21C5D767211DBF54BDE
          9E662DBAB7AE80B9D03EFCF61D2CDF9D00C5BBFA6311E99E0FAF95CFCD05CA6E
          C1A40CAF1DDD8BD9676761FAD2585CF6055B7215EC1CE08E60A7E0B6035D0739
          58C15E2FC84927CAD543499DA2E036C14E027E5F22B29F5BA8248F32830B8F16
          E18483C37008055C260577F64E0A72DAE52D006C223050C067BFD007739EE98D
          439FE889C368171B4E52452ED3FBB6ABDD2CB1B54FF6055DEDAE0F01E5044076
          35C7108C818006810CC2FC22007CC900D077CBA9762181404360472A5611007A
          6900F4B9DA571FBE4972828021A0DC000C2000B01B60080C2408383B055C2424
          081837E0E814587303324AECAC0D9CBF752C1E38B64BFE5B8DB8BEC423E99EA9
          27A79DFCB9D974D8610A0408A0BC6EF40E039746FF1E00F863CD01D00241F769
          6150B62301D61C3E0F9EFCF44E7CFDABDDF8FA4925B39B97EDA61D9D74FF4737
          CA82F3582FFDBBEAC9ECF0F77E783D16EE888502D2DD1F5C239F392F509E2634
          7F79BB0E6C6700C0A59F97F3AECED69D1F294E3B38BD3B44C10D977DA944C14D
          E277F56B0A6E8728B83F2FE500E70793C2124BA5B0E478292CA6770EF0C5F4EB
          45F42E3A666BE1B16258F81989DE2FFEA4084AEE4D839EF3A2A0F7A22818787B
          0FC87CBC3B643ED61DB2288F950BD95BDF5B15B960C4A33DADDE37DB5AEB9EF9
          27CC3DF3040273CFBCBA4146DD37CF452EABFFEDB86FFE05B94906B8C8A52100
          0FFE02008CDFE29C1B303303C93079470A543D9A040400200040EFABECF3F8E5
          28EE3FFBA9F3F86FED06E406F479FC04013E8FFF0E71039C12C8CC004B1709DD
          E6060802A06B03406E802709D5FA911E39749BFC37B2F8DAE2E0F63680E64DE6
          E1326F7CBE476E33A6544A9E3B30F092E88639008F971707E0C2EE53C370C59B
          F3ACBF004FBDF9D52B5844BB9FD1EB27D54341BD5D70E6623B786237E66DEB2B
          BAF3FDAB4FF9E7CDFF471A3980A5C7CBF1B2937A2757816D597696C72E2E3BB8
          C86DF756D241EEFE60D263C5B8F058893CA750825C3FAF909F70A49E72A4F569
          11A5018540C2F9C70A71F6FE7C8C3FA72FF6382B1853EF0CE5021766DE27C32F
          56818BE52870D9452E6D6BDD8B5CE206A0C09E8B576981B95D56CDC5F345AC6B
          036A573339AEAE0D58CFD47BE0DDEB4FB9BE2CF377F2260140B50C6566802160
          3902AE058C7A34511C808B1C40AF2BBB409F5B7CE44C7E0201C6DE52CF0D3008
          C40D58DD02AB40286E8041208E803B05D614A19516841104941B78E1BD87ADEB
          E0543FC34FC938CABA1752E50EC3D2A76321E992DFC501FC1101108A8F7D7487
          2C20DB73BE608CCC2E3DFFF5C958B03D0647922E3E38493EE345F7466973CBF0
          A5AF9F85B95B7AE35FDEBB4A7EFFE30088C125C7CA1CC15EC63BB9D3B2EB6027
          CBAE829C777415ECC759CEA70F8B68379740570F26FD8CE508760AF0F99F5180
          73909338D8F97908171DB5442940015E489F9DF76101E6DF391007DD1C2637C5
          781B85D5C32F4E4B0B56DF5B17B9C80DD8102037A0EA021A0256B55BA7047401
          734AC0526981818055F156B7CB927E3E00F638E706C07EA416A502DB93B1F211
          0D80AA40ECB9DE077ADFAC8EE31608DCDC55814020202000B7DAC0ED01360454
          5A0083BC14091DE3C4522434C1CFD792B70ED3CF917100AF7FBEDB0268C953B1
          9078495403003C5E5E01103D2504EF7AAFBE4D67F1EFF9F37B3EB84EEDE85B59
          7D70D7E71BBCFE7996E908BC70F4111CBAA927DE71E4A701907A490C2EFAAC44
          82FC869373F1916FAE84AB4FCCB07674097409766B4767EB2E016F82DC6347A7
          0037BBBAD7400713EC12E89F8CB47481125CF0713E9ECFA2DFD7EC184C176E98
          7327B3AADC360474BBCBDC2FAF9C804080C510C825082837A0EE97779B842327
          E06879714AE0512074B8019512485DE01701808787D40336798CD8B801E4476C
          573E32C002400F02001FC9CD67F2B31802961B2008C4DD1A00939F2E46D6C22D
          B371D1D6D9F87FED5D079814C5D67DECB20BCB2EB039CDEECC66724E222A4114
          23923180600EA0828A88A8A84FC5878820513206B28248064124838012258808
          98C09C63D57FCFADBEBDBD43CFEE00CFF7AB4C7DDFF966A6A7A767A6BAEEB9A1
          6EDDBA75697BDD7A4E2326011324B4AC81A98524D084FA4F82842FEC7C8E7FD7
          A90A3F948F083F620077AC6E237DA7DB2EACA91A3E162200FFE64A00F9440043
          F698CA3EFE79FF32787692497F1169F38BD654D517ADAEAAEFDF7E7DC0FA81F0
          EFF1DE673F1CD12DDFACA45F38389C5F974400033E6D6B971B077EFBED47BDF4
          BB49B6661F70DC29E86D95ADCD1D3002CE6013BE3F2042CE826E849D059C1E59
          C01DE8CBB8D4AE7804E075D7CD67B1E09B019C85E7E4D75AC12DB33ACE9EF396
          5458B6062C97A02809B04BA08804C41AB0484088C0CC12B4614BC068B4A224C0
          D35EC88B274BA09E9E7D120480A421CE203435F5D81A602B60DDD986006E3604
          506958BCAA323E4E57196FF6E50709DCFD46773D6DD738BDF7F876FB1EB9E193
          6F3FD48BDE9FA5DBBDD6845C82226E811D24BC72C179EAE75FBEE7F3F1FBDC7E
          37041C539B62510252A302EFD901C05F7ED03D575D615B52EC4E2DA8A11A3C96
          172200BF1690006EDFD48E3B139D4AE71481F857DD37B5628D7E01B0AAB2DAF1
          A589D8221DD8FF3372736EDAD45A4F79DF307D710470CE6335F448AB1A113E2B
          CC0EECFD69A37EE6F88D85C24E3E3A697316708168F3428D4E267CA13667DCFF
          711141577D8FD2A325E406977041140BEA5E7A448D043C5EBDB1110BFFD9D36C
          2DC6B9F080B104B28B92C02B1CDCB2935F382E609180331596AD8122246055CF
          318B631C7181C2C2194C0276265C5D3DFBC018EEA7400480E378FFB54313ACB5
          044C02455289AF5FD758779ADB4057B108A060689CAA3C2E565F38A3AE7E79E7
          5857A147C017C0BD02F0DC29AC10F089DB9FF58F0D100964EA25074DF6A8BFC2
          1138979CFB0316A68CAF3D9F6FD137AEB888FB0F0944420208B23678344400FE
          2D20015CF04615FDC32F66DED5DFAF17615CFEC95C7D3E6974A0C5CA023566FF
          403EEE7613E5330377F5D193DF1FC6CF4B228009C7FBF3730C24BC07629141F0
          EDAFC7F593C7BA3A34FAE5C647B75044D02D01776A744BABDB80808BB0B3901F
          36408933E0EE0F2F52043C32AEDAD09035179BB3468B052E98C1E028B7151770
          9080650D58B30485C92F0421012B36A00AE30285C1417109DA5B45354102B382
          2400CC16380A6B16D6D45B7D96BE7E6D63DD716E7D5DC57201F28800466F19A4
          7FB2B43400A183F09564AE4378E5FE038BDF7FC522013365D8647A96FEF4DBC3
          FC1ECE75BB867C7EFD47CBF56D2BDA706C65C8967EF63581DDC7DFD6D72E6B56
          34C06AF521665BEA3F6AED89182200BBB912401E11408BE595F486E32BB863FD
          4B8189490FDCB2B9AD6EB6225F377B235FF5DA720D1F13817542E200B30E4DD4
          930E0CE5E7C51140132280719F1937C4793D9091AC3558F1CD7423E4468BB380
          DB42EE106E5422760A380BB925E0B690FB0978EF43A6B41960CA9B5DA8ACD266
          FCBAF3FAFAACB91C5A8C73E1012602131730116E43040A73DE9201C7D680A384
          D6857379AA50AC011AC44204F6202E525493494088C058044AAC81CD9F9AFBE6
          6689014E0208B496A0FB9AC6BA0311006200E7F66AA2B71E5DCF9F01208CA7E2
          A3C3B4170207094890B0E772B313B5DBB80164BCC182E8B2A8B9C91DB0D6143C
          B6A1A79EB37F92FEF7C69E1C64752610196B8A887401B956AF5755F5FE1C02F8
          E7E501E4DDEC55CD96E6ABC1EF3DC07EBDDBC62052BC63C3B115FABCE5B9EA5C
          42B3370A02D6FC17BF73DBE7EBF5C4FDA6C458710470F6A3D5D5D8CFFAF1F5FC
          07865CEBE08FEFDA78FBBB657AF61743C94F674137384C66FBE18B1924E4EA9E
          0F0116741BBD8143AD54EF0F5A290879AF430423ECEAAE8317A83B1DB80378BF
          253F765C5B8FD7C7CB7CF7593CD78D75F24C0466BE7B062F912D9CF3261200C8
          122832E7CD01C239923350C0390334880BD7CB9BA5B2EA723B6780AD015E2F8F
          D8801520B46BEDEFFADCB862817C699B00DE1F6B3208573634EBE699049808B0
          B4587598534F3D34A5AFFAE947A3F5A1F1035D3358803884046E5FD689F306C6
          BF3B985FBB8D0700A4EF34FF9111F8EE67EBF5DAA34BF50BBB86E9419BFBA86E
          4BCF5717CC35B917D287A6FF4C1F22FFA2DE23B93CBE89004279005673B50072
          6FF6EA7397E4E9D66B1AE8CF7FFC843BDDDF34C34D11FF6ED947737593A5D9AA
          FB3A53F31F03C5792E6013C0F1757AC2BEA008802B0AE379200270C3C11FB7EB
          29C71F17B3DDA9D1B92A316B746871D6E476C152543D82905BF50C0952CBD002
          174679BFB0D459FB3575D9846553D6F8B48E5C786309D8116E630DF02C819D06
          6BC506600D18B78049C0E91214D16418C4ECD75A26AD233660B9042695182E41
          B00480D90259596852898D35C09600B901A3B63C66F72BB4BEBF2B78AA90EFDF
          F6C97ACE1B1857020100E24638630AFE78FFCB5D1A0944DD96B5A43E2C6A0D5C
          FC5A1555F7115800992117C0D184002A1301CCB309E0A64CDD6411997ECB73F5
          928F5EE5CE75BB394E365FF7D91BFAC91DF7F17337534E84762B11C0B8BD66B1
          4AB104F048353DFA93BEAED7936B6140E0390037C53938567F3DD70878A190AB
          3B21E856656223E88EA2A5A4D97BB280B3B0336E67703D4353D3705F0B2E7186
          D7ED56D766E11733965038CD6505B68A9280CFCE85C72C8121013B0D1630B304
          964BE05F3E8BB5989F5F7BF9822224C0A9C47007761D3F090240F290A3A8A690
          C084BD8FDB7DE9EF02FE3720E3A6EBFC0BF5B8774A2600274044F86F7071F019
          7F6280ABF0F29E914C021264BD686E655577404E8800FC9AD302982B04907383
          4F375E90A39B2CCBD677BD6DFC7ADC30370D0012F06765B7012342BB8509C0B8
          0FC51140632280911FBB138A08BCF39840620DC0DB569562D6E80749C049E045
          A3738562874627415796A0139AEB5BE9516A1A725DC37DA6A6A1D4356CB3AA16
          2F82C1CA38904083973C8AAD01E71A792B2660C505EC8A39CE5C78002460B904
          76E2903367C02AA64926AD9D33E02001DB1AB066098227004C173AD712883570
          FFA62BB5ACD62C49F871FFE10EE21E49BFC3022CE973E2423EBB6980BE77A559
          BEECE66A9E0CF05B4006F23B5EDE33C2EEC356732BA93A210238A13101844586
          652734889F9ED9214365B6CFD4BE2B7DBACE843CDD78994F9FB5D8A7D77CBA8C
          3B3410438318F01E0641494B50B71C5BAB9F7F2F30E3CBCD3BEB91AA7A84553E
          DC9F004A32459D96C9E22F5E34024E1ADCAA4EEC10728780A368E93E11F0A62C
          E4A88024B06A1AE29171C59B3575BD97D278410CA7BF9A3C78B2040A5360B12A
          4EAC01220355C425B066099ACE969902AEA167B9038544600F60131730E62C93
          80650D142E2AB2B6DEAAAE77064B0007C6142E2A7A438A6AD6D7FBBE34AB3C21
          4C6E9F07706DA7D0BB21D05800A472D49B8716EA66D3ABE8E3DF7DCCAF71EFDC
          CE3F19C85803EE5B732DF521F5E3AB05AAF680EC1001F8352600EA88F4D81A15
          9FCB6C9FF11308801E7541BF5CDD60BE4F375C9CA97B6CBCD2EED040D3342541
          6ECADB440063F6944C008D0654D5CF1DB9879FFB134030700E82A1741D127275
          EB5EBB42B1B3D4990839973CBBC912F01B80DD005743427114856A4828908242
          2997ADACAE5120A36EE1AA38256BE4C52D28B40678792C0A693A6609AC75F285
          6E01CF12B04B60B905887283084002046B2D4111B78089C08A0DD8B3043B8F9B
          5D9A4B22004C175A69C4662D0111C192C3D3F93DB7388E00DA5DFA76FFE7BBF4
          8BDBC7E82EAF5DAA2A8D8DD795C725E8FE6FF6B4DF0F345E20E8781FF904C824
          9CBEBB7051D97F8304E43F6EF868B921D457F255ED874304E0DF4000F8C1F1E5
          32CA5DEFB92CFDB0104056579FAE362447D79DEBD5F5167AF4C2C3B3B9438B1B
          18C5C14900A3773FCDCF8B258087ABE8A187EFE6E7A74200800C82FDDFBFC335
          0D0B85BD5093B3B01B415746D059D859D019564D435444EA666A1B322E59518D
          05BFE86218B3345688A00809989571766C804940AC014302A8A8CB3903372DBF
          4C3FBCEE568E700303D6DFA6BB2E696E15CC10BFB62809609640EAE89D0C0158
          69C4BC96A0D7DA2B6CD33F90103A857FF8A6A774DE9858DD75DE657AC4E6FFE8
          CD47D7D8EF09DCEEB140CEB1D289D59AC34BED63B03E4E87086025E23A9831E0
          18CB2B79AAD6C3592102F06B6C0110E2C2A3C21B259F97B48AFECB1F3C570A57
          A08B4F173C94AD6BBE44037649817AF77333B08A330D034106DDF37B86E851BB
          07F1F3E208A02111C09043BDF9792002C04D2E291145E213933F7E4A717D4382
          08BA08797760E73956C93381A31A128A983A2A22E1F1E2E55559F81D2BE2ECC5
          304C022F159200402450A4620EAC019000D06C56AE1EB4E93EB5EEE872FD7D31
          452F761CDBA8A7EE198988B64D0280B5A8C854D59D7F1204B07F34270E014825
          5EFDD17C3E1EE8FECA7C3C307CD340BDE9E86AFBB513B85F30FF61E617E7AEC9
          F9D69A02556B72929EBE6B1C07F1E43DDC3FC406F09BF17F4E8614C40D6C3DAF
          8E6E412E56AD87FE1402F85BE701A04510E2880A72A233CBF5C968ED39E66D9F
          C1F3A53C67DAD1AB726EF3A9AACF65A9F66F36B3F3B54B0AF2F8439277EE5CDF
          4D0543000D1EAAAC9E39D4CB350F00C0C0823522E7E3B9DBE0108DB5EFBB6D10
          76D563CF45EA3F077BAA7BF776804657DD76345124E08CAE3B20E4F448C28E2A
          C50C53CC947135F04E2375CD3B67A956CB2AF3BA7833700BD7C7D731CB62FDD6
          C7CB1A7926016B8DBC976BEB4FDE314C1FFAEA3DFB7FC87F91410FE0B933D0FA
          E1D77BF5CD6F5C6AD719201228923300A2C0792511C04C22800E569D81EB5736
          575FFEF8291F0F64B63B036C4EE0FE8880BA7D2E10E4F3D527262A22015583FA
          12FD79D92B0D158860DFE73B8A7C8F13E8237C67710483DF85737BBF7935EF57
          50F3A1AC501E804B2B4DA840F05287D42F5F507E94AF93F777B801B004F04884
          A0BD9D7DAAE0719F1EF0B631CB01DC00FA5C891073ECBB9FBFD267CFAFA447EE
          FA4FC0CFCBB5EB3F54590F3E78173F77230011EC03DFBFAB8FFCB08F9F4348DC
          068408CFDE6F8B56C93DFCFD5EAE6DD86DC73927542D2E2C7F669540B38A9A5A
          D591F4054B2BE99AA4B1A0BD6A59262C9180B106ECDA7985EE0013015C02630D
          E8EB165FA2777C66827500FE23FE5371031A0226831A444C24602C01630D702A
          315C82932100D98D77F4CE4702267D01A2FDA1559D1AD9EDDC6000B2C6F51003
          A836211ECB8C151181AE31C9AC3004605D5DF64A037DF78AEE7AFCBB43F4968F
          D79E400A6E634320E7B4989DA79BCECC2602F0855C0097164E284748255423B4
          A858BDE26C12FC1FC90D0063320964F2F34C9D7D6B967E70A589CE03180CC50D
          5A4006DCCAA38B74A5D9097AC4CE2008E0C14A7AD0FB7798CFB9DC647C2FDE9B
          7874209BECEF7E1D78D7229972023080713DA7463DFAC3013DF4605F47D5E206
          FA4AABF499943FE3AAC55BEAEB8E043C9EBFA48007ABBD3E1EDA8B0801012DAC
          8FB7E2023CCF3D74F3237AD5878BAC5571B3F513EB4D701380263B5941124D0C
          12E8BEACA5CC14702A314860C731B38F6349043063DF287B3DC15B475FE76381
          2C3BDCE3D3F1C9F159B86BB86F629A032FEF78DE5A6118AFB0C2B0FA44B3CAF0
          A51D63F43D2BAEC3326326823A5392616159C49A8A2C42FB1A6EDF274AE7FB9F
          BEE6380BB2326B3CE80D11804BB3E300841CC259A5C2FED52926277A4ADA05A9
          47A9C37E6512804B605905DE2E3E7DED8B57EA63D6D40D6E68A081239A1AE8BE
          AA8D2E981D4F04F014BF2E8E00EA11013C75C04493DD084034E1C0F77B6832DB
          F5BDEF7554BF58BB16F913120401C731009DC73128E53AC0980F1E63E11641EF
          F8763D943F33E01268A6A8298A9B365F9407D39597C5B2E62213165A0BD6C090
          4D0FEBB73E5C4C83EF2BFBDA6E286E9AAC2408096CFA78854C17F22C01501201
          08214EDCFD1FB3569E70FCFBA37CEC546779FC81EFC6FD45FF3A055EF0DEB177
          49C89FD795C6C6EACAE3E2749571718A48404FDD69CA9909DEFF628FAE3B39CD
          B2B0845853F48CDDE3F97DB7B101C8B85B7B649989B54CCF52D5FB8708C0AD81
          00E006C41060055425B4A4A3D746C6470E496818BF25E30ACF0F24FC85D6003A
          B1A3579F3DE02CBDF26061E4165A15830B9D0F6173FA8C0F6CBE53E5CF8AD7C0
          F02008A06EFF02FDE4FE1EFCBC380278E2C0ED62B6AB6D5FBDC5C7DCC8281041
          01CEE4A1D14402107811F6769BEBE8769BEAE8B69BEA70515341B385B91A1572
          3068990426B01FAB9FD968B4AB001A5E0262102EF9DDC5FD9E600092132BE699
          2DFD40023C4B800531DB4B2000F90D0F6EB89E57177679A309BF86A0BA9D1F0C
          9C028F6B05C21E127C4C1BB67DA5A9CE7FBEA22E2080049ABD5C4DAD3AB4C43E
          0FF744AE3576DB607DF1AC7AEAC6456DF5A36B7AE96D9F989DA5814056897C76
          E0C67B4D32D6345F88008A696104580115099984BA848B09DDC2A3C21F2D9F17
          B320AD55EA31FA8F6C01B015D09E3AB26DA6F675F3EA7EAFDFA3DFFEB4F0A638
          81E5A324FC3A6F66DC4911409DFEF9FA897DB7F373DC4CFFF364F0DFB9AB8D98
          EDEA85235676D9296856D118C0A07DF716A9797805600A9A6A809EEBF3E6E7B0
          F05BE62B4840C11D809F8A6B048A80E3BF9C8EE677427E33CF759B45459C4178
          F0CB5D7CBC24E1E8BFE13ACE1B7870E3F5FCDAAD9FDD80FF85FF87FF0182C367
          FD811982FDC7CDEF1065E074BB80373F58CC2470C7D2AEFAD8B71FF1319C23BF
          5B2C3737E0BC4004279FFBE0CBF7A0F9CDACCB54AFAAD6DF64BA8608E0C42656
          4014219E904DA84F00095C4B1DD587AC8171C94D933FA0FFFA87B80278F4A243
          3B7B75562FAF6A33BB957E72DB037ACEC197F594BDA375DF8DB7EB960BEBB1D0
          9F34013C90AFFFBDF7567EEE3630E53CF6D3B7F08623EA91BDB7043C3F188825
          70E4FBFDBAF3E6C62CECA8796841E1F1B275E6F5B9AF67B3F0B3F96A48405525
          0290DFE5767DC02D4621C0C0C56F000209AF13E2E762AEFBC23995AC8223F925
          FE06218007D677E7BD094004785D5CBF9524F01B8FACD6C3363EA9AF7AF5629D
          3DB2BC9EBB671A1FF7BF26FE17AE2364D0734917FB1A6EF124F4098EE37C5C0B
          CF8BB39EF0797139507C040157C6CB99AAEA03210228AE0909202098480009C0
          12B8807015E18EF072E1832A56A9F056461BCF8F275803ED3315AC81EC811924
          EC093A7F761C0BBBE06409A03611C0A3EF954C00B68FFE763D75DBF6CBF81806
          8BFFF90298E16E9A5920C2B1F2B37924ECA68A31EA1E5EB2B6BA42ED437A6434
          9997A52B8F8F2BE2C38208E477B95D1BF0FF6EBC0629B8F9C910B69288407EEF
          BD6F75B5D712C8E7DDCE07E4332000240EF55F5F3201C867806F7FFC522F3B30
          5F3FBAEA3E7DD1D4B374DAB0323A7D6819E5A147CF7365F5BDCBCD7DC37F2A69
          4A71C5C185FC08D2733BEF6480BE14825A7D78A923192B43630AB66AF1164025
          C2A910C0DF3E0FC0D9FC2D01B80398193887D09A80CEEA1399103931F9DCA403
          24FCBF706CA02D0708798E35B3AD57F9EEF0A9DC71292A6F563C21CE80084030
          7C47C90450AB5F9E1AB0FBA6807900721EF9E7F0CD55DB8D751499EB01EB1100
          4E93125AC88D0864BA0B197137BC7DB1BA784D3575D16AA0AA6A6501CF1BCFF5
          2A127E453E2C3F561A8B925971C57EBF3FA0C99C828FE5B148899DB56782DE6F
          4D7781CC8A232CF421CE9BB27328B208B9CE805CCFED7C4084F9FE75DD786F82
          07D6750FD8CF0211D847DEECA39287945629C0B3118C5442DAD048C6636FDD67
          7F7F204D2D7DFCD3CF26A7047D50DC7F0C06B8B7D297EF7EBA515F32BB2E52B3
          190D5E4E570DA67854416F33467D9DBD2AF1ECC403E4F83E4E9FC5986E413855
          02F8C75800D28404F04710134823E4131A10E0127421DC115636ECA98A552BAC
          F25C9AFE252F2282F0B35B400CDB8670AD4FE73C9DA6F35E4E646B0024703216
          40CD7E79FA21ABDC78710460F9E730D7C9473773CB80FFF9804C1D0AA02DDC06
          9E0CF679475FE49A87169455FB906B20369A93A90BC656D4F963EC4096AA4CD6
          805CDBFF9AFE70C61C561F5EA2DBCC698CE4A1C23462C2BA23CBF97DB77E1288
          DB327BEF445954645FD7ED7CC041009C374004C0AF8B2300B8003867F391B5BA
          F6B82C4D24C04879B6B42602D09D66B752B00AE4BB8B33D3E5FBE7EC99AADF38
          B8C03CA77BE3766E49C0FD93FB0560F6E5A25975CC7421F052AAAEFF729AAE39
          245DF9AE86C59AA97D9DBC3AB666C5AD34D21FA36BDC400811805F0309203F00
          81C1F284244216A136A139A13DE12662D07E51E9515393CF4B3A48C2FFAB3336
          C0A656679FCEBACFAB739F4F2517209E08006E415C500450E3FE5CFDE0CE1BF9
          79710460FBE8EB6A2898EC72DCFF7CE767EEDCD649EFFECA988A6ED786D98DF7
          DEFF66B76E49028F4AC60425F50FCF5F5549379843AE0E097EDE980A12CD8625
          607F87FF359D90EB03886AF3D4D69454934AEC20811ED65C3788CAED3A805835
          EF7CBADE5E622CD7763B1F1001ECBBF65AAE41D87355DB12BF0710F37AF39135
          FAE9B58FEAC1EB1ED513B68ED0BB3EDD667F27B430C8C2EDF38010160284559F
          4FD68DA714E8CFBE3553906E318040401F3A051F391163B73DC37918002763BD
          08A4EA5AA3D274F64D1E52503426B1E4BD6DC66F346E17D3751E255C47684628
          20C0EA8D709373C0F5E03F9400A4617600A9C2700990279041A842684CB884D0
          9570674485D2C3626B545CEBB92CFD5BEE60676CA08357FB6EF2EA9CA7D255DE
          54630DDCBED6047EDC585F6E688DFB73F403DB6FE0E7C51180F8E4F0D1B1E988
          1CF73F5F84EEE0B7BB59A35FB3A1B9FEF03B93410821F23F5F82545D37B444C1
          53DD7C65816A8EDA8784E62BF375FD573D44001574EEE8F242027007027EBF13
          228028A9CD894300A7114BA28B2101A0A4EB390940961897F4199B00D674B516
          1555B137DE2C4E00F19E90803FD05F20F4E23EEF74C16E597895F60E8FD2BE11
          E5F485D31AD8240002817B8673257E8047BC067940E8E5DE0098655A756891BE
          64567DC55984939374CD2984F1C9BAFA7329BAD2C3693AE7660F9492E2F148FE
          7FD2394947C3CB85BF40D77E9880310C17379780315EDA4DCE01D783FF700240
          735A0348194E212061A80E01A65307C26D6111A51E89F244CD4C6E967C98FAC3
          4E25B60284DA7B955765DDE3D57934D81BCECFD3C7BE37D33E1850CE4097DCD8
          EA7D7374BFED81A7A7E43CB33701EF4F00FFDC3EEE7FBE0CBEED5F6E206D6EB4
          FA4B1F982DCADC8848B4CB53BBEE23A1CFD34DDFC853043C32EACE4ED3B963CA
          3301E412011009A87C7A0CF4FD02DBBAF8628FAE3D894C5393460C1250268D38
          B5D07C250290D457671F39514800EBEC958525FD062180FB8800249578E3C7EE
          0560DD000D0F6107829DB1C039E2A33FB7F1499DF95C94CE24020009788904CE
          9A5CA0C41D0806EF1DDBCE5984AD66D6D3BC61C964934958655892CE7F3855E7
          DC96AEB3AEF590C05B162908A063A64EBF34ED3BD2FE2B69548FA0DF753FA113
          A11101162EC677B89B9C03AE07CF000290066B2092805902984A4E6BE0724237
          EAD4BBC3A3C39F8DAB1BB725B3ADE757EA170408AD1B906918F83A9FCE19EAD1
          972C3D5B6F3D662ACD62604814586E70B5BED9BAEF3B817D53394F7C74F2CBD9
          4797E3FEE78BA0BCFBC506D1E8BACD9A467C0CDFEF7FBEED5B7F3809454F511E
          4D9DBB3C479FC3C8D5B567916621E1CF1E156348607479054B20D0F70BA0DDF0
          FED45D634D06A195FB6E6DBA292B0BED5462C92BC0EF77BB9EFCCE99EF8DB7EA
          0C044F007D56779534623D746BFF120381A70AA7F0C3EFC74C41868008C01041
          39056BE0F299E7F032E38D4756E98FBE3EC49FC1E3A6236FE929EF8ED47D57DC
          AA5B4EAFAD2B8D8BD595C71B541A11AFF31E4D5259B7A591A2A1B1465628D6AF
          58826F14118DC58C2B3C3FC5E4C56C2D155E0ADAFF69C21D048C5DB8B61E0292
          E14204504C738B0D60BAD0690DDC4CE813955E7646DA05299F90E04B6C805389
          396FA0A34F67F5F5EADC89C9FAF54333ED012BE6257607AE7A5FB6EEB3AD1BBF
          2E8E00A0C9D92F5F594941B0E5B8FFF9D05638FEC2C111B6166F4A82FCE9F7EE
          F5E86DCDFAF97A143CD5672FCD56043C326ACD4C61E1CF1E19CD8F39A3CA2B10
          42A0EF1788F0759FDFDA4A23F64B252613D6720998043EF9E643D7DF2790FF35
          71FB1053828C4820D8DF70EFEA2E76D52114CDFCF06BE31215E7C39F2C9CC1CE
          57774FD5694323753AA60B19650D190C2F0B1250620D80087C23CBE92CBB6F09
          44B0B0B840B279A3C9F51A1CA7731E4ED4BEDB52B5F74A1A5F6DCC5A155BE82D
          C1E731D721F38FF48BD3BE8DC989DE466A6C1AFD2E68FF8708D712E0FF230088
          A96F086F989B9C03AE07CF300290E6B40624368014E2B3099711D0B1BD4A4787
          0F8BAD15BBC17369FA376C0D5837882D81765EEDBB99AC8167D275CFD5DD6D6B
          60EB910DFAFCDEE7EBAA7DB2F4BD5BCDE0298E008C3627BF7C45BE827F2EC7FD
          CF1741997C6018173B3D77590E03028EE3FE1A56080065CC1B2FC90254E325A6
          44DA59F4BAC68C649D352A9A066B343FD2405518A881BE5F20EF5727F2B3D388
          0D09702AB1B1064C200B8B8A4ABA9EB82A8FAFEF8DB2E44C02257D4608E09EB7
          AEE16A39B29660EC0EB3B10BB47530667D71006139675D266E1DC1B305A94400
          4C0243CB30113019186B40D9D600110013014880FA96FB777879953D2856670D
          48D0BEBB9249D3C3AF47400F638AC795350B65436590150AC18FAF17F741647C
          E40AFA5D5309630898FEEB41C0D4763D829780192FC4BB4AB9C939E07AF01F96
          0770324DA60B258518EB08F208481E42624567C2EDA5224A3D1AED2B3737A579
          F28724F8BFB1256083DC82AB7D2ABB7F86CA231FF8F265E7AA9CC1492AA34386
          AA725F96EABDA56B40B35406163624216D6E438EFB9F2F043069FF502E612E80
          80E3B83F016000E3382C04127AD568914F355CE4B5517D7A92F28D8C86D9CA8F
          A4AD54F6C89880DF2F90F791335005D98366151CC322017B5DFC55AFB7E4EB15
          179D17ABA9EBC20BB0FB2ED71A90EF703B1F1002B87BD5D5BC3701D092372FCD
          572B3E7C8DDF030904723B8A03FA4DDC1CE0D36F8EEADE4B6E32B903CF96E69C
          0167DE0011008348405924A032471046C222A0BE1D545EF91E8A53DE5E49CADB
          2D5D657634E3A6E83822C0C78792699FF147FA2569DF27364EF8A87CA5F23BCB
          2495594536EB2BF4DB2613461220FC7711303E11FCC314372C59283358B745E4
          DB09D78367A805204D5C025803F09F6046814DAB13D0B96D08D793BDD0272236
          6214AC0162E55FA8BF0ACD3358031DBC3AAB8757E50C4BD7394FA7E8CC8E1E5D
          F9EE6CDD6BB3992D288E00589B3372D439A4D1E5B8FFF9420013F63F6B34FAE2
          2CD6E6333E301A5462104EC8B51A2CCC0494F5C8A83A2D517B494389A6B248C0
          FE8CFFB504F23EF6D9B33208D912A83A9E49C076096A4E4AD4F3F71BF70802E5
          762D44DCF13E96BC628312DE6F6F5A86FD1D6E9F0184007AAFBADA542446C92C
          475972210100164620F74380F761EA3B353E306BE78BBAD2E8149D6472064002
          3A85AC00207568045B026C0D0C8B242B804860B8650D0C8AD6190FC6EACCBB12
          756677F2EB3B93B627A500F7D1687D1A3B183FC6B7279732539395F96342A384
          2324F4BB4806D7864785CFA7D139837EDF14C2F384218401849E04083FA6B391
          E4863C17B8B318C318CFB66CFBC3F5E0194E00D29CD385B104580360D6868456
          842B09B78745869135103D8FCCB22F301D2337D12202E5BD96DC82DBE978A70C
          9DDD2D5B775B6E924FA0E5FCA7976490A174397C746873F8E672DC792E6013C0
          BE67752312FC868B7CBAD122AF1EBFAFE43D0AEA2FC8D0F5166428023D7A74DD
          F91E5D656A82264D659BAC9625607FC6FF5A0279BFCAF84413C8B248A0CA38B6
          066C97E092590DECD258810450FC6BD4D243B69BA4BDCA77B87D069069B4AB16
          9EC735080D09142D4B3EF5BD912794E60271A09F0010035E4B704FF0E9374758
          F05BBED840273E13AE9318A5F1C804E04F02A9C388089E232278A6ACF23C5C41
          67F484D0A7EA4C23F4464140E88DA6670280D0FB3A63655FC6EF29CD923FAF50
          A5C29E328991ABC3CA86BD5E2AACD42CFA8F2F122610A0F107131E21DC4340D2
          4F5B4253420D02027FB05ED9F72770739373C0F5608800ECE6B406A209C8AAF2
          11D0D1E712E06F5D4767DD1351A1F46862EB5D74031120949902334B6021A38D
          57577FA28ADEF9E5667B003A4D521970671BFF1C1A9D7CF4C011702100083C99
          F0A4C581CCA0362981C0D779DDA308F498CEA8F4723C47B011C9061178C97445
          F04A3EE37F2D81685FAC802B181BCB6B092A8D8DB35C02CB1A201278E713B3A4
          1782E6761D40AEF5F8BABB75FD97A42CB9A7C4DF20EF9BC4A16CDEA00469C4BC
          5B11F6DC435C606EBEBE6A760BFDDADA57F4D1CF4C2032108E7C7550CFDCF982
          EEB5F8065D303259270C2E4508D309CF84310958504943880C08C9CF12111052
          0647EAD447A2B5A76782CEE89AA620F0963F6F041DCF5949F0734CE3FDE16D9F
          F17B5AABD46F2B56ABB8373221F22D522AAF93E842D3BF44700AFDBF09FD0877
          1290EC83E435AC6B41462B827EE904117E8C5BD6FE686E720EB81E0C11C0094D
          88001D112836705BA9D2A506C4E4C42C48BB30F553BAE1BF1732BC057AEEBB3A
          575FBEE05CBDFE3333D0013187E575A3C55ED6E4966F6E1FC7394E08018CDDFB
          0CB4B9AE47420D8C7DCFF8ABC51140AD796980B21E19052FC571F45AA6B410C5
          BE689A99562CCE679769BB951F2CB4D3889152CCA9C464097498D39CD704C875
          0225D64890F2E0177B748317E9FFBC98CA65C9AF98637E0308D3ED7300DE074C
          DE80B549C92CDEBBD0DAADC85802E74ECAD579377875C69569BAEE887CD56EE6
          057AD0DA47183D1776D357CC68A17387C7B3C0C73F5D4A19C117100108880812
          8800120793F00F8CD4290F97D3E9771081764D335A1E813CF8F58E7B6F02C62C
          F8BF7B5A7B7E4C393FE5CBD89AB1FBC9A75F5D2ABCD43CFA1F08E8C1BC1F4F70
          0A7D5F02A6F7AE2760AC21288D483F56B762DA1A2E2A7C7E31FB8B083F9A9B9C
          03AE074304E0DAD0A1325320D6003A5E16165D41002BDF1319173126A161C28E
          8C369E1F307F6B6EBE35106860E4F6A8A46B4FC8D713F73D670F5C097CBDF3F9
          06DB2727A8060B32ED73E8DA45601300097C1DD6E8469307B34949CDD7520185
          C71A16F25F8C63E19715700860757AB5159F0FCDEC7F2D01045ACC6690409779
          97EAAE04B208D4BCBDA6263F80FF585C245EB4FFF8778648CE8042A9AC5B97B6
          2FF637D8C1CD6F0FDB79038565C9AD4D4AB02FC19C5C7DCE442280EB0D01243E
          1E41022E422D025E28F086000ADF8BC7313C7F9AAC80272274F283E5546AEF58
          9DD12D855C3C8F990E6621B7EEB5A5002CADFF87E7B2F41F929B261D8FAB1DFB
          7E546AD9756165C2C4A7779AF7CF1010D47B8080C01E16F6C0DDC4DC3E940D72
          5430C78F345F8CBF64029412027E705931468B083F9A9B9C03AE074304506C43
          07CBEA42B106646111620358667C3BDDDC27CAE7C62C4A3AD7654D415BAFCEEA
          96A7AB3C51A0BA2C6FADB77F610A696EFF7C93EEBCEA7CF1CF499B938F4E828D
          F700BA6E11080140E06B930607A0C983D9A4A4C6DC145D7D6E8A22E09190ACF3
          5E88D5E9CF59D358663E5B757AE5423EBF3802009C89316E8095535C4AAD5811
          D0FEA89957673297CAE2B504B72C69C7EFC96F90001D5C09670AED9283AFE826
          336493122601852DCB84045ABC9AA39B4CC871218013851F2061670B20FE194B
          F00792DFFF40399D7A17F5D30DC9748D7432F12DA167C83DA6631D8D89EFB93C
          FD27F2E98FC7D6ACB83FCA13B5213C3A7C118DA0D9F43F44E8471110CC7B9200
          A1EF45B889700D01016798F8988A465E0AB43D725460EA430121CB0F82EFAAF5
          9DCD4DCE01D783210228B1894B808E979902A45DD6249C47303305A5FED537A2
          42E991B1352AAEA38150B8A680C9800648A72C95DB2B4F571F97ABAF5A7381AE
          BB209D7D73F6CF8D46271F3DDD1EE074CD22100218B3E769D1E88CD1F41AC78B
          23806A739201653DEAAA84DC2915791DBC89623311A88E411200000187A0E35C
          00117408764911772779A068A6A3102917CD6C36BD12BF8773DC48069A7FF1C1
          D9BAE5ACCACE7D0B01DEBC54F62D6C4E0470F684EC0016801396D03F4304F014
          F9F80F4519A1BF1142EF08E499A93BBEA7FCDA8ADE67B4C9F835A545CA1715AB
          55782F2ABDEC061A034BC83DC4B41D7CFA8984D18467094F101E24DC4DB88500
          A14740EF4202AC4ACCE7231745841E663E02D2B04031550D4554ACE04B739373
          C0F5E0199C0770B2CD690D2079083709C1189929C00DBD232CA2D4BFCB65967B
          95670A3AD2A041AD016B9E37B39D5779BBE4AA82C72BABDAAF67A8DA0BD2E831
          5DD59E47780D8F6925E601605722D2E80A80560F6697A2AAAF262941150B3953
          2AA8B461662E9BE7B38796511D665FC0DF1F0C019C0A9CEEC382FDB3387B5072
          066A4DE2A299584FA05079587E3B57223E304B3FBEFE1ED5EEB526CA9A2EB4F7
          27387B9A571109A87300B381298840359D9DADCE9E90A5F26EF02ACF95690A04
          002D0F539F1F49E0E387E075984A7AA48C4ABD3356A55F97AC3259D3E37E71EA
          B7B977D63D24A1E7B5F8F4F8476ACB94AF11C82379595F3AA6F422127A68FA97
          0922F4430928D8818C3D117A2CDC6947C078710A3D16F220194D841E8A068208
          335F84BE44C197E626E780EBC1900570524DAC0130B25803982940DE00660AC4
          1AB8A74C52998934483EA67EE59D8A7820C12A208B20A36D96CEBE335F579B92
          A56BCE234D0ECC353EBA0C7CBA4E111412C020D1E884A4A07629AAFC6AA2AEFC
          4AA222D063029EEBACC9E539AB0DD96DD67C360880CFFF3308C0A9F9DF3CB4A8
          681AF1248089C0CE206C3AAD80AD01C7EA42BFCD4B1DBB18730661A62A74097C
          FABCD959BAD1E86C9DD38D2C80AB2C0B40CCFB41E4D7FF3B52A7DC5D517BD8A7
          27ADCE413CDC1F36E78DF5662C3816787AFE5B5AABD4EFC8C243206F4D5824F9
          F461FF9A49FF0D423F8900F31E9A1EE6BD68FA5B0962DEFB6B7A2C48C3349E9B
          A617DFBE14F5D7BF04C1363739075C0F8608E0945AA0D80022B5F0E310BDBD25
          3C2AFCC9844609EF665CE1F91E1AC544867950716CC07B4D9ECE1F98A3ABCD48
          B77CF4C0A9B34200A3760D8246D7A4C50989416D5252697622F63350D8D3A0C0
          826F52799D3214F3D9A62046EAD088A008A038DF3E10E01AD8C2FFC122DD7C5A
          F5C23462462288C02C872D5C5D681615594B8C11249425C64204B24949634304
          762AF13944044DA666E96AFDB199A697853CF1F148687A9D724F054D9ADE0AE4
          D13D28BC27268A6F99F8F4FC8F8CD69E9F88C4BF8AAF1BF701C9C5DA5211A55E
          A7FF835C7C7F9F1EE67D7F027C7AAC25710A7D1382F8F44EA1C7B881D08BA667
          A1A73EB205DE1FC1363739075C0F8608E0949B5803CED88058033253D09D4CC3
          FE31D931AFA59E9F72145A44348B1773C678DE215B67DF9DAB2B3D9F493E7A8A
          DE72CC5427864FED1436210008BCD1E4062382200016FA59090A7B1A7055237A
          F44E8AE16416496C417A6BFB5925134071537BFEC0A21C99F100E6EF9BE9AC41
          C8C548AB15260FF15A02B2048A908059620CF09665A6CE80DFBE859C41685C02
          58021C1CAC33385B675D63F6D2CBB82A9D7CFA24C53E3D343C07F11C646CB43E
          9BFC9ED6E93F233927BE5EDCA17219519BC2CB1509E48979EF14FADE04F1E9FD
          353D668DFC35FD09E63DF58DABC0FB23D8E626E780EBC110019C56030938AD01
          DC60A46662DA46660ABAD219BD2313229F8FAF1FBF95AC811FA9BF8DF003AC75
          7CDADB3D57E50EF4E9CB1737B56B0D406B4AF2901000762582261704B34B110B
          3D5734B20880E09D1863125A24B36D0808A0259F5F1C01E07DFC2E7C9FFF341F
          8801428FE0A03362BFF5E3F53C4D68951EF3238138630D8C3765C9D925E05462
          4302C625200240C19129857506C41268004B00EEC0748F3A8B08A0E1649FAE35
          8848F53A6B2B6D04EB8CD0175A60D2F708F0D1FB744F7E41F43EAE76ECC1E8AC
          E8ADA5CB975E522ADC359027E6BD083DCACB219087FB0C1750845E7C7A4CDBB9
          097D18F58BAB901787609B9B9C03AE074304F05F69FEB101B03D660A6A11EC85
          45E165C39F8CC9895E907E51DAE7924ACC839307250DD0CE593AEB9E5C7DDE8C
          FAFACD8F16D902048102F01C65CBC58C07860749002866EA4F004944009CD906
          1218525AB50B92008205B6DB1EB8F601B3041605474CE9313B83B0F2D82224A0
          B0C79EB1060C09C01AB0F62D246B80372F959C01240EE9FA535375836944062F
          64E89A43B255E5FB7375EE6DD9DA7715697E63C6170ABB98F8041AEB38F647DA
          C5A9DFC53788FB30CA13B529A242E9A564E2CFA13B09131F3E3D56DD2190F714
          019577908A7B1B4102791711300B04A287D5876431117A0489310EA01464DAAE
          4413BF2404DBDCE41C703D182280FF6AC34D06CBCB32635425C6E0C04081A6B8
          B154D8BFFA46C6468C4B3A27713F48C0B606788062D0925F7A53B6CE199AA947
          ED3673FC4EB45DDEC216622098FA8438EF440288E6452E9CEB4E8F4402AAEDCC
          E00960F23BA3F4EECFDEB15F03DFFDF81517C97C624D3FDD7AD6B9662DBC2936
          82AA435C70246F4C45AE4128964025220058034825B62C019B044C80D0720926
          2573C1913A2F24EBBA2F135E4AD5358667E9827E393A8784DE7B6516F59FD712
          7AA3F545D85144D3DB994C7CEAEF8C369EDFA8EF3F214DBF8D847E795864D85C
          FA5FD309C8CA1B4B184E184440FE7D1F0296DD76277424A08C1CF2F021F44811
          47DC07093AA832852233C8CE13A17706F3B8511F9D16826D6E720EB81E0C11C0
          7FBD39AD010C0867F210FC43240FF5C07461F9FCF24BD32F4DFB92FA1F51664C
          35D90338B3230DEA7B7375DBD72FD44F6CEB479ABF9FF2177EE0F4080039EE61
          B2E08508E07C3E3F1802B033084D310CAB2086631DFCC868BB20862182186511
          015B04FED600815389AD4D4A8804E211176098E060A2AA393159571FE1D1050F
          66F126AF19ED7379CD05F71B4FDD59FD67ADCDA0E3BF279F97743C26376647B9
          CCA8B7CB2697595B3AA6F412124B2CB841F41E4B6C21F4C308A2E921F4B71350
          1302F9F74E4D0FF33E90A6B7CD7B822DF4CE46FD765A08B6B9C939E07A309407
          F0A734890DF80708A1352479E8463AAB4F99C43213139B24BE4783F6679E2990
          3D0A80363EE5BD2E57653F9BA9F2A627A8FCD9A7B64781F37C800840654E8C56
          58E09230388C1F81B6335A149B07001F1FEF63630D5E03CFEBE0CB9875F0CF45
          29430204AC2CB4C0750646015C700455874004B00654FE988A700B1C7B133009
          605191AA3A81772A5255C624AB2A435355FE800C95750B69F92BB35506F54B91
          7E32C26E605E634DFDB7152A97DF1D56266C21FD76117898F6E30888DE8B798F
          25B6F71260DE43E851150AE5E3A1E931AB23E63DAC39A7D03B7D7A5781F76FD4
          77A785609BBF8C0B5C0F862C803FAD0909380384481E428010C9431864881CF7
          E41D8BAA5558957E71DA71DB25106B000B4D3AE7EAAC077D2A7762AACE630D5E
          B86BD1A95A009913A259FB231B4E56BBB599D182CF0F4400B28067FDE137CD6E
          3A16642D019180580385557150710896C0C818908094C7B28B91A21029AC81FC
          B14404E3C935202BA06064A2CE7F3A45E70D48D73E98F71CCD27A187B6172DEF
          00FA8CA03CAD3D3FA79E9FF2455CDDB883655378D10D027988DE63C18D98F658
          7083E83DE6E9A1E961DE43E861DE63D10DEE8D98F7107A37F35E34FD4935EABB
          D342B0CD4DCE01D7832102F8D39BBF4B2001422CF2C080839979230DD607A8EF
          5F4C6E9A7C9006F5EF3611C840EF4002706BAECE1E92A9F36698F2E4C1EE5110
          88007895DBD3A584084A9C062C42009C3CE420816120007B65A121010296185B
          24C005478A90006AE43D4F184B6EC1A85895F39F649DF3609AF6DE4682DEC547
          6E10CC7B80FD79E322597D826954F8F7F0E9918A1B5F2FFE507476F4D688D888
          65562A2E0A67A29006A2F7587083A5B558658735F5205E04F220F428AC81AABA
          48ED0639C35283DB86FC7B379FFE941BF5DD6921D8E626E780EBC11001FCCF1A
          068F3340083FD2B94701A694EE8AA810813D0AD665B4F67C8701EE18F464DA92
          305C93A37DFDB374EE8BC93AFF9558DEC0940687EBBA7B1C078A23807822002B
          2F5E61B30C9CEF4626804D001FBE69D7C64B1B56B8968057175A2420D640A125
          600A8E181288D639CF138804B206C7EBACFEA9DA7B3BB93F5793A6C7EC080278
          8E409ED50730EDB92E3EB47DEA05A9DFC4D5893B18ED2DB785FA6C2999FA7389
          6A11CC835F8F693BACB4C3C61930EF919C733501ABEC5A12909C03F31E428F74
          6E04F244E8FD17DDE0BE0565E297D4A8EF4E0BC1363739075C0F8608E07FDAFC
          AD01E71E05D04430456F250D36005589535BA67CE2EBE415CDA73879888582B4
          E34DF93A7B74866EB9B42E6F2E4103E484E4211C034A2600C2D3610AEBE4717E
          5004C0D983160910B096C05802B64BE0470251CA373A4A678D2632185E4167F4
          F5E88C5B48835F43FFA5034C7B2200FA6F9812B5A6452D18A1473F782E4FFF39
          A141FC6112FAADA56378DAEE55EA514CDB4930EF3902CC7C04F330578FE5B5A8
          9B8F401E9273D0CFD845177D0EF3DE5FE825153768BFFE641AF5DD6921D8E626
          E780EBC11001FCBF340C2EA73580D80034114CD14B090846DD191E15FE345B03
          6D904A5CD404CE44A4BB63B6CE7A285B5FB2E09C22C94352161BAF816008008B
          6482258075440052168BB3084D7D3C2C2A32D6C0732001026AE40D37449031B8
          BCF23C90A23D3723338F84FE0A4261455CC0FE7F567A2E66467ECDB8DCF35362
          A384A351E9511BA83F16D1EF40FE3D127420F432578F4537CEB97A5853C8C444
          A977F8F488DE63959D08BC7F1AEE7F55D3076AD477A785609B9B9C03AE074304
          F0FFD6FCAD0144989D7B1460DE19A66BBF729EA89929E7272395D86FFF423CFA
          B4B7478E6E32B1815A79A43079480A5CBEFDD9DA3F8500903C6467118204502D
          1744202EC190289DFE548C4E7F3041A7DFE6D19E6BBC2AA31D99F858035128F4
          E63F005C119737BFF839EDC2D4AF13CF4A381A9D15BD25A262C472FA6EA4E242
          E811C5875FEF9CB683D063D18D33828FAC3C547082B6874F8FBE95421AA2E545
          E0FF54A17736EABBD342B0CD4DCE01D783671201B875EAFF27A861F0F9C70660
          9A9EB0470109C288B8BA719BC90CFE86E7BC85040012AACCAE392AEB51AF7E6A
          F3C3B63580C74B979C1D0401F0E3291200616838A1B44A79A68C4E7DBCBC4E7B
          205EA7F548D59EAE193AA303343DA11D72ED1DBF99859EB43D5271DB787E83D0
          2790A68FCE8EDE46FF1581BC39F49D32752742FF1F02A6EDFCE7EA65DA4E22F8
          32572F8B6E9C3EFDFF4CE0FD9BDCF75345B0CD4DCE01D78367521E805BA7FE15
          400D83125A099D2FAB0B9D7508E1C7DE165626ECDFA415B147C161D298D8BF10
          4480E0183D9206ED98A57C77F954BDF135D5EDEBBAA806F3728BCCFF0B880014
          1180220230EBE32D0C5A132C01ACD44943C255F2D030AE979FFC788C4AE993A0
          D27A24ABF4AEA4C5396E01B0D05BBFCF80041EC531F1FC8FB456A9DF24348C3F
          1C931BF36E9984C837E9FFBD46DF23A9B84EA1F7CFCA437F04CACA43DFB94DDB
          FDBF09BE34E73D3F1504DBDCE41C703D18B200FE1AA086018A818A011BB80E21
          F628A8183132B666C50D2458BFD37D13339AA3E43C6DD63547673DEED37953CD
          4C01A60B2DC10F600104E7024819EFE93B26EBC481657552DF389DDA2359A775
          F142D39B7A075862EB88DEC39FE7F50E9D32958F7EABD4BFE754DCD88815E165
          C3E6D13F97FAF7FEA9B8F71150071FF51721F4888F38A7EDFC85DE19C1779AF9
          7F89E6BCDFA782609B9B9C03AE074304F0D701350C56376B00031DD356482546
          D1C81E64223F1C9D55EEF5F4CBD2BF8670310198E09921840E59DADB2B5BE74E
          48D579AF1001CC3A7917001A1FCF114F90F5FCC0DD2FF4D669D790E98EF80384
          DDCC4E70149FBF9B37BE30D375BECEF0FD3DBF263549FC8434FDF6880A112BC2
          22EC293B49D2C15E77A88AFB180155719D420F37083111083D165721580ABF1E
          AB2E45D3FF6585DED9E43E9F2A826D6E720EB81E0C0501FF920D03D8191BC040
          476C00D600E6B02114DD08BD4AC7941E1E5F3F6E1BF9D13F5AA676A19FDD06D5
          70F274F6C04CB2061289004CF21013C0C4132D8076D66220E7525E2736EEDEA0
          FB0CBF4F7B399047D767C1B7C0A9B9202026A3DF500A3BF9DCA46315AB54D81D
          1917F926FD562999054D8F745C4CD989790F4D2FE6BD7FFEBD7F561EE224FEE6
          FD5F56E89D8DFAF0B4106C739373C0F5608800FED2CDCD1A406C402A0F991D8B
          224A3D1693133D3FF582948F48187F674B408880AD822C9D7947AEC26EC67933
          C9029899A033C65420C10F3725B24000A893478FCBF617EE71BF61EF7A3DF4D5
          A1FAC64137E95AD7D6E2ADAD4E08E4E111448052D897A67F9FD22CF95885CA24
          F40991AB4A8597824FEFAC7F0F4D8F6DAD91A013C8BC77A6E29668DE3B05E49F
          8E609B9B9C03AE074304F0B768121B705B588465C6A843785F9984C8F1098DE2
          7714293A22C2DAC6AB326FCCD259640D640F225FFCCE0C9DF8600C697E2281A7
          C374C213910AAF93EE48D20DFB34D49EABF119722358E84122126330D7B3620F
          BF63234B087D5CADD80365D3CAAE0D2F17BE907E0BE6EAA56C96FF4E3752FF1E
          3512FCEBDF3BCD7BB7049D334EE89D08B6B9C939E07A3044007F9B86C10F2190
          85455279081A132633525D7B8447850F2C9F17B384B4F1D796908AD09A18C195
          640D5C95AD3D57E4EAD4CE593AA947B24EEA95A053BBA52BCF5519ECD74B20CF
          64E4D940F41E828FB9FA5F939B261DC39E766553CBAE2D5DBEF462D2F652360B
          9ADE592BCF59FF1EBF11C14CA4E38AD063AE5E4A6183DC5CE7EBDD04E24C43B0
          CD4DCE01D7832102F85B35B804B006201CB00630CF0DE141700C5362B0066EC0
          C2A2A8B4B2D3929B267F403EF96F1C9D271FDD6B696FCB576741E7F5056C2D70
          4D3C7FA1370535B09165FB8C3FD22E4CFD26AE66EC81A8D4B2EB4B4787A314B6
          B36C9654C575AB7FEF2C9089A94DE7A61732577F42FD7B37213893116C739373
          C0F560A81EC0DFAE49801082024D096B004527259518D640173AEB2EB2069EAA
          50A9C20ACFE59E6FE8FEFEC175F110AC03A0D1C92A30B06611ACE3B0167C9DBC
          7FD0E36FA92D52BE84791F951EB591AEB790C8C5B9B65E6AE5390B643AABE2A2
          569E53E8A540A6687AB752D8A1769ACD4DCE01D783210BE06FDBC41A70C60610
          34436C00D60096BBC2D7BEB74C62E4C4C4C609BB335A7BBE2501FF85B4BDEC55
          20FE3D9E43F87FCF68CBA9B8DFC4D6A8B8CFDAC81225B3909C83E5B5A2E9FD4B
          61C3BC47A523ECA00C9FDE6D7BAB90D0FF8F9A9B9C03AE074304F0B76F102299
          2E94D88058034891C5C2989EA5C24A3D5636B9ECB40A95CAAF4968947020A545
          F2A724E89FA7B54AFD8AF0654AF3E4CFE26AC7EE2FE72BB7A9744CE9C5F41924
          E740E8FDF7B473D3F4FEF5EF21F481EADFB3794F08B53FA9B9C939E07A304400
          FF8826D680C406B0F805E6B6B3E8080A61606DFCE3E4BB8F20217F29322EE2D5
          320991F323E323E7978E2E3D87A844EAE42190E7AC7F5F5C296C4C49BAED7473
          4A65B342EDF49B9B9C03AE074304F08F691030A73580B973293A721601B10198
          E9582E8BBC7AACA4C3325A4CD1C18F0720F098A747051D6720CF590A5B84DEBF
          569E9BD0E3F784DAFFB8B9C939E07A304400FFB80622807F8D1B897974293A82
          DC79082F126E30078F041CACA8830F8F25B500B43CCA66C1BC87A677D6BF17A1
          C7A617929527A9B8FE421FD2F6FF8FCD4DCE01D7832102F847367F6B40620310
          5E1001E203700D60C623190773F3F0E511C4C32A3B299B251B5996B8D30D2124
          F47F91E626E780EBC11001FCA31B8412028A99021001F2E8A1B9315B00F31DEE
          01660D102B00400E586F8020A2739E3E24F47FA3E626E780EBC1501EC019D120
          AC700B10240411C035001940B8916B0FEB00C28E476879A4E13A855E16DD40E0
          4342FF176F6E720EB81E0C59006754138B006400A1C6CD466A31484180D7200A
          68FAD05CFDDFB0B9C939E07A3044006774836043C0FD1112F8BF71739373C0F5
          600821847066C0F5600821847066C0F5600821847066C0F5600821847066C0F5
          600821847066C0F5600821847066C0F5600821847066C0F5600821847066C0F5
          600821847066C0F5600821847066C0F5600821847066C0F5600821847066C0F5
          60082184702640FFEBFF009A8108DD1F6911B20000000049454E44AE426082}
        ExplicitTop = 141
        ExplicitWidth = 781
        ExplicitHeight = 325
      end
      object bsSkinPaintPanel1: TbsSkinPaintPanel
        Left = 0
        Top = 23
        Width = 785
        Height = 38
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
        Caption = 'bsSkinPaintPanel1'
        Align = alTop
        object lblTurma: TbsSkinStdLabel
          Left = 104
          Top = 14
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
        object btnPesquisar: TbsSkinButton
          Left = 521
          Top = 6
          Width = 110
          Height = 25
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
          Caption = '    &Selecionar'
          NumGlyphs = 1
          Spacing = 1
          OnClick = btnPesquisarClick
        end
        object dtpData_Ini: TbsSkinDateEdit
          Left = 3
          Top = 9
          Width = 95
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
        end
        object dtpData_Fim: TbsSkinDateEdit
          Left = 129
          Top = 9
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
          TabOrder = 2
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object btnImprimirSaldos: TbsSkinButton
          Left = 634
          Top = 6
          Width = 110
          Height = 25
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
          Transparent = False
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
          Caption = '    &Imprimir'
          NumGlyphs = 1
          Spacing = 1
          OnClick = btnImprimirSaldosClick
        end
        object cmbPeriodo: TbsSkinComboBox
          Left = 224
          Top = 9
          Width = 136
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
          Text = 'Nenhum'
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
          OnChange = cmbPeriodoChange
        end
        object cmbSetores: TbsSkinDBLookupComboBox
          Left = 413
          Top = 9
          Width = 94
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
          ListField = 'Descricao;Codigo'
          ListSource = srcSetores
        end
      end
      object cxGrid2: TcxGrid
        Left = 0
        Top = 61
        Width = 785
        Height = 375
        Align = alClient
        TabOrder = 1
        object gridMovimento: TcxGridDBTableView
          OnDblClick = GridProdutosDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = srcMovEstoque
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
          object gridMovimentoColumn1: TcxGridDBColumn
            Caption = 'E/S'
            DataBinding.FieldName = 'E_S'
            Width = 30
          end
          object gridMovimentoColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Rotina'
            Width = 200
          end
          object gridMovimentoColumn3: TcxGridDBColumn
            Caption = 'Dada do Cadastro'
            DataBinding.FieldName = 'Data_Cad'
            Width = 120
          end
          object Column_SetorID: TcxGridDBColumn
            Caption = 'Setor'
            DataBinding.FieldName = 'SetorID'
            Width = 50
          end
          object gridMovimentoColumn4: TcxGridDBColumn
            Caption = 'Saldo Anterior'
            DataBinding.FieldName = 'Saldo_Anterior'
            Width = 90
          end
          object gridMovimentoColumn5: TcxGridDBColumn
            Caption = 'Qtde. Movimento'
            DataBinding.FieldName = 'qtde_Baixa'
            Width = 105
          end
          object gridMovimentoColumn6: TcxGridDBColumn
            Caption = 'Saldo Posterior'
            DataBinding.FieldName = 'Saldo_Posterior'
            Width = 95
          end
          object gridMovimentoColumn7: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 120
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = gridMovimento
        end
      end
      object pnlDescProduto: TbsSkinPaintPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 23
        HintImageIndex = 0
        TabOrder = 2
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'panel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsBold]
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
        EmptyDrawing = False
        RibbonStyle = False
        ImagePosition = bsipDefault
        TransparentMode = False
        CaptionImageIndex = -1
        RealHeight = -1
        AutoEnabledControls = True
        CheckedMode = False
        Checked = False
        DefaultAlignment = taCenter
        DefaultCaptionHeight = 22
        BorderStyle = bvFrame
        CaptionMode = True
        RollUpMode = False
        RollUpState = False
        NumGlyphs = 1
        Spacing = 2
        Caption = 'bsSkinPaintPanel1'
        Align = alTop
        object lblNomeProduto: TbsSkinStdLabel
          Left = 7
          Top = 2
          Width = 29
          Height = 19
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
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Caption = 'Ate.'
          ParentFont = False
        end
      end
    end
    object tabfoto: TbsSkinTabSheet
      Caption = 'Foto do Produto'
      object btnLocalizaImagem: TbsSkinButton
        Left = 581
        Top = 19
        Width = 110
        Height = 25
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
        Caption = '    &Localizar'
        NumGlyphs = 1
        Spacing = 1
        OnClick = btnLocalizaImagemClick
      end
      object bsSkinButton2: TbsSkinButton
        Left = 581
        Top = 50
        Width = 110
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
        Transparent = False
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
        Caption = '    &Limpar'
        NumGlyphs = 1
        Spacing = 1
        OnClick = btnPesquisarClick
      end
      object bsSkinExPanel1: TbsSkinExPanel
        Left = 11
        Top = 19
        Width = 521
        Height = 286
        HintImageIndex = 0
        TabOrder = 2
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
        UseSkinSize = True
        CaptionImageIndex = -1
        NumGlyphs = 1
        Spacing = 2
        RealWidth = 0
        RealHeight = 0
        ShowRollButton = True
        ShowCloseButton = True
        DefaultCaptionHeight = 21
        RollState = False
        RollKind = rkRollVertical
        Moveable = False
        Sizeable = False
        Caption = 'Foto do Produto'
        object ImagemProduto: TImage
          Left = 1
          Top = 21
          Width = 519
          Height = 264
          Align = alClient
          Center = True
          ExplicitLeft = 0
        end
      end
      object edtCaminhoImagem: TEdit
        Left = 553
        Top = 208
        Width = 121
        Height = 22
        TabOrder = 3
        Visible = False
      end
    end
    object pagCustos: TbsSkinTabSheet
      Caption = 'Custo do Produto'
      object bsSkinPanel3: TbsSkinPanel
        Left = 0
        Top = 23
        Width = 785
        Height = 41
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
        Align = alTop
        object bsSkinStdLabel16: TbsSkinStdLabel
          Left = 17
          Top = 14
          Width = 118
          Height = 19
          EllipsType = bsetNone
          UseSkinFont = False
          UseSkinColor = False
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = [fsBold]
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'stdlabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Caption = 'Pre'#231'o de Custo'
          ParentFont = False
        end
        object bsSkinStdLabel17: TbsSkinStdLabel
          Left = 382
          Top = 16
          Width = 119
          Height = 19
          EllipsType = bsetNone
          UseSkinFont = False
          UseSkinColor = False
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clGreen
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = [fsBold]
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'stdlabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Caption = 'Pre'#231'o Sugerido'
          ParentFont = False
        end
        object bsSkinStdLabel21: TbsSkinStdLabel
          Left = 223
          Top = 13
          Width = 61
          Height = 19
          EllipsType = bsetNone
          UseSkinFont = False
          UseSkinColor = False
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = [fsBold]
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'stdlabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBtnText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Caption = 'Margem'
          ParentFont = False
        end
        object edtCustoProduto: TbsSkinNumericEdit
          Left = 141
          Top = 9
          Width = 70
          Height = 25
          Text = '0,00'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = False
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
          OnExit = edtCustoProdutoExit
        end
        object edtPrecoSugerido: TbsSkinNumericEdit
          Left = 509
          Top = 13
          Width = 70
          Height = 25
          Text = '0,00'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = False
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clGreen
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Arial'
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
        object edtMargem: TbsSkinNumericEdit
          Left = 290
          Top = 9
          Width = 70
          Height = 25
          Text = '0,00'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = False
          ValueType = vtFloat
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
          OnExit = edtCustoProdutoExit
        end
        object bsSkinButton1: TbsSkinButton
          Left = 617
          Top = 7
          Width = 110
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
          Transparent = False
          CheckedMode = False
          ImageList = frmPrincipal.Imagebutoes
          ImageIndex = 16
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
          Caption = '    Atualizar'
          NumGlyphs = 1
          Spacing = 1
          OnClick = bsSkinButton1Click
        end
      end
      object bsSkinExPanel2: TbsSkinExPanel
        Left = 0
        Top = 64
        Width = 785
        Height = 379
        HintImageIndex = 0
        TabOrder = 1
        SkinDataName = 'expanel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
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
        Caption = 'Composi'#231#227'o do Custo do Produto'
        object bsSkinPanel4: TbsSkinPanel
          Left = 1
          Top = 21
          Width = 783
          Height = 44
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
          Caption = 'bsSkinPanel4'
          Align = alTop
          object bsSkinStdLabel18: TbsSkinStdLabel
            Left = 7
            Top = 12
            Width = 75
            Height = 18
            EllipsType = bsetNone
            UseSkinFont = False
            UseSkinColor = False
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clWindowText
            DefaultFont.Height = -11
            DefaultFont.Name = 'MS Sans Serif'
            DefaultFont.Style = []
            SkinData = frmPrincipal.SkinPrincipal
            SkinDataName = 'stdlabel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Caption = 'Descri'#231#227'o '
            ParentFont = False
          end
          object bsSkinStdLabel19: TbsSkinStdLabel
            Left = 258
            Top = 12
            Width = 32
            Height = 18
            EllipsType = bsetNone
            UseSkinFont = False
            UseSkinColor = False
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clWindowText
            DefaultFont.Height = -11
            DefaultFont.Name = 'MS Sans Serif'
            DefaultFont.Style = []
            SkinData = frmPrincipal.SkinPrincipal
            SkinDataName = 'stdlabel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Caption = 'Tipo'
            ParentFont = False
          end
          object bsSkinStdLabel20: TbsSkinStdLabel
            Left = 485
            Top = 12
            Width = 39
            Height = 18
            EllipsType = bsetNone
            UseSkinFont = False
            UseSkinColor = False
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clWindowText
            DefaultFont.Height = -11
            DefaultFont.Name = 'MS Sans Serif'
            DefaultFont.Style = []
            SkinData = frmPrincipal.SkinPrincipal
            SkinDataName = 'stdlabel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBtnText
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Caption = 'Valor '
            ParentFont = False
          end
          object edtPercentualCusto: TbsSkinNumericEdit
            Left = 537
            Top = 12
            Width = 65
            Height = 20
            Text = '0,00'
            Increment = 1.000000000000000000
            SupportUpDownKeys = False
            Alignment = taRightJustify
            UseSkinFont = True
            ValueType = vtFloat
            DefaultFont.Charset = DEFAULT_CHARSET
            DefaultFont.Color = clBlack
            DefaultFont.Height = 14
            DefaultFont.Name = 'Arial'
            DefaultFont.Style = []
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
          object edtDescricaoCusto: TbsSkinEdit
            Left = 84
            Top = 13
            Width = 169
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
          object cmbtipo: TbsSkinComboBox
            Left = 300
            Top = 12
            Width = 158
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
            ImageIndex = 0
            TabWidths.Strings = (
              '1 - Custo Fixo'
              '2 - Despesa Sobre Venda'
              '3 - Lucro')
            Enabled = False
            CharCase = ecNormal
            DefaultColor = clWindow
            Text = 'Custos'
            Items.Strings = (
              'Custos'
              'Margem')
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
          object btnAdicionarAnimal: TbsSkinButton
            Left = 627
            Top = 13
            Width = 53
            Height = 25
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
            NumGlyphs = 1
            Spacing = 1
            OnClick = btnAdicionarAnimalClick
          end
          object btnRemoverAnimal: TbsSkinButton
            Left = 686
            Top = 12
            Width = 53
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
            NumGlyphs = 1
            Spacing = 1
            OnClick = btnRemoverAnimalClick
          end
        end
        object bsSkinDBGrid1: TbsSkinDBGrid
          Left = 1
          Top = 65
          Width = 783
          Height = 279
          HintImageIndex = 0
          TabOrder = 1
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
          Align = alClient
          DataSource = srcCustoProduto
          ParentFont = False
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clBtnText
          TitleFont.Height = 14
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Descricao'
              Width = 230
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Total'
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Title.Caption = 'Percentual'
              Width = 66
              Visible = True
            end>
        end
        object bsSkinPanel5: TbsSkinPanel
          Left = 1
          Top = 344
          Width = 783
          Height = 34
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
          Caption = 'bsSkinPanel5'
          Align = alBottom
        end
      end
      object pnlDescProduto2: TbsSkinPaintPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 23
        HintImageIndex = 0
        TabOrder = 2
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'panel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clNavy
        DefaultFont.Height = -16
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = [fsBold]
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
        EmptyDrawing = False
        RibbonStyle = False
        ImagePosition = bsipDefault
        TransparentMode = False
        CaptionImageIndex = -1
        RealHeight = -1
        AutoEnabledControls = True
        CheckedMode = False
        Checked = False
        DefaultAlignment = taCenter
        DefaultCaptionHeight = 22
        BorderStyle = bvFrame
        CaptionMode = True
        RollUpMode = False
        RollUpState = False
        NumGlyphs = 1
        Spacing = 2
        Caption = 'bsSkinPaintPanel1'
        Align = alTop
        object lblNomeProdutoFicha2: TbsSkinStdLabel
          Left = 7
          Top = 2
          Width = 29
          Height = 19
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
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Caption = 'Ate.'
          ParentFont = False
        end
      end
    end
    object bsSkinTabSheet3: TbsSkinTabSheet
      Caption = 'Loca'#231#245'es'
      object bsSkinDBGrid2: TbsSkinDBGrid
        Left = 0
        Top = 35
        Width = 785
        Height = 401
        HintImageIndex = 0
        TabOrder = 0
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
        Align = alClient
        DataSource = sercProdutosLocados
        ParentFont = False
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBtnText
        TitleFont.Height = 14
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Caption = 'Nome do Cliente'
            Width = 292
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde_venda'
            Title.Caption = 'Quantidade'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Valor'
            Title.Caption = 'Valor Locado'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataPrevisaoEntrega'
            Title.Caption = 'Previs'#227'o de Entrega'
            Width = 138
            Visible = True
          end>
      end
      object pnlDescProduto3: TPanel
        Left = 0
        Top = 0
        Width = 785
        Height = 35
        Align = alTop
        Caption = 'pnlDescProduto3'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -19
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 787
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 783
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 774
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
        Left = 620
        Top = 4
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
        Spacing = 2
        Layout = blGlyphTop
        OnClick = btnFecharClick
      end
      object btnexcluir: TbsSkinSpeedButton
        Left = 140
        Top = 4
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
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnexcluirClick
      end
      object btnalterar: TbsSkinSpeedButton
        Left = 64
        Top = 4
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
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnalterarClick
      end
      object btnincluir: TbsSkinSpeedButton
        Left = 0
        Top = 4
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
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnincluirClick
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 295
        Top = 4
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
        Spacing = 1
        Layout = blGlyphTop
        Enabled = False
        OnClick = BtnCancelaClick
      end
      object btnok: TbsSkinSpeedButton
        Left = 219
        Top = 4
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
        Caption = '&Ok'
        ShowCaption = True
        NumGlyphs = 1
        Spacing = 1
        Layout = blGlyphTop
        Enabled = False
        OnClick = btnokClick
      end
      object BtnImprimir: TbsSkinMenuSpeedButton
        Left = 374
        Top = 4
        Width = 110
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
        CheckedMode = False
        UseSkinSize = True
        UseSkinFontColor = True
        WidthWithCaption = 0
        WidthWithoutCaption = 0
        ImageIndex = 15
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '    Estoque'
        ShowCaption = True
        NumGlyphs = 1
        Spacing = 1
        NewStyle = False
        TrackPosition = bstpRight
        UseImagesMenuImage = False
        UseImagesMenuCaption = False
        SkinPopupMenu = popEstoque
        TrackButtonMode = False
      end
      object btnImprimir2: TbsSkinMenuSpeedButton
        Left = 490
        Top = 4
        Width = 97
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
        Caption = 'Imprimir'
        ShowCaption = True
        NumGlyphs = 1
        Spacing = 1
        NewStyle = False
        TrackPosition = bstpRight
        UseImagesMenuImage = False
        UseImagesMenuCaption = False
        SkinPopupMenu = PopRelatorios
        TrackButtonMode = False
      end
    end
  end
  object dspCadProdutos: TDataSetProvider
    DataSet = qryCadProdutos
    Left = 633
    Top = 166
  end
  object cdsCadProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadProdutos'
    BeforeOpen = cdsCadProdutosBeforeOpen
    OnCalcFields = cdsCadProdutosCalcFields
    Left = 633
    Top = 195
  end
  object srcCadProdutos: TDataSource
    DataSet = cdsCadProdutos
    Left = 633
    Top = 223
  end
  object srcCadCtoCusto: TDataSource
    DataSet = cdsCadCtosCusto
    Left = 662
    Top = 223
  end
  object qryCadProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 697
    Top = 113
  end
  object cdsCadCtosCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvariavel'
    Left = 661
    Top = 195
  end
  object qryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 669
    Top = 113
  end
  object dspvariavel: TDataSetProvider
    DataSet = qryVariavel
    Left = 717
    Top = 167
  end
  object cdsMovEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvariavel'
    Left = 717
    Top = 195
  end
  object srcMovEstoque: TDataSource
    DataSet = cdsMovEstoque
    Left = 717
    Top = 223
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
    Left = 437
    Top = 177
  end
  object cdsMateriaPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMateriaPrima'
    Left = 633
    Top = 347
  end
  object srcMateriaPrima: TDataSource
    DataSet = cdsMateriaPrima
    Left = 633
    Top = 375
  end
  object cdsFichaTecnica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFichaTecnica'
    Left = 661
    Top = 347
  end
  object srcFichaTecnica: TDataSource
    DataSet = cdsFichaTecnica
    Left = 661
    Top = 375
  end
  object dspFichaTecnica: TDataSetProvider
    DataSet = sqlFichaTecnica
    Left = 661
    Top = 319
  end
  object sqlFichaTecnica: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 661
    Top = 291
  end
  object dspMateriaPrima: TDataSetProvider
    DataSet = qryMateriaPrima
    Left = 634
    Top = 319
  end
  object qryMateriaPrima: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 634
    Top = 291
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 640
    Top = 113
  end
  object qrySaldos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 689
    Top = 291
  end
  object dspSaldos: TDataSetProvider
    DataSet = qrySaldos
    Left = 689
    Top = 319
  end
  object cdsSaldos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSaldos'
    Left = 689
    Top = 347
  end
  object popEstoque: TbsSkinPopupMenu
    Left = 556
    Top = 120
    object LanarAvarias1: TMenuItem
      Caption = 'Lan'#231'ar Avarias'
      OnClick = LanarAvarias1Click
    end
    object ConsultadeAvarias1: TMenuItem
      Caption = 'Consulta de Avarias'
      OnClick = ConsultadeAvarias1Click
    end
    object AjustarValordoEstoque1: TMenuItem
      Caption = 'Ajustar Valor do Estoque'
      OnClick = AjustarValordoEstoque1Click
    end
    object Inventariodosprodutos1: TMenuItem
      Caption = 'Inventario dos produtos'
      OnClick = Inventariodosprodutos1Click
    end
    object ransferenciaEntreSetores1: TMenuItem
      Caption = 'Transferencia Entre Setores'
      OnClick = ransferenciaEntreSetores1Click
    end
  end
  object srcRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 717
    Top = 375
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 717
    Top = 347
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 717
    Top = 319
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 717
    Top = 291
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
          'Visible'
          'Width')
      end
      item
        Component = cmbPesquisa
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
          'Visible'
          'Width')
      end
      item
        Component = cxGrid1Level1
        Properties.Strings = (
          'GridView')
      end
      item
        Component = GridFichaTecinicaColumn1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridFichaTecinicaColumn2
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridFichaTecinicaColumn3
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridFichaTecinicaColumn4
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = gridMovimentoColumn1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = gridMovimentoColumn2
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = gridMovimentoColumn3
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = gridMovimentoColumn4
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = gridMovimentoColumn5
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = gridMovimentoColumn6
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = gridMovimentoColumn7
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridProdutos
        Properties.Strings = (
          'BackgroundBitmaps'
          'DataController'
          'DateTimeHandling'
          'DragMode'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FilterBox'
          'Filtering'
          'FilterRow'
          'Images'
          'Name'
          'Navigator'
          'NavigatorButtons'
          'NewItemRow'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsSelection'
          'OptionsView'
          'PopupMenu'
          'Preview'
          'Styles'
          'Synchronization'
          'Tag')
      end
      item
        Component = GridProdutosCodigo
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'HeaderHint'
          'HeaderImageIndex'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridProdutosCod_Emp
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'HeaderHint'
          'HeaderImageIndex'
          'MinWidth'
          'Name'
          'Options'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end>
    StorageName = 'cxPropertiesStore1'
    StorageType = stStream
    Left = 408
    Top = 176
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        HitTypes = []
        Index = 0
      end>
    Left = 552
    Top = 240
  end
  object OpenFigura: TOpenPictureDialog
    Left = 428
    Top = 305
  end
  object PopRelatorios: TbsSkinPopupMenu
    Left = 528
    Top = 120
    object Etiquetas15X501: TMenuItem
      Caption = 'Etiquetas 15X50  - 2 Colunas'
      OnClick = Etiquetas15X501Click
    end
  end
  object cdsCadFabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsCadProdutosCalcFields
    Left = 745
    Top = 347
  end
  object srcCadFabricantes: TDataSource
    DataSet = cdsCadFabricantes
    Left = 745
    Top = 375
  end
  object cdsSetores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 604
    Top = 195
  end
  object srcSetores: TDataSource
    DataSet = cdsSetores
    Left = 604
    Top = 223
  end
  object cdsCustoProduto: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Tipo'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Tipo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Valor'
        DataType = ftFloat
      end
      item
        Name = 'Total'
        DataType = ftFloat
      end
      item
        Name = 'IDCusto'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 496
    Top = 228
    Data = {
      8F0000009619E0BD0100000018000000060000000000030000008F0009446573
      63726963616F0100490000000100055749445448020002003200045469706F04
      00010000000000094E6F6D655F5469706F010049000000010005574944544802
      00020032000556616C6F72080004000000000005546F74616C08000400000000
      00074944437573746F04000100000000000000}
    object cdsCustoProdutoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
    object cdsCustoProdutoTipo: TIntegerField
      FieldName = 'Tipo'
    end
    object cdsCustoProdutoNome_Tipo: TStringField
      FieldName = 'Nome_Tipo'
      Size = 50
    end
    object cdsCustoProdutoValor: TFloatField
      FieldName = 'Valor'
    end
    object cdsCustoProdutoTotal: TFloatField
      FieldName = 'Total'
    end
    object cdsCustoProdutoIDCusto: TIntegerField
      FieldName = 'IDCusto'
    end
  end
  object srcCustoProduto: TDataSource
    DataSet = cdsCustoProduto
    Left = 496
    Top = 200
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 176
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      OnClick = Configurar1Click
    end
  end
  object cdsProdutosLocados: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 132
    Top = 195
  end
  object sercProdutosLocados: TDataSource
    DataSet = cdsProdutosLocados
    Left = 132
    Top = 223
  end
  object srcGrande: TDataSource
    Left = 568
    Top = 320
  end
  object srcGrupo: TDataSource
    Left = 536
    Top = 320
  end
end
