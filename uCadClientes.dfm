object frmCadClientes: TfrmCadClientes
  Left = 166
  Top = 167
  BorderIcons = []
  Caption = 'Cadastro e manute'#231#227'o de Clientes'
  ClientHeight = 511
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pagCadastro: TbsSkinPageControl
    Left = 0
    Top = 53
    Width = 837
    Height = 458
    ActivePage = bsSkinTabSheet2
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
    SkinDataName = 'tab'
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Consulta'
      object bsSkinPanel1: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 835
        Height = 33
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
        Caption = 'bsSkinPanel1'
        Align = alTop
        object cmbtipoconsulta: TbsSkinComboBox
          Left = 8
          Top = 8
          Width = 120
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
            'CNPJ/CPF'
            'Codigo'
            'Endere'#231'o'
            'Contrato')
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
          Top = 9
          Width = 277
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
          OnKeyDown = EdtPesquisaKeyDown
          OnKeyPress = EdtPesquisaKeyPress
        end
        object chkPesqTodoTexto: TbsSkinCheckRadioBox
          Left = 446
          Top = 5
          Width = 150
          Height = 25
          HintImageIndex = 0
          TabOrder = 2
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
        object btnPesquisar: TbsSkinButton
          Left = 602
          Top = 4
          Width = 125
          Height = 25
          HintImageIndex = 0
          TabOrder = 3
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
          UseSkinFontColor = False
          RepeatMode = False
          RepeatInterval = 100
          AllowAllUp = False
          TabStop = True
          CanFocused = True
          Down = False
          GroupIndex = 0
          Caption = ' &Pesquisar'
          NumGlyphs = 1
          Spacing = 1
          OnClick = btnPesquisarClick
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 33
        Width = 835
        Height = 401
        Align = alClient
        TabOrder = 1
        object GridClintes: TcxGridDBTableView
          OnDblClick = GridClintesDblClick
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcPesquisa
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = GridClintesBairro
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skCount
              Column = GridClintesBairro
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          Styles.GroupByBox = frmPrincipal.cxStyle4
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object GridClintesStatus: TcxGridDBColumn
            Caption = 'Status Cliente'
            DataBinding.FieldName = 'Nome_Status'
            Width = 120
          end
          object GridClintesCodigo: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
            Width = 59
          end
          object Contrato: TcxGridDBColumn
            DataBinding.FieldName = 'Contrato'
          end
          object GridClintesDescricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 200
          end
          object GridClintesCNPJCPF: TcxGridDBColumn
            Caption = 'C.N.P.J/C.P.F'
            DataBinding.FieldName = 'CNPJCPF'
            Width = 90
          end
          object GridClintesTelefone: TcxGridDBColumn
            DataBinding.FieldName = 'Telefone'
            Width = 70
          end
          object GridClintescelular: TcxGridDBColumn
            DataBinding.FieldName = 'celular'
            Width = 70
          end
          object GridClintesEndereco: TcxGridDBColumn
            DataBinding.FieldName = 'Endereco'
            Width = 200
          end
          object GridClintesBairro: TcxGridDBColumn
            DataBinding.FieldName = 'Bairro'
            Width = 80
          end
          object GridClintesCidade: TcxGridDBColumn
            DataBinding.FieldName = 'Cidade'
            Width = 80
          end
          object GridClintesUF: TcxGridDBColumn
            DataBinding.FieldName = 'UF'
            Width = 25
          end
          object GridClintesCep: TcxGridDBColumn
            DataBinding.FieldName = 'Cep'
            Width = 60
          end
          object GridClintescod_emp: TcxGridDBColumn
            DataBinding.FieldName = 'cod_emp'
            Visible = False
          end
          object GridClintesData_Cad: TcxGridDBColumn
            Caption = 'Cadastrado em'
            DataBinding.FieldName = 'Data_Cad'
            Width = 90
          end
          object GridClintesData_Atu: TcxGridDBColumn
            Caption = 'Atualizado em'
            DataBinding.FieldName = 'Data_Atu'
            Width = 90
          end
          object GridClintesLimite_Credito: TcxGridDBColumn
            Caption = 'Limite de Credito'
            DataBinding.FieldName = 'Limite_Credito'
            Width = 100
          end
          object GridClintesativo: TcxGridDBColumn
            Caption = 'Ativo'
            DataBinding.FieldName = 'ativo'
            Width = 50
          end
          object GridClintesCod_Atividade: TcxGridDBColumn
            Caption = 'Atividade'
            DataBinding.FieldName = 'Cod_Atividade'
            Width = 50
          end
          object GridClintesOperador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 100
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = GridClintes
        end
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Cadastro'
      object bsSkinGroupBox1: TbsSkinGroupBox
        Left = 0
        Top = 287
        Width = 835
        Height = 147
        HintImageIndex = 0
        TabOrder = 0
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
        Caption = 'Informa'#231#245'es Adicionais'
        Align = alBottom
        object bsSkinStdLabel9: TbsSkinStdLabel
          Left = 20
          Top = 36
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
          SkinDataName = 'stdlabel'
          Caption = 'Limite de Credito'
        end
        object bsSkinStdLabel11: TbsSkinStdLabel
          Left = 196
          Top = 37
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
          SkinDataName = 'stdlabel'
          Caption = 'Situa'#231#227'o'
        end
        object bsSkinStdLabel12: TbsSkinStdLabel
          Left = 54
          Top = 61
          Width = 44
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
          Caption = 'Atividade'
        end
        object bsSkinStdLabel13: TbsSkinStdLabel
          Left = 75
          Top = 87
          Width = 23
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
          Caption = 'Rota'
        end
        object bsSkinStdLabel10: TbsSkinStdLabel
          Left = 406
          Top = 61
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
          SkinDataName = 'stdlabel'
          Caption = 'Pedido em Aberto'
        end
        object bsSkinStdLabel21: TbsSkinStdLabel
          Left = 52
          Top = 108
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
          SkinDataName = 'stdlabel'
          Caption = 'Vendedor'
        end
        object bsSkinStdLabel23: TbsSkinStdLabel
          Left = 374
          Top = 111
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
          SkinDataName = 'stdlabel'
          Caption = 'Contrato'
        end
        object cmbStatusCliente: TbsSkinComboBox
          Left = 249
          Top = 30
          Width = 120
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
          Text = 'Liberado'
          Items.Strings = (
            'Liberado'
            'Cobran'#231'a'
            'Bloqueado')
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
        object edtLimiteCredito: TbsSkinNumericEdit
          Left = 104
          Top = 32
          Width = 68
          Height = 18
          Text = '0.00'
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
        object cmbCod_Atividade: TbsSkinDBLookupComboBox
          Left = 104
          Top = 56
          Width = 57
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
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListSource = srcCadAtividades
          OnChange = cmbCod_AtividadeChange
        end
        object cmbNome_Atividade: TbsSkinDBLookupComboBox
          Left = 168
          Top = 56
          Width = 201
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
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadAtividades
          OnChange = cmbNome_AtividadeChange
        end
        object chkClienteAtivo: TbsSkinCheckRadioBox
          Left = 496
          Top = 24
          Width = 89
          Height = 25
          HintImageIndex = 0
          TabOrder = 4
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
          Caption = 'Cliente Ativo'
        end
        object cmbCod_Rota: TbsSkinDBLookupComboBox
          Left = 104
          Top = 80
          Width = 57
          Height = 20
          HintImageIndex = 0
          TabOrder = 5
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
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListSource = srcCadRotas
          NullValueKey = 16449
          OnChange = cmbCod_RotaChange
        end
        object cmbNome_Rota: TbsSkinDBLookupComboBox
          Left = 168
          Top = 80
          Width = 201
          Height = 20
          HintImageIndex = 0
          TabOrder = 6
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
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadRotas
          OnChange = cmbNome_RotaChange
        end
        object edtNumeroPedAberto: TbsSkinSpinEdit
          Left = 496
          Top = 55
          Width = 82
          Height = 20
          HintImageIndex = 0
          TabOrder = 7
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
          Increment = 1.000000000000000000
          EditorEnabled = True
          MaxLength = 0
        end
        object cmbCod_Vendedor: TbsSkinDBLookupComboBox
          Left = 104
          Top = 104
          Width = 57
          Height = 20
          HintImageIndex = 0
          TabOrder = 8
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
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListSource = srcCadFuncionarios
          OnChange = cmbCod_VendedorChange
        end
        object cmbNome_Vendedor: TbsSkinDBLookupComboBox
          Left = 167
          Top = 106
          Width = 201
          Height = 20
          HintImageIndex = 0
          TabOrder = 9
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
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadFuncionarios
          OnChange = cmbNome_VendedorChange
        end
        object edtContrato: TbsSkinEdit
          Left = 419
          Top = 108
          Width = 122
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 13
          ParentFont = False
          TabOrder = 10
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
      end
      object bsSkinExPanel1: TbsSkinExPanel
        Left = 107
        Top = 12
        Width = 605
        Height = 246
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
        ShowRollButton = True
        ShowCloseButton = False
        DefaultCaptionHeight = 21
        RollState = False
        RollKind = rkRollVertical
        Moveable = False
        Sizeable = False
        Caption = 'Dados Cadastrais'
        object bsSkinStdLabel1: TbsSkinStdLabel
          Left = 118
          Top = 43
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
          SkinDataName = 'stdlabel'
          Caption = 'Codigo'
        end
        object bsSkinStdLabel5: TbsSkinStdLabel
          Left = 80
          Top = 67
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
          SkinDataName = 'stdlabel'
          Caption = 'Nome Fantasia'
        end
        object bsSkinStdLabel8: TbsSkinStdLabel
          Left = 440
          Top = 31
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
          SkinDataName = 'stdlabel'
          Caption = 'Data Cadastro'
        end
        object bsSkinStdLabel2: TbsSkinStdLabel
          Left = 122
          Top = 141
          Width = 27
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
          Caption = 'Bairro'
        end
        object bsSkinStdLabel3: TbsSkinStdLabel
          Left = 103
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
          SkinDataName = 'stdlabel'
          Caption = 'Endereco'
        end
        object bsSkinStdLabel4: TbsSkinStdLabel
          Left = 317
          Top = 141
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
          SkinDataName = 'stdlabel'
          Caption = 'Cidade'
        end
        object bsSkinStdLabel6: TbsSkinStdLabel
          Left = 130
          Top = 168
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
          SkinDataName = 'stdlabel'
          Caption = 'Cep'
        end
        object bsSkinStdLabel7: TbsSkinStdLabel
          Left = 225
          Top = 168
          Width = 14
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
          Caption = 'UF'
        end
        object bsSkinStdLabel14: TbsSkinStdLabel
          Left = 107
          Top = 197
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
          SkinDataName = 'stdlabel'
          Caption = 'Telefone'
        end
        object bsSkinStdLabel15: TbsSkinStdLabel
          Left = 317
          Top = 199
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
          SkinDataName = 'stdlabel'
          Caption = 'Celular'
        end
        object lblCNPJCPF: TbsSkinStdLabel
          Left = 229
          Top = 44
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
          SkinDataName = 'stdlabel'
          Caption = 'CNPJ/CPF'
        end
        object bsSkinStdLabel16: TbsSkinStdLabel
          Left = 78
          Top = 221
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
          SkinDataName = 'stdlabel'
          Caption = 'Pto Referencia'
        end
        object lblrazao: TbsSkinStdLabel
          Left = 88
          Top = 89
          Width = 63
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
          Caption = 'Razao Social'
        end
        object bsSkinStdLabel20: TbsSkinStdLabel
          Left = 288
          Top = 168
          Width = 62
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
          Caption = 'Responsavel'
        end
        object edtNome_Fantasia: TbsSkinEdit
          Left = 157
          Top = 63
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
        object edtCodigo: TbsSkinEdit
          Left = 159
          Top = 39
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
          SkinDataName = 'edit'
          ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 0
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtData_cad: TbsSkinEdit
          Left = 514
          Top = 26
          Width = 74
          Height = 18
          TabStop = False
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
          SkinDataName = 'edit'
          ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtBairro: TbsSkinEdit
          Left = 157
          Top = 136
          Width = 137
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
        object edtCep: TbsSkinEdit
          Left = 157
          Top = 165
          Width = 65
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 9
          ParentFont = False
          TabOrder = 6
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtEndereco: TbsSkinEdit
          Left = 157
          Top = 110
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
        object edtCidade: TbsSkinEdit
          Left = 357
          Top = 136
          Width = 137
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
          OnExit = edtCidadeExit
        end
        object edtUf: TbsSkinEdit
          Left = 246
          Top = 165
          Width = 25
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          CharCase = ecUpperCase
          ParentFont = False
          TabOrder = 7
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtTelefone: TbsSkinEdit
          Left = 157
          Top = 194
          Width = 93
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 13
          ParentFont = False
          TabOrder = 8
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCelular: TbsSkinEdit
          Left = 357
          Top = 194
          Width = 137
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 13
          ParentFont = False
          TabOrder = 9
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCnpjCpf: TbsSkinEdit
          Left = 293
          Top = 39
          Width = 105
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
          OnEnter = edtCnpjCpfEnter
          OnExit = edtCnpjCpfExit
        end
        object edtPto_Referencia: TbsSkinEdit
          Left = 155
          Top = 218
          Width = 339
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 50
          ParentFont = False
          TabOrder = 10
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtRazao_Social: TbsSkinEdit
          Left = 157
          Top = 86
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtResponsavel: TbsSkinEdit
          Left = 357
          Top = 165
          Width = 137
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
      end
    end
    object bsSkinTabSheet3: TbsSkinTabSheet
      Caption = 'Ocorr'#234'ncias'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 64
        Width = 835
        Height = 370
        Align = alClient
        TabOrder = 0
        object GridOcorrencias: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcOcorrencias
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object Colum_Data_cad: TcxGridDBColumn
            Caption = 'Cadastrado Em'
            DataBinding.FieldName = 'Data_Cad'
            Width = 100
          end
          object Colum_Operador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 80
          end
          object Colum_Ocorrencia: TcxGridDBColumn
            DataBinding.FieldName = 'Ocorrencia'
            Width = 500
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = GridOcorrencias
        end
      end
      object bsSkinGroupBox2: TbsSkinGroupBox
        Left = 0
        Top = 0
        Width = 835
        Height = 64
        HintImageIndex = 0
        TabOrder = 1
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
        Caption = 'Informe os dados da ocorr'#234'ncia'
        Align = alTop
        object bsSkinDateEdit1: TbsSkinDateEdit
          Left = 9
          Top = 33
          Width = 121
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
          SkinDataName = 'buttonedit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object EdtOcorrencia: TbsSkinEdit
          Left = 145
          Top = 33
          Width = 328
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
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 250
          ParentFont = False
          TabOrder = 1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object btnAdicionar: TbsSkinButton
          Left = 530
          Top = 28
          Width = 110
          Height = 25
          HintImageIndex = 0
          TabOrder = 2
          SkinDataName = 'button'
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
          Caption = ' &Adicionar'
          NumGlyphs = 1
          Spacing = 1
          OnClick = btnAdicionarClick
        end
      end
    end
    object bsSkinTabSheet4: TbsSkinTabSheet
      Caption = 'Produtos Descontos'
      object bsSkinPanel2: TbsSkinPanel
        Left = 0
        Top = 23
        Width = 835
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
        Caption = 'bsSkinPanel2'
        Align = alTop
        object Label1: TLabel
          Left = 6
          Top = 3
          Width = 85
          Height = 14
          Caption = 'Informe o Produto'
        end
        object Label2: TLabel
          Left = 322
          Top = 3
          Width = 55
          Height = 14
          Caption = 'Quantidade'
        end
        object Label3: TLabel
          Left = 406
          Top = 4
          Width = 46
          Height = 14
          Caption = 'Desconto'
        end
        object cmbNome_Produto: TbsSkinDBLookupComboBox
          Left = 76
          Top = 20
          Width = 240
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
          KeyField = 'codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadProdutos
          OnChange = cmbNome_ProdutoChange
        end
        object edtCod_Produto: TbsSkinEdit
          Left = 6
          Top = 20
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
        object btnRemoverDesconto: TbsSkinButton
          Left = 602
          Top = 13
          Width = 110
          Height = 25
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
          OnClick = btnRemoverDescontoClick
        end
        object btnAdicionaDesconto: TbsSkinButton
          Left = 486
          Top = 13
          Width = 110
          Height = 25
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
          OnClick = btnAdicionaDescontoClick
        end
        object edtPerc_Desconto: TbsSkinNumericEdit
          Left = 406
          Top = 20
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
        object edtQtde_Minima: TbsSkinNumericEdit
          Left = 322
          Top = 20
          Width = 65
          Height = 18
          Text = '0'
          Increment = 1.000000000000000000
          SupportUpDownKeys = False
          Alignment = taRightJustify
          UseSkinFont = True
          ValueType = vtInteger
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = 14
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = []
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
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
      end
      object pnlClientesDescontos: TbsSkinPaintPanel
        Left = 0
        Top = 0
        Width = 835
        Height = 23
        HintImageIndex = 0
        TabOrder = 1
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
        object lblNomeCliente: TbsSkinStdLabel
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
      object cxGrid5: TcxGrid
        Left = 0
        Top = 67
        Width = 835
        Height = 367
        Align = alClient
        TabOrder = 2
        object GridProdutosDescontos: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcCalientesDescontos
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
          object GridProdutosDescontosColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Cod_Produto'
          end
          object GridProdutosDescontosColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 250
          end
          object GridProdutosDescontosColumn3: TcxGridDBColumn
            Caption = 'Qtde. Minima'
            DataBinding.FieldName = 'Qtde_Minima'
            Width = 72
          end
          object GridProdutosDescontosColumn4: TcxGridDBColumn
            Caption = 'Desconto'
            DataBinding.FieldName = 'Perc_Desconto'
            Width = 60
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = GridProdutosDescontos
        end
      end
    end
    object bsSkinTabSheet5: TbsSkinTabSheet
      Caption = 'Vendas e Servi'#231'os'
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 835
        Height = 434
        Align = alClient
        TabOrder = 0
        object GrdVendas: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
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
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object Colum_NomeStatus: TcxGridDBColumn
            Caption = 'Situacao'
            DataBinding.FieldName = 'Nome_Status'
            Width = 70
          end
          object colum_Situacao: TcxGridDBColumn
            DataBinding.FieldName = 'Tipo'
          end
          object colum_Controle: TcxGridDBColumn
            Caption = 'N'#186' Controle'
            DataBinding.FieldName = 'controle'
            Width = 66
          end
          object Colum_Cod_Aluno: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'cod_Cliente'
            Width = 50
          end
          object Colum_Descricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 200
          end
          object GrdVendasColumn1: TcxGridDBColumn
            Caption = 'Nome do Vendedor'
            DataBinding.FieldName = 'Nome_Vendedor'
            Width = 171
          end
          object Colum_Data_Venda: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'Data_Venda'
            Width = 100
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
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 80
          end
          object Colum_Seqvenda: TcxGridDBColumn
            Caption = 'Venda N'#186
            DataBinding.FieldName = 'SeqVenda'
            Width = 55
          end
        end
        object GrdItensVendas: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcItensVendas
          DataController.DetailKeyFieldNames = 'Seqvenda'
          DataController.Filter.Active = True
          DataController.KeyFieldNames = 'seqvenda'
          DataController.MasterKeyFieldNames = 'Seqvenda'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
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
        object cxGridLevel2: TcxGridLevel
          GridView = GrdVendas
          object cxGrid1Level2: TcxGridLevel
            GridView = GrdItensVendas
          end
        end
      end
    end
    object bsSkinTabSheet6: TbsSkinTabSheet
      Caption = 'Recebido e a receber'
      DesignSize = (
        835
        434)
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 835
        Height = 434
        Align = alClient
        TabOrder = 0
        object GridCtasReceber: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          NavigatorButtons.First.Visible = True
          NavigatorButtons.PriorPage.Visible = True
          NavigatorButtons.Prior.Visible = True
          NavigatorButtons.Next.Visible = True
          NavigatorButtons.NextPage.Visible = True
          NavigatorButtons.Last.Visible = True
          NavigatorButtons.Insert.Visible = True
          NavigatorButtons.Append.Visible = False
          NavigatorButtons.Delete.Visible = True
          NavigatorButtons.Edit.Visible = True
          NavigatorButtons.Post.Visible = True
          NavigatorButtons.Cancel.Visible = True
          NavigatorButtons.Refresh.Visible = True
          NavigatorButtons.SaveBookmark.Visible = True
          NavigatorButtons.GotoBookmark.Visible = True
          NavigatorButtons.Filter.Visible = True
          OnCustomDrawCell = GridCtasReceberCustomDrawCell
          DataController.DataSource = srcCtasReceber
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = GridCtasRecebervlr_Areceber
              DisplayText = '0'
            end
            item
              Format = '0'
              Kind = skCount
              Column = GridCtasReceberseqvenda
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = GridCtasRecebervlr_Areceber
              DisplayText = '0.00'
              Sorted = True
            end
            item
              Format = '0'
              Kind = skCount
              Column = GridCtasReceberseqvenda
              DisplayText = '0'
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Appending = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          Styles.Selection = frmPrincipal.cxStyle15
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object colum_status: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'Nome_Status'
          end
          object GridCtasReceberDocumento: TcxGridDBColumn
            DataBinding.FieldName = 'Documento'
            Width = 72
          end
          object GridCtasReceberColumn1: TcxGridDBColumn
            AlternateCaption = 'Controle'
            DataBinding.FieldName = 'Controle'
          end
          object GridCtasReceberCod_Cliente: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'Cod_Cliente'
            Width = 50
          end
          object GrifCtasreceberDescricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 150
          end
          object GridCtasReceberColumn2: TcxGridDBColumn
            Caption = 'Nome do Vendedor'
            DataBinding.FieldName = 'Nome_Vendedor'
            Width = 139
          end
          object GridCtasReceberData_Emissao: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'Data_Emissao'
            Width = 70
          end
          object GridCtasReceberData_Vencimento: TcxGridDBColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'Data_Vencimento'
            Width = 80
          end
          object Columm_Dias: TcxGridDBColumn
            DataBinding.FieldName = 'Dias'
            Width = 50
          end
          object Columm_Data_Pagamento: TcxGridDBColumn
            Caption = 'Data de Pagamento'
            DataBinding.FieldName = 'Data_Pagamento'
            Width = 120
          end
          object GridCtasRecebervlr_Areceber: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'vlr_Areceber'
            Width = 70
          end
          object GridCtasreceberVlr_Recebido: TcxGridDBColumn
            Caption = 'Valor Recebido'
            DataBinding.FieldName = 'vlr_Recebido'
            Width = 100
          end
          object GridCtasReceberHistorico: TcxGridDBColumn
            DataBinding.FieldName = 'Historico'
            Width = 150
          end
          object GridCtasReceberData_Atu: TcxGridDBColumn
            Caption = 'Atualizado Em'
            DataBinding.FieldName = 'Data_Atu'
            Width = 110
          end
          object GridCtasReceberseqvenda: TcxGridDBColumn
            Caption = 'Venda N'#186
            DataBinding.FieldName = 'seqvenda'
            Width = 60
          end
          object GridCtasReceberOperador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 100
          end
          object GridCtasReceberData_Cad: TcxGridDBColumn
            DataBinding.FieldName = 'Data_Cad'
            Visible = False
          end
          object GridCtasRecebersequencia: TcxGridDBColumn
            DataBinding.FieldName = 'sequencia'
            Visible = False
          end
          object GridCtasReceberCod_FormaPagamento: TcxGridDBColumn
            DataBinding.FieldName = 'Cod_FormaPagamento'
            Visible = False
          end
          object GridCtasReceberCod_emp: TcxGridDBColumn
            DataBinding.FieldName = 'Cod_emp'
            Visible = False
          end
          object gridCtasreceberVlr_Desconto: TcxGridDBColumn
            Caption = 'Desconto'
            DataBinding.FieldName = 'vlr_Desconto'
            Width = 70
          end
          object GridCtasreceberVlr_Comissao: TcxGridDBColumn
            Caption = 'Comissao'
            DataBinding.FieldName = 'Vlr_Comissao'
            Width = 70
          end
          object GridCtasReceberVlr_Devolvido: TcxGridDBColumn
            Caption = 'Valor Devolvido'
            DataBinding.FieldName = 'Vlr_Devolvido'
            Width = 100
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = GridCtasReceber
        end
      end
      object pnlBloqueado: TPanel
        Left = 596
        Top = -1
        Width = 236
        Height = 30
        Anchors = [akRight, akBottom]
        Caption = 'O Clientes Esta Bloqueado'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object bsSkinTabSheet7: TbsSkinTabSheet
      Caption = 'Brindes'
    end
    object bsSkinTabSheet8: TbsSkinTabSheet
      Caption = 'Valida CPF / CNPJ'
      object bsSkinPanel3: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 835
        Height = 33
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
        Caption = 'bsSkinPanel1'
        Align = alTop
        object bsSkinStdLabel17: TbsSkinStdLabel
          Left = 3
          Top = 11
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
          SkinDataName = 'stdlabel'
          Caption = 'CNPJ/CPF'
        end
        object bsSkinStdLabel18: TbsSkinStdLabel
          Left = 199
          Top = 11
          Width = 49
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
          Caption = 'Solicitante'
        end
        object cmbNome_Funcionario: TbsSkinDBLookupComboBox
          Left = 312
          Top = 6
          Width = 265
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
          ListSource = srcCadFuncionarios
          OnChange = cmbNome_FuncionarioChange
        end
        object EdtPesq_cnpjcpf: TbsSkinEdit
          Left = 61
          Top = 6
          Width = 132
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
          OnKeyDown = EdtPesq_cnpjcpfKeyDown
        end
        object btnPesquisa_CNPJCPF: TbsSkinButton
          Left = 596
          Top = 5
          Width = 125
          Height = 25
          HintImageIndex = 0
          TabOrder = 3
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
          UseSkinFontColor = False
          RepeatMode = False
          RepeatInterval = 100
          AllowAllUp = False
          TabStop = True
          CanFocused = True
          Down = False
          GroupIndex = 0
          Caption = ' &Pesquisar'
          NumGlyphs = 1
          Spacing = 1
          OnClick = btnPesquisa_CNPJCPFClick
        end
        object edtCod_Funcionario: TbsSkinEdit
          Left = 254
          Top = 6
          Width = 52
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
          SkinDataName = 'edit'
          Alignment = taRightJustify
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
          OnExit = edtCod_FuncionarioExit
        end
        object cmbCod_Funcionario: TbsSkinDBLookupComboBox
          Left = 312
          Top = 3
          Width = 22
          Height = 20
          HintImageIndex = 0
          TabOrder = 4
          Visible = False
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
      end
      object cxGrid6: TcxGrid
        Left = 0
        Top = 33
        Width = 835
        Height = 401
        Align = alClient
        TabOrder = 1
        object GridValidaCNPJCPF: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcValidaCPFCNPJ
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object GridValidaCNPJCPFSequencia: TcxGridDBColumn
            Caption = 'Cod. Pesquisa'
            DataBinding.FieldName = 'Sequencia'
            Width = 80
          end
          object GridValidaCNPJCPFOperador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 102
          end
          object GridValidaCNPJCPFSolicitante: TcxGridDBColumn
            DataBinding.FieldName = 'Solicitante'
            Width = 150
          end
          object GridValidaCNPJCPFData_Cad: TcxGridDBColumn
            DataBinding.FieldName = 'Data_Cad'
            Visible = False
            Width = 166
          end
          object GridValidaCNPJCPFcnpjcpf: TcxGridDBColumn
            Caption = 'CPF / CNPJ Consultado'
            DataBinding.FieldName = 'cnpjcpf'
            Width = 120
          end
          object GridValidaCNPJCPFCod_Solicitante: TcxGridDBColumn
            Caption = 'Solicitante'
            DataBinding.FieldName = 'Cod_Solicitante'
            Visible = False
            Width = 150
          end
          object GridValidaCNPJCPFOcorrencia: TcxGridDBColumn
            DataBinding.FieldName = 'Ocorrencia'
            Width = 300
          end
          object GridValidaCNPJCPFData_Mov: TcxGridDBColumn
            Caption = 'Data Consulta'
            DataBinding.FieldName = 'Data_Mov'
            Width = 80
          end
          object GridValidaCNPJCPFCod_Cliente: TcxGridDBColumn
            Caption = 'Codigo'
            DataBinding.FieldName = 'Cod_Cliente'
            Width = 40
          end
          object GridValidaCNPJCPFDescricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 150
          end
        end
        object cxGridLevel5: TcxGridLevel
          GridView = GridValidaCNPJCPF
        end
      end
    end
    object bsSkinTabSheet9: TbsSkinTabSheet
      Caption = 'Conta Corrente'
      object PanelConsulta: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 835
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
        Caption = 'PanelConsulta'
        Align = alTop
        object AtualizaRec: TbsSkinSpeedButton
          Left = 503
          Top = 7
          Width = 151
          Height = 24
          HintImageIndex = 0
          SkinDataName = 'bigtoolbutton'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          DefaultWidth = 0
          DefaultHeight = 0
          UseSkinFont = True
          CheckedMode = False
          UseSkinSize = False
          UseSkinFontColor = True
          WidthWithCaption = 0
          WidthWithoutCaption = 0
          ImageIndex = 0
          RepeatMode = False
          RepeatInterval = 100
          Transparent = False
          Flat = False
          AllowAllUp = False
          Down = False
          GroupIndex = 0
          Caption = 'Atualizar'
          ShowCaption = True
          Glyph.Data = {
            360C0000424D360C000000000000360800002800000010000000100000000100
            20000000000000040000000000000000000000010000000000001C6A1C001C73
            1C0016841C001C841C001C981C001C732300237323001C7B2300237B23001C84
            23001C8F23001CA1230023732A00237B2A002A7B2A0023842A001C8F2A00238F
            2A001CA12A0023A12A002A7B3100317B310023843100238F31002A8F31002398
            310023AB31002A843800388438002A8F38002A98380023AB38002AAB3800408F
            4000319840002AA1400031A140002AB64000408F4800488F480031A1480031AB
            48002AB6480031B64800488F500038AB500038B6500031C05000508F580038B6
            580031C0580038C0580040C058005898600060A1600038C0600040C0600038CA
            600040CA600060986A0038CA6A0040CA6A0048CA6A0040D46A006AA1730040D4
            730048D4730048E0730050E0730050E07B0058E07B0050EA7B0058EA840058F4
            840058F48F0060F48F0060FF8F00FF00FF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0023842A00408F
            4800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006AA173002A8F
            3800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003198400060F4
            8F003198400060986A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0031A1480058F4
            840058E07B001C732300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
            6000237B2A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006AA1730058EA
            840058F4840050E07300488F4800FF00FF00FF00FF00FF00FF00FF00FF0060A1
            600038C0580023843100FF00FF00FF00FF00FF00FF00408F480050E07B0058EA
            840058EA840058F484002A7B3100FF00FF00FF00FF00FF00FF00FF00FF0060A1
            600038C0580038C0600023843100FF00FF00237B2A0040C0600050E07B0050E0
            7B0058EA840058EA84002A7B3100FF00FF00FF00FF00FF00FF00FF00FF0060A1
            600038C0580038C0580038B658001C6A1C0038B6500048D4730048E0730050E0
            7B0050E07B0050E07B002A7B3100FF00FF00FF00FF00FF00FF00FF00FF0060A1
            600031B6480031C0500038C0580038C0600040CA6A0040CA6A0048D4730048D4
            730050E07B0031984000488F4800FF00FF00FF00FF00FF00FF00FF00FF0060A1
            600031B6480031B6480038C0580038C0580040CA6A0040CA6A0040D46A0048D4
            730040C06000237B2A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
            60002AAB38002AB6400031B6480031C0500038C0580038C0600040CA6A0040CA
            6A002A7B3100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
            60002AAB38002AAB380031B6480031B6480038C0580038C0580038CA600031A1
            4800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
            600023A12A0023AB31002AAB38002AB6400031B6480031C0500038C0580038C0
            60001C732300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
            600023A12A0023A12A002AAB38002AAB380031B6480031B6480031C0500038C0
            58002A9838002A7B3100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0060A1
            60001C981C001CA1230023A12A0023AB31002AAB38002AB6400031B6480031C0
            500038C0580038C058002A7B3100FF00FF00FF00FF00FF00FF00FF00FF0060A1
            60001C841C001C841C001C8423001C842300238F2A00238F2A00238F3100238F
            31002A9838002A983800237B2A0023732A00FF00FF00FF00FF00}
          NumGlyphs = 1
          Spacing = 1
          OnClick = AtualizaRecClick
        end
        object lblTurma: TbsSkinStdLabel
          Left = 169
          Top = 12
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
          SkinDataName = 'stdlabel'
          Caption = 'Ate.'
        end
        object dtpData_Fim: TbsSkinDateEdit
          Left = 197
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
          SkinDataName = 'buttonedit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 10
          ParentFont = False
          TabOrder = 0
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object dtpData_Ini: TbsSkinDateEdit
          Left = 70
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
        object cmbPeriodo: TbsSkinComboBox
          Left = 296
          Top = 9
          Width = 180
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
      end
      object GridMovCaixa: TcxGrid
        Left = 0
        Top = 41
        Width = 835
        Height = 358
        Align = alClient
        TabOrder = 1
        object GrdDespesas: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcContaCorrente
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = Colum_Vlr_Credito
              Sorted = True
            end>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = Colum_Vlr_Credito
            end
            item
              Format = ',0.00'
              Kind = skSum
              Column = Column_Vlr_Debito
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.FooterMultiSummaries = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          Styles.Group = frmPrincipal.cxStyle5
          Styles.GroupByBox = frmPrincipal.cxStyle4
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object colum_NomeD_C: TcxGridDBColumn
            Caption = 'Tipo Lan.'
            DataBinding.FieldName = 'NomeD_C'
            Width = 80
          end
          object Colum_Data: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'Data_Lancamento'
            Width = 80
          end
          object Colum_Historico: TcxGridDBColumn
            DataBinding.FieldName = 'Historico'
            Width = 215
          end
          object Colum_Vlr_Credito: TcxGridDBColumn
            Caption = 'Credito'
            DataBinding.FieldName = 'Vlr_Credito'
            Width = 70
          end
          object Column_Vlr_Debito: TcxGridDBColumn
            Caption = 'Debito'
            DataBinding.FieldName = 'Vlr_Debito'
            Width = 70
          end
          object Column_Saldo: TcxGridDBColumn
            DataBinding.FieldName = 'Vlr_Saldo'
            Width = 70
          end
        end
        object GridMovCaixaLevel1: TcxGridLevel
          GridView = GrdDespesas
        end
      end
      object bsSkinPanel4: TbsSkinPanel
        Left = 0
        Top = 399
        Width = 835
        Height = 35
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
        Caption = 'bsSkinPanel4'
        Align = alBottom
        object bsSkinStdLabel22: TbsSkinStdLabel
          Left = 14
          Top = 5
          Width = 155
          Height = 24
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clNavy
          DefaultFont.Height = -19
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = [fsBold]
          SkinDataName = 'stdlabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Caption = 'Saldo do Cliente'
          ParentFont = False
        end
        object lblSaldo: TbsSkinStdLabel
          Left = 393
          Top = 9
          Width = 80
          Height = 24
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clNavy
          DefaultFont.Height = -19
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = [fsBold]
          SkinDataName = 'stdlabel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Caption = 'Devedor'
          ParentFont = False
        end
        object edtSaldo: TEditN
          Left = 484
          Top = 1
          Width = 101
          Height = 32
          TabStop = False
          Color = clInfoBk
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          Text = '0,00'
          ColorOnFocus = clInfoBk
          ColorOnNotFocus = clInfoBk
          FontColorOnFocus = clRed
          FontColorOnNotFocus = clRed
          FontColorOnOverWrite = clRed
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
      end
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 837
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 49
        Width = 833
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 824
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
      object btnexcluir: TbsSkinSpeedButton
        Left = 140
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
        OnClick = btnexcluirClick
        ExplicitLeft = 170
        ExplicitTop = 12
      end
      object btnalterar: TbsSkinSpeedButton
        Left = 70
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
        OnClick = btnalterarClick
        ExplicitLeft = 114
        ExplicitTop = 12
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
        Caption = '&Incluir'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnincluirClick
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 613
        Top = 0
        Width = 116
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -1
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 401
        Top = 0
        Width = 72
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -1
      end
      object BtnImprimir: TbsSkinMenuSpeedButton
        Left = 321
        Top = 0
        Width = 80
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
        ImageIndex = 6
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = ' Imprimir'
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
        ExplicitLeft = 231
        ExplicitTop = 12
      end
      object btnFechar: TbsSkinSpeedButton
        Left = 729
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
        ExplicitLeft = 543
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 543
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
        ExplicitLeft = 345
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object btnok: TbsSkinSpeedButton
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
        ExplicitLeft = 368
        ExplicitTop = 12
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 210
        Top = 0
        Width = 111
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -1
      end
    end
  end
  object dspCadClientes: TDataSetProvider
    DataSet = qryCadClientes
    Left = 568
    Top = 303
  end
  object cdsCadClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadClientes'
    Left = 568
    Top = 359
  end
  object srcCadClientes: TDataSource
    DataSet = cdsCadClientes
    Left = 568
    Top = 331
  end
  object dspVariavel: TDataSetProvider
    DataSet = qryvariavel
    Left = 541
    Top = 303
  end
  object qryvariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 540
    Top = 275
  end
  object qryCadClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_clientes where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 567
    Top = 275
  end
  object cdsCadAtividades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 596
    Top = 359
  end
  object srcCadAtividades: TDataSource
    DataSet = cdsCadAtividades
    Left = 596
    Top = 331
  end
  object srcPesquisa: TDataSource
    DataSet = cdspesquisa
    Left = 623
    Top = 331
  end
  object sdtsOcorrencias: TSimpleDataSet
    Aggregates = <>
    Connection = frmPrincipal.dbxPrincipal
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 648
    Top = 359
  end
  object srcOcorrencias: TDataSource
    DataSet = sdtsOcorrencias
    Left = 647
    Top = 331
  end
  object cdsCadRotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 421
    Top = 379
  end
  object srcCadRotas: TDataSource
    DataSet = cdsCadRotas
    Left = 422
    Top = 407
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvendas'
    BeforeOpen = cdsVendasBeforeOpen
    AfterOpen = cdsVendasAfterOpen
    OnCalcFields = cdsVendasCalcFields
    Left = 366
    Top = 379
  end
  object cdsItensVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    Left = 338
    Top = 379
  end
  object srcItensVendas: TDataSource
    DataSet = cdsItensVendas
    Left = 338
    Top = 407
  end
  object srcVendas: TDataSource
    DataSet = cdsVendas
    Left = 366
    Top = 407
  end
  object srcCtasReceber: TDataSource
    DataSet = cdsCtasReceber
    Left = 394
    Top = 407
  end
  object cdsCtasReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    BeforeOpen = cdsCtasReceberBeforeOpen
    AfterOpen = cdsCtasReceberAfterOpen
    OnCalcFields = cdsCtasReceberCalcFields
    Left = 394
    Top = 379
  end
  object qryPesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_clientes where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 623
    Top = 359
  end
  object dspPesquisa: TDataSetProvider
    DataSet = qryPesquisa
    Left = 621
    Top = 303
  end
  object cdspesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    BeforeOpen = cdspesquisaBeforeOpen
    OnCalcFields = cdspesquisaCalcFields
    Left = 621
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
    Left = 309
    Top = 344
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 310
    Top = 323
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 310
    Top = 351
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
  object srcCalientesDescontos: TDataSource
    DataSet = cdsClientesDescontos
    Left = 282
    Top = 407
  end
  object cdsClientesDescontos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientesDescontos'
    BeforeOpen = cdsClientesDescontosBeforeOpen
    Left = 282
    Top = 379
  end
  object dspClientesDescontos: TDataSetProvider
    DataSet = qryClientesDescontos
    Left = 282
    Top = 351
  end
  object qryClientesDescontos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 282
    Top = 323
  end
  object cdsCadProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadProdutos'
    Left = 254
    Top = 379
  end
  object srcCadProdutos: TDataSource
    DataSet = cdsCadProdutos
    Left = 254
    Top = 407
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 680
    Top = 281
  end
  object cdsPesquisaDebito: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    Left = 733
    Top = 339
  end
  object bsSkinPopupMenu1: TbsSkinPopupMenu
    Left = 346
    Top = 28
    object Clientes1: TMenuItem
      Caption = '1 - Clientes Bloqueados'
      OnClick = Clientes1Click
    end
    object ClientesSemCompras1: TMenuItem
      Caption = '2 - Clientes Liberados Sem Debito'
      OnClick = ClientesSemCompras1Click
    end
    object N3ExtratodeContaCorrente1: TMenuItem
      Caption = '3 - Extrato de Conta Corrente'
    end
  end
  object cdsClientesDebitos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 62
    Top = 188
  end
  object srcClientesDebitos: TDataSource
    DataSet = cdsClientesDebitos
    Left = 63
    Top = 216
  end
  object srcCadFuncionarios: TDataSource
    DataSet = cdsCadFuncionarios
    Left = 226
    Top = 407
  end
  object cdsCadFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 226
    Top = 379
  end
  object qryValidaCPFCNPJ: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from T_validaCNPJCPF')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 198
    Top = 323
  end
  object dspValidaCPFCNPJ: TDataSetProvider
    DataSet = qryValidaCPFCNPJ
    Left = 198
    Top = 351
  end
  object cdsValidaCPFCNPJ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValidaCPFCNPJ'
    BeforeOpen = cdsClientesDescontosBeforeOpen
    Left = 198
    Top = 379
  end
  object srcValidaCPFCNPJ: TDataSource
    DataSet = cdsValidaCPFCNPJ
    Left = 198
    Top = 407
  end
  object cdsContaCorrente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    BeforeOpen = cdsContaCorrenteBeforeOpen
    OnCalcFields = cdsContaCorrenteCalcFields
    Left = 449
    Top = 379
  end
  object srcContaCorrente: TDataSource
    DataSet = cdsContaCorrente
    Left = 450
    Top = 407
  end
  object cdsTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    OnCalcFields = cdsContaCorrenteCalcFields
    Left = 169
    Top = 379
  end
end
