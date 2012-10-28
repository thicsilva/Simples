object frmCadProdutos: TfrmCadProdutos
  Left = 173
  Top = 172
  BorderIcons = []
  Caption = 'Cadastro e manuten'#231#227'o de Produtos'
  ClientHeight = 513
  ClientWidth = 752
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
    Width = 752
    Height = 460
    ActivePage = bsSkinTabSheet1
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
        Width = 750
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
        Width = 750
        Height = 395
        Align = alClient
        TabOrder = 1
        object GridProdutos: TcxGridDBTableView
          OnDblClick = GridProdutosDblClick
          NavigatorButtons.ConfirmDelete = False
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
          object Column_CodigoFornecedor: TcxGridDBColumn
            Caption = 'Cod. Fornecedor'
            DataBinding.FieldName = 'CodigoFornecedor'
            Width = 95
          end
          object GridProdutosDescricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 200
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
        Left = 73
        Top = 19
        Width = 536
        Height = 310
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
        object bsSkinStdLabel1: TbsSkinStdLabel
          Left = 78
          Top = 63
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
          Left = 63
          Top = 113
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
        object bsSkinStdLabel2: TbsSkinStdLabel
          Left = 35
          Top = 143
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
          Caption = 'Preco de venda'
        end
        object bsSkinStdLabel3: TbsSkinStdLabel
          Left = 33
          Top = 192
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
          Left = 36
          Top = 237
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
          Left = 188
          Top = 63
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
          Left = 71
          Top = 166
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
          Left = 82
          Top = 215
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
          Left = 181
          Top = 260
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
          Left = 298
          Top = 261
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
          Left = 158
          Top = 166
          Width = 128
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
          Caption = 'Quantidade da Embalagem'
        end
        object lblPrecoVendaExterna: TbsSkinStdLabel
          Left = 193
          Top = 142
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
          Caption = 'Preco de venda Externa'
        end
        object bsSkinStdLabel12: TbsSkinStdLabel
          Left = 6
          Top = 90
          Width = 105
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
          Caption = 'Codigo do Fornecedor'
        end
        object bsSkinStdLabel14: TbsSkinStdLabel
          Left = 56
          Top = 283
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Peso Bruno'
        end
        object bsSkinStdLabel15: TbsSkinStdLabel
          Left = 306
          Top = 283
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
        object edtDescricao: TbsSkinEdit
          Left = 120
          Top = 109
          Width = 337
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          TabOrder = 3
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCodigo: TbsSkinEdit
          Left = 120
          Top = 58
          Width = 56
          Height = 18
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
          Height = 18
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
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object cmbNome_CentroCusto: TbsSkinDBLookupComboBox
          Left = 186
          Top = 185
          Width = 271
          Height = 20
          HintImageIndex = 0
          TabOrder = 14
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
          Left = 120
          Top = 185
          Width = 63
          Height = 20
          HintImageIndex = 0
          TabOrder = 13
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
          Left = 120
          Top = 230
          Width = 337
          Height = 20
          HintImageIndex = 0
          TabOrder = 10
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
          TabOrder = 12
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
          Top = 61
          Width = 169
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
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtUnid: TbsSkinEdit
          Left = 120
          Top = 161
          Width = 33
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
          TabOrder = 6
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object cmbCod_Grupo: TbsSkinDBLookupComboBox
          Left = 120
          Top = 208
          Width = 63
          Height = 20
          HintImageIndex = 0
          TabOrder = 8
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
          ListSource = srcCadGrupos
          OnChange = cmbCod_GrupoChange
        end
        object cmbNome_Grupo: TbsSkinDBLookupComboBox
          Left = 186
          Top = 208
          Width = 271
          Height = 20
          HintImageIndex = 0
          TabOrder = 9
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
          ListSource = srcCadGrupos
          OnChange = cmbNome_GrupoChange
        end
        object edtAliquota_ECF: TbsSkinEdit
          Left = 261
          Top = 256
          Width = 33
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
          TabOrder = 15
          Visible = False
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtPco_Venda: TbsSkinNumericEdit
          Left = 120
          Top = 137
          Width = 65
          Height = 18
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
          TabOrder = 4
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object cmbNome_Fabricante: TbsSkinDBLookupComboBox
          Left = 352
          Top = 256
          Width = 105
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
          ListField = 'descricao;codigo'
          ListSource = srcCadFabricantes
          OnChange = cmbNome_CentroCustoChange
        end
        object QtdeEmbalagem: TbsSkinSpinEdit
          Left = 292
          Top = 161
          Width = 66
          Height = 20
          HintImageIndex = 0
          TabOrder = 7
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
          Left = 321
          Top = 137
          Width = 65
          Height = 18
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
          TabOrder = 5
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
          TabOrder = 16
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
          Left = 117
          Top = 85
          Width = 169
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 17
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtPesoBruto: TbsSkinNumericEdit
          Left = 117
          Top = 280
          Width = 84
          Height = 18
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
          TabOrder = 18
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtPesoLiquido: TbsSkinNumericEdit
          Left = 373
          Top = 280
          Width = 84
          Height = 18
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
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
      end
      object bsSkinExPanel3: TbsSkinExPanel
        Left = 73
        Top = 336
        Width = 536
        Height = 66
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
          Top = 37
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
          Top = 37
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
          Top = 37
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
          Top = 34
          Width = 58
          Height = 18
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
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtcomissaoSecundaria: TbsSkinNumericEdit
          Left = 302
          Top = 34
          Width = 58
          Height = 18
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
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtMargemSecundaria: TbsSkinNumericEdit
          Left = 472
          Top = 34
          Width = 58
          Height = 18
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
        Width = 750
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
          TabOrder = 0
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
          Top = 4
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
        Width = 750
        Height = 380
        Align = alClient
        TabOrder = 0
        object GridFichaTecinica: TcxGridDBTableView
          OnDblClick = GridProdutosDblClick
          NavigatorButtons.ConfirmDelete = False
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
        Width = 750
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
        Height = 18
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
        Width = 750
        Height = 375
        Cursor = crHandPoint
        Align = alClient
        AutoSize = True
        Center = True
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000100
          0000010008060000005C72A866000000017352474200AECE1CE9000000046741
          4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
          80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
          0B0C00000B0C013F4022C80000FF7949444154785EEC5D077C5655F205A42820
          1D02E98D84DE02A10602A11312420884127A075151C40A8828284544ECABAEBD
          F75EB1D08B05B1632F28A0607777FF3BF33F33F7DEF7DEF725A158765DCDFE7E
          B35F28A2BCBC39F7CC993373CB3173B9B2287B0665EFC05FF31D284BFE32002C
          7B07FEC2EF40D937FF2FFCCD2F3BF5FF9AA77EF0FB5E0600650050F60EFC85DF
          81B26FFE5FF89B5FC600CA18401900940140D93BF0177E07CABEF97FE16F7E19
          03286300650050060065EFC05FF81D28FBE6FF85BFF9650CA08C019401401900
          94BD037FE177A0EC9BFF17FEE69731803206500600650050F60EFC85DF8112BF
          F96F7EF466B99DBB5F2DF72A423E4B8B3FC0AF97C77FDBB188EA881A88BAF6B3
          D2FFC87FFF7FFFF9BEB7B3DC2B6FBE526EFBF6EDC562DBB66D25FEBCFBBD65BF
          FEBFF37C4A637B250240A7E99DCAC50E8B2917931FAD9FA5C57FF9D71BE0DFDF
          093107B1386668F405D1795157E073297E3C11FFCD03E4D7F1D90291846884A8
          8638C6FD7DFECBFFFD7F98E75BAF53DD72E58F295FAEEC7F7FDE27F06702804A
          48E02E48DEABA286446D8F1E1AFD635C412C278E8AE7A6931B73E2C8780208FC
          805FFB2C3237EA15C43A7CFD207EDF8DF8672EC43F7B1262A40588CEF84C45D4
          46540C07BABF0A409401C09F37F1DDDFECCF02001148D29948E64DD179D1FF97
          7E5A4BCABD3A83C7DCDD97273D32904FDA98CF931E1EC4057FEFC9FD5775E61E
          E7A651A7F9ADB8F5ACA69C343A8190D0FF8ACC89FCA6D1E0C84F1BE544BE1599
          1BB93D2A2F6A1D00E3CED8FC98550170E88FAFD3F0FB1BE2B3CA1F9401FD660C
          A20C00CA0020A414E834BDA3BE5C7FA0A882FF96FE887BA372A3F6268C8CFFBF
          9CAB32E8EC7747D1F95F8CA365FBC6D385FB27D2455F4DA2E5888BF64DA2655F
          4CA4A59F8DA7F33F1E478BDE29A253B614D09447B269F8DF7B51F69AAE94B534
          9D3A9DD69A9A4E6C4C6010FF0630FCD830BBD15788CF1B0D6EF461D490C8B701
          0CDBF1EF7C087129E274292D100311AD10B51115FE40CFE8177DBF04DCCA00A0
          0C00C200E00FA501D440924D437C2AA77EDB939AF1D475D9BC64DF583E7FEF58
          3A7FEF38BE60DF385EBA6F3C2FDB3F812FFC6A22030478F9D79378C5D79369D5
          8129BCEAE0145EFDCD545EF3DD34BEF4FBE926BE9BC1AB0F4CA70B3F99C867ED
          1CC5B39E1EC2E3EEECCFC3AEEDC9FD5674E6F6735B72CAF8248A1F11F76F00C1
          3FA12FFC8C52E2477C7E1F3334EA20FE7B3E403C8A588B38DB82434F7C8ADE50
          0721FFDD55F129254B893ACA1FA5C42803803200F82302407924481CE26E2420
          278D49E0AC95E93C77573E2FDE3786177D319ACFFD620C2DFEB288977C296000
          20407840B07F225FF4D54461040204BC12216070B1C4C1A9BC1A71C937D3E8D2
          6FA7F3653FCCE42B7F9EC557FD63365FFDCF13F0F509BCE6C00CBEE0C30974E6
          CB2379CEBA3C9EFCD0201E754B1FEE0F70E872461B6E3DB309379990448D8B12
          547F881B1ECBF86F15B0F81A40F53E80623D4A951BF073730000F1880A7F548D
          A10C00CA00E08F06007272764332DD8564FA47CB135279D89D3DF9B4F70AF89C
          2F46F2399F8DE4059F8FE2857B46D1A23D0A045C0A1048692040A0AC60055841
          1810D0EA83D3040878CD376005120084B5DFCEE0CBBE9FC957FC388BAEFC7936
          5F25F10F0186D9FA6B2BBE98C28BDF19CBF3B78DA0935E18CAD31E1DCC236ECC
          E201ABBA70C68276600F2DB8D5CC546E323119E545CC8F00813BF1F7E910CE06
          FE300CA0735917E0CF0E01FF4B22605D24CA0C24FE5608733FA79FD59227BD38
          80E77F52C0677C369CCFF874389FF9E9083EFBB34201023240301A8C608C02C1
          79A18C801C23B82804088411A0343830851C1B08010280C0A54874243BADFD6E
          265F1616978331001CF8CA9F661382AFF86996FE9ED55F4DE30B3F99C4E7BE3D
          968539CC7D6E18A59DD88A1BE544FD84BFD303B6E3E095037F080028882957A7
          7D9D72E5CABA807F6A0CF85F01801424C595D168E125152550EFB5E934FDE541
          7CEAC7F97CEA47F93CEFA3613CFFE3617CBA80C1270A046481C03202C3060240
          603582F1BC74BFD1080408960B23B01AC1CA03B634B065C16AB0814BC0049411
          7C3B1D25820201AF8566100E040210213F07D670F90FB3000EB3051C78C59E89
          34F88A6E9C5098C8D29A04009C8C38EE8FE44340A952AE5A5CD53FF5CB5FF697
          2B57AADBF38F64044A47F2BF88E4FFB1D98CC63CF4BEEE3CEBADC174E207B97C
          D20743F8E40FF278EE874315084E0308CCFFB8408080CE001BF018C1E7AE3400
          2330A5012923D86B350208851E23000868D7C00001AF14B130541F508D408060
          4D2920500C003CA6308BCFFB7814CFDE9E45533774E7FE97B7E3F89171A2116C
          43F247FF51002016A77FA3FE0DCB1D73EC316539F2277F027F540620C2582D24
          C65CC4DED8E131FFEE785E4B1EBBA90FCF7A2F9B67EECEA659BB07F39CF772F8
          C4F70004EF0B100C0110E4F12900033002F218812D0DCE92D2C0038251742E80
          60B12B0D3C20B062E1BE09681D06350201821046408611588DC095066003C208
          4A02804B0E4CE3B3DFC9E7195B7AF0F4CDDD69E6B61E3CE1E9AEDCEE94146101
          FF8A191633E68F0200102ECB554FA8FE277FF5CBFE7AF2048E1200FE233E00E9
          ED77445C8BC438983C2E81FA5C9F4E1377F5A369EF0EA4696F0FA4E9EF0CA419
          EF0CA259EF0208DE1D4C27BC974373DECF25000181111018019DF2D1509AF751
          3E80A0804E47A03420290D0004280F5423202B16128040BA06749EB60FC712BA
          06A211104A0342FB503D0412D23E8458282D4442D70042E154110BE912041801
          412C94D28054233065807E5EB8671C9DF21AFEBB91F82E0004346D5377EAB5A2
          A50882624692D661C5FFB67F404EFF86BD23CA2CC07F117C384A00F8DD7D0075
          21F08D41E26FC48BF8AF96735338FBBE2E3CF1EDBE3CF12DC49B7D79F25BFD78
          CA5BFD0104031840C033DE052340CC768CE07D65040204CA064235024F2C1420
          083202D73E745D035F23D83721D44760DA87E49706F01248EB30B46BA022A1FC
          DCB91F16F29C97FAC8A9AFE118807C0A0B28B82B9D5326264819F00D184082B0
          80FFA60828FFEEAA3165B5FF5F24FF8F9601FCAE00908497EF12A8FC1F2616C5
          53A7E52D396F5D372E7A3D8BC7BEDE9BC721C6BFDE8727000426BED98F0408A6
          0204C0083C200023704040270A10485910D408542C0C6A0485A66B10A211A075
          E83402E723508DC00081290D821A41A85868CB025ABE77229FF1D6109EB9B5A7
          97F892F4410098B1B5074F7A3E83D3E6A50A0030CA8033FFAB00303CA65C838C
          FAA8FD2BFC55DEFFBFFCDFF38FC200BAE0C57F14C9FF63E3A949DCF3867654B0
          358347BD96C9A376F6E4D1AFF5E431AFF5E2B1BBB20C10BCD18726BC019FFF9B
          FD94114C7D0B40003630FD9D416004837816348213828CC002816304A7894680
          8EC1E9E81898F6611008542824F51084B70F05080002521A98AE81F110AC803E
          208CC0B40EA7F1F99F15D1DC5707F08CCD5AEF6BD20743CA00F76361017DD7B6
          61940102022F4A37E0BFC50020B496AB168BD3BFACF5F7970186FF360054C70B
          3F26263F6647544EF4BF9ACF6DCC031EEFC4052F67D0F0573278C42BDD79C4AB
          3DB8706700087629109005029E18008229C208A42C803E6081804FD89D03B130
          974F8450E818018040F48140D7C07808CE521F811A8A441F701D03004191F111
          5857E105D007BCF6A167269AAC80B0E0FD0255F98394FF700050F468676E3C2E
          1E0010F3059EC7A0FF0A00A0F6AFDBB16EB9638E2B53FEFF32D97FF422E06F56
          02C8EC7D0BBCE837A3DEFF297E642CB5BFB0190FD9D68587BED285F37674A5FC
          97BAF2B097BB0918F0700041218060E4AB0204996004BD48184191CF084281E0
          AD0122161A46800894060082E21A81DF3E0423B03E82B304086026124391B40E
          250C23182BED43A311EC35A581CC192CD953C4A7BC36C8D5FADE091F9EFC2125
          806306600A1DCF6ACAD143A2FF89E772139E4BA97302BF4B8980E48FCE892AAB
          FDFF4A996FFFAEFF0D06501D2FB82CE590DE37A7CE4EE28C1B5BF3E0ED9D3847
          A333E76EEF42793B000600815280801408501E8C1146009D20C8088C46D09F95
          115820982940B01B1A015A87D235B040A01A41A034B01AC1F0623E82851608CE
          DD23A5013A060608306F308ECFF960049FA0425F06A8BE8A7D470500B3766472
          FE6DE98C1208DD8098F5783689A50D0AFD1E00208CA34E5AED72152A97D5FE7F
          350CF84F03400C5EE0F93179D1EFC58F8AE5960B52B8E7836D79E0B6741EB435
          9DB325B675E4C1DB3A9180412EC04081608700413730820CC708288C11281078
          8CE0F53E241D03A3118401018442691F9AAE819406C647100402E323701A014A
          03088522162E80586881403582859F8EE2796FE5A8D0374D933F4CE40BABFD4B
          FBF599100327430C4C1E9BC01814FA0409298B49FE631B971AF56B54AE4ABD2A
          7FB577BFECEF7BF425C02FF60154C24B2D8EBE6B6386447F9334219EDA5FD68C
          B29E6947FDB7B4A7FE9BDBD3007C0ED8D281066E4D2780010108C80201010884
          111018014A836E042020D109A01150E12B3D08A50118414FD2D200FA80D50848
          C44268040420104640100BD547201A015A876226122020188A088622CF47201A
          01DA8784D2C0F8089C87003E02D107CEF96C149DF1FE309AF32ABC09E8E54FDD
          9441D3023DFE60BFFF48BE066BA059DB3329634973C268F1CF784E1723AAFD47
          3C01009A5A6D6A952B5776F8FF2501E13FC1006AE2349B8E5A7F134EFE1F5366
          2772D73B5B52EF0D6DB9CFE676DC67533BEEB7298DFB6D4E6300010304240404
          C00A3A3A46A0A5C1901D1E23A07CE803CA08AC58A88CC0130B05084CD7603CBA
          0613DEE8A31E026104F01048FB50CC44AA118887405C85280B8CB3505D853013
          D9D22028168A3E70C62723F8E4B77268FAB69E3C6563370D00000308C0024CAF
          5F93BE94D3BF440D00BF170080C9C674E906882968A39D12FC7DF705A0F68F1C
          D8A85CC5E32BFE255FFEB2BFF4513B018F5A04AC0963CF4A24FF81D8E1B1FF6E
          B13885BB3FD19A7B6D6C43591BDBB244EF8D0604FA5A2010101046D01F403010
          614A03290BB434509DC03202AB11940804C208B47D58E46904F010A063608180
          2C10B8AE810704B34DD7001A81740D3067F0C150632FC69CC1BC0FF379D62B00
          920D5D69D2862E3C7963574410040004280584152810400F382211D082C5E417
          32B8F589290C16F02D006036A27249A5C06FD525881B115BAE6E7ADDB23CF80B
          3F81DF8B011C8B17B71B5ED4A700009C3C259ED3AF6BCEBD36B491E4E79EEB5B
          937E6DC300011801C0A0AFC4A634728CC0B182815B8C4E6081C06804D0074A11
          0B031A018040C442CF472040A0A5C12134029406EF856A0427BC99CD9371CA8F
          7FA1134F5CDF9926AEEF0220901010E81A6003CA08501A0818788C0060E07B01
          0E25120EB8A2ADF80184053C866798FCBB01004EFFA89CC8B2B6DF5F38F97FC1
          2CC06119800CF134C4CB3B05A7FEEEB8E131D4F4F424EE724F0BEEB5C924BF24
          7D3800940004645881290DFA4969B039C808D2A10F384620A58105024F2CEC46
          521A84B60FADA10865C1D85DBDC92B0DC281C0FA085C6930FB9D6C9E86537FFC
          FAAE3CEEF98E0A00E35FEC4C135EEC0C20804D59810020100A04A20B94541A84
          3A01C3CB04888185F775E4D489090431F0533CCB4C44F97010F8B50C40FF3C00
          40CD1635FFE2AF7FD95FFFB76400B23EBB3D5ECEB5A8F5F7248C8DE3362B9B70
          8FA75A73D666FFB43F1400C8AF65496C6C4B8E117840003008D708A46B204090
          83D2403A0681AE8188859E46500C0876F622E91848FB50800062A1A71148D740
          340231144D7DBD1F4F40921621F18B9E4BE7B1F81C07004010408015042C1078
          6C4081A01B396DC0E80346237065C1A1188074033A2F684A6809FE0B2DC10578
          A6B20529440BF8D50020B57FFF46E52AD5A85496017FF127F05B0180ACC81E81
          531FABB46344E8A3F4BF37E39E2FFAA77E90F297C60002BF8704080404BCD2C0
          6304462310B1305423F0F4011E12F4119424169AAE81188A3C8D20542CEC4F13
          5ECEE23148EE51CF76E0D1EB3AF09875E93C062020600020200102CB06140826
          786C40190109235010D868988007048711090524065ED596E20B7597E0CB78AE
          51BF39000050E4F42F5FB1CCF3FB17CFFFDF641808C69E988548FE8F646EBFF9
          82C6DCF58196D43350E30793FF700C20FCD72D2330400010B08C001A8102017B
          62213402EB211046008D20D0351043512810188D40BA0676CEC07908C6EDEACD
          63366750E1B3EDB9F099341E891885AF0504140804049EEB48C2061C2318FF62
          270B025E590091D09405AE5330250802D0084CB700BA8044A014104FC0E8873B
          538B99C9E209F811C99FF19B02808CFB664594AB5CBBF25FFDDD2FFBFBFF4A1F
          80ECBE6F8DB80D94FFDB84B1F194765953CA7C1E021F547E2432C949FF6BA3D7
          06150C851120A4346847100B452320B40F11D647B0191E02D33E24740D8C87C0
          00017C04E22CEC0A1F41B7808FA03BE60DE02378153E829D6004AFF5A4512F65
          D2089CEE054FB6A5E14FB5A5114FB743A4118080463ED39E00040410A0310894
          0408050244276104044620DA8006B4019A840008983065014D953022A17A08A6
          9B8E41C89E80292F66509745CDC4152862E0DF7E2B3F80BA08F3A2CB1DDFF8F8
          B2BE7F59FAEB13F8A525402DA8FBE3F162BE8D9794534F4EE26E0FB6E2AC2D87
          16F91C13385C0970A85F57460030285E1A188D401881FA08841184B40F9D58D8
          55DA875623C0ACC1AB18387AB93B176C82E3F0A9763CF4F1569CFF446B1AF664
          1B2E78AA2D03081840C08512C208C0062C10041881AF0F6859F04267A311AC37
          8C0040E0098596110444C2D06E81B281AD3D28E78634AC3CD775611F87EB00BF
          460368D0BD7EB98AD5CBFAFE65F96F9EC02F018068BC8042F9F7C4E3056DB9B8
          7131A1EFD724F89194089611581F816D1F06BA06AA1168D7C0598C8D8FC08985
          211AC1B6AE9CF75C07CE7DAC250F79AC05E73DD64A408000023C0C5100201010
          F0800020208C40CA024F1F405920A5815F16588DC009854E1F402741BB051BAC
          4818D407E01F7013842803683CD685B53A2159004006840604CB805F0A0032EE
          5B3DB16CD55759F2FB4FE06801406EB5B906F14D127AFB695734E5CCE7D4D8E3
          F5F48F24817F4B804059504C2CD4D2409D85CA068A8B85DBA42C40D7601340E1
          C9B69CFD48731E8CC879B405E722863CD692F2C0042C1B6065030E08C004A434
          08B081307D408180A465E8844215095DB7C0B0019404011391E726F4D8806A04
          3D96B6E0D861D184E4BF1D21DE8A5F753B7344668372C7542D1BF72D03805F0E
          008341F97F4E9E114F1D6E6AC6DD5F68C599EB4D20A9B9E70680C121FAFCBF45
          0950DA9FEFCC44BD372923A03067A107045216646FE948839E6BC70391EC031F
          6CC2831E6ACAD90F375320C84100040820C0431EC7562201023081FC27C108FC
          B240F4811091709413098D504845CF07CA0288845EDBD094052A121A13917112
          FA96626D1BD20C2C0A197E4F474E1C1DC728B73E40F277FD5500901F636AFFB2
          FF953D81C013384A06D0F15AA9F95B9CDE9C866DE905A34D4F1EBCB50B4EDA74
          EEBD218D335F6CABA0D0FDC596D4E3C5E2C0F07B0240C043208C408442D731F0
          CC44183CE2011BDB73BF275B515F247EBF0752B93F3E07200602040629083413
          3640CA06B42C10201010506DC0B10132FA80B281A036C0A34DDB904CB7C09505
          EA1DD0B6A16503EA249CE840200004B665080690C1935FCCE05673D00DC88BFE
          0EC92F9E805FC600B0EA4B4EFFB271DFB2DC0F7F02470B004FA3CFCF594BBBD2
          F203457CF10F6379F9B76378D9C1517CEEFE423EFDB302ACED1E0CA75D5F4CEB
          755787DEC02D1D7122B7E75EEBDB8229B4D6E8B9BE15E9271883328760989F83
          F26FD8444971B812423B06D643A0B306C65ECC7D9F43B98064CFBA37997ADF97
          CC7DEE6FCCFDEE07080008040406000414081E6A4A52120C06080481C063034E
          2444F910D406A465181409D12D5010B0DE01672212202011087DEF8063035EDB
          5045C219DBBAF380ABDA72646ED4FF01781F0200D457251FF3FB2559840F0510
          C7461C5BF6F6973D81624FE06801E0062CAEE4DC6BBAD1EA1FC7F2EA1F8BBCB8
          E4A7225EF3D358BEF4E771F81C47AB010EAB7E18C3177D8B4D3AFB472A38CCC6
          FCFDC437FBCB900EACBA3DE0DCEBC603377782FFBF3D18443B2FD97BAED71662
          7170F041236496A0549F01B4892C09804FAF279A73E6DDC9DCF3EE44EE754F12
          65DD9BC4BDEF4DE6DEF735E6BEF7A7840001CA02122090B240B581478A010169
          59E01881B081A743BA05648120D444E4DC84681B1A1351A87F40078C8C7F40DA
          863C754B068F7DB20B2E0F81296868F46748F0B1470B00B2E35F94FFF215CA4C
          3F65F95FFC091C2D009C0006409DCE6C43E77E544897FC5C4417FF30A6C4588D
          9F0740D02588353F498CD50070E0F717D18AEFC6D0D203A369E1972309937618
          BEC9A5A9EFC281F7661FB8F47AA14D9741282FA8FFA674D0F934F50080450018
          DA50E68BADC120944514F71958DF80FA105E684D3D9E6E4EDD1F4AA58C3BE2A9
          FB9DF1D4E3AE04CABC2B917A02040C10800D20FADC97420002425940FD1F6842
          6004020284B2800004C208A42C20D107501A10BA0564BB0594FF641B691B4A59
          E0F907A453A0FE0178077CFF807807441F30FE8171060842BC03461FB0FE818D
          5D69EAE66ED4FEF454EC0988963D0117228E3D525F80F8FDA3B223CB959DFE65
          A95FDA13384A00E8148F93686FE3B14934EDE9810C000861018E11082804D941
          F1AFCDAF1BD66098C32560140006C31ABE194D4BBEC24EBE2F86F3BC4F86F29C
          0F07F38CF706F0246C001EFD5A16E7EFE84ED95B3AA3B6EFA0757E16D80380C1
          7423103D9E6D45DD9F6C066F4263EE72673C77B93D96BB22BADD11C719F8718F
          3B130004896004890C20E05E6003000265037DC0060408A42C507DE02123121A
          7DC0EB160810A83E60CA82803E605A860002E803CF840A85C652ACB662311159
          27A1ED16583630F1451D301213918A8453B774E341D7B59385A1620C7A120CA0
          D9D19400B55BD72A57A152D9B68F320828F9091C2D00C8CD35D7C70E8BA59CAB
          BAF1F283A3793512383CC10F0700E1BF7E31C0003FA7C9AF9FDF8F26847CF2CA
          EF46F3F2EF46A1941809ADA190977C3D8217EE2DA0333FC7C5A09F6081C787D8
          F50770287AAD37F7B8AF1DB75A9EC2AD572552C7DB63B8E32D51DCE9D668EE7C
          5B8C86070277C4091BE0EE7725702642CA02030400817B1B0B10081B405990E2
          E9034624F4BA0524DD821CF8065424847720A00F8850684542290D7C20087807
          C44DE86CC5BEA5D84C1A8A50A81A819B341CF568476E3205EBC2F2A2F7010046
          E37B205397875E1926F7FBF56D58B6EAAB2CF30FF9048E1600CAC70C8BCE8DCA
          8BFE47BBB9CDF9ACB7F2F514FF2500E0125E927ED50F36D991F02B90EC48785A
          8E8497A4BFE89B917CE137859AFCCB0E8E400CE7A50786D3050786F3F9070A78
          C957C3783162D1BE7C9EB2BE3FA74C4AE666CB1A51875B1B71879B23391DD1F1
          561F08BA182020C706040450161836703740004090756F63888460034E1F5036
          608442DB2D90B2C0F70ED86E81F30E401FB04E42E7262CD62D20AF6D186222B2
          DD821703D386D22D002BC858D65C6603FE8DC45F0500A87D2800509D606874B9
          9ACD6A945DF1550600BF2900C8A9138D97EBA904DC6A3BE9B13E2CA7F7A100E0
          E21F71AACB09AF9FFE09BF1249BFF2FB51BC424293DE263C921E094F26E947F0
          52844976C4D74878C4795F0DA3C55FE5435CCCE773F70D45F2E7F1A2BD79BCF8
          EBA158DAD197DB5D1B4DED6E8CE0B49B1A71FB9B2D10800D048080BCB2E0CE38
          366C00A581070489A20D04CA022B14DA6EC1C0878C48A86581050229095CDBD0
          EA032122A1B60D8D8908B662D50678D43A13FE9091E72634D386AE2C000864DF
          D89613B04815CF7EA7CC601C0E00CA2CBF65997F244FE06819800080DC5C331F
          A2D4BF7B2DEDC04BF78E2C56061861D0A7F57ACA0B9DD7D08427A1F5FE295F68
          4F7939E191F4EE84FF7AB826BC9CF2487A93F008243C2D44C22FDC3B84177C39
          84CFF93297CFFE2297CFDA93C367E3EB414FB4A156D7D5E7763736E434090102
          44875BC0084C59409D511A081BE8825241D90042804040408542D32DB065015A
          86CA06100FA0348050A86CE0416D195A135133ED1628105823915F16B4099A88
          C43F609C84DA3634D3868E1168DB1042A1993434FA807807463D9ECE6D4F6D2C
          2C40C4C089F83E947A7740745E144C3F6596DF234980BFFAEFF9250020538003
          F1927DD4646232CFDF99A76580ABE385DA0B00ACFA3E98F48EDA8F7449AF277C
          F09447D27B27FD92AF0A200222E9F7BBA497537E28121E49FF659E243D49C2BB
          A43FF3F3C17C06E2F4CFB2F9F4CFB379ECF60C6AF3F746DCFAFA06DCF686080F
          081404B42C88A2A03E60CB024F24B4DD02A30F080868592022A10302ED16401F
          0898881EF24C44E21DF04442D1077C4BB1E726946E816F22F2FD03AE6D28DD02
          E31F000848CB101D03CE5CD582B16549E6031E0500D4299105A0F66FD00396DF
          FFB51B7ECA975D48F6DF00A35F020062448944DC148D96E0885B7B6A09604E79
          2FE949C43BA5F6A0F4EEA477490F5A4F8EDA2BBDF7A9BD9EF20832D4DE247DF0
          943FFB8B1C39E9210222E925E111F33F1DC4A77D3A101D83817CEAC7B81AECCD
          DED4E58E246E795D3D6EFDF706DC06E101816103E4D840473001271406BA0524
          DD82EE771A7DC013092D10800D9031111991D0740BAC89C8740BD44854DC44E4
          750B20121A7D404A02DF56AC93865216C8D871A848887220F7B6B69C3A093709
          0FD59B84D34B0200E910544FA8F6DF78978EFCDF59A15C2500541DDC45D0BA5A
          5CB561C727579F0ABDE2E4EA89D5C6E166E2A1956A564A2D5FA97C0DFC81AE7D
          219F62642833331CF9533EA2DF799400E0DD0B50192FDA6970A8FDD0E1D456B4
          ECAB91047A8FDEFE28C448D0FB9104010FA1B53C5D78B09040EDD1F757F18ECE
          FF5A424F79D27A1E096F939E2CBD2739E5CF31273D69C22370CA13929E4EFF74
          1021E9E934C4A99F0CA4533E1E40A77CD49F4EFEB01FAE05EF4727BCD787063C
          D1925A5C5B8F5A5D5F9F5A2300020410A076089405A4207073A40001A12C2000
          0149690036405D6F539110DE01ED16A065186FBC037727867907B45B60BD035A
          1610CA02F50F14F30E3CDA52E60B64C8484C44326D68BC0308B77B40B48192BC
          03325B002640231FEF406D4F6BECF6042C0BF703801D946BD83BE28F66F92D5F
          EE987255308414716CC363BBD6685A634E9DF6752E8746715FA37E0DB7440D8E
          FC303227722FE20096947E0EDFC2FB1159112FD4EB54F7C61AA9C79F0C306881
          B497FBCA1D08C8A7FBFA885EF2B2DF54FA13384A0008590ADA0727D1EB092313
          79DE6B4379D58FA655674F79247C212FFD46EA792BE2E194D793DED4F392F0BC
          18CABD39E58B9DF492F47CE6E7391EB59F8F931E096F4F7924FCC7031849CF27
          234EFAA02F9F8898F37E1F3EE1FDDE701CF6A6E11B3BE0F48FE016D7D6E596D7
          D7630081610337281B804868B581A048E8DA86B7C6F822A1F50E387DC07A0704
          08FCB240BC03600281D982804818366968068CC444A422214C446002B65BE0B3
          012C20096A03FE3AB21EAB9A73DC085D14B2130C40F6307AED4001049CA0FFDD
          F7BD7CB90A9839A851A56EE596B55AD53AB55E977AB722D91F434BF22524F847
          281D0F20D97F6E38B8D1FFE16B1631B9E9E4C6DC764E534E199F88E9C7186E94
          1309E353E43FF5F70E6CF44EFDAEF51EACDDA6D6F26323AAF4C21AB3DAF80BBA
          9146610465ECE0577CC77F0D00D4434BF08E468323FFDD7F4D575EF1D3A8A06A
          8F93DE28F64101CF8878A0F67B8D8867A83D42043C044E794D783DE51DB507AD
          9FF7C900507B24FCC7FD79AE267C3FF213BE8F243CCFDE9DC5331133DEED2941
          135ECBE0AEF72472D36BEA707380400B94032D210C5A201046105E16F86D4330
          02AF2C08FA07FC6E811109AD501866225291D0E9039E89C86B1BFAD386C19163
          0704BA7B403711859988306424138643E175489D9C2000F07D481980D31F89F2
          9FD8F387142F570914BD7A852A15EA1D53ED98D8E3A28EEB89643F1DA7F6F560
          201B23B3233FC67FDF8F5811F77F1867FE371C8994302A8E9A4C4CE2D6B3318B
          7141079A704F7F3E7DC7083EFFFDF1BC6AEF14BEF4E0745EB167322F787D348F
          BFA73F753DAB0D379B9CCCF123D0F91816237FC6FF4100FD2E7240A3DDF5BBD5
          BF1B654E112E34690EB0A95FFE98F2C7210764CB4919181C2518FC1A009075D5
          B380D2FB9A4F4FE5459F0F43CBCED4F372C29F67DB748B6D2D2F6D3A2FE941EB
          3D016F4F40C0FB4C6A793DE54913FEA3019AF0A0F67CD28781531E27BC24FD2C
          4DF85E3C1D493FFDED4C5C049AC953DFEAC153DEEC4E93DEC8E0BE4F34E36648
          FE667FB320206C004060CB02CB08442444CB108C40454223144A5980B6214C44
          B7064D449E9B502CC5612622992D5013913A09DD9091F807EC809169191A2008
          888425B909B52C08DD44F48C6917623519A79DA16500922BE672C4316AF91D1C
          F57B987ECA6386A03212BD36922D017B04DB1DD7F0D8BE182B9E840B452E8DE8
          1DF13C4EE8F7A433118B44C545236855C661AD7912B599D3843B9FD99AFB5C94
          CEA36EEBCD733781F1ED2EE2E57B26F165DFCFA4ABFE71025FF9D36CBEE28759
          F831E2BB997CF90F33F173B3F8AA9F67D39A03D3F9820F27F09CE7F278D0255D
          B8E3692DB9F9D4C69C883F1FC0220048009A4F1BF4A8FF78CDA635E6E3BF6BA0
          940B0084BA281964E16119181C0118FC1A0010EAD914B3EA2F893370C2137DF9
          826F0A5C6F1EB5BCA1F60BC2443C4BEDA59E0F08788EDA0FC429AF492FF57C28
          B59753DE4F7A5CED850B391153DF46C223E927BFD99D25E9272226ECEA86BDFF
          DD380F23CAAD91D84DAEA9CD4D01021E105C578F42CA02C7066E90B2408140F4
          0163220AB809A56568DD84462474DE01D88AED9091F30E60B6C079072014064D
          44A66DE88B849EA51840004BB11D322AB6924C18819405A39F6FCF7DAF6D4972
          E7029EFF2B08BD49B86E873AE590A847F02D3FC46F41B50EDBF0F158179E807A
          3DB36A5CD542D4E152B3AF6AD0B3C1C38D06347A3B7270E47E24FC3F908426D9
          272572BB539A71E612EC5758D3990B6FEBC5B35EC8A1B3DF1AC9E77F328E57EC
          9FCC6BBE9BCE97FE80F81E81AF2FF9663AADF9065F4B7C2B3183D7BAF84EBFA6
          CBBF9FC957FCA860A0BF76E12713F9F4ED23B8E88EBE3C6055674A3FB5252717
          25081870D4D0A87FE1BF6B6FC33E119BEAB4ABBDA65A42B5C9F8EFEF03D04A06
          3B907EA8940C4E442C131203AFC0AF0500B9BAEA2A5854FFD163593BB4E88C29
          67C1977922E2F96D3AA9E70327BD0A784AED45B50F9CF41F98A4472D4F27A09E
          D7847F2F0BB7F9F6526AAF496F4E795CEDE527FD0424FBF85DDD78DC2E5CDEF1
          5A172EDAD999C6ECC4CBB8A323A7C3E8937A752D80402D9403B50D08FCAD0E35
          BFCE9505E81478FA4004CA8286D23624CF3B6041C0750B8C77209682B305AE5B
          E0CF1624AB91C8B001DF4464760F68B7409D84D90F07F581E00212BB922CB889
          C8328291EBD278D8A3ED286572BC7403F6E1F49FDC083BFE8F6DF00BC67D8F29
          57194912795CE4719938D527D76C5EF36C24FB650D321B3C8093FD35087410E7
          A27E1007A29CEEC945F1DC762EB6402D4BA3ECABBAF0F0DB3379F2D328CF76E6
          F3C20F47F392CFC7F2B2AF26C0223E89561C9CC42B0E20BE763199577E3D9957
          1D982241171F9CCAAB35A6695CF2CD345EA3A18040414030EC609602827C7DF1
          BEA974EEDB6379FAE383B9E0BA9E9CB9388D9BC2018A67C19143A20860F035FE
          FBDF84F6F050ADD6352FAA9E547D52E55A955A80CDC8469492F4835F079CFFC3
          FFF4AF050061017D40C70E349DD69867ED18C00BF60FD1369D9CF4DE291FD6AA
          13D55EA9BDD4F338E9BD7ADE3FE5717BAFA9E7A7BF1342EDCD49FF7A0699A447
          C223C69AA4E731AF76E2D1AF74E4912FA753E1CBE95CF8523A6762C147EAD5B5
          1135391520A06CE09ADA146003AE2C5020B0DA00B5057310A1D09505E9301109
          1B5037E16DDA2DF0660BBA810D64A065E8CF16E8A4A1B2011F08C440246D43F5
          0E18913064E438A46DA82BC954247C22D444A44C605D1A755A928A3B04A3FF01
          10B80EF57735D4E4877D0D711A1E5B0954BE5A7CB5A1F86716D5ED889A3D2BE2
          D9C841916F44E5467D113938EABBA89C285C48122D353B379D96CC9D17B5E201
          5777E682BB3279FC53F85EBD9ACBF3DF2BA0B33F96EBD2B107E2CB317CDEDE22
          5EA23156E3FCBD63E982BDE3F8827DE3792962D9FE097CE1FE897CD1571379F9
          57932448802100087C3180C103846FA6294358037620212CC101820080941002
          08F2F5255F4F577670DAD6E13CE98181DC6F45276E3EA531E19255EC518824C4
          8FF8BBED69D837620BFEBE37A10B31AF4AFD2A5DF0BCEA05DA8C7F5976F05B00
          402DBC306FCA09917B63173E137D7A087868D359D55EFBF322E005EBF98088A7
          029EA9E767CA49FF4E2F39E5692A4E7AEF9447D22BB57749FF5A170A26FD2893
          F42C493FE2A50E3C7C477B2AD891C612835E68CDCD20FE35BEAA06A75C559353
          C006C008C894056004D7064542AF5B406D6020F24D44D6492865818040884888
          4943740ABCD902E3268448E84C44014BB13F5B40219B880408CC2622B7975057
          92E521DCA4A188846E2559E1BAB634E8B696228E51744ED44E24746630FBA194
          1F5BB146455C2954B57FADD6B5E6D6695F7B61BDCE756FC456A0A7E464C472D0
          BDB880F47B9CEEFF44724839C1C9E313B8ED694D39EBB2F69C7F5F771ABBAE0F
          4F7F259B4FDE9DC77243F27C5C8E7AFA27057CC6A7C3F94C5C937ED667852C71
          F66798DAFC7CA482C1C23DA378D19ED17CEE9ED1B4F8CB223E4FC380421820D0
          8500858B000ACB2D28AC003B587940628A040501E1128F210010C21882050401
          050504D10E96EC1E4727AFCFE7FC6B7A70DB139AAA9088AE8380C13FC166BE41
          37E2E388AC061BC076D6A254E805DDA0811511E531FEA5DA8C4709009E0F40B7
          D204E2249C44947E760B9AF3467F9AF7297AF3A8E325E67E68FAF338E549A9BD
          0878BBB308098F53BE1721E1C9263C09B5C709AF818497539E70CAD3B8D7BA4A
          C29350FBD1AF7622243CC9292F81842749F861DB11DBDA513E62E8D6B694B7A5
          0D0D41E46C6A43ED6E8BA7A42B8EA7E42B6B10808000042420608140D8006959
          706D5D7807EA128442E31F8077C0F30F4859E0FC033759EF800102D88AD13684
          7740878C6E17FF80BF7B40BC033DEF39947FC0EE1E002B18F450F1DD03E21D90
          70BB07B0A958BD03727741B3D9B8433037FA07A1EDA0B9C3A1032C431DFC1C7A
          E91FE07BF31D40992462D13614E14CD47889E4F1F1D4F6CCA6D4F34A3CAB4732
          A8684B6F9AF2FA009AF5C1603AF1E35C9AF3216E47FE009FEF9BC04DC9F057E8
          95E9849B92E9540440814EC31E87F91F17D0E99F0C275C9D4E161808A040E720
          000AB4100150A073BF18438BBF282280022DF9722C9D2FB1771C2DDD3B9EC012
          68D9BE09020A1A0006B22C81C01234B46CD0984A600A1A0006B27A028125D898
          41000282C02842235DFACD0C42A781A63D924DD27D6835339592462798672162
          6241CCBFC17AF644F46CF0788D26C79F50A956A536D0521AFC553A0B470900A5
          5E0E9A0200F8BEF184242E7CB43BCFFDB83F79AAFD07D29B977A1EB5BC77CAF7
          C4DD7BA69E2FE59447D277516A2FB53C929EF5947FC53BE525E971C2B7E761DB
          D278E8B6769CB7B52D23E1391791B3B9350DDED48AB337B6E4ECCD2DB9FBA3A9
          9C78F9F19C7845754EBAB2061B20001B4014D307D0291020906E414BD1066C59
          10C2082012B6B722A16104A16E420302325FE0068C8C9B50CB827B9411E8B461
          70E4D831028080150965B6C03102B39BD0B40D7513110D7FA62D67AC6E223A80
          EC0AF897B4C98485892886B24C5472991B901162F37BDCD7F8F9942989D46545
          2BCE7900A5D38EDE3C197B16A6BE3B80A7BE83787B00BE2F0300CC83C0C60605
          AE4D1FCC2760A3D389EFE7F2490208B83E1D80A057A79F826BD3E77D348C0108
          600A05600A0A08C214F8AC4F85251486B30401045E8C302CC1940F0004940DE3
          A46C20291B9649D910281D8C9E205AC21401042D1B825A8230052D1D20323A81
          712D44C5CB454C44D741C5C48F27F2A99B8651C1B599DC63513B6E3DB3090310
          B483812BECFF0546F561448F060F000C4E8536925BB94EE574989822A11F88C1
          E24F2726FE560080EBC1A2D7C515C4729F2BDAF3EC7745C4F3557BA1F622E049
          3D6FA9BD9CF246B507AD176AEFD5F2AFA1963727BD497AA5F61D40EDDB0BB5E7
          82ED699CBF1D275730E937B796A4E76C9BF40337B4A001EB9BB344FFF5CDB8F7
          3A984CE00748B8AC9A0101C306B831C294050E08441FD06E81B0017807C24C44
          9E77006E42D32D087A074CDB305C240408849888BC956421B305561FB023C770
          1386EA036625995B502A4622D9523CE0B6169C344E27044D820F89822E10C5B8
          FD07B43E96538A9258D4F25E1774E0DE18DCEA34BF15372E4AC4EF8D219871F0
          C24773AB79A99C79453BCE7DA42B17BD94652E497DBB1FC925A953341410F0BD
          83C5FA5D0708D960710208393CC70705064BE0B90A08CA10189B9E000A053C1F
          A5034001E50300E13389426109015018CD8B00060A0A0610C80784F1564B1040
          102D01A5C357CA10503E4CB680604A070505232E822140580C940E02080200B6
          D548D27E5CBD7F1A2FDC35467C072A24268E41A93024821BE645103EFFAF6176
          C4FE86FD225EADDFA5DE4D359BD4980F93553E1842739458625316DF41503B38
          BC08735895E63FFF1B7E2B003826363F7A065EBCFF6B33AF198FDB9C4933779B
          A4F77AF3C1569DA1F6A102DE4E23E0D9A407B54FE7E1A8E7A58E1F26498F8407
          B577273DE54AD26BC2B7E24138E991F43C600392FEC566DCEFC5A6D4F785A6DC
          E7F926DCDB469BDBA2386E6D554EB8BC1AA2BA94040204C206A00F04D9801109
          A56DD83CA80F8009786E42632B3643466ED2D0D707CCB4A10182904D4481DD03
          10092D2308EC251446A0B305662599BFA9B8F8EE011509731E68C94D67EBA210
          4E1C99C02DA737E18C85ED39E78A0C1A755B1F9EF1642E9FF3C6685EF61992E6
          F3497CEE3B453CF3A9213CF2E6DED4EF228865935318F497A3E0C84B999CC01D
          1637E75ED7423B79A13B8DC3ADC913DFEECB13DF42BCD98F27210C28284B401B
          7620BEBFC212B2D1A541040101EBDDC0128280C0A70A20F82C41CA063EE39311
          01963092CFF6B484D1281B2C207C51644141B48471862548E91010178302A315
          1749F404C3120008DF4CD556E4653F422780D7404A878B3E9FC867BC3A9CC7DC
          D593075DD181DB9D9ECCB5736B70A51E95B852F78A54B97B25AED2AB0A1FDFAF
          1AD7C9AECD1183EBFFD028BBD147104D9FAE9B56E7F21AA9354E3AB641956E52
          2E206DE59AE5FF4930F8AD0040BA016D700ABD9F84DEEC90FB3B42C4B36DBA70
          010F895FF49A69D3A96AAF277D888027D41E35BD497AA5F65B3D6A6F93BE250D
          42C26BD2CB292F498F84EFFB421393F4CFA552D673A9DC6B5D0AF77CB631F75C
          97CC1D1F02CD5B5B5D4120FEB26A0410D0B2C081800704860D1891D0B50D3D27
          A11509AF6F20FA006CC5A1938681DD03EA24EC2420E080408442BB7BC08D1B07
          DA86661D99B7922C55A70D3D10B0BB07C44464CB02150907DED5829327C673D2
          A8781E76534F3EE595025EF0FE183E7FCF38D4D413F5745C25272212E01251D3
          A51F8FCF4B0E4CA3955F4CE1B35F1DCD45B7F7E30E735B71DCB03836AC20869B
          CE4AA28EB894A4FF1DE93C727B4F1EFF16AE507FAB8F5EA33E41AE527FA32F19
          4030A060CA060B08862540E3014340CC014B90B2013A025ABC06148C8E208090
          EF950DC21202650318822B1B46327404232EDAB2C16A090C1DC1888B7B4DB7C1
          81C2455F4FA495DF4CE6D5DF4FE38BBF9BCACBF74FE2F33E2AE2294FF6E3C17F
          4BE7CEE735A126274473A31175B85AEF63B972464524FE317C5CDFCADC60584D
          4E9CDC90E2C637E0E3071EC7C774AFC015BA56E04A9915B96A9FE3B8E6C01A54
          7F70DD7F34CA6DB81F82EA1B11DD1B3C5AA76D9D956007D918708AB460E08EF2
          3F7C77E1B704807A2803AE167AD975452B1ABFD3507B39E98D621F52CF93D6F3
          38E1AD6A0F6A8F7A5E935E4F7911F03877B3D6F3ECEA7949F88138E5FBAF6F4E
          9AF40877CA9B844F45B2A770E6B38DA9C733C9DC1D91F134EE2D7C2A91BB3C91
          C88DFF568F632E3D4E40800002020400010041800D24A35B00462002A17A07C2
          4D44AA0D5C575F44C212260DBDB280CC26A28036705B800DA84818D844246C20
          B897D0AE2493F982D04D44DE6E42CA7DBC0567FEADA9D4FFDC1C2DD8D99B7378
          C97ED4D1FB9014FB0000B6F5262ABB6BB7093DD63AF9DB6974296AE3CBBE4740
          395FB1670A9FB679040FBEA43BA78E4B0610A0979E1BA97571335C4FD66D6D6B
          CE5BD755AF531FFB6616D6BE67D158DCA22C2C410061C21B612C010CC1008229
          1B6680210014D0EDB165831116454B7080A03A82CF120A445CD4B2417404D512
          423B0E222C0214FCB2E17C6807CB0EA04C402CFA6434CD7D258FC73E9CC53D56
          B4E0D459511C39A60E57ED5D852B77ABC8153B1F4315BB1FC355FB55E6C89175
          E16B68CD931EEEC7F3B6634EE5FDB1BCE2CBC9248EC5B35E1BC9931F19C05DC1
          8CEAE7D7E48A00890A5D2A08285095AC4A5CAD6F55AE39A0C6FF35C8A9FF5354
          5EE43ED89477D64BAFFB37746546C25FD11442225632A96E209D05F7F9872A15
          7E4B0038062C6004E8E88194C949346C5D4739E9ED292F025EC7B0369D497857
          CB43B5D784B7D49EA49E1FB4D124BC77CA23E12DB5279CF21C3CE57B3C9BCC9A
          F448F88CA7134992BEEB930948FC04EEFC443C777A02F718DEDE8863D6541510
          A0583081B8CB940D4849608140F40127121A7D408100216C40A2F9DFA00D48B7
          4081203864146C1BEAB4A1D107C245C2622BC90242A15F16987B0B425692F9BB
          07D032A4410F36E716A7E2D29021D1DC6B797B3EFDBDE1A8A3CD292935B45065
          39115DBB6D056A660102DB5E837AEE996E1404C4822B469BE59F4DE639EB8652
          B7B3DA71F2181D3D66186BD464D3622E46A0EFEEC0C37073D1C897718DB95CAD
          BEAB171721000A3C168030CE0002BA38D0128425600DBC6809212CE19D41E800
          99B261F6EE9C8096E0B104E936B06309523A2820A00579063484333F336DC833
          3E1EC1F3DECDE7935E1BC2935FE8C7B93777E2B6672572BDFCE3A972AF8A5CAE
          5339247B053E2EB30AD7EC5F952346D4E2D6F39278C8F55DE8C48DB9BC683746
          D6F74DE1CBF17797580B40344E45F1214CC38FE14684135162F9179379DED602
          1E7459476E3C2D926AE7545740A9D84300A13C1842253EBE7F758EC86BC05105
          1866CA8B94B985576BB7A97D01C69E332124C6C36559138050E58F6453FE2D01
          40CA80545D5651104B5937B6E1513B4392DE3BE591F424D43E4FA8BD15F0DC29
          AFF53C4E789FDAE39407BDD75A5E933E45A83D09B5C749AF492FA77C0612BEDB
          530926E99F8C274DFAC7E3B8E363719CFE582C777834865BDF1B8DA4AFC1D16B
          8E256102B16B950D182030DA8002818A8421FA807A07826E4223125EEB40C007
          02A30DE8C8B1A70F789662DB2D909163D507C23611C902126FDA30706F81DD54
          6CD800B614F7BEBD29B53A2305B57F8C4ED08DC64977F6E786320B5D963EBC53
          D6C58C83169BE9B95B155D5A6A62BA71AAB933DA0810883826ED33B8ED78DE96
          E13CECDA9EF0E11BF1109E018E4617A1C94C2C5DBD0825C27DE93CE4F9AEB85D
          1960B0ABA70282B084A2D77A51910384D7BDB2C16809A66C4089E8CA06B004ED
          3660B9AB0282B20430845CCC80A0D3F03144C58F86F2DCF7F378D6AEC13C794B
          3F2C47E94D050F76E3CE1735E584A911DC60784DAED6AF0AA83A121174BED6C0
          EA1435AA2E37C6C9DF794953CEBFB51BCF7C61109FF1FA08BE68DF245EFDDD34
          42F0C5DF4E458964C443170290ABD06AF47D085242012C5543908EC24CBEF0B3
          8974EAD6A1B03D6772A7454DA564E0BA43A01FF43C862BA264A8925999AAF5A9
          CA7507D7E146431BFEBB514EC3FD11BD1ABC009BF2AA6AB1D50AD159E8801B9A
          13C00B64882938B3F01F6707470900A5FA009C27A02A0060094EA59F5B9D9642
          05DBB496D7FEFCD0AD9AF4DA9B47D2A33FDF4A5A7584561D896A2F015AAF8153
          9E40ED09492FB53CD984274BEDA9FBD3C984A497539E90F0D40581842724BC46
          C7C76229FDD11842D253FB47A2294DE2E1286AF3601425E3F48EBAA40A591010
          20103640B62C20740A441F20E803EA1D002350EF80290B8C7F006501A99BF0DA
          30EF004A8350EF4060F740B877002000A1D07807B07740C2BBB7E0EE04EFDE02
          6C2A9696A12C20D1DD03DDAE49A5A67392302E8B7E7E513C0DBAB6339DFC4E1E
          C1A0833EFC70A99DB5FF2EBD77B4D90004B6DF8ED69AF4D8B5BF8E307D7555CB
          E5B413E79DD86FBD80175F7BE9AE8F3EEBC95C1A7871576A37A739C54A17012E
          BBF8A2586A76623275BD0C9ACCA31DF17DCEA0C2D77AD0C8D73269E4CE4CDCEF
          D093E41298310208AF49D99045E376F5C69C461F42E9202C41B404E9380010FA
          D3F4DD6006EF0FA219F89CF6C6002ADAD48B0A9EE84639F776A2CC2B5B52B3D3
          F0EF2DAA43F5861E4F55FB56A1F25DCBD371BDAA50A3E17528656614E1F4A75E
          97B6A1D10FF6A239DB72E9CC7746D0923D63E9A203E81A7C33493F2FFCCAF90D
          F035FC06E239B868FF247D2EC1807EE279106CDBD13CB38300CF6FA612E61A68
          CD77336839CA85056F8DA2A94F0DA4AC555845770A3C06450DE8D8DE95E8988C
          F2222652D5DEC752AD4135A97E6E3D6A30A8FE57117D1ABCDC20A3FEDD1012E7
          568D3A2E0736E5D63AC414DA66FC8FEC3C384A0028D507105C519D03DAF86E3C
          84A9818FB7E1A1DB6D7F5E4FFA56A8E7D19B3749EFB5E9A496F7547B43ED25E9
          51CFE394C7091FA0F65ACF9BA48F37D45E4E79843BE5E5A4D7A47F388ADB21DA
          3E1CC96D1E6AC46D1EC48A3044CA4DA06897541510102680384E758158650460
          030191501981E80357BA6E815716909605E2240C740B8C7740670BAC48185C49
          664A025B1660014960537178B740EF2DF03711C92D46D854CC1D5737E6C65313
          70124753F2B804CEB9AD2BCF793B574F48E3D63342DA5970EA291BB0C299B001
          57128836206D34DB4FD7934FD9809C72FE608E9869B434505680D2E0724CECAD
          DA3B9517A06D36EECEFED4EBFC0E9C3A3E991B6547C26F802E02FEBBD270DA66
          627969F6D39D68D84B190C3030F16A0F1EF96A268FDC0986805040004318FF26
          D881ED348CC35AF7111BBAF3C0FBDA73D72B9A51CB85711C3DB91ED7CD3F9E6B
          0CA88A53B52257E8561E7537BE6763A1C1CC07DB5BDE8C87DCDA05DBA007F0C9
          BBF2F8F4DDC379E167A3F9BC7D6823420F59023D447D06E824C07C54DCAA6C3A
          0ABE8068D9129E91752AEAB30A5A98594A290150F3FC4464C5F3039390B868EF
          445EFCC1183E757B3E0DBB19E3E84B9A71F29448AE3E006262B70A5CB1DB315C
          B96725AEDEBF1AD51D5CFBDF0DB2EB1D6C3830623746A85FACDFB9DECD35528E
          3F416CCA152A95AF139859F85D9D89BF0700444B1900871AA5637945EE76D79F
          6FC1A2DC5B6A4FE1496F12DEA8F699CF5811CF0A785E3DAF49AF094FC1A46FFF
          480CE394D784D7A47F2892109AF0AD1F6CC8AD1E68C82D25EE8FE026774470CC
          DAE3A9D1EA2A0002848200020010280B3C91305016A889485A86C20652AE7265
          41E8A4A19406D6490891D0CC1668B700E18D1CCB2622AB0F98BD036641A91B30
          42B740EF2D705B8A33B1AEBCED12CCC68F8E571A9E323191863E90A174194E3D
          8869B96ACA11114DCC3862C439132D36B8F18C5F1FDA80F4D72509E4855F0636
          E07CF9DA29F0DA656620474E7DE999074140077250138B075F7E7D05BA08F3B7
          154A4B91DB9FD4023A41942CF2E0B8429425D313A9CDA226DCF54A80FDB39DB8
          6067060FDFD99D0B7765F2A83711AF67D2085C0DD7FFE1346E7F49636E791E3A
          192737E4FAA36A707528EF557AE0F484F28E13547F9C34A311A75F90CA7DAEC1
          1CC463993CF3E56C3AE5DDA13CFF83612A104AFB5000CF0B7122DA96A2B1288F
          D650E150FC067BC6784624DF8C0480F041423594A07DD974198C17C101846B3F
          9A6769BA2ED6CE4CD27958BA67029FF3CE289EFEEC201E7C4D47063BE01A03AB
          72F9AEE548C444ED2C00D06A0E389EEB66D7FE174A857D5198CB003B78A076AB
          5AE7811D64CBBE83803B20B800E537310DFC1E00500900B0129E801F536725A1
          2FDF52FBF32EE1E5A4B7D4DE53ED25E945C40BA8F642ED51CB8B8827025EBC9E
          F2A0F69CFEA8D6F342EFBDA46F6B921E27BD497A243C69D223E15BD8687E5F03
          6E765F7D6E7A777D8EBBA60600A0324B442A085820B8F4580581984BAB1A91D0
          B0014475A30F68B7205424542008760B8C7700D386860DB86E816B1BB635BB07
          0222A1150A7D1391776F41F7BBE026BC3D819B9E9A04B53F56FBFD6DE737E111
          CF65D2B4774DDB4DC4B41320A49D0843CEC968B3897806D14C55749404AA9E4B
          32C8CB6F5E760501AF8F2E2FAF79716DCFDC680362AB3563BAD22D08B001FBB5
          610822920110A4A578C233793C6045676505B83782A2D045102762D284786E7F
          2118DE23EDF17769C1CDCEC318F1A90D2962622DAE3AB03257CC40DDDCF518AE
          24A763D6315C27BF3A3739358632AF40E7E17EDC8EB41513A2EF0DC1D428BA04
          2E60439E87AFD557A0DE02988D6C48E7C0381147A8F1C87511A4AD6802401104
          08CC2F840084741614208CFFC09F6930008A4127693F1A8040E7C13A1779A901
          061F2084397C6D62B94C451E9CCC17A2357BDAAB055C747F2FEA0880AC9B5F03
          8C005D09FCDDA5DD28C265F5BE55A9C680E3FF0FFA8174160E46F66DB40316EF
          2BAB27561F03DD20059D85E3A11AC8BE836057E117EF4BFC3D0040F4804E1004
          DF8E1B1E475D6FC1377F03B6C03CD7847BF9BD79D4F33EB59713DE13F08C6A2F
          B5BC49F8C76254C06B6FA83D925E683DEABD40C2DBA4C7291F6192FEBE089284
          D7A4BF17498F68724F3D4EB59178436D6A74C9B1DCF0E24A0A021E10F88C8084
          11C45E5A3558167842A1D1068A9505E816984E014C44254F1BFA0B4AED4AB280
          9B50A60DFDB24045C20E572570F20C187D7263F48250E9CD176ECE14738EF6E1
          455D9FA6AD36A3A88B2BCFB201326CC06FA5C98B2FC33AA6972E5D028F0DF085
          7620C76B17421BF0BA04D64177590008442B08010500C155FF98AD0B3E96C16A
          7BE2F343A9FFCA2E3026C1825D88B1650057A3610D60ACA9CC153A9767A98BAB
          F73F966BE557E39829F5396D690A0FB81D4ECF67BBF3949DFD71151C8C449F0C
          E1133F1A0286832E81740A76E7EADFCF3A0F8DD1C8B6118D03D1D9928D1331D8
          411090F001429E89CE2FF099C136A3D76A04609A5906CB28469941A7CF2D83B0
          C34E0009CF9720254670F0092E4605089F45B8320325050061E5B753D4A7B0F0
          83D13CE3C56CCEBDBE0B379D13C375F38EE7EAFD8EE38A99C7907416AAA05C90
          CE428321F5396A5823CC2C60E741AF8817643DDA718D8EED07404892AD4C0004
          E92CFC229BF2EF05005501000F400BF8BF968B1A23F1D19B473D2FB5BC55EDA9
          DBD3487A9CF072D24B2DEFD7F392F4B17AC29B84176A8F93CF9DF2A696C709AF
          27BD527B3DE503098FA4A7A64876497A4DFCBBEB6AA468D4E1E4DBEB502494FF
          88559514041A5A1068748965044624F4CB02E31DF0DB86100A7D1351D04DE875
          0B4424547D4042F7124ACB10538976B600D386D007029B885CDB5040A0E3CDD1
          D47A651C274E8A47F247ABD9270327E288ED3DB8E80DD38717538EB4DA9C1167
          068060D66E8F0DC8F00EDA68437142E6EB149F52659C800B0C1B1081D09E6881
          76A1D4B75A124CF654700CDBE8E20E1DC7B520500C00C2F402E922ACFD76269F
          F7EE389EF260B68E158BC9A8417E5D4E9A1BC99D2F9536663A0F7BAE1B8F7DA9
          B7CE214C7F7F104F7F6F200BB311A7A1D88F05DC248CE350FC0486F1A8D1C8FA
          0A9CB7C0D89211623AB24E44E333B08E44DFA66C00429D89864518CBB20509B5
          2D1B8030938FFE4C83996B8063D13208AFCC5016619884F5276889113EEFA093
          915A668C538058F6D578BEE82018C23770697E3286E76CCDE5C27B32D1B96846
          49D322D1CEACC155B22A1A768036A3F80EA4B3D030AF0135CC89F82AA27783CD
          753BD6B906DB9427C3959809EF4152A0B37044BE83DF0B0044149C227BE192A7
          83C6632946C633C690D315AD3AF4E6B54DD719A77C78ABCE263D1901CF507B53
          CB9B84B7D49E24E9FD53DE9EF42EE1EFA9477EC223E9EFAAC38D03917C671D8A
          81E3AF01002002002011640360042A1216D7077C91D06F1B86BA09AD7780FCDD
          03219B8842569285EC2594DD0358509AF6F7286EB6288EE2C6400443F2A7CE48
          E4AC3B618716516D27C4B49D997ABDBAF4DE8D11C7F4DBA7820D88F1C61A6E48
          D9005E7EF1E6870A840001BCC0DA2EB4C3386102A1CEEB3B36E00984660C1740
          305337F60419800884EEC76B64B7DFDE49B46CCF58D4C063F89CF78773B7AB5A
          7134E60E52A726F1B075993C161D8071E22CB4EE4274053C97A1FC7DD4472033
          097EDBD0CE25183F01ECC80A10C68E1C74200600026028E0E0CF2CF8730B6831
          2A8370CEC41219440020041C5C992160EA869DEC68B467543266250509AB41D8
          31693B2AAD00013D0606265F83C03E05D567C0C8967E0D9D01A070EE674534EF
          F5613CE9997EDCEFCA3416C133665C7D752A0A18A0D549C2A6502A082010C4C4
          6F22FA37780BEBD11EACD9ACE66955EA56E90846202D462915C4A65C6A47E1F7
          048058B8D43E8D2B8CE5D69722F19FB6861C43ED294CB5674FB57F284A6A79D2
          A40F3FE525E9EFD75A9E84D62BB5B7F4BEC93DFE298F64A760C297F03525DC54
          871B40086CB0AAA2070401364091F8B5107D008CC0E803DA2D20CF44047DC077
          13AA3E8021231109FD4943CF4DA8DE012312CAA4A1BFA91822E14D11DCFA9A48
          6E3C0F3BEF30C22B3DFEE6A7C10CF410CC522F75E1FC97BBF1B09721A6BDD21D
          8A7A0F69B149BF5DCD37C206BC92008981D3D258717122CA8BAE02219C7666A6
          DF7609940D188B2D4A82A04028E6211DB6F11D8453AC83104C40C5C05958D905
          E30CC060F5D75379E9E7E378F147A0CEBB91286FE0DFF93256B36FC7F4E7362C
          6885953807A77D32660D9A605A74F68E1C3995310C368047BDDA0B1D028882D2
          1DC0DF05DD01FC9DB2602CD29621988E711B2A4078206101C2029F3FA3E00F2F
          4D0540047D061E8370D38DD6AA6C00C21891BCC126196E0283F09C8AF01FC8F3
          F3271F0F5D6204A721D5DAECCD3B0426236D89216CCC849418E67B612DCF844E
          863A3B177D3E86CF407763D6D6C13CF4F6AE9C016763933931747CF6715CBE5B
          39ED2E889858ADEF715C6B500DAE975DF79B06BDEAAF3F3EA9FA0C9407B1487E
          B92442D645B9E1A510F1F02801E0B03E80E08E00B94168B58CA6A69E194FE90F
          C751FAE3A0F68F85F6E66D3D4F92F468D511925E043C6A797F4339E53570D293
          4D7A497C6A728F443D6A72773D02ADB7A149AF21277CB27ED62E311ADF859FBF
          A32E35BCB43AD55F590151910004849280C0060840408D2EAE2C422101043420
          141AEFC09AE33CEF800102F8069C77E00AF8078C3E60770F0008027B07EC2622
          B377E03A75130A1050EB1BEB53CB2B1B51C2F438122BB53CB3D6E7A5529FA7D2
          68F0B68E94B3BD330DD9DE85F27674A5FC97BA51C1CBE8B70304A4D73E46D900
          FAEBAFF7D6BEBA35D9605847DD7698DA83A9062FB4CCF3DB293D9DE187484667
          7F5A282715E164D2797DE3201C8B19FD71C633209E7A2907CC741D5DFCF554BA
          F08B09B4E883423AEBDDA174DAEBD81F80649FB9B5274DDFD2C3C46689EE5ECC
          C0CF8D7FA61BB53D2505BE85043A7DD710B9368E961D1845677E564033DF198C
          C94F187B5EEA8ECE4077EFEFE57C04412F81B40F6D0B51FFCEEA2BC0DF7B1C7C
          0500410D610FD6890816D14F7D06301FE9738166825070D0805D1963E903F559
          0968A2C4D06766661974E251031A04F658E408ABD2B00C4258843E57B72B61EE
          0743EDBE847C293134449095BD096E7782D99F20CFDFDFA1A07B14CC9215F571
          4858A1D2EC53F802C35108F9FA9C4F46D2E9EF0EA749CFF5A3FED7B487F72199
          EAC017219E83F25DCA13ECCA0430F8BF7A03EA7E5EA3598DC5D87C2420500B21
          E3CC6E68C90381A3048023F2012808D87DF55DF142FF2B61421CEADF784E7BD4
          8A7892EC41D5DEB5EA7CC51E092F277D033DE59BDE6B6B79FF9497A40FA1F5A1
          14BFF6211980004363680171D7D5E67ACB8FE1FA2B11AB8EB16C401801C040B5
          01AB0FF8DA802B0BD44968D980D72D904E816D1B0644426D1B9A91636F255940
          24BCBE2E3759DE90E3C663AC7708C4BED1B19CB606D38CEBD378E0D60E1AD95B
          3BF2E06DB819687B67CEDBD1058CA02B091B40C2E8096A7BEB6AC7156FBEBCF4
          668C1725014E3D5F201436A0165B79210D1BB05D022310A2876EDA85B2B483CF
          FBBC88CFFE0076DB37514EBCDA9F676E43BDBEA93B4FDED095103C6563379EBA
          31033F97C1D32436776724BF0421F159632B86C29EEFC6E967A6EA1D00A7BD3A
          982FF9B988E436A94BE46259DC21B9F4C028D87C0B78FC6B03B800AEC26106E4
          F035E215FC3D5FED8E307E021B027ECA1C0C7BF019845A930114C69A6CEDC996
          25B961266B4232A3CF81A12633FEAC138F8641781A44C8A0931D76725666197A
          720CC2D720746F024A3053664829162254FA1A04BA19A769043408B364453D1D
          E16586EB622C90ED4B7BA5BD398AE7EE1ACAA31FEDC9DD5636E70685B5F8981E
          E56144AA4CF507D5DB8FEEC1FCF215CA2520E365059AB00157122808FCDE0050
          1B65C00B3261D664690CCC3868D599DEBC69D33901CFD5F34876A3DAD7F344BC
          1001CFD5F192C06175FD510300FEF9A4DBEA72BD9555B8DE8A0AF8B440603E85
          1184E8032A140644C2A03EE09B88CC8011468ECDB4A19A885C59E0CF16889B50
          4C444DAEAACBC90B309F00855F923F690ACAA31B607DDEDC8EFA6E6EC7FD36A5
          71FFCDED79C096F63C686BBA8200D8000B1B18BAA3AB9605521248528C526DC0
          78F2950DE0E57602A1D72ED4C93C15C5B0ADC96803AA907F88F8006D36ACFF3A
          E975D4D13BFAD0D42D993C694306EE25ECAC7713CA05A513714BB124BE008024
          BFC6268000923F0802D336670803F00060520000E60500C0DD2A2D774BAEF979
          2CAFFA0E6DB77D85D813998B13BE3700A03BC0AE1BCBDF553EC17E50066929A4
          0031DC9644F20C04201C48488924C62379263E489812C39419D6AA2CCFCA2B33
          4C2965879B7496C1CD33849719C11243879E10FE02153B0DE9CD3A381D22B03F
          2158625880501DC25BB062BA184EA834ADCEC0C215657016206C892156F0057B
          0A79DC937DB8764E0DED22544347A17E56BD37B0E53917B99E84104F81808057
          0EFCDE002037D8CE165A9B3827969BDF16A9AD3AA5F6A1AA3D8B6A6F947BADE5
          8D88574A92EB09FE1B0040E3BBEA72A3B535B8CEF2F2160404082A2800D4576D
          0020100402D72D30A5811A894A3011A15B504D8D44A126A240B70096E2943575
          D10F8FE4182C51C16A754E39111D917B9B731606A2B236B6A5DE1BDB729F8DED
          B82F40A0DFE6341EB0196C604BBA630328090C1B90A4906408B20179C1552094
          130EDEFB29F6349BF13694F4B7106F0EA4996F40447B15BEFC6DBD78021278FC
          7A4C6D22D9436F27962BCA3B7BC93F6903FAF2F87D932C03702C409940100430
          2C64998082C0E1002078BDFC1AB968564B84D17CD6E705AAFC8FDAD90B209001
          06D44559D0901D520E75C1DF5F800140280160303A890F10C21E041C14202C50
          1A06A1566515547D06A10E450310BB7C80F075882040A88DD96310E12C426CCD
          C2201C8B282E5442A35180080895C1A1285366803D48E4E9C4A40188A1687DE2
          EBDD283BDEC5AFBD0DC6F1DA209EFD725F2CE4ED0D86D68BA76EC8E4BE97B5A6
          5A1856AA9889F739A7EEBFB12E6E158690DA21F1850988CB500442DD8EFC7B03
          805C1E920500F85A54EDD42B228D88276D3A4FBCB3FD79D7A63389FD1B2578A8
          FAEF40C3031029036EA8C9755106D45D511E5141038C00BA80610446244478DD
          82CAD2365423910301C7064A1409DD9091D944C4C9578315ACAC4B7133315833
          14EBBB64CA6E21466E1FC1E69E4D6DB8D7060DCAC267EF0D6D5980A0EF269F0D
          0808800D8836E0924193C0098485F2524317D0A11C24CED8577AA2D506E57D5B
          0F1EB3398347BFD885473D8FBD8ACF61F90A6E1BD2CB4811FE65A4E98CABC971
          3D396E24C6C93F1E9792FA20605800820002860D784CC0B000CB04082C40CB81
          195BB0F9E9300C200800E6EB3124E581308395B87076F1FE11B82B224FC16CF8
          CB993C786B6792B22867BB3022298D103B0418141C94212940403C9567634022
          00102F1906E10042C021ACCC0801083C4FBFCCB0258658998B0225864C410A83
          B02C82047C433B19667782DDB464454A5366140308E80F020E52BA4123E1996F
          E2EBD707F04C782466BC8C65ADDBB268FA566CCB064B9B86924CCA2F0F705172
          4D59DF9D5A9C1AA31D833A836B739DF43ACFA00FD01BF9DE0A118590F5E8AA07
          FCDE00205A403C4EB8476286C572D2E2586E02279E0A78B63FAFBDF9626DBADF
          EA843F0C006819505BBB01C20202204052127865810301CB06442474DE01BF5B
          602DC5A65B0027A1F30E786501275E599DE397D5E59809D11403955FEAFDD617
          A570F7275B71AF8D5EF273CFF5ADC90281B00105813E00016103A624E8405A12
          6C4712D8975E4FC36D78D13777E1611B3BD3B0173BA2CF8ED1DD67B1E107ABC4
          25F4DA3173BF0015DA8B465CF20B008CC6EFC745A4C20200007235B905010502
          9F091800001BF040C0E8013E13E8469E262000807E7F87338C06505209100480
          8B7F34D7CBCB35F37AE3F40FA3F163B9691A9B8D0EC29CF345819C9CE882F4E2
          41F8BBF61766243A0900D16825AA97508E944BA29B58ED44189386008465101E
          7B0807089418A6BC300C420102D665A741A0BCB01A842D31821A441883102666
          3A19B69B11322E6D189A0306E98C4C06339BFC1A349C57FBF064D9D7B8B5274F
          DE8CA446924F81DE629F334DC5F3D6672C0000A075FA8B30AE691BBB538773E3
          15003073C0B81F61171C848548F8AE8864840C1E4967E03F0200C702044EC20B
          FF73DC34ECA9BBB9BE187254C413534E4954FEB7A3F847F2E7D7E6A8ABAB8702
          C0F2F2A44C2008022B2D13D0B2403B05F00E281B087512C26128DD029D2D0008
          B8BD03716002B10BB190644C8CCCF053FC28887D5736E19E585B1E4C7E49FC20
          00C88F434000E540BFCDED495EFC011BA00DBC90C6D9CFB5E3C14FB7E51CDC23
          908B556143B033D0DD3B686F1AF2568A17BB7BD0328051020036E436E2220100
          1BC204940DA044502DE0C5CE6499808280028163022A0C7623A7094C07004C7C
          AEEB6101E0629CF881A4A755DF8FC6E96FAE9877815BA7CD05B40747E26669B0
          02781CC6BDDE1789DD0D7A497B532A6D11404827654A862D2930681870F00102
          80209A8A9415B6B45080007B5006E1D883EA0F5A626428D3520D22ACBC088A94
          210021E060854A2D318441BC9E45450004D139C6BE0AA1F22530B51D3DB14AAF
          078F13DD657D579A60989686945D567BF100C081AD015A138E054098A5F68BE2
          2006020072B0CE2CB3FE7B00801948F8FE88968846560BA8F09F6000C2023A81
          056C97FBE3922E8DE0C677FFE74EF8C3010CDA851C7F634D247B450F04C00614
          00022541081834B02261838B8D5028DD82A0A5D8B60D551F88598B585D8DA34F
          6D807A5F939F93A7635FC11DD8BF1738F5DD896F00A00DF5DCD09A7B9AAFB9D7
          8B0089E75A73D633ADB8CF532DB8EFE32DA81F6E15925B86F4F251B349B8F8BD
          02E6266277DD980101BD8DB82DEE1E6C67EE1E7CC65C3936124C41CB01030234
          066C40F5005C486A80C09504100501004E14342FA865031B850968A848A82080
          D3694210005E4117E0A7A290135E4E7949F695DF23D92570CDFC7224FE7224BB
          26FCB7857AEBF4328983B8715AAE9AC73D94F8D4FB28177C394C0D3F235FE9CD
          03377712A644AA9D286332ACA93F845401071B0008050A0508170E24F08912CB
          3008AFC4702011A24148991128313C91B21B0D0340084814580D4299043A1CE2
          E62C84483A0ACF67149EDB183CD7229463F28C0DC86AD9A5CF37E4197B401B2A
          C24EB5226CB00B33754306A52D0203F001E04300C03C247D3E221D1187D0C5A6
          47090047E503087A02D00D88BE024AF7BFE34FC11C3B00A0B41EFD7FFAE7456F
          488235B8217AFA75965740942F16750D2068402494F2403402110A8BFB078C3E
          00911001EF40D485D5297266436C8889C16D35B1D465512B1AF46C17EA875D09
          BDD6B7257BDA0BE5C7D788175A53E673AD28F3E91694F95833EAF94853EAF520
          761CDE9722F70D525F443F7C8DE5A1B238546E18920DC23408F70DDA3B07097B
          03E5F251BD4F40C25E474E600334EC893672EFA0DE2B003620B7106B143E9326
          5792D3C867DB138080140410520E98105DA023E125D5001B909754434A025B16
          487BD0463701019A8A977DC2BAAE841280120A63E9D497071368BE9CF084A4A7
          9548764DF86F25466A5CF88D44A15C318F9064471C188E1BA787D3F95F23BE2A
          A0255FCB05B436F6E763FC379FCEDD3B0C97CAE6A2F7DF97F2B677A7015BD201
          04ED21A8B6239450F85A42C181000E6498941F03F0B59457000761101AA2B798
          E828BA838694182EC4A301F610882E34641B1884C416746B508EE5E31915BCD0
          9186AFC38D55CF74A051CFE0F9E219CBF355B6157CBED067CCF335A1CFD83E5F
          F78CAD08ABCF599EB13E67C3BA447BA1291BBA0100E2D009C03B9B539B1A64D6
          FF1800700E127EB42D0312F159EB1700C051FB009C1F40D6854DC522892F6351
          F726DF54177DF8DABFAE8FFF9B74014C89202C20E69A1A38F1318D062DC06700
          4E1708D10720121EA31A81F10F848B84C206602442CBB0D1E21A1C35115371D2
          DF07FBE9BB3A8DCF8198B5707F01CDF9201B0A7416F7DB80EBCB70BAF7588778
          BA0577C7F561DDB104A407D68767EAA5A3DE5D02DEE250BD7D58AF19939D81B2
          3DB88961027ADFA0B97D7830D68803043817CB43FD3B05CC7563C39E04102813
          686374013081E075E402049E3008466075816049202FA9EA02AA0D7854D53001
          D725702C60FCBA2EDCDE6A00A7BC9CCD2B7F182D49AFD4DE9DF2177D83931E27
          BC9EF426E9E10F18CE487ADC386D6E9D96EBE691F472012DE955F3FBF27117A5
          5E37EFDD3CBD60AF5C373F04774FE6E05EC9FE50F5B3709277011BE8C0591055
          B3C0BA105E97453A2D465F311A8BEDBA001CB4D432ECC186C720B60220C01C34
          A4CCD88432033118DFCB9C17B025695D7B1A0A4695FF34F417302D615BA2B914
          E2C7866D29C8064B2EFB8CBDB2CB3C5F2BC22A1B58EF09B0C2B8AC08DB2DA4F4
          128D4058D76403004106F00900E05C24FC38440F4463DB0DA874940CE0170380
          00416394012F000438E1BC484ABE07C9570A08FC67350003020937D6E6FA171B
          31B07400F03A05C2040222A1DF2D88306501353CAB26478DC1AE7EF8F95B4C4F
          E6FC9B716D1A5A3B171C2CE0F30F14E0242BC0CB5BC093B6F7E7F62B9A739B8B
          1B73375C27269789D8CD40BA1E4C422E14E9652E14712020DB81709740AA46E0
          D25107027AFBB08482807703712B57129001022D072C08D8EBC8F1820A1B0876
          07821D02AB0DE80BEA5ED2D25F509403A0A8410098FBD220A1F9A4D4DE25BCA3
          F636E1CD496F127E0912DE5D357FAE26BD24FC50F2AE9AC725B4E77C991BB888
          56AF9BC7EDD3D9F8CCC6B57418907A7F00C4B6DE5ABF0FD8DC91B3D6A709F3D2
          8E8B745B0C309810C115A10001E6A0E0A0015F465F80429F8D0009FCF3FD5E6C
          C7FDA1BD0CC0052DD9788E39B8A76108EE71CC9325388669F13000AC79BE0660
          1DC82ADB52ED055D184F77B12517CA013C631AFB8229091CD0BA92C0822D7965
          57B8FE2200B0BE1BB52B0E00E721E927207A2252FE1B00209E800500816F6346
          C552C20AF8DEEF45F2DD530B0918CA06FE1B008009416E8409419401250080E8
          01216CC088842A140680E0623082E510064FA9435123B14C133BF7D34E6DC2D3
          5EECC3E7EECDE72507707AC909F69539C1E4C53E1B869C5EAB3B70DB4B644760
          ACBB6350AF1FD78520FE9E4073B390800018427061A80F02F62E0173C518EE1B
          0CDC3E6C99C090C71404A41CB06C405ED4B6212F2A4E2B2909E4A4B2BA40689B
          505F50A9595DDD8A56A10301EF054597407D029B70FFC3B39DB9FDE9A60B70F2
          8E817CD177A0F65E3D5FE2290F7A9FEFAE9AB7A7BC5C372F374F4BC20FA1B3BF
          C8E5B31067EACDD3A117D19E86DBA7713D9D77FBB4DC402D97D1CE79BF2FDC91
          7D70F14C4FD0F4CEDC674307CE7C113A0BF496A0060350A05E00008DF588E7D1
          920543EBF3742BE82FB82CF5515981D682B311831F1180352CCB3E5BDCDEE4DF
          EEEC4056806004845A0581A7D3CCF3B5CF78F43AF77CFD2E8C13617D10F03B31
          B6EC02D30AEDC4382116A221B5C346A58006200C6009927E92058054DB09F88F
          320061010D107F873BF0FF62700B4B3C964324E13AEE64987F1ADF0710B8D780
          C17F03001ADF2965402D24BA8A81560474277EF0339C21001C040456219655E6
          88590D381A5EFE468322B9D3D9CDF9D43707F1799AF801CABA6F28097595175A
          4EB589E8DDE26E418DAEB7EB45A372BF206E1C3620E03603F55426A06C800002
          817B040C1B9092409686AA2EF0B0B7423C200EBA175575012B0EB6E1E0C5A3AE
          4B20E2602808982E816B133AE1CA17AF8C6865842BD3259017743244C171CF08
          00A428009CB87D002FFD6684D4F31EAD37A7BC0943EDFDE7B300CFE89C2F2542
          AE9BA7333FC749FFD960B9889671DD3C23E935E1E721D991F074CAC7FDD125C0
          32117BFBB47703B5DC58B5BB377CFFB04DA38F9FBFA31BFC16EDB917B6526761
          49AD7831329F8316F3147C1958BD9E05B1B50FC4D67E88C03D0DA2B984026CD8
          CD4DDEF3F52E75F5D996D15D94697920105612882EA022AC7BBEC192AB9808EB
          04426BCF9EF4621700406C6900D00BC9FF5F03000181E32008FE1D4CE0C7983C
          58600B133976463CC79D014058812E01566725DF0123101252C140D9413050B3
          FF664EC0D03661E2AD981044ED2E62A0DF05084D7E6102A15D02C30CEA9D7B1C
          371ADF08F57EACBCE834F0CA0EB0660ED1C497443731444F3004096D3D0727D8
          C27D793CE5B5EEDCF9F698E04522B22C34FCC6619403766BF0DDB87E3CB835D8
          AE0F776581888316085012E0E661FBB2FA770DAA4068EF1A74D790BB92C07409
          4604BA0406084C97C0B60A45BCB25D025FC10E1887BC2EC12400C0D8673A719A
          058013B6F5D71248131EC91EACE5F51921D9F5F9E0D9E8292F27FCE71221094F
          2EE1E57497C045B47ACAE3225AB8E7FACA65B438F1E55E4AB9A22E702FA55E39
          8FE1A5B7CDAD5512C39ECBE0B44BA40C4BE1CE376271CD3D2900585CD48280E8
          6AEE70B49A8B8040F8F5EEA14C4B7497D0E7AB6C0B2582B081614F2ADBA2E18E
          0D38A07DC6B22D79C6CF761011D6D35EBC4E8C5F1690F36584760A0CEB9AF4C2
          1F1B00A43B501740B0327658F42BB852EC83D8BCE88331B9B1FF8ECE93B9E704
          8E3D01B7DA9E19CF09ABB0520A4B34926FAA87251EF0CD8BF027BA81B6117F07
          1111A0137905962E7800503CF9430100BF8E92A1FED9D5387214EEE443F23799
          9CC8C36EEF4292E892DC96B2EA09E65EEAB3F7E4D2D978B1E5E5969F9FF46A37
          247FB4BD482446EE1794DB86FD6BC5B03EDCDB11684A02D91A1C280982B70A29
          1BD0ABC5C26F16922BC8DDCD424E1780674028ABBB74D4B101D2DAD5A3AC8E0D
          5810305D02BCA0A1ADC27125BCA013C1028A9EEE641840611CCFC25A6F29816C
          2D1FA4F5DEF3C173C109EFD3FAF053DE9CF072E53C12FE2373CA23E931E7D047
          937E366EA09E856BE70397D1FAD7D4E1C6AA29E6066A7337E59B19B820B52B77
          3CAF25379E1EC75DAFC3FE857B93C8965A866505EE67B0E596B9BACDB5617DF1
          157738AAEE42008110F1D5955C966D99E71B26C00618173418C7B84A10614D37
          C6F365045B86C2BA260000DA2EF8E33200372D285B83D21079887988DB01069B
          6387467F8C76E1CF31795888311C6030095EF913E238EE2C00C2CA484EBAAA01
          58420319E7857E0010905031D107845FCC10C41AFC772D03427C00414F807C5D
          67055A852B91FCCBD00138A51647154AF2C770DBB9A93CF6F11EF0B0E7E8092F
          27983BC5F424D3D3CC895472A265EBCF4D7C192F203601052E1131770B061785
          5A10B0F70B92DE1F800E4140170896047AB518EE18B42050EC9E41D217D5BEA4
          C20614043C5DC075093CE7A0DF25C009A52AB6AB5BBD934AC52BB80755BCF2BA
          04A25E173DDDD1300000C08CCD7D78D1FE3C52B5DED27A0062782D4F2EE9E759
          6AAFA7BCD07A73CAE3F6E97EEC9FF29AF436E1B3303F20D7CEE3A4B7A7BCDE40
          8D98E45F482B57CF9BBB29EDCD55831EECC09DAF4E41B985E76AAE73C76D4D21
          C2AB3201CBB2A40D6B9E6D497738A20B2397B9069FAFBBD9D93C636DC5FA02AC
          7167F20823C01617617D87A6F36540242CEED2D44E0100405AB4BF1300FC621F
          40D01350D2D7B23BA011221D3114B100711B621BF6C9ED0344E0BA6BCCCA835A
          C74EC07DF733E329EE2C08892B2329F1CA8694743300E16E940DF78219DC530B
          BB007E99CF40F6048827A0C1EA634BF403A847C0243FD53DBF3245CCC21D0305
          6AEBA52EE7B6402F368BCEFA22470389AEA18AF46783E585D698FFD92042CD2A
          1456633E7E6EFC4B5D08C92F9B82F5B323C25E300A26A09788E0DE00737F0074
          81C0FD016002860D10AE1D175DC0DC2160AE16A37EF7A7122E1351BF004C43C6
          3310F40B3CAA2F2A4EABE27E01FB92CA49A551925F407AD9E21730C621D3CF36
          730438A110DAC7861E30E6A98E94363F457D00D336F61670243DE51146B11FAC
          CFC13D17D4F2E8E7EB294F4878422D2F094F86DAF7C14C3E6E9FC6293F7B7716
          3CF35998DF47C2BF0B5A0F6A0F4A4F53DFEA8171E81E72CAD3A437BAD3C4D7E1
          453017D2E25E82AE84ABEA0857D5D19857F5166A1A851806BF402F3C37E9C028
          C3B2CF1540206C409FAD3C57EFD98265392F46D08F215E8CEC87D1865510307E
          0C8884C5FC1872C5BBF831D493A1C6ACC0333622618827C3F9323CDF807BCECE
          3300F3906A0368118E7F5E00208620023A1F405004FCAF6B00C17D01C1FB04DC
          D7E591F8D5C008A211AD107D502A2C043BB809F112068B7E90E9429DA29331DA
          B1711C83C59971E7A0F65E1EC589D8AA937C673D0103232A86B103EDFB1F4643
          88BEBA06D5B928DC03607EAC27FFE263A9E194088EB2D772F759D396E762FAEB
          CC3D38D511A79B8467BCD41A52AF7A221584AA53F505C7274E3551AB8B7674D2
          FB02DA07EE0D1036E0AD0CB7F706C84D4200011107A9FB5DFEDA70BCAC38B5C4
          2F60BB04E64535275668EDEA6E1CD62E81B409E5A432A755885FC07609A46615
          F76031BA1AD225D072605DBA5FB31AD390374C34FAA9744E9BDF98E3B11D6AF2
          865E7C2600529E8F47ED45BC93E7A2A7BC2AF624B5FCC91F186A6F6A7973CA6B
          3DFFAE26BDBD72DEDE402DD4FE2DEC2A30A7BC24BD7737E538B99B52EFA7B457
          D5BD82A40FB97ABE03E7C11FD0F37EDC32658457655825B12C73896B8AB661BD
          DB9C03E51640565AB1A53F5F7461A44B105612A84333501204BA04D6A1694B02
          AB0DC0AAED1C9A8176A1F5668C8399A8CD020C03F94EC0FF2900080708992894
          72A1362206311800B11860701FBA099F6947213FE6DF089281A3E891891C332B
          91E217C26FB00A5D86BF37429900ED400041CA05AFCB105A36042DC389B7D406
          03802928B4F5C7755795E37A0B50EF8F892431F7248E8AE3ECEBDA63AE7E109F
          8E9EF3FC4FBD64F7DA50C117DBD5AD7AAA59C14A68ED1878D4751FA05C356E40
          4098809604060402B70C1B7150DB844E1710DAEADD346CFC02C20482B70D7BA6
          21AB0BD040008028D9EA17F040C0D4ADE21E1CFA44A885D8A3ACA69FAD2F68B0
          4B109823D06122AF8D8516E1A827D3B99D0580892F66F2FCCFC17E02493FF723
          D3A63BF9C3FEA8E751CBE3A40F26BDD6F2B86E1ED4DED6F27AD223E1ED0DD46F
          60DE00F5BCD07ABD90F6359CF436E125E9F5066ABD851A7754BE9C2E17D2D2F0
          1D72F57C7B5C5767AE9FCF812F20F33E2CAAB5001BECBEB8672BBA80D1060CC0
          BA2BDB8C2E604A82010000D7857120EB8056DA850668EDAC862DB9C0B63C4F86
          F50D08E30A29BBC27C199E55DBCD6BF880DB99C73EF7E70280622C21B071A816
          00A11FE202D9422CABC8010C5FC99D0431B931FF8ECEC556DDE1C91C3B2B9113
          CE8DE6848BA3202AA2CB703B9C8810FC54542CA1CB803D0114B106F7C2DB0941
          050211FBE6C3D9978F9D7DA0FC2D6626F3E8C73390F872BA4BFBC99C60F614D3
          0477A1A79915AA54AC122A6B052B79E147629A2DEDA686B85310F709DE0810B8
          A911CA81C0E5A2DE2DC3E602912EB7E34A31780632CCCB0A2070AD42D32550DA
          1A6A1CD297D5B50A611C322256A87B1040601881B511877609AC8A6DC5ABB017
          D49D52C12E811108451318F564070F00C63FDF030C48A9BDB6E9E4B9B85A1ED4
          1EBBF9A44D87135E921E096F6A79A3D683DA9B531EB45E053C97F0A8E383098F
          6BE76934925D42125E6FA146C20FF7139EE4EAF9A1723F25DA7F72FDFCA017E0
          C2BC073B191460637D800DDEE26C4D599E48682F70D5671B78BEA62430CF573B
          300E682DE3F29E6FA01313EC14800D848AB00E6C7D6F861161AD10AB1D19CB08
          441C1C0BCB71EB05D17F1A0670280008FE5A4500400A62925C4C82CF07513ABC
          0440F81409FB6DCC506808C3A4CB90C4B127C7513C1E50C20A0B08B7847519A0
          25445F518BEB2C136B30FAFC1754E20673EA487F5F9777B43FA309EAACEE4ADF
          832D283DC50222954D767DC151BB2A95B52F39193ADB5B7FAE10565359112E17
          8BB655106848CA06426E18B66CE0566503E67251840F02C19B848C8865AE14F3
          DC83411040FD1AE812147F49A56EF554ECF08122A95BCD687188BBCD330E596D
          C094042805463EE10340115A6E50EEFD369D7D0E487A15F1EC29AF27FCB4B702
          A73CA8BD9CF236E9A59E37D7CE23C678D41E60636EA12693F4B86B2070CACB4D
          D436E9EDF5F3B8AE6E93B97EBEFF73CDE0C48C77C22B0016E0EA01AC7F83B377
          79AB576EB9E7EB0984C2B64C17C68280B368431B3065D7232DAC4858EA33C6AC
          46D0A519F69C314B10EA1BB09D020B02450200E7FCF500C003030040050080B4
          1A3B60E1C6183082D31B6645DC19D9BFE16BD139517BA1D8FF533C08D26588C1
          B6DAB8936338EEEC38940C00846B4D9721FAC4586E3005D755CDA9C70DA7E03E
          41589831CCC35DCF6F811B6A33E9D44F4D0B2A78BA6BA2C36D86A4B614B6B739
          D1BC97DC53AAB58695977D166ADA0278D0E5FA30B7261C401072BBB07FCDB801
          012B108209045B857E4900F7A0E91284B50AB52C30A795E912045B8501BF8011
          B0021662775239CA6A86898C8AEDF5B35D49A06CC07B41E5642A7C0200870DC7
          A2018C7E16F71942C87309EF9E0304BCC029AF021E547B24BC50FB3740EBE594
          7749BF13C2A2A3F65E2DAFD49E87BF045ABF0317D282D6CB292F213751E3525A
          BD89DABF7EBE25AE9F97902BE85B709F677195196E62EA64CA2DEFF6665B1284
          975B616D581F64B54B80E7EBE6345C59506C56C3B101E7D0F42637B5F4D22E81
          9BDE0C69171A031104C250D665D8806102639E2D030003060531E5A2B223CB61
          3B6A85CAB52B47E3F2841E588F34139731EE003BC0691ECD101471DF5E0C47E6
          C672D408D0FBC938E5A7612DF79004DC7787C88945C08F5014CFFDAE6EC733B1
          09464E3073BADB535D442AD0573FD1559D46DD6A68AC7BC995CECA8B6ED46A7D
          E1A7C398920F2FBA5C1DA6D78799BB04C95C33AE6CC06702D007D0210000A04B
          00DF80D10642FD025A120000C2DD835EFD6A40002256708EC0D0D54049A0B304
          4E200CB1B91A1020E967CB3051897E81E030115A58231EB7008081A8914F7791
          7A5E147BAF4DE7517B24BCA5F6DAA63349DF05273D5A89EE9437B53C79D45E92
          3E70CA5B6AAFD7CFBBA4CF41E20FDED84A2EA5D5FB29E5266ABDA3727D335C59
          07971F22EB699880EEC4ED4BB8C25D7C18FA6C4300D6945B561BB06D5837A7E1
          332D0159E9C03853561008F4F99AB28042CC432588B032ABE1E635AC79C82D73
          F13418B16A3BBB765083112351ABBF320370C98F53BF1C2E582C57BEA25EBB2E
          FF57E998632BA4D4EB5457F402BDBB2E755202F75EDB067DEA547C0D5722283E
          2EBAC47AEE686E3C21815B9F8C219D652D78F8239D79F63BBDF9C40FB54E9536
          9449F8DDF654D764F7EA56D3877609EFD5B086D29A169511B0A642BDCEC3CC7F
          2B5C24AAF7045CAF40809B834C49A020007D40CA816097A0A33201350D595DC0
          3807FD2E41C0421CF00BD89240AE1B773DED7001CBA8D8300D95DE25686D546C
          CFE6EA4F14DA8117192D36CEC1E7DAF388C7D20C0300000C7FAA13003053DA74
          62C871AABD11EF5C6F5EDB7426E955C093533E50CF43C02327DEE5E3A4176A2F
          092FF57C2E02092F57CF6342CF24BDDE448DFB29FB4BD2E326EA7EB87EDEBB8D
          FA79B9B62E95339F4CE64E77C470BA80ECADD168C3DA670B87A67769AB5F1228
          C0066F70767E0CFFF9FA2541F1590D6DC7FADA40F1C9CD8055DB3908434A02D5
          608242AC0281F5668CC2C871ABB3A37E0F0DE077F3011CCE2770C4BFAEC98FA8
          DFA55EB94A35B1F64C735FFF275F550100A45A00C0E51BD1D46276329DF04E1F
          ECCEEF43D35EED45858F75A14137B4A782873AD3E4ED3D68E65B59A0AB9AF0FA
          69FACEAEF72C86133DCD6C0FDAF4A1A721C1A7BEA52F39425D675E4FDAB6A8BC
          DE349C6894FB422BD2CB421000010D0501849403ED6ED492407401B95434E017
          9017555F5639B18C5F403D03A17E01696B495F5BC441AFAF1DD2D336FB05AC38
          4870B8C92C81B75FC096047E3FDBA8D8BA5FC0F30BD8FD02D005CC7E01D7CBC6
          686CC163ED080040712362F0FBD3B1A3DFF4E5BDDE3C547BD39BB77D79D3A693
          539EA49E1FF1527BA8F6F87310A0F622E0116A799CF26DA49627D07AB2494FD9
          1BB16F61835E3F2FA73C21E9E5266A4978EAF37C53B217D3925C418FDBA8A9E7
          B329B8A7B231653C9E48E9B7479B677B33BC18FA5CA3F15C25D49929F66CF36C
          11E21780F82A40E0F906CCF34DB6BE01DF3360C6B78D6FC07BC6768F43A86F40
          3C03CE97619EB184322EEB1B5081B0845D0E9E6F009E8C914FB71700A08AFE3E
          80FFE936E0918A80FAFBA273A3CAD56C56A31CEE58F732BF1400D0DB765BCC4A
          6624B9D4A5A8DD71C27FD4874FFC046D287C4A7D2EED27A3465B455A4F7524B9
          3BD571823B0AEB4E34634031F5ABEB473B4A6B69ADB6A944C4921F673FDF8271
          4988DC2AAC9FEE7A716105EE56E176189A0AB0011236609C839E2EE0B101FBA2
          FA2256D033708FED12A838686A575BB77AE3C503C43C64E96AF0A40AE802FE2C
          816D17EAF8AB2F5CC1EB6E852BD4AAC31E6DCB6DC000E496A8BCC7DAE3A4D784
          37B4BEE45A9E8683DA7BA7BC887756C0B3B45E125EC5BBEC4DA696D7531E27FC
          8017F594A77E2FE0525ADC44DD07277C6F9CF059B87ADE5C418FEBE791F07247
          65775C5797812BE8339E4AE22E8FC67387DBA24CB97593B461BD722BA4152B6C
          001D180102DB81D1922B7C604B673582026CC045E88984AE2428615E4380C0B4
          64A10D045D9A9E9538D4370017A16104C2BA0A01002DC1002AFE497C00470600
          F931E594F2C7CA052825FE2F9C01280034C715E6D3DEE86992DDAFD703141EB5
          FA3BB60DE5253B4E764BE19DA7DC25BCED45135E724FB872C91E78E955C41AB3
          13EBA050DF0E5CD75C93BFD9DFEA3A101036A025817F7D182E13F57501D32510
          100803025B12F8C344EE450D350E15EF12389B2BB481D254EC40494043025D02
          F78262D188330E992E815D3996FF880F00398FB493BFB3B8EFBCBE3C4E7923E0
          492D8F18B64D4F79A3D8A345A7492FD41E09AF49BF11E3B881A437B45EA93DF7
          095C3F9F854B6935E971FD3C925E2FA6ED2E09FF741265E83D9589E60AFA2771
          FDFCC3719C766BA4D35C8409A8394B00567401F563F857B8177FBE6E7C5B2DDA
          D64AEC1BB342670AE0D094B220C44AEC5AB2A6F4F244D8D09982D6CEAEED8B84
          FEA257E31B00E062908B5A9E15F9170100087DD143A2CAD54DAF5BAE721DB90B
          B1D4FF150300B9B6BA190060CA2EDC6063A6C48C12AD7652D777363E7249746F
          80449C66813EB42F58493F5ADB53E68443729B44B70E34BCF45AD3BE0C7AAB75
          6D3A0C2A1DB9FFB34DB9E9B575E45A71BD4D58AF0EBB56990000C000811108AD
          2EA06541315DC0BB5EDC7509B47635E3C59E5F404E2B6C1A9292C074094AF0BB
          63F24DDB84252C1A31C621D7C60A2E1A09350E6997403710E364CA7FA40DB799
          97C471D000B21F6A83BB0D85D68B62EF0B7852CBBBA4175A2F492FA7BC6BD305
          043C39E985DAAB78175ECB4BD223E185D623E9E5947727BD5C418FA4D7844F20
          497AFF46EA38EEF0500CB783F7C20AAF1EC09A0E4C31368072CB6803767CDB63
          032122A11BDF363B1C42363AF50D59E662660A64B7A3655C4684750B5D022E4D
          D3920DDF37605D8476A660F893EDA8C55F020086C7948B1C08953FF5F872C754
          D57B0E8E1E006626F2C49D10E3DE5171CE253A6A76AB48DB36949EECA0EBB61D
          259E72359F48A207E9ACA5B430A298132E44C072A61438D1DC8937E2E50EDCF7
          E9262CD7896B181090FB03BD6BC5432F12552640E217302581F805CC69152809
          D0253022967949FDD162D7252869D18850566B21D6132A74A0482CAEDE68B1D7
          252861DB9076093C0B31DA84431FF60160C003ADB90035BD6BD339014F12DE25
          3D4E79A9E543A8BD4978A1F588E79BA09E37E29D4480DA73A639E549A8BD24BC
          97F44F042EA77D3C8E70412DA7E30A7ABD861E91F6002EA5BDB9A16359C5DBB0
          EEF906DBB0AE53E02D72B1401BECC240802D617213BB1D437C034117618895D8
          77117A2E4DBBD0C53A35BD76A16BCB62053C34823F3D00E03429D7A84FC372C7
          451EEB54FEA3070028FDCD0000E3318E3BE92DDB7336EE32D38672ADA860A29B
          DA55556AA1F072A21BA5DAA9D5E9E23E13F1CA38D090E0AE3F6DDA55A0B8B64F
          2D49809E35F77E3295E506E126EEEE40008002810501D5056C39D00A5D022B0E
          AA69C881800041000444C4F26BD7E2ED2CCC12145F341218814597C0CC11389B
          ABD93DE8ED1D0C6D6305465FAD6928B0720C6BB21E6E6D19400C7AE4A869B7B7
          C3C2CCB0369D55EC2DB5376D3AA1F6EE9437D4DE24BC11F094D607A97D379BF4
          5D9F4C243DE9E50A7A845E418F901BA9D31FD3A4274DFA47A2B9DDC31248FEFB
          700DBDDCD00CA66584D710CD25D88191B2C07BBEC6996940566735EEB4B31A01
          0761714F86B56A7B9D187FBFA35BE832D0B281C1A1DB9EDDCC46B1B5EFC18E8C
          2C7E6D7E66A33F6F0920625FBDCE75CDA95F4CEB3B8A120000D0140050F43266
          A8BDBE7380C2DB5694ABD7FD64EF688649022694C2974C1D6B4F7651AD35B925
          C9F5B4DB6E4C29C13EB5B4AE866E6BCB3D9F48E6946BE402D15A8C7B03050CA8
          09EE0E0C94044E1C74BA807409D43C146C157A2060670964C4588D4381D1623B
          5064ACAEC5C541571278B304E1BB07AD5F20A48D6567E0DD1C01843EE375D73E
          36BC02431E6AC5ADB50488011506B5DD1ADAA6B3BD796DD3C9291FDAA60B9EF2
          487A88783D9EC5D2549CF4C54E7924BD4D789284EFF8B8247CAC3DE5E5625A73
          392D129E24E9DBBA0B6A1F6AC4ADEE6DC8AD6E6CE0CAAD9036ACCFB40CC8BA59
          0DF77C8D67C00281B081DBB553A0E6A110A0F5D880760ABC92A084990299DC2C
          66D596E76CBD1932C10926E0AF7D776D5971100E7BFC4F0C00518323CBD56A51
          B31C769C1DEEC43F6C17407AFD4D3149380AD37842E303B5BA5278F192FB89AE
          165373AA3B0A0FD7994B7451AC03AA3519D5DA0959E6B4336296BAD154C59610
          712BF3F1244EC10DC2DE2DC2E64A7165057289A8D505B4240876095AA34B10D0
          05022581B60A4D4F5B442CCB0602A79555B1038B46DCB6A1609740B6E2141B7A
          09DD88536A97C0BE9CB20927F74100C0A906007ADE0D160111CFA9F69AF441C5
          DE9CF284531E8ABD3DE59F0911F084D69B133EFC94D7135EA93D196A6F925E93
          FDE1489BF08DE4825A6A854B6ACD05B511E6BECABBF179437DABBB681B36E8CC
          F4E6348CF8EA9EAFE9C284B02D537695BCD1C9ED77B422A1635CC6A119B279C8
          DB3760878B821B9F7D91D0312FB3E751B401D9F82CCB5DA8D919BF0B03F8EFF8
          00E4C447B2966BD0A341B9AA31558F94F21F0E00C4EC434D662450E1B6741ABD
          534F758873A6F7ECC226BB4C8F691F5A03BD68E947BB9EB4DF9796DE34C28858
          84E4F67AD4399B5B893945437AD5AA64A35F0DB30A653C9A488DAFAA41C957D6
          C0272E0E45C80DC212280BE4266132BA806A03D4E2BABA219E01531238CF00FC
          02D633607ADA91BA5F207CC780DFD38ED71D03D2CF0EEF691F6E0EDEBB93C02C
          21B533F0A6976DEE2410AF402BCA79A025B53A359162E103E87E277AE110F150
          CB13147BA9E5A9F7734DB42F8F5A1E7D7915F0E48427087824F53CA83DD9A487
          78974038E5A9D3E3125ACB13925E129EDA3F22114D690F47CB094F487AC2298F
          ABE81B516B24BD04929E5ADEDF90F4825A44F3FB1AC855F4D4ECAEFAD4FCEFF5
          447C3D841FA3A19406FA7C3D3F86DBE120EE4CF50D886720D43720DE01E31B30
          CF594458D939A0BE01B37D088CCBEE1B302E42E31B403B16626CB15D0E70117A
          CF5AF63984DEFFD09AF21E150068F827F10140E5875A5FAE4E5A6D63ECF9E5FF
          2BDE05800D1800C0C3714B4C2114799FC2CBB8A86949B9533DE82D17138A6951
          D96932DBA6CAC5CDBEEA3547B27B2D2BF4A955C1B63654A1BBA2626BCF1A2127
          61D747E2ED35E2DE0DC202025A0E049980D3050C08982E410902A19C56D4CEBA
          075D3B4B05425F179097D48883C12E81D3056C97C06CC549F2156CDF3D282F67
          E91B71F052BA1D034253073FD0820100CA00BADD9E82569D26BCD4F225B7E970
          C2777BDA17F084D6BB5ADED4F39AF486DA2BAD47E09477277D1B93F4B8861EA7
          FC83A0F672D2E30A7A24BC86243DC25E452FD7D1E3BECA3B7135FDF5A16DD896
          5847E777604C1BD6EA2EE812588B7609035BE1B31A3AB969B4013753E0EF1B08
          CE6B585F865D3AE24F18169FD908716A86DFFF30E4D15602007F020D002ABF24
          7F8D14A8FCC71D56E53F1C34940800A900807C0CE3E81089ABD75D1FDAEB45FB
          FD684BE5E564B76D2AD39BB6FD6997EC38DDCD90896750B1A29611B6C4A8625A
          5852F3767E284E6F0E36518395095C094D0020E080C08884615D82EBEA960602
          5E97402DC4C197D4E802A12BC71C08983B097421865C4CE2568E091084B7B1BC
          F1D790A9B7E25D0231B264DF0F00380536EBE1625B4E46E2ABFB0E7DF962D4DE
          F4E69F409B2E28E03D6604BC0E8F7A494F4AED4D3DEFD7F248F8D60F28B5A796
          81A497643709EF253D35B957AEA237912A57D263E764D3EB8AB7619D1F432CDA
          764EC38884D69311FA7C5D27465D84DEAC4609435BA1226CF196ACBFD0C58D19
          7BFB06F41218BB95B8E4CDC4B968D3363D3DE27F1800864597C3CB522E6A5024
          283FBCFC475FEF9704062503C0F4041E82FDEF22D279A7BAA1F121C324C19EB4
          6B53859FEC8164D73EB54D76DBBEB23D6BE34E134B2A1C6A88179A70C7076339
          11D787275E6EAE1007084839C08D110A028E095CED818094049E73D0B081E069
          E50F13F97E01DB25B859EB5655B13B9BD162AB623BBF80EA02C6EBEEB6E25826
          107E318937F012B211477BD9DEC52439A85307DDD79C5B9E82FD8EC3B1F8F496
          4415F1D49003079EDF9B37A7BC27E2D97ADEB5E9F4A4B78A7D5BA1F756C0433D
          EF9FF25AD33794535E4F784DFAFBCC09AFE1257C3D4ABD1B896FAFA497653029
          B7D5E126D79A56AC6BC3069C99CAB45A7B7E8CF0590D1F646D27464A2E2BC05A
          2008EDC4D87D03A613639EB35DF96E7C1956244C0EEE21D41D8F76825345427F
          CC38E45E48CE79B80535F99F0600D4FBF5BAD405E5AF78342AFF2F620029D3E2
          3907976FCA52082BD089E34C87499CD554123D68441928141EC32566A22C98E8
          66B24C7DE7CE862A89FEBC51B203B457DB58624B151ADCE181688E47F227E006
          610101043946A040705500084CAB5074014F1C0CBEA876A048E608025D82086F
          A0A85415DB4E15DACB49A45E0DB3B89AC9373B5568BA04FE92CC1236E2D86197
          C750E60400A0C34D09DCED6931E218C53EBC4DD7016D3AB4E8D0A6338ABD507B
          247CE8296F6A794D7615F084D6DFEF12BE81243B29AD0F9EF236D9ED75F4D82A
          1D7673340020F55A79B6EEF97A6C2068D1B6035B5624F4BA3078BECE93013311
          7C1946840D13085DB7C0B76A1BC615DA9235566DCF4A2CDE0C5B7A05260CED42
          97D0A52E3261289D82C1D849D864FEFF280390F1DD9A4DE1E5AF52E170097DB4
          BF5E2203683C2D0EDB6050A76E36BE724D76887310E87C0AEF921D74DDA3F06A
          4AF19D68EA39F793DDD4B8D67F1EB4A3DABEB5B6B134E0566B7F5F1400A01AC7
          5F568D132400000A04C206AEF47401D325B84A75016A62D9803001C7069AA324
          B09E01F24F2BBB6804B304FE54A155B1E170736BC79C71C83ADC7CAFBBD72A4C
          108BAB730FFA6D2CF77206EE2A741B71DCE51903EE6D6A18C00824F58D71DCF9
          C93811F058CD38815ADED5F346C0B3492FB45EA9BDADE5ED09DFC29EF0CD71C2
          3743B24B3475097FB79CF0A0F581133E98F025EE84BCAD36A7FCCD682E467C15
          3610E2CEC4B335CFD70E6C05C7B783366D3167615623C49711DE29305D02945E
          C1A523EAD234DD18756A0697BA84AC27F7F639581D2638B7012B713644D9D4F9
          0DFEC74A00887D11BDE0E58F86CA5FE1A85B7C470206A502C080E7704AD9C510
          569C0385F792DD33A3A8ED14943D48E1DDC9EE7CE736D9AD153550E7AA2535E0
          45B72257063EDBDD1BC971B8962C6E2DC2800001040C1BB0DA802B090C086897
          C09A87CC8BAA40A0C6A17AF29252CB100BB16503D83A644F2A51B14D4FBBC481
          A292DB583DBC56A14E1516DB3614300E85AC1CEB7F8F0F006DFF8EA487882746
          1C49F8506A1FC910F0B44DE704BC602DDFC29EF2AADC87D1FA2652C7FB494F29
          77616D7C2917C89606008D0100F27C5303CF37E0CE5426D0DC3D5F3BAB510C68
          8D81C8DBE86486B642DBB128BD54830971693ADF000C44DE4217EF5EC8B0C122
          BB9434B88B50EE287065C1A007FF9700C0AAFC753BD62987A51D4792C8BFF4F7
          940A007D9F45B2EB72089CEA2552789FC6F75AA727BBB4ACB44F6DA7CBD477EE
          9DEA4FDB1AD70C9EF896547F004529B0085DD2CF6E734F238E45F24B2808ACAD
          46CA06B42CF041C06703DA2E0CED1298DAD5BEA47E97C0A8D8E217F041C0B4B2
          02E2A0A5AB818117AF4BE0146C43554520D405A4818D3810089D7A1DB237DFAE
          1C837DB8DF3D4DB8856500ADAE070B78D437E278669CD05A1EAD3A4FB1471D6F
          043CBF96AF4F46BC3375BC9EF452C7FB095F9CE207C0A024004806034886194B
          C4576DC55E6D9FAF7367DAE72B201BD28509EB14B4B941BA05DA2E549BB6B36A
          870D6D79566D4F20543660AE830BBF1C36D44AAC0622E3D4D4ED43252C76C138
          77CA69BF0B03F8ED7C00211B7B7E1B95FF70C0506C1F80F800500250EFA79B10
          12DFF4A49F4F455F3A55FBD259EB4C6FDAF4A7FD1E35925DFBD4DAAB46B26768
          A8FF5CA6CC4CCF5A23410C2BDABB46B26BFF3AD8C3963E76A727E2A8D55D1114
          B3F6388AB9F43802081040400320A0A125C115AA0B1040C0F805AE347E010884
          D62F005D00DA800858982A347E81404F1B2715B58657C06E1B828A1DDACFF6EF
          247073F0B25FC0EC18807B5067E0CD9D0425FB05EC2662A8D729F2727AF3EFB0
          B652DFBB53A9C529F114333C9A5A5E6BFAF37ACA3F20A18ABD46B037DFFC5E3D
          E535A4A647C26B40BC23D4F142F1E5949744F703EBDE25B98F3AE41E895B7127
          04D6C1271B01D6F831AE0EF831F09CC39FAF0502CF3720CF583C193067D93D0E
          BE27C3DFE3607C19668F83F10D74B6BB06305814B26FA04789FB069C6F40F60D
          18CF80BF6F4097BDD280FB9B0000EAFF077C0038BD45ADFF25A15EFEBE0D41F9
          7F3395FF680140D781254F8DE59E4FA57016843AB4A7EC600992DD8D91DA5695
          991F379365C5864D74CACC9B34D369332770757E027BE650EF3A3FBAD853AD79
          8545F04A7F3C865BDC890B452F3D4E0320C0B106088409A82E600442C3046C49
          60BA049E7BD0F9056AB972809A61BA305C1C9439023B55E8AF1CF34E296773D5
          F157AF8D556C3556E084725D025F1C6C2C2BB3C53DE8AFC442FBAACF5DA9DC7C
          6EBCB6019BFF2D52547B23E285F6E683AA3D39C5DE6BD33911CF50FBA33EE10F
          A701000038F1EA1AFA7C9301B4EEF99A2E8C61035E2BF61A01598F6D5977265C
          84FEF8368036C437609980EBC498B5EFAE5380A523DE2D50FEE5B06EB0C8635D
          81D5EFF6EAB290D5EF6E6E039D028C1B373EADFEEFA70138675E430CE3883BEF
          682202BF5FB6F5D46A55AB5CC56A50F9FF73FF2BB104480200F48017BFE7BA64
          9D24531A6F29BC9D1D47BBCA9A5294C26375B41D2775BDEA60921B71CB4E9BF9
          C3276A5A71F65475AB59038BA8DDCDEFA8CF516B8EE5681B316B940DA02490A8
          6A40404B025316B82E014E2BF10C58713084B2FA5D8240BBD0EB699B6D43DA25
          C0B6A192D68E691B4B8D436EF7606035164C2DB64B10B89CC45888BDEBCB9DBD
          B5DF8329DCFBAE140F009A5E8336DD03D68863053C47ED35D90DA557112F0557
          B50568BD57D31FEE62975FF2EB0A00570160F5F982690910E0D98676612C105C
          AD6C2B7456C38E6FDB678CAD4E166C03F31A819902DB25085DEA12B80ECEB312
          77F3BC192117C1680916B2E7D12D7CC51427260D2979DEEF090038F923A1D61F
          DBE858D3A63BDAF8CF257DF0DF5432004C89E18CC770AADBED3076845468BCD6
          E7E19E736D5BA915D59EEA487251B39DA26D474C8D17DD895C616E356B53D5D6
          9618599ADE5E0F005085232FA9E280801C1B406960B40188843E10F85D021F04
          423C0356C5862E6005C23036206BC742770CD83B0974A0C8AC1D0B6B63E19472
          2060A8AAA957C36E285210306BB1CCB00BBA04597736B600801D8C574770B3FB
          4D9B2ED097F7147B5BCBFFE627FC913080040080D55EA4E4524F46B2EDC20481
          C0DAB4436635FC790DB3D1A924876670A18B27C2EACC4660A6C08C71FB4E4D7F
          CFA37F41ECDD256D7DF69F779F7B0500EAFD8E0C400000269D63230000FF3BFF
          2B1500BA3C8A443727BB6E87917ADD9CEE6859D944F728BC695DA915D58E965A
          4B6AC096FA8811B95CB84114DFBCA235B0696FC1B29A8A1EB424BF0280010152
          3670E9B1B624F005420B02A64BE09704E6A4F2D9803F4C54F249A500106E7395
          B563DA25B851DA58C18D38E13714C560F76060D188B5104B97C0B6AFBC2E8100
          40AF3B92B9D95C6C5C8611280597BBA23F1FD2A60B3FE57FC9097EB8043FDCAF
          278101C45F59DDB562BD2E8CE7C7B08C20D8852966D3766C0BFA8BDAB4BDAD4E
          212E4216FDC533683997A6B7CF21B0F6BD9849CB39358D51CB5C5FE62E88759D
          021889EE695C060025E0528900900806D0E961243B121F0326AE56C73869E054
          975EB59923D7E511A0ED327462C74B7D1FBAB3A5CA008A97EC38E535D16D48ED
          2B5655676411AF7ACAAD75B8D12595352C10504849A0BA40C95D82F056A12D09
          BC5982C08E81E054A19D252801044C4960DB58C5168DE074326BB3950D041661
          081308185A40515112C85E3C74087ADE0E0038D90040E32BEB73CA3D7520E085
          19710EA3D21F2E817FEDAF3B00902E8C8AAF567731401BCA06442034939BFEAC
          46C0A6AD5D827017A1B7DFD1EE1B085DE812B2F1599D9AA623E336139BCD437A
          5989B76F20E422182DBF5C09D6EBEE644A9A57B78C01848140A900900E2FBE9B
          1DB79E733B4E6A464A43935DC74BBD13BEED43BE4BCDF6B025D94D1FDBF8D2ED
          D8A975AE19E14B146F339C02275BE35B6A73A3D50000090302E4CA010304461C
          8C1110406897C095044E20743662C304CC0B1AF692CA30911D28D217347498C8
          940466E0C52CC4706D2C335A1C32FA5AC2F5E55E0BCBBB5CD38140E6ED490A00
          E8024060AB870B5B7F7B11EFB70080B82BAA059EAFD35DAC007BB99DD530BA00
          44423BBE6DDBB14DDCF8B6615C1061CD605173B00037B8E5D6BE6BA7A0A4B5EF
          FE6627150943F610C2A9A92D43531278FB1C14744347B9658683924E2D0380C3
          8D03732CBA00C200DA3F88500BAA49764FA40BA1F192E85EB263DA2CEC64B753
          67F66437C328C6B5E6C77D3A8916984613AF3A6E22BAB91647ACAEC40D351408
          A851A02470E540B12E81270E167B498B7709FC6D43EA750F2C200DCC11385D40
          468B43B70D49CDEAED17902E8115079DA145EF2470136F182632AE36E31CEC71
          5B2237B500900400D0ABDCFF680CE0965A1C7B7955AF0BE34C5901DD25645623
          C909846E682B940D988D4EAE53E01C9A767A535BB201ABB6BFD4C5F366408331
          97C3FA9D82900B62C3B612FB5797C900978C1B279E5AE7F76000C6072037EEFC
          8F6A009561314EACDBA1CE1DE86410FE2E14373A8E5ADF9440698FE9A94EED1E
          D241134970ED555B579A992737D4DD0B992B472BCBEB5FB7B80F5F9B51533367
          1EE865BB7E76B0A72D7D6DF971E24D3529E2E24A888AFAD95062752552204008
          23803620BA800DEB19B8D47A062E339E0171104A87C0AAD8E869877A0654BC92
          6D43324BA0F30476BF80192F2E36076FA7DECC0CFC4DA133F066C740D033E0F6
          E6E3624D997FBFCBCEBEDF0330B835819A9E14AB3E00000009001C75AFFE97F4
          F78FF09F91B662D22DB528E6F2AADE33564F867BBE015F86B569539299D700D0
          DA676CF738B85D0E600401DF40E0391B7D20ECFE8708F567B85D03AAC188102B
          EBC9C3F70DC03B60AF2EF3EF29305D19E3D18040D8E3CE444A38A50E612D38D5
          CDA94D0D32EBFFB6F702FC0F034095F295CAC7D66E57FB0624FFFFC92D401229
          0B1375E0A4CDC3BA2DC6A7F0C153FD7ED3B7B6BD6B43E13D3FBA1B37F57CE946
          E586375DFDE981A114DBEAF2443071B325DC58831B5C5C510300202100E0D880
          2F10A21CB0DA80D725083A0803AD42A8D88EB2FAB304768EC09B25B0936F761D
          7980AAE205158B6BE8409115088D68252FA65D991D10087D5D80BADE829AF546
          381DFF0E5DE5EA784E9D1DAB2540D2E56000F7D4A6C677CBF5EC25EB00FF1511
          100C0000A022AC00AD29B97CED25D88949B8AC7A8848E8B70BBDB220D4AAED0D
          6E596F8613099D106B478D0D13B01A4CE04A387FD7A3D9F3E8EF1BF06F2DF266
          0A448BB9234100000CE0180600704419006835A01A800240DB5AD7FB008049BC
          0971DCF4D2386E794F14B77A4827CC3C2BAA4FE14D923B0AEF66CBFD4114D3D6
          B2AD2DB5AA9A08F1A8A3B72D3F8608861EB78EA1E2C7F1371CCF0D5601002414
          0494093098809605461F087609C008B44B605F52D72A749E81CBED2C8115AF8A
          0F1485CD12D83982522F26B1DA40F062126F5D362ED3E8248117B3E30D28A32E
          8FE1D64B63A8C9293059CDC00DCC1330E8342E8A630AA270BB7214279C15C189
          17D7A7E41BF1F79767609FC3AFADE17FED3F0F06C0D1971DE73A31215D18E3C9
          B022AC29BB1400DCBC86B7CBC1EFC44084B58345012B71C8DA777FB0C84D1806
          DBB281A5A4C17D0E1EE88618B542D7934328BC3D9E12E6960140891A006E0C8A
          C576A11B638645FF5BEE07D43B02713F40CCE8584E3E1340700D6E0BBA0FB6D4
          0742125EE7CA03B3E538E1BD640F2C960837B28899A544438B5F032301E20000
          F5571DA36181801A1826A0617501BC9C2575093CF760D02F0015DB9A8664CF40
          F181A240972064D188710FC2426CA60A837712D88B49B00927ED669403B7E0C5
          BC017BF4AF8216B23C8A9B9D0585FF045CB83A2652129DE426E5165352B8EB59
          6DB8FB8276DC616E0B4E1A93C0D1F9511C353C92E24E6CC489ABEA73323A20E1
          20F0DF62005100D24880AD965C3EDBB202AC6FCC32226CC09C1578C6561BF017
          BA84EF722865DF40685BD6ED7370262D0302E62218D506B0CFC1DD0815A20D98
          FB216F8BA3F8B9B5CB1840095D804AAA01A4D7B9533400B91CB4F9D464CEBBB6
          33B79896CC9143A238B6289693CE88A3A678C19B3D8053FD3E43E3BD51D37B30
          672E9EF4B06114377AEAE6CD8FB8CD6501A0DE4A008004580082040822565900
          B8B8B282800704AB551308B807033662335014F2827A8B463CE1CAEF1284585C
          C32E26F14040AE28C3C6DC363721AE8BE0566B1B51B34591DC788E39DDA3F21B
          0144A3387124BA29F35AF188BFF7A2D94FE7F2825DA3F9A24F27F2F2CF27F192
          DDE3F8E417F379DC5DFDB9D3BC56722F236E63C614E40900824B0004520EDC63
          58D17F0F008ED5676C35177DBE7E3BD676620C1390590D9DDC0C7168FA406045
          D83097A65BE8626636747AB358BB50CA02740930B7818E4CE03628015E7FBB93
          B9BACC0301B77DC84E18DE1A4B710A0015CA4A800008B8DB811BE372D0FBDDC9
          DFF6C4267CD1D723F9ACB7F2B8EFCA344E1A1DC7D143200E8EC79AAE736339F5
          D6086E725FDD102AEF5B55ED091F3A89C68DEF3C0A955B01A03A0B007820B0F2
          181220F04B02C7045C3920C2A061035197045E52AF24702FA8750F161B2D8670
          852523AE55A833F05E97C06EC4118A8A1D792DC0025A5C0DF6B32282934F89E4
          8489A0F323A2283207273D9238757C12F7BBA823CF787C309FB573242FDF3399
          D77E3B832EFB6E065FF6FD4CBE3C10E6C7B378E59EC934FDD1C19C7652738E02
          E8E2CFE3F8398D381957A3411FF8AF7409926EADC5516B0100605C4678F5D856
          7110F06635CCF4660920E0598965998BDBF61CD8ECA45662030276A6C0DBE5E0
          F60D382BB10F02A55A89EDAE47E9CCE87A728C1BC79D5CC6004A2A01E47A7001
          00733D385E6005800323F9D27F8DE535FF1CCB0BDECBE79E17B4A5C663133826
          0F2542511C272E8EE5C63801B5CE3435EB6FD7C67200B002688D502058518194
          0D209C36005DC02F0920123ADF80EF1E54F1CAE90250B0AD85585F50F792BA1D
          0366E3908A57B26D08C32EDEC08B9C5297D7A1D455E8D72F6AC0F1D330AA3C12
          490AB6149B1FCB4D2735E68EF3B1F1F7EAEE7CD286A1BCF4B309BCF64724FB4F
          33F9D2EF67F09A6FA6F39A83D3483E2FFD7606C060BA0002AF1540C0E765DFCD
          94A0AB7E9ECDABF64EE109F7F4071034E338FCD93105D0634E6BC84998664CBE
          034CE02E110A8B8B85BF0743488406D0686D155372A9081BE2CBF05C9AB6256B
          663502CFD801810503CFA9193A53E07933024ECDF0A523D64A1CD8372062ACFA
          3382226170D763D0B60D10E884EE4CECC9B5CA4A80124A80CA00809462000006
          70C94F45BCFAC7225EF38FB1BCE2E0283A657B36F75AD69653C625720C5ECED8
          29D8DBB72C8A936F54BAFADBA9D8160024F95D0800788CC0D705140C825D8220
          08046CC4A12A76A87865A70AD12A84C75DC4415D42BAA616272DAB03C6838EC4
          A90D38767C23925359EAF894B1899C36B71940318D47DE91C5A7EF1AC1177C3E
          9E567D3385577F37952FC6E7AA03931153F8E2035379F5410DBAE4E034BE44C0
          E09B690A0A972A10583050860036F0C32CBEE2C759BCF4A3093CFA96DEDC6E4E
          738E1B0620288AA4F805119C743518018020BC63F0BB01C0A50000F38CA515EB
          955C4E800D98B3AC48588A08AB63DCA1BB1C82834566D438DC45E81881DB37E0
          8C5AC208DC14A70704C6A8E53A059E81C894051D6F8EA698937C0068D0A3FEC7
          D8ABB904F93009D10B918AA88BA8C4CCE54A8A127FB2D3F4FF7D1F400000A40E
          2530004209400000BAF887311AABF1F5A3FF5C43DBBE7F84DFFDEA15DEF0F6B3
          BCF4E625D47566378A9B1D4389CB23A1623730FD6C99253FC27E7349BF4F5C71
          280108C94F759697D74F171608840D68000034F09206FC02D62B60FD02A67E0D
          F30B60D7402CBC0271E873431CA4F84BD1C65A51931216D7A1F8F9F528765A43
          8A1E11493110EF120AE3A8C5B414EABEB81DE55CDD95263D3180E6BF3E9C167F
          5644177E3D91961F9848177D35912EDC6F3E9723567C3589567E3D596395C481
          2904302001020B0674C937CA0A08404097E253CA042D15BE9D490001BAECFB59
          B4F08D3134EC6F99D4767653F568C48C8FA484732228E91A300279CE77237EE5
          F32EF17B00400703A0466BAA508395F6193B3F86615BC53C19765E437D03C633
          50D22E076D17AA37437739585F065C8421F73F886720E8CDB04B49B1CFC1F833
          EC0A3269CD9A7D03813B20AC6DDBBFA7000261DA7551546FDCF1F0011C43F572
          EB126ED1DA5DAE42B9F32C00F4FC1500D0C95CD5FD3F6C040200A41E8A015CFB
          D389FCC13F5F62FEBFFF2B319ED9FA240F387D20C59F0817E14A30825BEB43BC
          0AA5A94775420518409D15E5C102100608A414F07501ED12585D4001C0B08186
          10083D1BB111B0A4976DDB841826425DAB138597A05E5D5683E34EAFC3B12734
          407235E4A88248B01BF4E6A1CEB79F87E5A66B71FBD13DBD78E6A6C174C6EEE1
          BCF0B3D1BC64EF583E7FFF383E5F3E1117EC1DC717EC1B474BF78DE765FB26F0
          85FB2520F47D25318901066CC140594190191856A0CCC096088E19981241D8C0
          255F4FE3335F2EA4215776E7A61393A1114472EC64680FE742838068266C4080
          E0B776124A09D0704D655776691BD6EBC204D98071681AABB6D35FECD056A05D
          E85BB5ED662798B364CCD84C18BAADCF769F43F0FE07BB8BB0847D03E60E08BB
          82ACE47D03D843988E2BCE931735A02A7D2AF1B15955B81104DA5A2D6BEE4013
          FC5C24FE448400400AA2CE2F60007F7E00F8FC5F6F69E27FB07B379F38670EF7
          E8DE9D737372F8FA6BAFE503FBF77BA0B0F8DA73391A175DC4CF41D7606D1440
          002FA705825F0B009609584DC0EA02812E4103C306026DC2005D15F1EAD2CA00
          00BCA02BAA72F4393539664E3D8E9912C1D1A31A6942A1FB414963E239FDCC16
          9C770B2E455DD78F4FDA95C7A77F389CCFFAB49017EC19490BF78C6213A379D1
          9E317CEE176378F117457CDE9745BCE4CBB174FE970E0CC6B3828102C104BEC8
          80019801C0E0EBC902061A0E082ED612611AAD562090F2C02F11443330E2E10C
          5ABD7FAA00010F5CDD05DA433447E65920380F4070334A30DB312809088EEAF9
          5B3352E22D353902006085587DBE21ADD8909220D4AAED750AAC086B373B993D
          8FE1766DD392C566277FD740098345DEBE81E66A273626AD406BD65E5D16C16D
          C438845B8DDBDFAA579671938B22B8EAA02AE202E45A03F1BD1F16CDD512AAAD
          B3003001499F8968FC5705802A876200AFFCE3094DF09777ECE09A356B321E52
          48C8CF5DBC72A507028F6C7E4085C4D8E1B11C7F2A7C04D7E2E5943616686A49
          E2957B59435ED01218800F00C208A00DAC141008B0814097406BD6D5884B2A72
          C35560034B8FE3A8336A52F4B4FA48784976187086405C1B01016F3A969DAC68
          C7858FF4A469DB07F2DCF7F2F8B44F86F1FC8F119F14F0E99F0CE7334CD0599F
          15F2D91A23F99CCF47F102C422808100C1B97BC69007068E19EC1B6780C03003
          94080003C70ABE0E80816105648040C1C0B2020B04462F90F2403B086BBF99C1
          F3B61470E6B969AA4948BB316E522425AE688076219EF56F64245200B8A41258
          978AAFDA85718C2B44801587E6C55A1228F3F2C6B801B8DE08B7B7D0052D4305
          81905D0EBAD025B8F1D98C72FB97C0B8ADC4A5DE0D793D9C9AB8C750B60EB5BC
          06E3D5106CA3D0F6AB35B21A57E95B898FE95E9EAAF781AB712840135B98AA27
          557F1E00B010EFF33844774432A2F65F91011C1200F6FDEB034DEED6AD5A154B
          FE20180823706C60FD7B4F70CB198D39161D83984200C1E93110AF22A062BBAD
          B48751B18F04009C40E8038176091A2C074DBDE0586E744E758E9C5387A3C736
          54253D76682C6AF9784DF8F6E780DA5FDF91C76EE8CD33DE1CC4277D34844FFE
          388F4EFA70089FF401BEFE208FE77E38944FF9309FE7214EFB0860F0D1301240
          103038F3D311600512857C0E00E19CCF470A18D0A2CF85191840588CB0CCC095
          095A228433030F10443350E1D031035F40B465826806463C444869209F27C147
          D07D613B4E1A194F026A71331B817D4194BD0562A19EE4E659FF120690000068
          0000B0A5978AB0CE9711DE89D12E81F566042638DD2E071561FD5D0EC64E6C96
          BD7A4060D6BE7B17C188201BB2DD49BB04A6355B4B5B8532BCD5EC1AB4A361A5
          6EBC0ABAD1C23A5C6742753E2EBB0A57EA59918FC9A8C055F05933E7384E9E0D
          9DE0942435B961F51ED76E53FB156800E7E01D2E42645800A885CF8A472902FE
          CF9700A502C0BD3F2FF54EFFF093BFA41F0B48381078F5E0733CF8CA8EDC627A
          639C5000823148C0730004D7082330756B90111C9A0154E06009209A409D9508
          D1062EC24BB9A432479C53951ACE3F9E23A7D5E5A8910DD55D27A763E30989DC
          E6B426DC75456BCABEAB338FD994C553DEE8CF33DE1FC433DFCFE699BB11EF66
          F3AC77B3E984DD397CC27B393CE7BD5C3EE97D01020306A7000C4EFD309FE67D
          64C1E0639F19383038FBD342B240C00B1D33001808102C468900302094090003
          E805AA191830707A01CA04110F8D661028114C9980EE821110D9690652265C8A
          D2E0F21F67F28A2FA6F0D447B2A9DBD96D387E383C1BB018C79FD4D09889B058
          453502656047B76F20080022C286F9327C3620E6AC5532B8E5ACDABE06136003
          A64B1062D70E59EAE26D7DB62BC8CC8D50B62DDB18CB48E5BA78018194CB6B73
          D28A9A1CBBB006373CE978AE391AA77CFF4A740C7CFE15BB1FC3D50754E10623
          8EE7A6731B71F7558D79F8FD693CF9856ED46B454B29F51400EA77ABFF3E0060
          41000092F0751900783E00B401B7FCF33E0580850B161CF2F40F8241100436FD
          740FCFD93480FBAC48E3669392F5848A9D18CB09E743288493CE78080C101CB6
          0458519E34E911752F04F55F5C991B9C59951B9E00B3CAD80888778D48923E01
          CEBBA6B392B9DD82A6DCFDB2363CF8A1CE3C726B4F1EB7AB0F4D7ABB1F4F9678
          4BA23F4F7D6B004F7B7BA0C68C7706D2CC77010A0083D9BB075B20C8E1137D30
          A0B93E18F03CB082D3A44CF0C1800C189832E11C94095222886620AC0041C20C
          CE836620401004032B1E6A8920E2A16105089409BE5E30195D8490B6A2D50BD0
          463406235AFAD1781E756B6F6E7F720B1DEB8E1E09A1F04C78082EC3B0D11D47
          DFA6F50060B9965D1E0048E91570687A56ED5081D03368F90B5D824E4D5F1B70
          ABDF034E4DB40B656603DB8892E0C9101048585D9362CEABC191A71FCF75A756
          E76A7995B952D6315C01A77C858CF25C63F0B19400F04F5B14C7FDFFD69C0BEE
          45D2BFD88D676DCFD498BEA907655ED44201404A00DCB7B1076DC04565008061
          A0E21A402A5FF8D548FEF45FAF2B0088E877240CC0FD1EF9FDAE6370D70FE7F3
          922F0A78F6C6FED41BB576C28838D46140E119E8185C0020B8C9740C424E2857
          02E045D384C7495FEF828A54FF9CE338625E756E3403EBC24623E987C16E8B7A
          3E11E25DCB7929D411DFE0AC5BD238F7992E5CB0A53B8F7A35938B5ECFD218BB
          2B8BC6BDDE9BC7BFDE87C7BFD18727BCD19727BD0920404C01184C796B004D7D
          1B80F08E808100C1206105413020050357227C20250298015881650614000353
          267C36C2808196082222DA12010262B044D0AEC2DE7124CC205822183098E43A
          09D2526453261856E034035722AC85E968353A0667EF1AC5236EE8C56D6635E1
          28E803319845001010CC4446942D61EAB0A412C10100D897CFC0ACEE127068FA
          B31A2AC20685D8906E8C76092245880D2E7B0D3A354517B8A22A275C2917C154
          E7988B8EE786A757E7BA33ABF2F1A38EA52A032B71C59EC770F96E15B832A87D
          BD82EA9C7A5204775812CF836E6C49639FEAC4533664F0CCAD3D78E6B64C9E81
          CF195B4C4CDBD83D1400B222BE00004817205802FC120DE07FDE07100400EB03
          48A565FB0BE9D37FBEF18B00408040588380C067FF7C932FFAB6902E442CF9B2
          80A63FD7973A9FD59CA272A3280A7DEDF819B19478510C7C039889BFA796FA07
          D40770137C002BE1FE5B702C21E129AA2882A20B22093659FD6F6C3C3181DA2C
          6A425DAE6C457D1E684FB9EB3B53FEF66E54F072068D78B53B8DD8D9830A5FED
          41235FCDA4513B257AD2E8D77A511142C060ECAEDE00843E04302080014D7CB3
          1F811910C080C00C08AC80A68315000CC00CB2494A0430034289402811E8C4F7
          73096582B0020D8001010C5026402BF858F502828048677C3242980181191058
          819409247A01C0802C2B10F190C00CA444A025000201030081063A09C20CACC7
          60927412082582F118403814F130E831506F0104C3D55F4FA5735E1F4505D765
          52F298046A34B811C54E80876011B4981BE021C0F8F1A1FC03E2EC04005003EC
          6090F2CB45881FC3B002CF9381C12DDF9781E94DA30BA88330C433E07639A86F
          E05278062E3B96B0788462D654A3468BF17D3FA92AD51C7B1C1D37B83221E1A9
          42B7F21A55FB57A6E809B529EDDC58EA7F5D731AF1507B9AF05C179AB2BE1B4D
          DB9441D3B774A7E99B8B0700802C00E8BB030640110600165B11B087ED02FC12
          00F8336A00A938894678A77869A7BF7400E2E2E24A6507D2391010D8F0E3DDBC
          F4E0085A7A70382FFB76044EBF7C9EF4642FEE7846336D67450F8DE5B8597194
          7429FAB550B1C55A1C7F51038E9A1881968D586ED15A2C8CA5D41312B9FDCAA6
          DCE38ED63CF08574CEDDD19987BCDC8587BCD485F37674A1A12F75E5FC97BA71
          FECBDD7818A2E0950C1E8E0020B082C1CE4C0618F0E89D3D1960C045BB9419B0
          65060082003350568032415801623A0061862D1166A14408960927BDAF9A01F9
          E2A16106A644F0BA097406588161062813C00A9419786D45532204DA8A463C44
          27C1EA050206A6AD68B5022911442F580156A08623CB0A8419082B58F3ED345E
          FBC30C5EF0C6281E7071674A1C19AFDD8FD8F1604DCBD031506BB1110A4BD208
          4A6400EACB0871685AABB60241C804674849E0ACC46E9E40373E43AC5D7E1CD7
          47295763C2715475A8D07A28F6A0F512957BA18B33A606B75910CDBDAF6E4205
          0FB4E3892F76E1299BBA99D8683F3765F0D44DDD682A3EA76D36012030716806
          204E40D706FCCBFA008A95006D4E4CC5CB37FC90002089EF04BFFBEEB9A7C416
          A12B05F6FFF3235EFA75219DFF75012FF96A189F7FA080977D3702A69A3C2E7A
          A807B73BA5097CEFD84604D12EEE6468046762DE6014ACC6B298E48404EEB016
          B6DB87DA50FF8DED79D04BE99CBDA3230FDA96CE83B6A6F3E0AD1D79F0B68E9C
          B3AD13E56EEFCC1243762820B00184AE060CC00C86BFD29D47200A5FE9C1235F
          EDE181C11880C198D78415000C764999D01B25421F9EF8A694097D5D9940531C
          18A0443065828A87060C762B33E013453C5401D188877E99308C4E835EE09509
          9F8ABF0025827612140C48C0609146318F01CC47B644409960DB8A418F819409
          EA33507F81E7313065C21A68046BBE9B4EF3B60FE7BE2B3A72EAD82433C78099
          061D3FBE4581A0589BB67400B0E62C0B06D226340E4DDB960D18B402250145AC
          806EB314BE8205C771AD59C772D51195B9F20024BC88771915E83818756AE6A2
          653BA116B7C3ACC9801B9BF3B8E73BF2E4CD5D2568D2C62E3C71BD89491BBAF0
          E40DF8790901828D5D0100DD0004020600010583EE1A33500E9650027C090670
          010020DC0A5CF92FDF05683327152F5C01FFE35FDF290894D4FF171390FCDA77
          FF324620310995F4FBD63DF38CFEFA53DFFF9DCEDB3F8CCFDB9FCF8B6D9CF7F5
          305E727018CF7B279B73AEEB48AD6637E6F8022CCACC436F3B17CB322725717F
          BC007DB7A671BFAD69D46F4B7BEEB7B93DF7470CC0D703B674E081080182ECAD
          1DC98041270103050261080204793BBA020CBA91B083612F67081880190818F4
          1066003010662025424F000198C16B21CCC08001CA04D50C2020FACC60204F17
          20306040CA0CDE3302A2271E020C443C445B914E0520F89D8461F018D86E8269
          2B528878A8026288E188CEF3C44363385A0A76A06060C443B28623751E7A8623
          E73C8405F9D2EFA7F3F2BD93F884E78770CF25ED3979347611A0631037071D83
          55584872135A8781EECCA101405840081B20E3D2844078B184B40C51A75F5089
          EB2CA8C4B54FA94CD5C755E12AB915B9526FB4E8A0D657CA84623FA80A372CAA
          C14D4E8DA06E6B9238FBF6163CE2F1763C7E7D279EB0A1338F7FB1138F7BA113
          8F7FA1338D7FB1334F900880C02407021BBA923202443808081398BA31235C03
          7000301920109C0528038036735294A67FFC8F5DA56A002EB16FFA7621EFFE79
          7BA9ED42F10708007CF4F32E3E77DF508D452EF6E6F122C4B95F0DE5055FE6D1
          AC6D7DB9E745ADD1BE83823D248E075C9AC1F3F70C035DCF42D277A4DE1BDB72
          9F4DEDB8EF6600024280C0808102010DDC625801C04059818281CF0A48598182
          812915140CB44C001840375030D032414A040B06BB7AB93241F402150F851988
          78289D84001840330033087412666B4B11A125422E4A0480C1875E5BD180014A
          0461060003E805CE63E01B8EB49360DA8A74AEE731904E82E926685BD1188E50
          2204DA8AC50C47AA15F0EA6F84114CE30B3E19CF931F19C8DDCE696384592C24
          893FD93282DBCD1E824397002EF92D1B58555E1940DD8B2A729D737192CFABC4
          C74FABCCC78DA8C4950722E151CB0BAD3FAE1F8C4523AA71E20975B9CDB951DC
          E38A64CEB9B725173E95464528EB349E473C67622C0E00098000592030208052
          409980B281AE1234796357531608086C344CC0940500800D00800B035D80AC08
          0180A5487E01802C841B062A0380D60080457B8602005E3B2C00DC78700194E7
          A9FCC9CF46302CA96528EC407EED92AFA6F34224FC82BD43F8B9EFEEE00F010A
          AE5BF0E1CFAFF1DAAFE7F0A80733380E6D9A76988B5FF4FE084C238EE5650747
          F1A930EA8CDCD98BFBA00CC8DAD0C600818607061400030B04000307045A2274
          E221C54A0400818241372D110C185866100A0614A2197860D0CF741320204A5B
          D17512140CC06C8A9708CE630056E03A096238827818DA56B47A819409A6AD28
          E2A1EF31F8C2780C9CD9089D04110F3D7F81D30B2EFCCAD30C201EBAB6A20182
          8B0F4EE173DF2BE209F76321C9FC56326C042B77241C9C681D5E5ADF00C01A9C
          E0C12E80D6FF487AE9CEAC9240A76619CC3667E0849F5989AB1655C2290FB5BE
          37DA73DD4D2D2F491F39B126353BAB21675C0156777B331EF2502B1EFE645B2E
          7C161395EBDAF3C867D368E4B3ED7994C4BA0E3C46221404682C988001018465
          035E49B0BE0B291B40F29B92C0E8030E04D01DA01E87068026000199062C0300
          0180059FE7F1FA1FEF2A35A93D067070A19EE8371E5C4892CCA20B849702AE5C
          78FCDBEBF89C2F72F9B96FEF2871A8E89FFFFA914F5B57C418ACE2CCF3DB6004
          79B48E23DBA00BF1633941F3B677E7CCF5AD396B238060633B0B0628119419F8
          2582940703C1080C2B48A7001818AD603B04445F2F2856223830B07A81741254
          3CD432C18A87E82438BD002582A71728104C158F81DF56442741C44367364299
          20CCC0731E6A27410C47CA0C442BF0ACC8463C944E8282810041D063609D8728
          116038827068DB8A5A22B8B6A27613C00A7C2BB26D29020484199CFB7E118DBD
          B71FB79AD9841B6663DFC1689406A7467083F38F53C315025D1924FCC592FC15
          B8F60515B9C62995B9DAC48A7C6C3E6AF9BE62C4A9C0E5BB96377DF9DC63B12C
          A53EB75B16CD3DFE96CCD9F737A7BCC75A71FE936DB8E02989B63CFC6913239E
          8615FBE97654F80CC0200002A3032050F45C472AF2D98094041E084C58DF59C4
          41726CC0680316046C49209D82EE6500007C0BFD5FB18B41C408240070CEA743
          F8CE6F2FD44415912FBC13E0DA7C5BBE7F18F47D089FF3652EBDFDE316FDFDE3
          C68E0DF9FDAE0C780BBF7EE6E783F9839F8A330B07129F1E7C8F1361D9ED190E
          0032922CBB097E1ACB2BBF1B833A3B17026037B081B61A280F485881C70C8265
          82D10B68E056A317584070E2A1D10BB677A650F1D07412A44CD04EC22BB64408
          2F135C89A06D450888C13221442F406BD10383003380662065023403F23D0681
          32C175123ED6B6A26F45B67309D66320CC40DA8A2136646507C66300CD40DB8A
          AA17283B70CCC0CD241C984C977C8FD2E0D3F19C7F6D0FDD6A24CB5FA260A5AE
          7F4E35315F51ADB32B73F56955F8B8E1A0F5FD2AEA720D39E12BF5D4539E22C6
          56E7E60B23B8F35A946FF735E5214FB4E43C1B431E6F49798FB7E2A14F48B406
          10B4E6610A066D0D183CD59614089E69C7234380A03D2B10ACEB40CA08A43C90
          92C09405AA11583640256A03960D4C560068EE1B818A9700BF9401FCF97C00AD
          E6A4D0999FE460B67DAC77AA87038038FE24D9F7FCFC1E9FB5278724EE3BB046
          7FBFB4FF82BF5F1881FCFCCFFFFA96E77F9AADBF4722FCCF74AC62C90D8B0900
          40600092F4DE4E026F37C18F63084040177C3D1A757736E56CEB4ABD37B42394
          069405205030D8D84E0081502268F443A0444074200503C4A02DE90430201510
          5122984E4227429980E8229A81B416851910CA04F5180C37DD04780DC463A0AD
          45425B5103CC40CA04F518A093A01E032B1ED2E437FB073C060348DB8A9EC760
          7098C760887A0C4E7E1F1E830FADC740ADC85A26D0E90003194E925066F059A1
          0888EA33508FC1E7418FC118DF6320138BA69B603C06664029B0C76012AD3A38
          05403095E66EC9A736B39B10C458AA9F57978ECBAB44157B55A48A19C7104C38
          546D5065AA35EC588A9A5693D22E8EA66ED72650DF7B5369F0E3CD68F063CD29
          FB916694FD70731AFC4873CA79B405E522863C26A140400001CA470C7BA20D01
          08A840C2808046E1D328099ED1B280501610404063CC730A046003E9046D4074
          010D9405221212F4014259A001462065816803F8BA2B755FD63CE80308D7007E
          2900FCF97C00AD4E48E1D33F1EACB5BA247869C340AECF7FEF81357CC6E7D984
          E08F7E32EE4161081292D4EEF7BDF9C3664CDA0D2CB5BDE898C2D6D737156300
          BA94C42F07B42C908D4517FF309617EF2B64B4E828677B57EE0536D00B1A8165
          052811201CA24C805E2040C000025F3CF405446105020441CDC09609A69300F1
          1040508278286D45D34910C3918A8725780CA44C80D9C8BA0F43998176122C18
          70B093E06612CC5C8280816B2B4238940125B00380819D583425822913D47918
          F018685BD19F5654F1D075126C1741169AA04458FAE5383E0F434DA7EDCCE7B4
          53643F6134D7CFAEC75590FCB5866343F0B41A9C7A4E7D6EBF369ABBDD98C0BD
          EF6DCC031E4E4534A1010F36E1FE08F91CF850531EF47033CE460004102D0408
          38F7B1960C106061038611800D202C1008134059D0CE94056003A62C48136D80
          463FDBC1B081E73A1891106C20281206D880D72E342D43888428110000BF0703
          F8130200DA71A77D98CD677F91C39BBE7B481356467EC34F6CA1FADA02FC7127
          9FF6E92042F0357BCF2CB1BEFFF0C75D7CDE67457CCAC7FD0FE92F70DE829C95
          DD4334809200C0018200C1AAEF8B68E1DE113C0182DCA02D9DA011B4E19E1BA0
          13488900101056D05BF4020583B4A078683A096007DA4DF04A04CF5F804E82B6
          15FD12019D041F0C8CE1484A84D0B6A28081AF17F85664F118A093E059916D27
          C1B80F0D18581BB268066E40494B848066A01E036743363309C20C42A615FDD1
          E5915E89B008E2A1CE24D8F2404A84C548F8051FC1B1B87B28CF7D6D209FB023
          8BA7AECFE45E2B305C840E41CC706C3B3EA33EA55F836BE36F4BD00B4E7BDF8F
          ABB771CBB15E77AE579EA750DFFB53B8DF03A9DC1FE181800302300101020501
          0B04798F1B20188A50368092C095051E1000001404C006542044989220BD9848
          28254168A700DA80B40CE11998F0820100F53FC82CC06F5702FCF900A02500E0
          D4F707F2197B06F3DABD2769C29624EE09203885FFA1AFAFA6533F1E80041FC0
          577E79063F79E0267E0271E517A7F3CACF67F0C91FF5A3933FC4920DC4673FBD
          5B2AAB7065C0A9B74C3D62007022E12560052BA00F9C8DD9837148B0BE1B3B70
          E68BAD941120A43C706010140F1D18D82E82692B4A0C826600F1D0B515A54C70
          6010623682C740BB08E22F2828B593D08BC6402FD04E026613C2F50274126045
          36034A4E3C548F813F93203664A31718E7A14E2B7A6D456343B6CC40DB8AE160
          60BA08D009A4AD78F627857CFAEE3C3EF5CDC17CE22B7D3130D38B666CC5D08C
          75D0899F7ED4039DB8E994248E1B831B79AFC7B566F7BAEBB771BF21EE38D49B
          77EF0110800500044880C00381070104CA043C368092C0B0010101C3065A786C
          0020202541316D40988089B4524542A30D7494924001C06803BE482820301E00
          90B1AC5919001C8908D862763216630CE0F99F0DE279A0EC6F80BA9724EE0900
          38DAFEC5CF1F808EE2A54482BB443FE90324FC077DF9441334E7833EE889F7E1
          170E943E65E8C4C51B9EBFE2A800209C21885078D69E020C04F5E61E2FB41120
          200B045A265856E00181D50BD45F508AD948F402DF63605841B093E05991ADF3
          D08A873D6C5B51E7116C89008F810503E33CD401259949B0EEC350B391888700
          039D569C85F165EB3CD4B1651F0C8225821D509212418000AE4304CDFF209F4F
          C6FE83393BFB49C27B8332322C633DF4EA9A931FCFDCD683C73CD2999B4F0700
          8CC656DDEB62E56EC3E075E77AD1A9BB7E3BEBDE64B240206C004C20459940FF
          07BC9280063EDC345012F840A025C163ADAC48D8DA8A841008C108940968A836
          E0D8806917064A02D5059C6FE085502010DFC0F8E73B53C6D2320038A22E8000
          C089BBFBF2A99FE044FF6800DFB9FFE22372FBEDF8F6694D708913DEEF0DA5DE
          8FD9BBB3207465E105CEE2359F9D5AEA9FF75B0180E9184027808FE0B44FF3D1
          EBEF41BDD6B7E59E681F4A3830104F81B4137B6F50F130A819A85E10301C9912
          41CC46618623EB3C14F1D03283A0D9486DC80206EA3308380F7526C1D8909519
          9003033793A06582D30BB444C04C8201039409C14E823203195002E0E6998526
          F2F9DE103E11097FC26BD87FB0A3174D55479CF4C6BBA955D678E54DC20B00B8
          C93905003080310F77E666D30C0074BC36D6DCBE2B71A70081BB7D576E3B5620
          A02C94060002AF2C306CC000014A02D5088A69038FDAB2C00884016D40CB0253
          12C02F2002A1D732F43A05AA0DC037A065018977C06803C63C34D60281BA099F
          EB540600C59A80F66EC0F07160018013DEE9C37351AFBBD3FC8DEF0D0B28C9E8
          139C0BF8DB9E7335C95DCC7C170B351133DE05C57CB727C4AE9E78817BF2AE6F
          3796A82DFCD212E0501AC1A53F8FC544E2183AF1835CD4EEDDA107A4A98F4034
          029F15A04470606034834099D04EC0003E03EB31C067A8C700E2A1E924783664
          0F0C201C5AE721F9366433A02486236B431630902E42D880923F930001514B04
          751EDA3D060206DE80925891010CB3DEC4CFBDD697A7BF843A1E89ECFCF230C6
          847AE5AD4FDE1B9A390C00A4FF2D86BADC11CB5D6F8FD3ABB61404103D70E579
          8FBBB4242061038E11F4BECF00818280D106C8B18101A20B20A42440B7C08884
          8F36974E8129092C10586D4041403B05960D8C70DE01A30D38EF8074090004BE
          3610F40D8C858F206369D3B212E0484B80596FF5E6133FECEB9DE86B3F9F57AA
          D1474A015916AA6DC19FDEE7333F18E125BA24FBB4B73325708265A2BE45BCD5
          83CFFF60AA27068AC028C0E2760BBEFBD15BDC7B69DAAF2A018A750CD04E1436
          703E169DCC821967E88E0C0884ED0004AD1408C00A0225827411841938205030
          4017C1771E2A18D87904CB0C6C8960DC87C20A72B6D9E12430036929CA4C824E
          2B1ACDC09F4930CE433BAD18B4218B5ED03B645A513B0976A1C914D965F03A62
          671F9EFC522F9A84537B224EF8803B2E302CD30D5E79DF1EEB2CB26293B52020
          E3B4DEF45C3803E8704D3475961B76E4B6E3DB630D08786C40402081A424F0B4
          0130018F0D000000042440A06581ED1408080CB26541B615098D40E86B03814E
          818A845216181391EB145891104E42E7220C3510994E41D1BA8ED4EDF701803F
          9F0FA0F9AC249AFE06EEB27BBF37065CB210BD507FF6A2D7BEDDA0492BA69D92
          4684DDE9BDF39B0D92E4E87B9B98FC66772F26E1EB496F64682C7E7FB2E70970
          DE00F91C74DAC043FA009C1FE0977CAE868760E57745B478FF08187306E1D4EE
          42992FB641B4220101050203065E04FD05E824587F81F118000834C463E0FC05
          E82404FC051DD55F804E824C2B4A27C1F80B4C5B9130BA2CCC80D04930FE8257
          EC1E03DD61008FC16B6006BB9CBF001E839D28155EE949E37764D2F8CD19341E
          3DEE71E8778F936119F4C24BEC834B2F7C8300801F767C56E7E8BD08CCD20300
          082500A104A0B851D1D4FEEA68C2355BD459036CE0F658021B90B280C006086C
          001A0140E0AE440102EA899200DD029405D006EE93682C5D020D65030FA64A49
          402809082080806F00DE81A06F002D43710F5ADF80F10E0813B06C8044170010
          18DF807806C27C03D63C240E422A5A974E5D2FC0DD0AFE3E80321F0092B89813
          100F889BCD4AE2A9AF67625F1EA83B4E704BDBE99C0F46F33FFFF543A9F30162
          F8716DBC3BBF58CB48728D896FE0547ABD1B4D78BD1B4B8CDF25D15563D1EE89
          7CEBE7ABF9BE2FFEC6B77CB69A4F786CA4AE6D0E77021E8AE25F8C7ADF82817C
          6AAC0A89D168138E26847CF24AF9FC61342FFF16ED2F4C3D4E06A51EB0B913F5
          7831541F089407A68BE0BB0E4D89E0390FD55FA056641D50B25D047F52515941
          4817C11F5B0E9608BEF370B82B11641EE1656C37DA9E41A331163B06B6D722D4
          B65E9DEBBBE26084C1045D718FBCF6C1510AC01063ECB18B5F196FB5007F5846
          41C06703C53480B4AB83B7EFDA8B37C1043C360000089605CA06B4244846DB50
          D980D72528A95D6880C02F0982ED42B808451B5091D0E802BE8B30E01B000838
          DF809B29B02D43E802639EED0000685256021CAE0450009899C8935EC31AA577
          2D657FBB873BD1F991BD37943AF917EC0A1CFCF94B9EFB769E97E8E376E1A4DA
          D585C7BE66A2E835BCC83B4D8C3141A35FEDC47D6E6E552A005CFC23925BC226
          7948B27F3F8634E96D824B9287C477A368C577A3D1261C552C2EFA166DB13D05
          34F6B57E9CB5BE3DF778B1A5D5077C8D205822687910E824587F019881F11798
          01257F52D14D2BBA2E42702641A615AD0599F2542FB025024C4DC33777E1C217
          3BF248185FC408234332D6161BDE03179A6BA6E5DCC8AC1D9B9DBDB91FAFDC35
          871FFEE87A7EF7C0CB5ED9F5DEC15743866550122800381098B1B57B8808D8F6
          AA48BD7D17D770E3AA2D7405106002DC454280004CC06803719E36E04A020B04
          C2068C4008FF8080405F0884EA1B40CBD0B201350F192010F3901308D53C0436
          6044426D173E613C03C3DC5C8167257625810C183981309D473FD381BA9C5F06
          0087ED02380098F06A064EC6EE987473A778064D7C1DA7394EF0DDDFBD5AAA20
          282020B3036A093EF8A29FE0AF76D204F7E2958E3C0A3152E2E574092AC467D6
          4D2D030030CA3FCDDD098E933B3CB95748B24B827F1F9ADCCB91ECCB91DCCBBF
          C50DBDDF8E24FB094170A4896F0AF9421BCBB1B24C7EEF999F0F97E520E80AB4
          F73A0625690441766000A18D7611423B092186236F5AD1780C82A3CBD00BB674
          A4211BD279E80BED79D8BA34AD71E57473AD2FA5B8F685F680404E363B3107F5
          DBF6C14D0B6CD14BE3F99D0325DFE6E49C998F7C7CBD3F35A722A1BF48430060
          34BA00CDA50B302A8ADB5CD988E4928D0E72E9A677F166540008A424106DC0EA
          03DA29506D40DB85462444B7404C44619D020B04A64BE0750AFC96618E01024F
          241C82A12227107A40E044427FB8C87711CAB4E133EDCB00E048BA00E2946A0A
          0630F6E5AE4ADD0D6557BA4EF229A7F845EF1BC1AF348B70B01458FDFEE99AE8
          A390E036D15912FDA4D787F2E51F2CE2C5EF4CC7AF75E4E13BDAD3F0979074D8
          02138D3560320D28371407929D5622C1254A3AC5977F8704D784D764D7F012DD
          243BB964779FCB0E1662D478840B92AF2FC2CAB20BF0EF3D19770414625148BF
          4D1D0004701586898461E5819608C6826CDB8A814E82150FFD69C54D301B2106
          016406BFD08E739F6DCB794FB551230C2CB1D60D574CEC921AD7D962BD1E7840
          F0F2A6E524F9DDF7474A32D166446475CB5DDDA6A6B70FECF04767451F086CD3
          114170F4C39D1400620100ADAF6844ED6EC26D3BB881B783030230828E1E2380
          2EE0D8404024749D824C271286750A8C8B5019816803A5B908850D50CE23BE8B
          D0B50C9D9518C3454624F43A05BE48285662992DE87C7E6A590970D812400060
          46228FC1369D71AFFB947D2C28BA47D771923FB5F7CE439602AE2BF0F6B7AFF0
          88973A4820C13B48A2F39C5D43F81FFF345A82C4A7DFEFE615BBE751FE36A8F2
          7F6FE601C085070A91EC1E6D07850F39D1C3139D5CC2174B749CF2CBBE19A109
          EE023B0A654F212F3D305CE38203C309219F1AF2738BA00F9C8069BDE1D81CD4
          77637B0885A56B04250184F80BBC4E027C06FD5E6C8B0D476D78E033AD39FBA9
          569C834939AFED05B16BE8E3D604E3FADFDED82CD880885DAEC60510046DB116
          04D40823FEF85BDE5D55AA7D5B185A0800F833F466A38E9DA1170018F5900F00
          ADAE68486DE5CA2DB981D703022909BCB280826581D306A42C10101081D0B101
          A70F484910F00D14B3120FF05D84D232A4D14F75E54B5F3D879FFDF83EFEE0E0
          9B2196F31F7FFE86B77FF11C5FB16B51C040E483C0082C1CE9BCA40C000E5F02
          00009ACC48E091DB2134A14E57CAFE8A4447D2935C693B283BE21D247769DE00
          79D11CD5BCE7B36B78D8F6346CED6DC792E46BDF331B83A59BE03A07F2E317F6
          3DC2FD6F6EEF01C0B2AF0B3970AA7B096EE87B288547D2D3324DF49053DD24B9
          C670B289EE25B924BAEC29D45D855F1710423E756FE1798825B2B2ECAB02588B
          87A2753808CABD691D86F907D44B5022430060F45ED78AFB3ED392FB3FD18206
          3CD69C0781CE7A96587BA20908D829B9D00119ED7F878ECB064A026F76DEF4BF
          75524E4B82FBDEBFFA90DF97200094BC520B46A12D1900808E600089CA005A5E
          1E81CB3723B82DC25DC39D0636D01EE540070302246CC08040B4AF0D786C403B
          05C6378092C0940546245410B8D75889C545282541B05D78C92B67F3D63DCFF2
          0F3F1F2C71CE24D84192AFDFFEEA259EBB213F840D48C7A00C008AD700C5BB00
          160086A3461DF5AAA9CF85B22350A3EB49AE2174FDBC776678DF9092EE0E702F
          DA27DFBFCB05DBDA53DED6B63C0471C7275784BCA0C2165CF7E0B53D3B38EBE4
          5EDC63496B5EFA95507293EC92E0C1933D48DF6D9263EBB07FAA074FF3F3BF46
          A21F28304B498381E476C98E842749FAC51AFEDE42B3BF505799D1997B86F024
          F4DDFB20E17A22B9B3B660C600A7BC07002F403444C2673DD3827B3FD19CFB3E
          D294FBE114EB8F3022571335C004D56E11BAB4F7FD684BB26A777110304C006D
          AFC0020D3724035DC02ED15023CC5101C0D73B74B9A6B7522BB048632A36EB8E
          040034B300D0E2B206F6F2CD06B87F2F000402025A1644520700808884020268
          191A91D0760A4424CCB8C3988742B401E322D42E815889DD70918884A76F18CF
          BBF66E0D497AD19764082DFCAA3A293BE5E7DDA1230C534100002ACF0D9FD469
          49CAEF5102FCB97C00D000287546020D435F7BD5FBF3E9D12F6EE537BED9C66F
          1C34E14EF361DB70A223EEFEF41ACFD67B286FC09D9F5CC5B99B5B530EE2F68F
          2F2F7642899BD07DF3B6EEDA240040E7EF2F90535DA8BBAC14C7098ECF40286D
          FFDA04921B219FE66B9CDC814072EFCF970497C5A4F000B8C8A7C5FBF2E95CFC
          9A24F8B9F81ADB8D4CECF5036BCC68217616CAE7D99F0FA1A17776A7A6F31A53
          F3458DA9D34D4DA8E7C3A9D4F3A154EA853AB6D4BE377ADF0A020F36F57ADF42
          6BBD99798CCB9A997900819B99370332666E3E30336F976778FD6FD303F7E7E6
          EF3D520600009888FB14FCF979F10B9898BAB91B8D7CB0237C0089040640CDD7
          D6A756D7D7275CC52D40406DFE1E416003D4EE8686947623E226888437010400
          04E9372B1B9092403D03EA1BB84D45C210DF809A878C36406003E22434CF0FF1
          C0EE1BBDC497813349EE9296CE96F4CEB9E5326FEEDFAE63C6D840A47B073A9D
          9752E60338BC0610C3A9D313F8A2B7E6954AB7DEFAE6651E82D3CFC51B07CD52
          D0926CC28E05BC7E601B0FDAD852E3D68F2E2BF5F73B3AD71D0C60C9BE02BE00
          7709E8696E12DBA3ECDE69EE9FE27A826B04360FBB0DC436C9431793623FE1C2
          BD43754FA126B9DD57281B8ECC96231B5F0C4119904B083E676F2E8669B2312B
          DF929B9C14CB19B7C6335E62EE09038C6977193FBC4440E0F245AEE0BC7C281B
          C0BCBCE78B576DC03102D9A2639767848ECB3E6527E58C36E0EDD4BBE7BDAB8E
          A804780B001058B02940E03102D1020A1F4C5706108312A0D9A5F5A8C5F575B9
          25AEE4061070EBEBC104FE1EC2060408940D78DD82D096A100813202E914782E
          42AF2C4800081836F0CC87F77BEFDED15C4B170403C728C73E93A11386F98FB7
          A68EE7FD2E0CE0CF350E2C9770A44E8FE7873EBD59BF0942CF25895DB853FA9C
          37A672CEA6563C1871F6EB53F4F71E6E64F8FC374EE201EB9BF32D1FAE3D0200
          68C58BF7E20E01AF461F86135D6A729BE45EB283B29B84C7C96EA83B4EF2B0ED
          C3D844AC27BA26BA594CFAA58449744D762438D69AE9CE42094976D987804D47
          2E5002E4F099F8B9F99FE470F6AD9DB8F375093A1463296D8815D69A5F829496
          BCBEB79B977FD078E2EDE20C332F1F36332F2D2F3333AF4CC01B9019E64DC999
          56A175C3A937FEC801607BD0371058A905E3D0A6AE3CE2010B0023A3B8E99ABA
          D4FCBABADCE25A0B02D7D53740A020A0404021DAC04DD0065CBBD09405D439E0
          1D28C14EAC22A14B7E79970E77237549A7BFFC9C63006FECDF66CB293CBFC75A
          53FA798D7F8F12E0CF070029D3E2F8B60F8BD37479B86E5AEF8E8FAF3427FA06
          8916BC75FFBA5293DA75049ED9F300F77DA129DFFCC1E10120E3BC56BCE8CBA1
          7AA25F7DF0547EE0BB4BE9B203B3BC3B0534D135D9BD55E342DD7541A94BF2B0
          131D09EE4EF512135DD69A69B26BA26377A18B33F03582CEF82C9B4F97C08FC7
          C0A493716742F024F3546E779249CFDB0A5C665EDE78E2D5FC22217DEF010001
          9D907B48CA8130271C3CF1810D3AE8120436E8145F9EE18DCB1E1500989DFB02
          046223F6D66DCB8AED110F74300C0000D00400205772370700480813F0D80040
          A0DD0D9134F5F13C9658B87E0E2FDA3087A73F99CF39F775545DC08884D64074
          AB31100908401BB07305F174E3AE35DE41F24B925F4A0497FCA2019CF0E2107F
          FBD0A3AD287D7119001C411720861B030056BD6936FB84FBFE1DA5DF054ADF1F
          A779FFF5CDB8FF8BCDF8F49D134BDD1F28F5BDFC595FFEF009F77E2E956F7CFF
          D2C332000180855FE479EBC6E59FFF17B6063FF9DDF5DEBD020BF7054E7450F8
          62D41D096F4E720DA5F06749B824D74437C9AE098E4F4DF040CCC7D7B217C16D
          3C92AD47F2E3220CFB88F5D5BCC0F1F235546E6B7C31D371D60A8BB2C05A6183
          2EB85010D03159020884ACD1F24B02D3251862B7E7D892C04DC9E9965DD105CC
          804C1ADF7DC425C0767F8186D9A9A725819602B885470160AA0180D44BEA50D3
          BFD5E6A67FABC3CD70C9A880C0DC67C6F36DAF5FC36FEFDB7948757ECFB71FF1
          63EFDDC5431FE80A17619893D08A84858F74A79FFFF1BDFE39A55D462B092E03
          636E094D704785FC9A2700FEE3079EFD7CAEB77D48CBA9475A5287C5C9650CE0
          4834000180995B8796DAE777F5D5F8ADFDF444EF23F17C137AED6BA3D8CA9290
          707AE6BE3953B6E6F00DEF19A42FA9BE731A40B7C52DF932BB8D48FE5987ECDA
          E6F9690BAFDC37D9AFD351A30B850F247B90BADB133D876CA24BB26B9C8E1D86
          2ED991E88485A5585AAAC96E63A02E44B141A7E26BD991209FA3B674D4E487B8
          E54E31F5C24B987E3774812008DCA3E2164A02A30D182BAC6102412B6CF8BCBC
          B73D479C7021BA80BF38C34EC999715980C0DDBBAF3CA406E058DC031F5E6B2E
          DD785EB7E8845889276EECCCC3EFEFC04D2D00A4ACAE4D4DAEA9C57DEF68C7B7
          ECBABAC4A49796AE847CAF5C8B3798AC92E0D7EDBCB8B89D1813864FBC6FDCA3
          A50D9A0547CEC3DB7EC230BDBD93FB616E7AB6BF1D35F65790C144441DCE2D03
          802366007D9E69CA3FFCC3F45D4BDBF3FFF49EFB390B27BA44AF752974E5BB4B
          4BFD26BA045EFAFA3CFEFB7B971C11005CBBEF2CFD7DF252B93903073EDFFE73
          1F565D17054EF4C1A646B7E192DC9DEA92E092ECEE44B7A7BA97EC487272C9AE
          498ED5666EC599AC399BFB517F42C8A7C6C8CDE94A613B0B9D35A758E90B334C
          CF5BE7E58DF1250002FE1E3DB5C27AE6173B2F6F166AAA36A056D8E0524D6FC5
          B6F1C67B4EB8BB8E1000A45B1058ACA900E0566D4FC4B55C05F7B7E7A6B60448
          06005CB1E322FEC99ED2F27D91A493E43B1C5D97E40D02F8E3EFDD6341C0B40C
          BBDE1ECF5F7CFBB17EAF4BBB6CD6FDF39B3E7B9A673C3B44B595553BCE08611E
          6FECDBCE639FCAB42555E85252E9B6B43FD7DE8958B613D0C381127C00319C0C
          06D0EBE954DEBCEF597DC0E17BFE1DA5975F9BB62D8F339F6DCC99CF34A69376
          8C0E49D8200B703AC05D1F5EC7D7EF5E7D5800E80A0670CD97A60C7100207F9E
          80919B3578F69BDBCD696E28BB26B897E4C193DC9CE25E824BA2BB04F7923C2C
          C1DD6A337FBD595F2C1431EBCD64AFE10858796536DE73BFDD1EA35EF8C0745C
          606186FAE1D125306581D105BC5D7AC6FC72BF2CCCF0D880BF4B0F6581350E85
          2CD50C5F9CA16BB6AD2EB0ED0BF37D2B898905751C0180D26609C663EA701800
          4034808C93BAF24B9F6EF2924D92F170495F924027D4DE01B880801309673F6D
          6EA20E7E9F83FFBC7BDF84418C79ACA7D94064670A166F9ECDF7BD7B3D9FB765
          B68AAC41039161539829C0D211D158D27E1F00F8F3F90092A7C652E6938D69C5
          5B676A5D5FD2C5206E79C7E6BDCF72F7A793280391F94C4AA93BFF9D76F0F2FE
          4D7CDDBB66C5D8A14A802EE7B6A0ABBF3C43FFBCF017C3FD59EFFFF82ABBD8FE
          DD537CF757ABB1995813DDC4C7036551A9064E71C27A33849EE45E9C8CAF91E4
          B8B7AF1F2EE6E84B277D88C0A7EC303CF1FD3E84F5665E9C80AFB1E68CE4B360
          439ACEC7BB7E7727ED75CB9CBC0281E977DFA123B23A2B6F176668CF5BFADDC1
          9EB759A8E966E5530408302FAF2BB48C67C08CCAD260B767DFB0012909423C03
          6ED7FEEBFB4D29565A2DED4A807BDFBBDAAED24A37BBF675A0C8ECDBC768310D
          BB2F8DCEB9613EFDF4A3A9CDE5C42FEDCF2C4D910FFF79010E0702339F1AAEBE
          81BFBDBAE290254B70B644FE3BC411F8EA979B78C3A74FF28DAF5FC2176D9B47
          E39ECC82C86A760E600D993E436BBED26728FE8BB44549243E176C05A6B2ADC0
          860494C80092A6A24FFB042E6D5CDF81F7FFB8A7446A26DF1457DF3DF5D9FDDC
          F5C9042CA7303BFFC32F0609FACF5FDEB791AF7DE7880040370A1F0A00C26B41
          F9F1FB58517EC3BE25BA9D3848D935C9DDC25239C5F524F71696CAE6234974BB
          CF103B0DED3EC3D9F894D0C528EFF9ABCEF2D7B753414BC7634DBF3BE085374C
          C053B8CDFA2CED127836D830CF802CCC0008F85B75039B73E424939758BB04E1
          9B75DD1A2DEFE69DD67CA40020DD02375968ACC4FE859CE3B05BE0F21D8B434E
          FD2335E21C0E0C1C00BDBC6793FA06AE390C00C89FE7CA88A0A610FEFD7FEFEB
          D7590C44E39EEAED2F25B5BE8B010F34A5768BA404C0D5F3652540B112A049BD
          4E751F8C1D16A30F28690A5A348F81FA3D9DC44F7C766FA9E81C44F38D5F3EC3
          17BC765AA954CE9DDA2F0100AE79DB0CAB1C92012C6ACE57EC997F4800102AEA
          FC0952A6045F8E170FDE6F12DC4F726C25C68A33BB99387C7129929C666B826B
          B26BCCD4D07D8666A7E13BBD749FA1FC78E88B6D34F91D8D0D6973A9E125ACCD
          75679CE785C7D61CE385F76DB0C60AEBEFD8D73D7A6174564EB2F0CB36824AB7
          5A89A555F8FABE2363000A00614B351D085CFBF6122FF9C34BC0C325F891FCBA
          6301450FF7E56B5E39340308FFF30488E4FB2E258EBC43F21E848B8DB7BC7999
          82801359FBDFDF84DA2D4447A30C004274C02003B8DF0140E2A438EEFC482277
          7D2A814FDC6EEAFAD24C3E0202E1A85CD20BE300608702C0CAC302406700C065
          9F970C28F26795F6523AAD41FE9BB7DB2DC5A0ECB2A558569CE969AE21491E38
          D191E8585AEA921D8B4BF1B524BB8B69EF989D866EAFE190E75BEB108C4CC609
          087480FDD52CCB08CCC83B1FBC1988F136E604BDF06EB5B62D0982176D04D880
          99250878064A5AAF6DBB04470E00D22E943902374BE0D8C0E95B0BBD69CDC325
          BF7CFFA51C0C0E7509033CDC3FE74AC88BB72EE453D799F1E5924ACD230113F7
          7BE4BF252836DEF2E65ADF77018DA56D19008437014C0950A1728584BA1DEADC
          8E555CB8223A86E30AE3B8EDB5C9DCF9A938EEF4781CAFFFE2A9C3D668EE1AB0
          926E100A96003BF66EE0ABDE2A1DF11DADEBB4A819AFB5EBC3C33580C351D120
          3379FCAB9BCC698E13DC6E27B627BA247920C16569E93B2EC1B10109C98E7D86
          5ED8BD868C4F8DDCE75A711AE6E2C5FDA6F657E3830F8EC7EA549CB1BF6AA780
          424A02BB56BB07DA8576324E76E8795D82E0508CF50C882E60CC4376AB6ED850
          91BD7AAB05EF3A420620ED42B97527E4E61D2CCF78E76B33E5595A4BCE7D3F83
          495F523956DABBE03A3AF2CF3CF7E1A39C797B53DEF7DDE7FAEFFC25E2623848
          B8C346FEBCD3D68F0508A0ED7A6F0AB5599850C6004AF201943FA67C64AD9635
          D7E07EF89F0400E49EF8943392B8C3C3719CFE780CCFDA52E8D1C1D2DA348743
          6AF74DD90E00B8F2CDC30340C785CD78CD27A71C521D3ED4BF33F812ACC69F83
          931C17727A1B8ACD7662B3EACC25B92C30E52936C1B1BC14FB0C2564A7A1EE35
          C44624B3204516A564AF6BC1B220A39D1B8FD56118B331C7B3C07A6C40C76365
          9166A04B60E7E49D6F406709DC6D3B814E81F30CB88519F6C69DE0D55B561BF0
          BA04BBF6995B9A0F27024ABBD0DDBC63976AF2131FDF5EAA8EE39EB7BB124EFE
          1DEFEE7F9D6FDA79258F796010A55E5D879B5C5397CF7A6EF661DF1777B9AC98
          88C44E7CFB1BFE50D96F01024E67D88CB6A1AE28BFA731B559500600E1144018
          C0B1883A55A3AB4E8CCA8EFCD801407C511C375F95C8EDEE8FE5B447A3F8D18F
          EF3EEC8B712409290070C51BCB0F5B02745CD094577F3CF7170380FCB7B897E0
          DDEF5FD19D867EB29B53DC854D74DCE4EB25BB26BA865D5E2A1B91B0D7101B91
          4C0C7CB6B99EFE81D1580CC398D1580704212581998C2B79ADB60101D9A8ABE6
          A1294F67F3828DD355E19658B86906173DD1D32ECC70756DE0124EA30D60ABAE
          F10C1C0D0004976A9EB421D7A3FEA5256130F92FDDBA8C93AFACC5450F66F3DA
          6D17F2B64FD77B89EF18C1A18679DCEFB13305B4FEE3277F75ABD1BD83EE466A
          E918E870168C58AD17C49731809218007EAEF631C71DD3B141F7FACF4307F8B7
          5EA028A5C098384E3927815BDDFCFFED5D07981455D69530A4616072ECE9C964
          49022AEA2F20E6550145444530AD020694B404E3AAB80808921401C1000A284A
          1475154492AEA0A208CAA208AE8A1165D535D4FBCF79AF6E4D4D4FF754374109
          C5F7DDAFBAE99EEEEAAA77EFBBE1DC7311C32EAB67BDFD95D9592A720D231901
          51C687DE1FA3266D1AE96900DAC0008CF9F8A60A0D006FB2171045F21333FE73
          AFA5F90D21A2E80E4BB1612AB629CF44C95D6C4824317531229119E9CC971A69
          E57775C439CD30A11D71768F7C19C61CD31597A7A5DDDC2235F2F541D6EA9D2F
          A93D15905E6CDCB54ECD42720B196D3BB965A6F1A2C4C5A622C3AABB280603F0
          E1644D9A61D368592B3F5D54E1FD75E33FC6BF3E42BDBE7365398597AA0DDD7F
          26E92A0AD7C400D83D0568334E534F025A2C9060BECEFBC7DC80509AC5E21D38
          8366176062348058CD6E392006E090C601D01EC4D100201B50189F5B6B60E0DC
          9C5DC1F3910B40BD54D74CBB06ADC2DE7956A307F2ADF397B773F0DA5E499E50
          4320E09D1BD6F4B4A23100AD6F69608DFEB85F581C003FDB8DFD96D263B8C521
          3BD6073F6CE08E6EF57DFF0CEB1FDBAEB3066CB9803BBAD573E30960036EAB05
          0C48A03DC311CA4E96622D86CC54CBC51430238121C93AFDC506BA2F5EF7C8BB
          FAE35BB037BE5C7FBCF4C8EB52A1DD231FD4DCFA33368E531F7FBBB98C223189
          268B9E0B9F8FDD89D6EDDF6D517FFDE7D9865F3F0C668086229A10600E0C80F0
          0C5CF14A7BEB9B1F3F0F5BF2957BE94EB0B963FE50CE41AF70505E97CF68323D
          D58211B08EC6B5E4F5FCCBD36D2C1A820FBEDA18D6C0C8FDE6B5A9C8C0488EE2
          A6E517EB79054D6FC9F77100E5D280471D5515FF570712442EA05542BD844979
          17067F631E809E008F30082AD82DCFAA77579EBAED5FC62D8F54C60B77F3C51D
          FBE1E76F555BCC929FF8DE3F3C3D8056B73450A3B6DD18D10310C5DEBAE76DB5
          E3BF1FE8F75149C22D08519E2DDF9765C9FD64CF16CD6DD873E389CA567487B5
          B894FECCA640B3494D6D762475EA0BF55553EC58DCBD4092C138962419262470
          B8F34AC3014D94616306881EBCFCF9B3D4C62F4AD96EB858BD482F18D3CBA2E6
          2E0923E08CE3B681431A061B8B0160AF3C7B09C0A51711F4C57B2ABB3F7755F7
          8E1CADB287BECF9D03688C2E43B4195B3004EAE8470CDF0085DED55F9E6EAD6E
          7EB9979AFAF618F5E67F5695330A91D083FC3E59A71DE615AB93E714C00060D4
          B95F062C6702AAE07F6A4132218D211DEA36A93B0F8AFF23C2005A4C6D04901B
          C0E35C5500AE80E1AF98E19E52BAF1CACA8BFBFFCACEA5AAFEBC1435E1DD280C
          C0F0FA6AE4BFAF8F6800C4A398BE73848EC9DFFE2EF2D42229394939938BC6BD
          A3EEFCEF563516EC47A5ACC5ADD54536F599D09F69D662109A7685F078CAB27A
          7AB13AFDF1DCBD6010A43F5EB8F358E71EFBC6ED6AC5F6A5CA74C5CD5377AF31
          C94DD9C96245D7C94E4C23D00BA017BBC5584389991CDCB8CBCC71F44A023EF5
          C1244CE2352DC6AFEE5CA8FF269267C77B1C8BFB1D4EE119AEF1BE896BCEEF7B
          62E343768761B2C50EC326E01C6097E1E31B1F54FD5FBE9C6DC6DA10B498994E
          06228794142842E71A56B4E9ECF9E93BDDA04554E6D1C383BE0108E301E852A0
          0E038E3AAA10725CA5CA475D58BB307E66D6A9993BA1F4BF6823C090C0F60A82
          C80D5CF6D8456A975DBAE10D8DB470DC49A35E2B3AA97AF3926100EEF5F4008E
          8101B877ABC92687B3F2B2138EF8775FC4E76DD580CD5DADFFD9538B420D9254
          04B800DD8B850BDA5DCA7AF0A33BB5728BA277FDD731243335A229D00CA929C9
          4DDB2F2DC6624DD56DB17AE7820B6B9872D2D498D76F55AF6E7F5EEDF9E9DB88
          2E2C7F57456532AF9D558CC0EBFF7959BA0B35AD36C5CB0088419CBEE91FCE34
          DE2FF7ECACD0FDF73A9FD0D779CDA534EC5678317C9B77BD0D257F48D59F9288
          CA01DA8C1F4EB21AA1D578163A0DDDE1C5BFBF7E5FB59C91657B583404340219
          EAA94D532BCC0FC9BA5BB5E345936B7932DF6A32CC370061F45F63011806D4B6
          BD80463876C4FF5E562DB9DA989436C96F06CECBF92F94BFD41BA01BD535A8DA
          DE769C7A655B69E696BB2A17172F3E95CD1D330E7DE306AB646EB2A28C8FC200
          B41C564FDDF3615F4F0370F7D63EE2B65B1BBE7D35E22E5651CEC20D1E9A0C23
          40851765EFF2460BD50544A62034D5A4A622ED96142932E470D16A23304DC7B1
          6AF43AC378ECDEE1252146375A0C4EAC399450057343B147A32B8EFD04326DE7
          1D0F0F40CE61F8DA2B7477E1A5FF3C419F2F1535564597F7BB15DEFDFB431FBF
          0FC567D9B0F3D327AB9287EAAA7A101A81764F34B6567CBCCCB96EBC27729E53
          368C5267CE3DC6BA6A696775C76BFDD486CFCC64694A24AFC4D920D60D30B0EC
          D979BE0108A7FDF6FF55B6BD80BA38E6425A42CE84F44475E08E84E2DA8BB34E
          CFDC15EC4AA8B0C90DB04A10EC8C4A41CFA01AB2B03F38D94B6F8AFBA6B37D14
          CAAF8AE724C564005A0C2B51777FD027A2011017FE86F73AD9CCC5ADAD477718
          84E1DEECAC6E4F65E40703CA701E9E07FE439BD05481D4948FD5FF2D2AD4CA6F
          0832B411B0180E304EE53944CA807361EECDF985534C39675DEBB667EFB1B370
          1B30F1D128C7B0B5976B28F1F0755754B89B86333EFC7DFC1DD2871FAAE8AC10
          7CF8A5390FD90C4211A3CB3F7A5E1B81EB5FE8A1767DFFA993C711A576633942
          3F9F9F1529C491BFFBE89BCDDCF90D45F9ACA0D5789881BAFBBD00E52D817801
          35F15232A400D2CA36029721393810DEC0C3E927A77FA4CB84EE04212F68B7A0
          CAEF17B43ACD3B5DDDB3612878E99F5033B74C5683D7F5511D971CA377FD980D
          C0D012F5F72DD7465C98B220344DF99B7AE08875FB966B625AC8A10B5B3C01D2
          9877C3686F2A3B390F6DB178FCCB6AF3FCA485055AF9B5FB6A8C0028B3522A8C
          4BF97D5EE83A9E83576953CEDB5DEB3E6D7E7D9B70A4C4F31C64771CBAA61778
          069A281A8248A1967C9797C2AFDBB1528D5B778FEAFECC99AA6062827AF6FDD9
          613F53A0C3620CAE5B76A973BECC0F840BDFA40AC2F3165AF0489E8ABB7390E4
          239AA29CF244AED568A86F002A70029C508009C154DB08D0133815D21D727D95
          5A5546D66D58E7D540A79C1FCB79034812D21B28181180B2A7A89279495AF145
          623500CD6100EED8EC6D009C181D83477A83AD57AA01911608DDF0684A47AF7C
          B100CA6E588CC97B78D6AA2616B90F71D472C2827CD5001459EE189686400C53
          450BD4FD1ACF8546215C9CCCDDD52BF126CA3CE0D51ECEF04DAF73701B000287
          86ADF13600EE5CC9F73F7EA35EDCBA48DDB162903A03E4A859E3AAABECB1D5AD
          1C1C731EA8A106BC64EE1B7F9317C1C7CBDB96385EC2DE861F6E83281EC94A80
          8A4A119901746C06AC46157B00F5F13929906A4A299410CA4BD8FF3CEEDA431E
          07E0360AA19E00C30156064E849C0BB90A32B05A4AB5E9E927A56D4528F03F9D
          1BC0CC753B4780C7412BEFFA3CABE8E10CAB786E3224C908420091F11BBD9380
          CD86145BB76DBA3A220E401639E273C6E656E7752D2CD09447E423E02271BB94
          745FC3190229779154F2CA7F9D6981C5D83A6325A511467B19E1E3E39F0D02FA
          9A682186D5C7FA5348999554E1F7872E70BAF06EC5677B2C21B173DF9F0688AD
          A981472A6DCA67498565E6BB63ED019C459EE720CAFCB7D53DD9626C0D5DDD2B
          E27596EF917CCEEDCB075AE963AA5A1994FBE3B46442B2C656D372E7AB839CEF
          8F94E7906BFCD3CF86672052A3592C06C14D36F2F6E7EBD459F35A129AAD054D
          5B56EB993956BD9B0CB625AF5BD04A6D9BBAF5A8CA47DD65AFE90E38EEAD0138
          A45981C3790462040811664E200B5202690D615EE0527A03956B54BEB76EA33A
          2B72CECEFE46371119E010CB852AD80972599E2ABC2F4B153F91AABD011A8158
          92804D8714AB5B6CBAF17055003100767C4E771D43479A56B8034BE9D09DA00B
          670464B12FD8F998E63CB4C5B2B90F3507E2B1F37355BD297555C9834E22CB6A
          806496D7EE2B8BDA9D7358F9C932D569FEF11CAE510A23464FC1EA1D2FE9CFAB
          084E2B61CBBC2DD39D715B5EE7E032001A370003105508C0CF7D63C72AD5FCE1
          7C0523A025E3FEAA0A06405D38EF748B5E817C7745494EF9FEF9EFCF52FFDCB6
          58FFCDDE76028A0725DFCBEACB19735B948E2F7B1CCD5A4F64A9A663B2ADBC8B
          99BF42DEEAC2A04A6C5A773D7CDE3B713FAE84F80620C412D008101FC0F26002
          240D920F690E690F391F72352CE8909AD935670142BC0DCAFF8B3B37A0932DDD
          F254FEA0A02A7A28136141320C00C382A4A8AA0047FFAD480D7FF72ACF1C8013
          A3AF3EDAA2CB5ED1E297D76ED870A1DA84C9B891E25E01A9FC7BF726D5714503
          CD640CB184FFF09415F555EBF9087590C02A7EB08E64B3E909446500E4F3F9FD
          CC6AEBD21626EC98C19BA546A0AF5DEB0E47B0228644BC9AB73EC734257B1477
          B40660F0AACB3407E1752B3AEBF3AEE87BF87DE25EBFB1E33575DFAA3BD4A8D5
          77A869EB27A8F73EDFE0FC6EEEE691A8C8F81962B098206CF450BA3A7E663DF5
          C5F7A604192E0710C90B086DFD252662CA86D11A8741D160ACC72899AAD9A42C
          5570758EC6B1E896F7CE815FB16E9FC767DF01B91CD20E520FC2FC575C8C21C0
          61E701B86D01AB03840A3339489C4000D210723CE42C480FC80D7175AA8E4337
          E12A34137D6F38055C95820B822AEFEAA02ABC37DB2A9E65BC813EAB4CE2279C
          D597C57BF4DF0AD5D077AEF4340012933346E7D091488B5F946EDBF79BF48E7E
          C9DAF66AFB0F0641182E9B2C49AA1E6B3B92F054B507E9697B721F42DABF52A2
          5A3D9303035047154D4E1023C070202A03203B2029B53570C84CD8714DDF2D6D
          2AF25266B701E090121A01AFBF91EF1FFC5A0FDD4B409E0119BC59517E24147E
          EDCECCF37A794173DD21D8354BBAABE0F89A2A6F422D75DAECD68E11A0016178
          C6F74AFE80473E0F574D609569C5C74BD559735B014A0C1421C0584D6742A6A6
          AB260F64A8FAB766A9C2BFE610CC66E9CA15D880D24E4CDB897CD6A358BBB7DA
          6B98216E91BDC6ABFA06C06D020C6D987803840C674008186A01A1EB7401A477
          E5B84AB7D7CCA93927BD5DFA2730020E94585F744AF7A095DF3FA88AB1D8DB2C
          2A56BBF698B24F68A24B165593C1856AC83B91CB53F23E339B40CF27607C1E71
          F1CBE27BE79BB5D8CDCDAEFEF84766445938432461C0BDEF0D82D2034AFACF62
          0BC2A39696F3B254D18309DA0014C10B80276095E0E8A57C8E7701804BF347E0
          9ACA741D4289358C182DC6F4046C6F40F0F0919281A50660B546BC71F8A6D739
          8801180403A0197320EB0028E2DF45834F10261E2A7CB4150B3747C303A816E4
          3E5053E5C200D0080461048E9B51CF9270C06D58223DDEBCEB1D8D223C7DCE31
          4A0F2C996190840DC7A5A9925B335561EF6C957F590E145E90ACEC6BC955D967
          67FD80DDFF15ACEA0958B77F835C083916920FE1FAAEE21B80B206409ED11BA8
          06619580AE92DB1B3807CF7BE2A2DE5C25BECAFD492D93DECCED9CF30B0C0113
          840E94581B82CB911B189BA3CE7AA1AD5ABFCB30CDD2EA0B4A4F6E78E3C1056A
          F05B916353799FC4E888CB758C1E69F18BA2BCFDF55AD9D155A7D78E75BE1FE7
          5F0604E3C4D6DB1F21E929E9D1407C5AA84ED452A49ACFC5CE02E52F9854DB18
          81C90916C3012FE51314DEACF7A61804A18D7DB7876E3AEDC5027B155C41A49A
          B79CE79CCD53CD849D180CC0C0953D1CC69CB1EB8779260243AF51B4CFDDCACF
          B89F958280080C803104B52C7A03E7CC3951B1CD78DD8E15EAD3EF3ED6D793C7
          D777BCAA66BE3D510D7EF95AD5F1C9E6AA3E661434986AA4FE049499EF48B3F2
          7B6761A3C17A8317CAFE150361B7BD51AC4500DA7EAA5D5C7B3DCADADCFDEF83
          5C0FE1DA6D0EC981100CE71B80F0FAAFFF375C6E809801B737F0573C1F5833BB
          C65359A7667C86A4A0E406349438A85184C80D0C466E607ABA5AF8F11C4769DC
          D3811B0D2A500337F4F40C01B893EBD8FC154CE785AB1E4901255BFEE8B609CE
          2E7E3214F9F33DE1F9E89D9D152CC6203C556D417A0AE1514BB339195AF90B26
          C6EB63E1A4048B06C1CB00C8EEDB6BD1B9368C38044A0C17D63D74F3B3DDDBF5
          67462AA7C9EF9AFECE18339F004620DA7318B0F2526748094933B77F6742A28A
          62F868955EDEE74E763EB3699642A54065B35CA8A5863106E36BD00858E20DD0
          10E44DACA5F29D6B8BEB0B034B8F8B46B6783242AF5149AAF0D65495D73B5305
          2F82927732BD2A8ED2BBB12AC0AE649F99F53DE0ED1B90B79A8D73E3EE7F0BE4
          32483B082B002C7D33F15DD9F7002AB000F64B6E6F4072038410B785FCC5BEB0
          FDAAC6571997D82C712D2A05BBB53760DF20ED0974416EE0AFF0064667ABEB56
          F672BC81F53BD6AA536E3A45351A98AF06ACBFCCD30098F81C71F9CB2516E373
          2F033063EB384D767AD28B203D85BC05050F97071003401AF3E397E553ACE397
          198AB4E3F0FCE8A7D255FEA478C4B0F1FA08236015C21078299F13E2C0F83930
          620EDD342DB1CEE45D692AF2FA3C0955EE5A731369C9B511F0FA1B3142FD5FBD
          C43DA4C49AB2D10C76D997C19CA2F83458EEAACB74240B592DC88401D046602C
          B003C40FD8D80178045640BC0118008605DA08E0DAEAEB3B3EC12A1899A8F26F
          4B517937A663A7675CCF841E955E2BBEAB714DEFFC56005E28153FF998A48F00
          647B19E7360BF22084E5BFBE1096B68F810421AC7831DF552946037058E100BC
          55BFF41D522E64A580178FDD84C51082874E817483F4A91457E98EF8BC5ACF66
          B44FDF0EC5FF557806CC3117B3E7F3AC8261010BB901EB9C174FB20A47A55901
          94151B0ECAB76E7AB387270E800349ECF85C1FBD0CC0231F8ED514E62254F070
          06406AD5F410A0F4D6B14BF3AC364B838E347932CDCA9B184FB7551FB15B5905
          136B7BD6E0E5FC88190070880D308C5DB584F6C5775FD8517F5E45D979F19A7A
          2C3995D37735D740B406E0E61517133CA445D3928357FFE5EDCF394620D62E45
          2A3FAF9BBBFBF2F3DD3BD54DCBAE36D881FBAB6ACC801B3700036051E00958B6
          11B07227D4B47227D223C0B51D9960E5DD926405FBA559C19ED9566E57B36ECA
          AE238343D19BCCF981DFB3CFCADA937A7CCAA709F513DEAD9E567D0532584FE3
          DC664026DACA7FA3BD3E99FC63899B552E86B6CC7585C5FBD0284400021DD655
          002F8320210173038C9FE846D19A3681F0E276825C01B76B605C62DC247A03B0
          CAFF732A059A6B80A5194089FB8278645C36B003192AB72BA6D1DE5CA0FABD61
          AA0515E100F46EAEA5D03A113BBA97019886A1247A477F3E5FEFE64F7D344DFF
          4D68A7A05E0776C349EB25B90A62D9473E568D66A7AA207628D9A96C23E0B9FB
          961A00A70B4E7B0218B8E9B4C33237D014B981451F9AF02852EF804081D9F2CA
          0125984DA030ACC4F31C1CA28C15172B8E2B2B33BC141C846204F8DDF430BC78
          20F93A5DFD509CC5DC771F53F52767A8348319A011006E204E4BE6D838ED0998
          90A01A42011881F10649181819AF02C31355EE8DA92AB717E2FA6ED8EDB12930
          7C34BBBECD55C19E14C6FB48EEC1CBFC31E5D8941D50FAF76A64D458851E9645
          08589FC27D9C0979083206721BE43A5BF959CE26C88D381796BAB986B99E7D03
          E0A5F5615E77970B13F13ABD015AD63690D3211741FA807D18DE40FC02B8655F
          B31C23E542433A026FE03284057DF0FFC8DC16F42C503D5F3A572F66EE72A1E5
          29512452973346E78ECED8DCD3006028C9B150FC364BF3D4B14B836AEA07DE33
          0A5A2D0EA86316072C088E39AAE5A21CD570568AC24E65125874578D27E0A97C
          727E0DA7A69A4496698585686FC0C90B9C35B7B5438D15490125BE26971ED16E
          8683D0DB004889B3FB92FFD31C84C608143950620E2F9DB57962396A2E61FE11
          2E7E3E0F85307FBE7B87A2E2777CACB54A1D5D45A569A9CAA33600A14620731C
          0CC1033004A36B5839B7D65181EBA8F4992AD728BDD920A8F46EA019941E683E
          FEDF6F19EDD2BFAAD3B0CEFBD553ABAD04386D61A5CA95E662AD3D069906E18E
          3F0A723BA43F84A09FCE909321474398F8A3F7AA637F59D731860047B407E0B6
          056E6F201E2F10579D675FE8937064BC75396C6C7FE00626C35ABF678387A452
          60EAB4B6043A055593BB1BAA77BF79432B5568F79728525B139F7347478C1EB9
          0426C9322A3C5C79ECE294DCA8869450E15B2CCCB12038666BA9FF4432925735
          75369B8600092C9DC58ED6FD66075C3D0087081E028C9886408FDFD6DE00CA59
          6F7D66483D2A6A1E929DFCAED537AB56601C12ECBBD739C8EBCE1463CE2CD4B3
          0BB5213079015069779FD7413DB7EA69B5F30B93888C243BBEDDA6E6BCFBA8EA
          F7FC95AADEC4749532AA12A4B24A195D591B015BACB43130069074A0072919A3
          AAA9CCDBE355CE75292AD023CBA2C20B29AD46941AC5371D7CDC20BAE6FE8EEC
          FE6FE84CFDBE6EE3BA5B00497F159BCA42A82E77FAC74394FEEF783E0472835E
          7706BCC6BE16225A99F4CB76293F5D7FBDFBF39F6F00DC6A1DFB63310402250E
          971BE85DA96AA5DB6A17A2CDF8B4CCCFE101FC566AE14B4B3779171781E5F624
          B506538764F1893B2CCF8F7D3EA877723B3EF7F400A6602889DEC9A1D494299B
          BD8794345B00428A0559967DE46355EFF1249DBD969216B3D867CC3665C58A62
          7629DBBDF2D11207464C4831FB09E80D5C30BF3DFADD4D5E229CE7C3F5499124
          E536E0095A3F86DFF358A6A6253F6FBE39071A4C796FE851AE9DC10D605C1911
          84642576A615718271893AE99122557C6550052EC2FC830925569739A7AA91AB
          6ED772DD929EEABCA73AA8A2F1C95AE193EFAB6419C5178101A011B00D410A3C
          80D45150FE11D554C6ADB554F6F530A03DB2CC2ECF441EE37A57D9CE248CB5E2
          FF96736ECE8F98E5F74D62D3C40F11D3AF44196F017E13137A74EFA74264A7A7
          D20F86B0BC770584792826A5DB41D8DD4A101B4354C6FCE2F697517EDF00C4AE
          F0E1FE8246402A05E20DF0C24B63D179784CABDCBF5A52DC83296D5236A2C3F0
          BFACDFBAC30266788BFAD657CDA795A8E91F3CE028B724BEDEFA6AADDEC59D18
          7D71AEB70180C2B7D03BBAD9C9A31952D2F4B94C05B1783CDA9692C792B4F24B
          071C1358173E737AC49C8528A1BB5D9546E0D205678356FB6CF6C45B0BB6184E
          7E51FE8A3A0165F79FFAD6189B250764A480BD5EFBC2F9159E8393DCC4386EC1
          0D103C6468C9ED21259C603CBF489D381D06E00A630052EF8A83828B52DB3BBC
          4BE18D01E0EBE6B5641A053EBE0F5EC0DD712A7D782D2BF3A64415E8891CCF85
          00E870577797ED6C17DFDEF57F07AAF4BFE927A77D99D43CF1DF35336BACAE5C
          BDB2C4F46EF77E34AE2B33FA43214CECB1598DE1266BFB4C4413B1DA1C42982F
          D75F3A842E3F137ECCF8738D3A3BBF2C64DF03D83F46809FC20B4CB6214289A5
          52208D45CC0DB0CDB80F6EEEDD0945B597A69D14A6A7A03312843D8B55C3BBEB
          59972227F0CED78648F31D4CC0EDB6E21465C7E7D8CD11A343B1BD720054F8E6
          D8C129DCC9A3195272F4B319AAC9B31916844748BA2A7E3451653F6097B14C3D
          DBBAF0E9D33C0D000D811B1813CEAD8ED4A9284644BC08EEFEE4CC6BA139F332
          742FC135CBBA94390749D085CECF5BB6ED6960060C35B98D20B438B24C8C4087
          67301A6E5A611803505EF9B50730CA7800C9A36DC51F81B87F682D957923AED3
          95E93022C8E0336147A5D722A4B3268947173FE79CEC9F10D37F89469D0F812A
          5D0B50D952ACA079F8DDA2F493F098C9BC7B6CA5EF87E3D5904B209D2074F159
          8A262E85BB3D312A74F5198E12E547C567B2AFDCAEEF5EF2BE01D87F06809F14
          AE52908FFF6F0AF93FFBC65D81770D466E60227A0A56632194F61468400731DC
          F956513FF0F03D5CA4BABF76AA6AB9385B27E3747C6E7674C4E8D99E06E0C1F7
          EFE36EEEC8643CA7125634A8B4F1FC7405B1ECA36A84E74533EBEA3E7801B6B0
          94D5354A034045A6272033F584E8828AED9571771B0F9266BA8848356966BB27
          EBEBDFC3E45C388E81CFB1F33FBF6D9EEA38B781A1CA2A9D4FA08797CADCC2F6
          30006DA71544F0005CEEBD28FD6818807B11E3DF52D328FD55547A5722CF94EE
          4AD9A4ECEC7DA053E0978C0E195FD76D5C6733C0636BB10696213C64D98E31FD
          74C864C8FD90BB21C3213743AEB1959E09BDD320AC38B19E4F2C8A283DDDFC44
          083D5096AAB91155A8F8B2EC633400472C0E205633E1F606081EA2656632462A
          05B4E2D7A3A7E0EFB5726B3DA32B055D3594D8D47C35D02368052F2D023D7903
          ABF9C280D57C71168ED956F30590E778CCF2C401702A1176748BC25D3D9A2945
          8D9E49B3441AE231A570661D2B6B9CE981A79010E38279A71E3038AD180D51EA
          C51FCED544A4C2A5DFEC11D292EB7E028BCCC3E2596826E2AD73D55D6BFA5B5D
          9E3BC1B2CB85CE7C82B6B331B310F3094EA49801A634041666165A6DA7E55BC8
          0158391765590C01B8CBD3D5D747287CF2183EAF6CA5DD5EDDCABC21D1CABE3C
          DDCAD53BBD9E31C9A4AEB977F63D649D9EBDF86495CAEC98F11D137928D9ADA9
          5ABBEA52283D77FA275C4A3F168F474088D813A567F3591708BD47B7D2B39187
          D074517A96A49983A29B2F4A5FCED58FB4806334007E1520064BE086120B6E80
          9502E2065829E804A137D01FC99EE95824FF61E6D76125668E001E41A073BE2A
          B8A144359E99AF9A2EC06E4E79D6C4E85E21C0644C25929DBCF1FCB4A8A61435
          78265535783AD582E098C2C72A7F468246B511DD66D7B36900A20A01A8CCB18A
          7BE75F8EEE37A1D0967E02DB1038B4E427CFAEA7BD01578B71C8F052D7146333
          B20CC34B2524C0DCC279F9EAD8C905AA102C4F81EE760E40DCFB9188EBFF8E64
          DECD75558E8EE935C45B0F962D9BBD37883C7BDAD4AFC8DEFF000F8F89BCD790
          BD5F04F77E8EADF48FE048F79E3B3DDD7BD9E9AFC56371EF43777A36A4B18C17
          6EA797D8BE12D6C35122D1AE53DF00447BA5F6FE7D917203CCD4328E63F6F61A
          8039EE41B9F06D3471EC91B9044EA618B981E025C5AA6444A16AFC54B61DA3A7
          7B1A8049EF8D54D8CD157671486A54434AEACF43CD7E5E8AC59906F56CC97B24
          416500CC22841800B6446500BC662884330C0C0D64E75FFED152D57E7613171B
          B16624365062692CB25B8C1912C8901218025D25289D5B984DF090E6CB038290
          538C1D28F189300427CCCA578D87719866502B79EA5DD5B8D3AB8CFE7514767A
          3B91877B509AC82BA58D37D0DCDF3165EA2718F16F935B267D44700E50A10BF1
          FB88C50F8DE9E9DE0F83F483B097C4ADF427E0B9C4F46EA5674E89EEBDECF45A
          E9DD0A1FFA38DAE5EA1B8068AFD4BEBD2F5C6E40BC01BA77AC14F4826B38AC76
          41EDE7324FC9C08C8200A1C4268E64CD988F2F2850053717A9FA0FE52246CF50
          6FEE32ECC4A1E4128203E05422B3931B9910C59422ADF473532CCE34D0AC4638
          061FA9AD116D026C21BCF5FCB9DE1E4045A5BD50E567538E9B7577D10773DC1C
          849A8CB471297848F712C01370B7183B938AEC9165667829C69A0B6640C043F6
          C83233BC1406A0C5A802957F8999A517E89E8D981E106DC6F4BA8FC34EE4391D
          77769D9E89BC73B37F263807F8FB8F6B056ABE8EBE7B77224F627A26F244E96F
          A2B18FB0D3B36A14BAD39773EF2B527ADF03D837253DD07F2DE542A91424E20B
          09CD64D986800DC67A3DE02ADE04D0C743C9AD92D7C31BF8D14D3A62DA3DF354
          B057915534224F9DF3FCC90ED700774DC1B38B01E05422EEE422D14C29D24AAF
          198D4A494E83D36B1B408BC05BC7D00074F40C012441C7F3092DF3D13B10F65D
          3785F6FAFFACD16542E1D0771191C20818F050634089494B6E0F29718C80692A
          822740C29199A53C03CE28F327E009708CF99339D6710805DACCC853CD46C2A8
          5E6E8FD2D6ADB55AE94BBBED2483CF1A3E5EC73DF91FB3F728D96D8BCF8F5F5F
          350189BC2A611379E2DE8BD2935E8E893CDE6786804CE451E925A667D98E6B22
          54E92B47ABF4BE0138D02ABC7F3E3F3437201464CDF0F14E6351951A55EE414B
          E7E2EC33B2BE1228B1410EEA4A8195DB2D5FE5F72F52FFF7542BB5FCD3A565C0
          43D2A042DA7271E3791C1FC598B2505A733EA701488301D0C8361A0160DDBB44
          69002A42D5B95FE3B8ED11AB869A1658128ED883340441D80008420D23364600
          BD040225D6938AB43760CF2D448B310D803604CE78AD56B33255EBD9F0081E0D
          8033AFC06A001AB6A2DE052AAF3B767EE3C6BB71190E50C76684FE3DEBCCCC1F
          925B276D47C9EE7564EF5F808B3F1FF91BBAF88CE9D9753716722F84CC3B84E2
          F6D606DD24F2CE80B00A4443CF1C101BC998C8A3D233494CA567F958CA769E2E
          BE97518876A9FA2140B4576AFFBF4F7A0A58AFE522202B311707170A778AAB30
          B66C70B5C4B887D34E4CFD9046C0D5586427A110975E8DE4D5D85C24F8469583
          AF767EA94319BAF268A614853700F1BAC94563DDED6697CE73A2F300A8E433DE
          9AA4367DF15699F3FBE1C76F3549E6DDAF0D51E7CE3DC9F00C18B211B20E69C2
          91629090D210180831040680084242896D4FC019576612847648802A81E1CA4B
          572D9F80802CF3E8F1F9AADE9042B0E714A0A71E9373CF07BE5ECAAEB601A0B2
          934433D80D597D5C6F00B67EC5B5FF0C3BFD0628FD4B48E63D8BFBF22484A8BC
          2990F1909190DB2103216CBBED05E90A218D1C71F8547A62F189092140872C53
          2499213A4F949E5E6119A08E97827BBD1EED72F50D40B457EAC0BCCFED0D7041
          486311170D33C1040FF565B930A124E105503C7D636799CB8C2ECBED8A453DA0
          48755E789ABA7BC3100C2C1962852A7FB463CA221B00E2DC2B4BC38BD579CE29
          51850034000E82D09061D88418AE3E7834160921863104B52D17FD983356ABB4
          9FC040894B271561E2AEE61948B1598730BB101C044D26E4A87AC35145C190D7
          C0F9455068DD54A3BBED4A13AC267BCF661B10BE7E59BBA8F6C65AB935FF5523
          BDFA2A94EC96412DD970C392DD0C5BE9C7E1283B3D95BE0F84641BC4DFBB777A
          BAF791767A29D98545E771A97929B8D7EBD12ED7180D808F0388F6C2C6F03E37
          94D85D2EE4AE21E0A1ABE06E0EAC9E5A7D7AEA09A99B516BFE59570A64460117
          70A73C2B78799155707FAE55FC648A0542D2BD9A51E09E69600F38B172A7C75B
          687221FC551F299D9FEA50210E40DA77395843F7C0EB3EF8EAA60FFE01F4C01B
          561C0BDD85866700A27906265134E10859876808E80D8083B02EC302D76C026D
          04D8548429457A5291D5F0C174ABE1D84CABE4B680957F0D76F98B0AAC00AE4B
          99EB6494BD146F617AEABFAFD3206113509A4B70CD45E1E9DA3F0C61C96EACAD
          F46CB11D00A17B4FA5274724E9E3B9D3B3AA23EE3DBD39B77B1F5AA7F75C1E5E
          0AEEF5BAE717D86F88D100F83880682F6C8CEF0B972024788809428287B8C858
          2EBA4E4F2C6A5C6705C0435F964B10B2D1A45B91CA1F8E6125D3414FAE1379A5
          538BF63604C89D16AF777FE2DEA5DBAD139A63B8BB479A592F0D3C6B3E596EA6
          E98432E2D84499D2626CDA8C6D4F006423867AAC4C58808622434B5E32058660
          2A42037801F526827D19BC0AC5B76583320B9E90CEE643E9B9DBBBB9F2ECC7BA
          A71E201D34DDFC8C6ACBD7E074DC56234337DD1091C7921D1B6EC4B567C30D4B
          7604E770A7EF652B3DDDFB76F6BD11F79E4A1FCEBD2738C769BF8D765D7829B8
          D7EB517F4F6C93817C0310ED85DDCBF785860492206C6E2F38BA995761B10E45
          ADF931CC2FDCC6EE4237E9885EF4174001AE2D5205637255F153869E3CDA1905
          E142001A00B6BBA6DC57490C816719B08C01D064182E23304E33E298F6628728
          D3D066DB4680DE80CD3F681B0172E43D049982DCC0A444ABF01FE9AA70380834
          7A43D131C23D17139C59C7B7A9D81C28AEE65F60061FF13D637A4271938F49FE
          38BE207E3D885B5EB4A1B824CE249106C1396CB8616B2DBBECD8534FC3CB441E
          95BE3D84ACBA8476D338B394CBB08DF8FB7031FD5E2E83833604F00DC05EDFD1
          D8FE303441E86625E6426449E9C6B83A719C51B01A20941FDCF30B754CCB24D7
          25852A6F58BE2A7A2C5D953C9DA8079872D70ED7772F19F98A0C00A0B1D2F66A
          715846A4BE029C9BD3C2BB66FB72871B0F7062F104488BE562CC2D251B71138E
          182310AF0A1F822039983F2A59E50F0331661F843F1763A727D18AEEA3B7FBE9
          4B33F98694D5244EADCC53337727B548DA161FACF526AED90B70F59F4548C564
          DE0C08F1F7ECB4BB0342F79EE09C8B21ECB2EB08213887EE3D959E706E26F244
          E9439B6E22C6F4B1DD7EDF00C47ABD0EC7F7877A03EE1905DC89187F5E4BAE01
          B2120385F61932D8B2F301922A8413D81DAF2E51059303AAE30B2D15874B8403
          0F456F0074DBABC53EF9A80D808B20D326C924379EBBBD18DE80DB0880706472
          4D953F191EC17830E70CCE51816BB0835F82DF024A359DFFB04BA27659D4E9BA
          A3D2F33AA0C9EAE794D6C99F40E9D72399C7B2DD3376D98E4ACF0CFE031066F0
          59B663AD9EEDB5E4CD67228FE02C22F21A4008CEA17B1FAAF43135DDC4BA40BD
          5C7CAFD7A3FD3E3F0710ED95FAF3DE4743C0ACB1940BA5B188AEE8D91026A36E
          0094F83EED0D742294D8668DD5F30B21E49543A520FF960275D6E213CB808784
          163B1603C02699680DC06A7800C28DE7E2C7635391F106D0668CE4A0D21C79A8
          12D0100446255839433354CE5F89CC83D29F072965C42D65C5254AD2C073D943
          F14BE09C9C9F528F4DD98961186B713D96E2BA107FCF4E3B2ABDD4EAD974E3AE
          D5D39B2212B30384F91666EFD965270A1F0AC395983EEA869BBD593A5E0AEEF5
          7AB4DFE91B8068AFD49FFBBE506F8019662E52EE525CB8AC3BD3751D520B138B
          324E49279438647E218D0150847DD1FB3EBDB5F5CA8E52F090105CFEEB8B551A
          37E01E6FCEE7920330218061C489C50094E3C7235B2E8932252418535365DF5B
          5B650F4F51D9BD7354CE25412BD0052E3E7B2004A4E306EA68465C3DFCE267B0
          2C7D977A5CCA4ED4EADF8CAB1BF712AE013BEDA8F4CCE233AE7797ED08D061D3
          8D3B834F545E4B08777BC6F46E220DD9E59D869B3F6A197829B8D7EBD19EA76F
          00225C29AF0BFC47BF8ED3944A81DB1BA06B5A6E4601146102B2DB6FC00DDE6D
          4F332ECD8843A9727B145AF97704D5BD6FDCEA78031C5F76F6B2B651180030E0
          ECB501008A706C150868B3475757997725A8ACA1C92AAB6FA6CAE981CEC70BB8
          D34348A11E32ED46D369118A8B441E951E8D533B91C8DB80DFCA44DE7C5C07D6
          EADD4AFF0F3C67D92EB4562F653BEEF6CCE04BAD9E095761D0F124D28856C1F6
          F67DFBBABEA2FDDE180DC0918303D8D71B70A0FEDE3604448E45E221641CDB1B
          89AEBF6357E48C824FC04EC3F9852EAE01ECA05DF3ADBC1BF3AC63A636B5FAAC
          BED46ABDA0C80AC50038388069F116AA00A63FDE9691AF45970358BDFD154288
          ADF4B195355F7EFA5DB5AD8C81295656DF742BBB0776719DB7A068A5B7B910CC
          B93281A77912BA047E477BEDEE9436C99F00A8F376F5946ACBF1FB9EC3EF1428
          AEECF454FADB6DA517541EAF4724541EDDFC50545E54441AD12AD8DEBE6F5FD7
          4FB4DF1BA3013872AA00FB7A030EE4DFDB46800B953B55641E42CE28A81B3711
          B4536B75B910A530876F40BBD4DA1B50F977E5A9E259A652C072E1FE080184C6
          FBC98D3354EA881A2A6D7092CAEC9BAEB22E45CF3DCB949A13D1E5E2DBF1BC3D
          D5D6CA73F1DF6B286E62DCCB556A545EE0E2BF0F85E20EC2B5200FFEE5102A3D
          F323EEB29D407145E9DD19FC7250DC6815E840BD6F5FD74FB4E7E51B8008576A
          5F6FC081FE7BDB08302C08F506B8D059B6229498A4917DE122DF1A9F5F6B61F6
          5FB2BF4396DC46C2B91A602EC857C17E05AA681AC0434FC300CC4D2AD30D5836
          07103E0460DD9F5D7FCC27B8E9B96E7EF4269575095C77E61F18CF9BEA84E965
          6092520FBE30E53A32E804BAE4FC927642EA67D8E9DF41C9EEE5CA714EC94E40
          3A13F09BC87F7F2784ACB86EA5272B2E73224C90B2B98A653BC6F5ECBA949D5E
          B8F20E3AA5772FC57D5D3FBE0188F60A1CFAEF0BCD0D70A13337C06C366BD854
          8A9E907E28878D4F6E95B40171F48FE5E6CB013917E85EAC0A46003C342B1506
          C08087741270BA0102B993805DEC6620772BAF5412785CB769AD1A387E1068B0
          B9CB6BFCBD2B0FA169B48C2100EF01A9B0D34F4ADB55B7619D4DD592AA2DC7B9
          0A65169B6E08C765C94EDC7BEEF4E2DE87E2EF4351796CB2720374FE900CFEFE
          5852BE01D81F57F1C8FA8C70DE00135CC23C642616C555BA136DC68B324FCDF8
          D4CC28B07762BB332EF77C64DFAF07DF009A698AE7901B00832C00C14D01CFBD
          A6BEB65971F9F8C50F173B1D7E6BB7AC51639F19ABAE1A79B56A7659333DDAAA
          5C224F0C01627A8CB7DA83BEFA5D751A40E953AAAD00BA9131FD2C08959E705C
          EEF4F74108D089E4DE4B222F2AF77E5F95EA50FAFB6897BE1F02447BA50E9DF7
          496E205C635167FC0CF2100E42226D6ACAB1C91BCB908E48E6BD13927257816F
          00DE40C148CCA2BB21A05287D78607002300EEFB94BBAB597C9E767D9A6A33B0
          8DCAB99823AB11469422F21CCA2C8DC833B987DF38C8924A9FD42C716B8D2CCC
          B4AB556509CE85B57A37FF3DDD7B62F009C715FE7BD2A685F2DFBBDD7B371576
          99D2DDA1A4B4FBF35CA35DAEBE0188F64A1D5AEF73F31026E2D48579883B2691
          6E84BAF6055866444271ED65D88DBF2B0725A6677011BC81EE052AE7BC229509
          02923424F1D2FAA5A84C4CAECDE98EB21DE27A49E419449E23CCDE53F159ABFF
          05432F7671A65D8DCC1AABC0A0F33C767BBAF812D3B3DB4E68B338F4A21FE46A
          FB1C09D0211C57865EB0564FFC03C150A91029DBF94AEF2204A52189F69F6F00
          A2BD5287DEFBDCE0217A03AC735379981C63FB2ABD812BD9585433ABC66C3416
          7D8498FC579D9D479B7150508436FBADAE18B0BF4067EF350DB6CD4EE49A5E4B
          420D0EB204320FB5FADD494D13B762D2CD9AAA187A11C27F4FA58FC47FDF09AF
          3181C9FC05013AEEA11752AB2FC77FBF3F77CFC3E1B3A25DAE311A8023070710
          ED053CC8DF27094266BC99FD4E84905E9AEE3333E5F4062E851B7E23BC817BEB
          D4AFF372CE3939BBF5604AD28E916F4078EE4979ADA52CFF3D9389C0DEFF8EE3
          AF991D32BEA17B0F28EE3A7CDE121817776F3D9B6E44E9D9624BFC3DD18BC28A
          4BAE3CB7D20B41A6ECF46EA5DF6F4D3707F9FD3BE0A717A3013872700007FCCA
          FFB15F20DE007103921B60571BB3E6F406D8EECA669801183D3D3DF5F8944DE8
          30FC1E2EFDFFB0DBCBAC825258AE21D4F82DD059437177A307E1037B90E5B3F8
          0C8273D85E4B565CB77B4FA5EF07A17B4FA6234E50260762B8F156BED2FF41EB
          C337007FD0853E48BEC6DD669C8873626E40BC014264D918731DE6CEDF5923BD
          C6EC3AF5135E03E4766B46878DE1AB3A000002B749444154F4CFA1E85F018DF7
          2DE41BA00BBF002BEE87B5F26ABD8ED2E2F3F81B8EACA6D24F7329FD3D781C6E
          A717F79E7D0CE2DED32B71BBF73133E81C24D7F7903B0DDF001C72B76C9F4F38
          3437C0E617BADBCD21ED20ACAD930883BDF17721769F00257F1C938D9F41E560
          51B5E46A8BAAC6579D0F8E1BE1C963C98EEEBD24F286E331DD7BF2DF875261B3
          24C9DE0571EF65D24D2815F601EDB4DBE72B78187D806F000EA39B19C34F0907
          1E12D291E3F039CC0DD04D27F71D9B69D83ECB365A96E818C753A8F0ACD39341
          874A4FDA2C2ABD9B0A9B9D76E1B8F212F1FFA14A1F336D560CBFD77F6B842BE0
          1B80237B69B8C143C4C60BE908D96FA8BCC4D3B3064F7C3D39F1FA41D8524BE1
          2E4FDA2C26F2B8D3338F20ACB8A2F41C7A11CA95E776EFFD64DE9FBCFE7C03F0
          27DF8083E0EB43BD01EECECC0D50796908582D680761969E601CD6E63B4198C4
          63979DD06671D20DDD7BCF4937788FEFE21F04379EA7E01B8083E4461C04A7E1
          AE1408FB103D02560B082966C28E5583E6B6D038B0DF80494401E7448AE9FD9D
          FE20B8C1E14E214603E0E3000ED2FBB83F4F4B508444D7D110303460530D959B
          ADB4F40E88C4E3910944C270132112D3BBC934FC9D7E7FDE9903F059311A001F
          077000EEC1C1FA91E211104444A566ECCE5156340A227C4E434196A283BABDF6
          60BDC87FF679F906E0CFBE0387CEF74BAE801E825BFC5DFED0B987E5CE342603
          10E9CDFEFFAB88C914FFDAF8D7E6505C03FE828E3032E950BC99FE39FB4628D6
          35E01B00DF00F86BE0085E03FECD3F826F7EACBB85FFFEC3CFC3F00D806F00FC
          357004AF01FFE61FC137DFDFD10FBF1D3DD67BEA1B00DF00F86BE0085E03FECD
          3F826F7EACBB85FFFEC3CF63F00D806F00FC357004AF01FFE61FC137DFDFD10F
          BF1D3DD67BEA1B00DF00F86BE0085E03FECD3F826F7EACBB85FFFEC3CF63F00D
          806F00FC357004AF81FF079A8108DDA62BB2900000000049454E44AE426082}
        ExplicitTop = 141
        ExplicitWidth = 781
        ExplicitHeight = 325
      end
      object bsSkinPaintPanel1: TbsSkinPaintPanel
        Left = 0
        Top = 23
        Width = 750
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
          Left = 129
          Top = 9
          Width = 89
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
        Width = 750
        Height = 375
        Align = alClient
        TabOrder = 1
        object gridMovimento: TcxGridDBTableView
          OnDblClick = GridProdutosDblClick
          NavigatorButtons.ConfirmDelete = False
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
        Width = 750
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
        Width = 750
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
          Height = 23
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
          Height = 23
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
          Height = 23
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
        Width = 750
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
          Width = 748
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
            Height = 18
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
            SkinData = frmPrincipal.SkinEntradaDados
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
          Width = 748
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
          Width = 748
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
        Width = 750
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
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 752
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 748
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 739
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
    Left = 369
    Top = 270
  end
  object cdsCadProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadProdutos'
    BeforeOpen = cdsCadProdutosBeforeOpen
    OnCalcFields = cdsCadProdutosCalcFields
    Left = 369
    Top = 299
  end
  object srcCadProdutos: TDataSource
    DataSet = cdsCadProdutos
    Left = 369
    Top = 327
  end
  object srcCadCtoCusto: TDataSource
    DataSet = cdsCadCtosCusto
    Left = 398
    Top = 327
  end
  object qryCadProdutos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 545
    Top = 193
  end
  object srcCadGrupos: TDataSource
    DataSet = cdsCadGrupos
    Left = 425
    Top = 327
  end
  object cdsCadGrupos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvariavel'
    Left = 425
    Top = 299
  end
  object cdsCadCtosCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvariavel'
    Left = 397
    Top = 299
  end
  object qryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 517
    Top = 193
  end
  object dspvariavel: TDataSetProvider
    DataSet = qryVariavel
    Left = 605
    Top = 206
  end
  object cdsMovEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvariavel'
    Left = 453
    Top = 299
  end
  object srcMovEstoque: TDataSource
    DataSet = cdsMovEstoque
    Left = 453
    Top = 327
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
    Left = 669
    Top = 193
  end
  object cdsMateriaPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMateriaPrima'
    Left = 481
    Top = 299
  end
  object srcMateriaPrima: TDataSource
    DataSet = cdsMateriaPrima
    Left = 481
    Top = 327
  end
  object cdsFichaTecnica: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFichaTecnica'
    Left = 509
    Top = 299
  end
  object srcFichaTecnica: TDataSource
    DataSet = cdsFichaTecnica
    Left = 509
    Top = 327
  end
  object dspFichaTecnica: TDataSetProvider
    DataSet = sqlFichaTecnica
    Left = 509
    Top = 271
  end
  object sqlFichaTecnica: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 509
    Top = 243
  end
  object dspMateriaPrima: TDataSetProvider
    DataSet = qryMateriaPrima
    Left = 482
    Top = 271
  end
  object qryMateriaPrima: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 482
    Top = 243
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 488
    Top = 193
  end
  object qrySaldos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 537
    Top = 243
  end
  object dspSaldos: TDataSetProvider
    DataSet = qrySaldos
    Left = 537
    Top = 271
  end
  object cdsSaldos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSaldos'
    Left = 537
    Top = 299
  end
  object popEstoque: TbsSkinPopupMenu
    Left = 472
    Top = 200
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
    Left = 565
    Top = 327
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 565
    Top = 299
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 565
    Top = 271
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 565
    Top = 243
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
        Component = GridProdutosColumn1
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
        Component = GridProdutosColumn2
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
        Component = GridProdutosColumn3
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
        Component = GridProdutosColumn4
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
        Component = GridProdutosData_Atu
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
        Component = GridProdutosData_cad
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
        Component = GridProdutosDescricao
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
        Component = GridProdutosOperador
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
      end>
    StorageName = 'cxPropertiesStore1'
    StorageType = stStream
    Left = 304
    Top = 296
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        HitTypes = []
        Index = 0
      end>
    Left = 392
    Top = 232
  end
  object OpenFigura: TOpenPictureDialog
    Left = 332
    Top = 241
  end
  object PopRelatorios: TbsSkinPopupMenu
    Left = 392
    Top = 208
    object Etiquetas15X501: TMenuItem
      Caption = 'Etiquetas 15X50  - 2 Colunas'
      OnClick = Etiquetas15X501Click
    end
  end
  object cdsCadFabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    OnCalcFields = cdsCadProdutosCalcFields
    Left = 593
    Top = 299
  end
  object srcCadFabricantes: TDataSource
    DataSet = cdsCadFabricantes
    Left = 593
    Top = 327
  end
  object cdsSetores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 340
    Top = 299
  end
  object srcSetores: TDataSource
    DataSet = cdsSetores
    Left = 340
    Top = 327
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
    Left = 184
    Top = 264
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
    Left = 184
    Top = 296
  end
end
