object frmCadClientes: TfrmCadClientes
  Left = 166
  Top = 167
  BorderIcons = []
  Caption = 'Cadastro e manute'#231#227'o de Clientes'
  ClientHeight = 601
  ClientWidth = 835
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
    Top = 76
    Width = 835
    Height = 525
    ActivePage = tab_Historico
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
    object Tab_Consulta: TbsSkinTabSheet
      Caption = 'Consulta'
      object bsSkinPanel1: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 833
        Height = 33
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
        object cmbtipoconsulta: TbsSkinComboBox
          Left = 8
          Top = 7
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
            'Contato'
            'Telefone')
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
        Width = 833
        Height = 468
        Align = alClient
        TabOrder = 1
        object GridClintes: TcxGridDBTableView
          OnDblClick = GridClintesDblClick
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = GridClintesCellDblClick
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
    object Tab_Cadastro: TbsSkinTabSheet
      Caption = 'Cadastro'
      object bsSkinGroupBox1: TbsSkinGroupBox
        Left = 0
        Top = 363
        Width = 833
        Height = 138
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
        Caption = 'Informa'#231#245'es Adicionais'
        Align = alBottom
        UseSkinSize = True
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
          SkinData = frmPrincipal.SkinEntradaDados
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
          SkinData = frmPrincipal.SkinEntradaDados
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
          SkinData = frmPrincipal.SkinEntradaDados
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Rota'
        end
        object bsSkinStdLabel10: TbsSkinStdLabel
          Left = 382
          Top = 62
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Vendedor'
        end
        object bsSkinStdLabel19: TbsSkinStdLabel
          Left = 379
          Top = 82
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Inscri'#231#227'o Estadual'
        end
        object bsSkinStdLabel23: TbsSkinStdLabel
          Left = 438
          Top = 109
          Width = 28
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
          Caption = 'E-mail'
        end
        object cmbStatusCliente: TbsSkinComboBox
          Left = 249
          Top = 30
          Width = 120
          Height = 20
          HintImageIndex = 0
          TabOrder = 1
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
          Height = 20
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
        object cmbCod_Atividade: TbsSkinDBLookupComboBox
          Left = 104
          Top = 56
          Width = 57
          Height = 20
          HintImageIndex = 0
          TabOrder = 2
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
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadAtividades
          OnChange = cmbNome_AtividadeChange
        end
        object chkClienteAtivo: TbsSkinCheckRadioBox
          Left = 471
          Top = 24
          Width = 89
          Height = 25
          HintImageIndex = 0
          TabOrder = 4
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
          Caption = 'Cliente Ativo'
        end
        object cmbCod_Rota: TbsSkinDBLookupComboBox
          Left = 104
          Top = 80
          Width = 57
          Height = 20
          HintImageIndex = 0
          TabOrder = 5
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
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadRotas
          OnChange = cmbNome_RotaChange
        end
        object edtNumeroPedAberto: TbsSkinSpinEdit
          Left = 472
          Top = 55
          Width = 67
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
          KeyField = 'Codigo'
          ListField = 'Codigo;Descricao'
          ListSource = srcCadFuncionarios
          OnChange = cmbCod_VendedorChange
        end
        object cmbNome_Vendedor: TbsSkinDBLookupComboBox
          Left = 168
          Top = 106
          Width = 201
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
          KeyField = 'Codigo'
          ListField = 'Descricao;Codigo'
          ListSource = srcCadFuncionarios
          OnChange = cmbNome_VendedorChange
        end
        object edtInscricaoEstadual: TbsSkinEdit
          Left = 472
          Top = 79
          Width = 122
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
          TabOrder = 10
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtEmail: TbsSkinEdit
          Left = 474
          Top = 106
          Width = 319
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
          MaxLength = 100
          ParentFont = False
          TabOrder = 11
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
      end
      object bsSkinExPanel1: TbsSkinExPanel
        Left = 136
        Top = 3
        Width = 524
        Height = 302
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
        ShowRollButton = True
        ShowCloseButton = False
        DefaultCaptionHeight = 21
        RollState = False
        RollKind = rkRollVertical
        Moveable = False
        Sizeable = False
        Caption = 'Dados Cadastrais'
        object bsSkinStdLabel1: TbsSkinStdLabel
          Left = 78
          Top = 53
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
          Left = 40
          Top = 77
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Nome Fantasia'
        end
        object bsSkinStdLabel8: TbsSkinStdLabel
          Left = 359
          Top = 29
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
          Left = 82
          Top = 151
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Bairro'
        end
        object bsSkinStdLabel3: TbsSkinStdLabel
          Left = 63
          Top = 124
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Endereco'
        end
        object bsSkinStdLabel4: TbsSkinStdLabel
          Left = 277
          Top = 151
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
          Caption = 'Cidade'
        end
        object bsSkinStdLabel6: TbsSkinStdLabel
          Left = 90
          Top = 178
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Cep'
        end
        object bsSkinStdLabel7: TbsSkinStdLabel
          Left = 185
          Top = 178
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'UF'
        end
        object bsSkinStdLabel14: TbsSkinStdLabel
          Left = 67
          Top = 207
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
        object bsSkinStdLabel15: TbsSkinStdLabel
          Left = 277
          Top = 209
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
          Caption = 'Celular'
        end
        object lblCNPJCPF: TbsSkinStdLabel
          Left = 291
          Top = 54
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
        object lblPontoReferencia: TbsSkinStdLabel
          Left = 40
          Top = 231
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Pto Referencia'
        end
        object lblrazao: TbsSkinStdLabel
          Left = 48
          Top = 99
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Raz'#227'o Social'
        end
        object bsSkinStdLabel20: TbsSkinStdLabel
          Left = 274
          Top = 178
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Contato'
        end
        object bsSkinStdLabel24: TbsSkinStdLabel
          Left = 5
          Top = 279
          Width = 106
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
          Caption = 'Sequencia de Entrega'
        end
        object bsSkinStdLabel16: TbsSkinStdLabel
          Left = 24
          Top = 257
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Endere'#231'o da Obra'
        end
        object edtNome_Fantasia: TbsSkinEdit
          Left = 117
          Top = 73
          Width = 337
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
          TabOrder = 2
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCodigo: TbsSkinEdit
          Left = 119
          Top = 49
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
          TabOrder = 0
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtData_cad: TbsSkinEdit
          Left = 433
          Top = 25
          Width = 74
          Height = 20
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          ReadOnly = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtBairro: TbsSkinEdit
          Left = 117
          Top = 146
          Width = 137
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
          TabOrder = 5
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCep: TbsSkinEdit
          Left = 117
          Top = 175
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 9
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
        object edtEndereco: TbsSkinEdit
          Left = 117
          Top = 120
          Width = 337
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
          TabOrder = 4
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCidade: TbsSkinEdit
          Left = 317
          Top = 146
          Width = 137
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
          TabOrder = 6
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
          OnExit = edtCidadeExit
        end
        object edtUf: TbsSkinEdit
          Left = 206
          Top = 175
          Width = 25
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
        object edtTelefone: TbsSkinEdit
          Left = 117
          Top = 204
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 13
          ParentFont = False
          TabOrder = 10
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCelular: TbsSkinEdit
          Left = 317
          Top = 204
          Width = 137
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
          TabOrder = 11
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtCnpjCpf: TbsSkinEdit
          Left = 349
          Top = 51
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          MaxLength = 14
          ParentFont = False
          TabOrder = 1
          ButtonImageIndex = -1
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
          Left = 117
          Top = 228
          Width = 337
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
          TabOrder = 12
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtRazao_Social: TbsSkinEdit
          Left = 117
          Top = 96
          Width = 337
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
          TabOrder = 3
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtResponsavel: TbsSkinEdit
          Left = 317
          Top = 175
          Width = 137
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
          TabOrder = 9
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtSequenciaEntrega: TbsSkinSpinEdit
          Left = 117
          Top = 276
          Width = 53
          Height = 20
          HintImageIndex = 0
          TabOrder = 14
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
          Increment = 1.000000000000000000
          EditorEnabled = True
          MaxLength = 0
        end
        object edtEnderecoObra: TbsSkinEdit
          Left = 117
          Top = 252
          Width = 337
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
          TabOrder = 15
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
      end
      object panelVeiculo: TbsSkinExPanel
        Left = 134
        Top = 305
        Width = 526
        Height = 53
        HintImageIndex = 0
        TabOrder = 2
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
        Caption = 'Dados Do Veiculo'
        object bsSkinStdLabel25: TbsSkinStdLabel
          Left = 14
          Top = 29
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
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Placa'
        end
        object bsSkinStdLabel26: TbsSkinStdLabel
          Left = 140
          Top = 29
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
        object EdtPlacaVeiculo: TbsSkinEdit
          Left = 47
          Top = 26
          Width = 82
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
          TabOrder = 0
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtDescricaoVeiculo: TbsSkinEdit
          Left = 196
          Top = 26
          Width = 325
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
    end
    object Tab_Ocorrencias: TbsSkinTabSheet
      Caption = 'Ocorr'#234'ncias'
      object cxGrid2: TcxGrid
        Left = 0
        Top = 64
        Width = 833
        Height = 437
        Align = alClient
        TabOrder = 0
        object GridOcorrencias: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
        Width = 833
        Height = 64
        HintImageIndex = 0
        TabOrder = 1
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
        Caption = 'Informe os dados da ocorr'#234'ncia'
        Align = alTop
        UseSkinSize = True
        object bsSkinDateEdit1: TbsSkinDateEdit
          Left = 9
          Top = 33
          Width = 121
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
        object EdtOcorrencia: TbsSkinEdit
          Left = 145
          Top = 33
          Width = 328
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
          MaxLength = 250
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
        object btnAdicionar: TbsSkinButton
          Left = 530
          Top = 28
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
          Caption = ' &Adicionar'
          NumGlyphs = 1
          Spacing = 1
          OnClick = btnAdicionarClick
        end
      end
    end
    object Tab_ProdutosDescontos: TbsSkinTabSheet
      Caption = 'Produtos Descontos'
      object bsSkinPanel2: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 833
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
          Width = 59
          Height = 14
          Caption = 'Desconto %'
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
          OnClick = btnAdicionaDescontoClick
        end
        object edtPerc_Desconto: TbsSkinNumericEdit
          Left = 406
          Top = 20
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
        object edtQtde_Minima: TbsSkinNumericEdit
          Left = 322
          Top = 20
          Width = 65
          Height = 20
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
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
      end
      object cxGrid5: TcxGrid
        Left = 0
        Top = 44
        Width = 833
        Height = 457
        Align = alClient
        TabOrder = 1
        object GridProdutosDescontos: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
    object Tab_VendasEServicos: TbsSkinTabSheet
      Caption = 'Vendas e Servi'#231'os'
      object cxGrid3: TcxGrid
        Left = 0
        Top = 0
        Width = 833
        Height = 501
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
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object Colum_Seqvenda: TcxGridDBColumn
            Caption = 'Venda N'#186
            DataBinding.FieldName = 'SeqVenda'
            Width = 55
          end
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
    object tab_Historico: TbsSkinTabSheet
      Caption = 'Recebido e a receber'
      DesignSize = (
        833
        501)
      object cxGrid4: TcxGrid
        Left = 0
        Top = 0
        Width = 833
        Height = 501
        Align = alClient
        TabOrder = 0
        object GridCtasReceber: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.PriorPage.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Visible = True
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Visible = True
          Navigator.Buttons.Edit.Visible = True
          Navigator.Buttons.Post.Visible = True
          Navigator.Buttons.Cancel.Visible = True
          Navigator.Buttons.Refresh.Visible = True
          Navigator.Buttons.SaveBookmark.Visible = True
          Navigator.Buttons.GotoBookmark.Visible = True
          Navigator.Buttons.Filter.Visible = True
          OnCustomDrawCell = GridCtasReceberCustomDrawCell
          DataController.DataSource = srcCtasReceber
          DataController.Summary.DefaultGroupSummaryItems = <
            item
              Format = '0.00'
              Kind = skSum
              Column = GridCtasreceberVlr_Recebido
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
              Column = GridCtasreceberVlr_Recebido
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
        Left = 594
        Top = 3
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
        Width = 833
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
          Transparent = False
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
          SkinDataName = 'edit'
          Alignment = taRightJustify
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
        Width = 833
        Height = 468
        Align = alClient
        TabOrder = 1
        object GridValidaCNPJCPF: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
        Width = 833
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
        object dtpData_Ini: TbsSkinDateEdit
          Left = 70
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
        Width = 833
        Height = 425
        Align = alClient
        TabOrder = 1
        object GrdDespesas: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
        Top = 466
        Width = 833
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
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Animais de Estima'#231#227'o'
      object bsSkinPanel5: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 833
        Height = 105
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
        Caption = 'bsSkinPanel2'
        Align = alTop
        object Label4: TLabel
          Left = 163
          Top = 21
          Width = 76
          Height = 14
          Caption = 'Nome do Animal'
        end
        object Label7: TLabel
          Left = 203
          Top = 47
          Width = 38
          Height = 14
          Caption = 'Esp'#233'cie'
        end
        object Label8: TLabel
          Left = 216
          Top = 69
          Width = 25
          Height = 14
          Caption = 'Ra'#231'a'
        end
        object Label9: TLabel
          Left = 513
          Top = 21
          Width = 17
          Height = 14
          Caption = 'Cor'
        end
        object Label10: TLabel
          Left = 462
          Top = 47
          Width = 68
          Height = 14
          Caption = 'Data de Nasc.'
        end
        object Label11: TLabel
          Left = 443
          Top = 67
          Width = 87
          Height = 14
          Caption = 'Data de Aquisi'#231#227'o'
        end
        object edtNomeAnimal: TbsSkinEdit
          Left = 247
          Top = 17
          Width = 187
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
        object btnRemoverAnimal: TbsSkinButton
          Left = 697
          Top = 51
          Width = 110
          Height = 25
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
        object btnAdicionarAnimal: TbsSkinButton
          Left = 697
          Top = 3
          Width = 110
          Height = 25
          HintImageIndex = 0
          TabOrder = 6
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
          OnClick = btnAdicionarAnimalClick
        end
        object edtEspecie: TbsSkinEdit
          Left = 247
          Top = 41
          Width = 187
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
          OnExit = edtCod_ProdutoExit
        end
        object edtRaca: TbsSkinEdit
          Left = 247
          Top = 65
          Width = 187
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
          OnExit = edtCod_ProdutoExit
        end
        object edtCor: TbsSkinEdit
          Left = 535
          Top = 17
          Width = 128
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
          TabOrder = 3
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtDataNascimento: TbsSkinDateEdit
          Left = 535
          Top = 40
          Width = 128
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
          TabOrder = 4
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object edtDataAquisicao: TbsSkinDateEdit
          Left = 535
          Top = 64
          Width = 128
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
          TabOrder = 5
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object bsSkinExPanel2: TbsSkinExPanel
          Left = 1
          Top = 1
          Width = 147
          Height = 103
          HintImageIndex = 0
          TabOrder = 8
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
          ShowRollButton = False
          ShowCloseButton = False
          DefaultCaptionHeight = 21
          RollState = False
          RollKind = rkRollVertical
          Moveable = False
          Sizeable = False
          Align = alLeft
          Caption = '        Foto do Animal'
          object imgAnimal: TImage
            Left = 1
            Top = 21
            Width = 145
            Height = 81
            Align = alClient
            Stretch = True
            OnDblClick = imgAnimalDblClick
            ExplicitLeft = -1
            ExplicitTop = 3
            ExplicitWidth = 111
            ExplicitHeight = 78
          end
        end
        object btnAlterarAnimal: TbsSkinButton
          Left = 697
          Top = 27
          Width = 110
          Height = 25
          HintImageIndex = 0
          TabOrder = 9
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
          ImageIndex = 1
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
          Caption = '    &Alterar'
          NumGlyphs = 1
          Spacing = 1
          Enabled = False
          OnClick = btnAdicionarAnimalClick
        end
        object btnImprimirAnimais: TbsSkinButton
          Left = 697
          Top = 74
          Width = 110
          Height = 25
          HintImageIndex = 0
          TabOrder = 10
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
          OnClick = btnImprimirAnimaisClick
        end
      end
      object bsSkinPageControl1: TbsSkinPageControl
        Left = 0
        Top = 105
        Width = 833
        Height = 396
        ActivePage = bsSkinTabSheet2
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
        object bsSkinTabSheet2: TbsSkinTabSheet
          Caption = 'Consulta '
          object cxGrid7: TcxGrid
            Left = 0
            Top = 0
            Width = 364
            Height = 375
            Hint = 'Duplo cick para Alterar'
            Align = alClient
            TabOrder = 0
            object cxGridDBTableView1: TcxGridDBTableView
              OnDblClick = cxGridDBTableView1DblClick
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = srcClienteAnimais
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
              Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetWindowsClassic
              object Column_Nome: TcxGridDBColumn
                Caption = 'Nome do Animal'
                DataBinding.FieldName = 'NomeAnimal'
                Width = 233
              end
              object Column_Especie: TcxGridDBColumn
                Caption = 'Esp'#233'cie'
                DataBinding.FieldName = 'Especie'
                Width = 85
              end
              object Column_Raca: TcxGridDBColumn
                Caption = 'Ra'#231'a'
                DataBinding.FieldName = 'Raca'
                Width = 97
              end
              object Column_Cor: TcxGridDBColumn
                DataBinding.FieldName = 'Cor'
                Width = 132
              end
              object Column_Data_Nascimento: TcxGridDBColumn
                Caption = 'Data Nascimento'
                DataBinding.FieldName = 'Data_Nascimento'
                Width = 141
              end
              object Column_Data_Aquisicao: TcxGridDBColumn
                Caption = 'Data Aquisicao'
                DataBinding.FieldName = 'Data_Aquisicao'
                Width = 115
              end
            end
            object cxGridLevel6: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object bsSkinPanel6: TbsSkinPanel
            Left = 364
            Top = 0
            Width = 467
            Height = 375
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
            Caption = 'bsSkinPanel6'
            Align = alRight
            object bsSkinExPanel3: TbsSkinExPanel
              Left = 1
              Top = 1
              Width = 465
              Height = 64
              HintImageIndex = 0
              TabOrder = 0
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
              Align = alTop
              Caption = 'Dados para agendamento de Evento'
              object Label5: TLabel
                Left = 5
                Top = 24
                Width = 33
                Height = 14
                Caption = 'Evento'
              end
              object Label6: TLabel
                Left = 275
                Top = 24
                Width = 73
                Height = 14
                Caption = 'Data do Evento'
              end
              object btnCadAlunos: TbsSkinSpeedButton
                Left = 391
                Top = 35
                Width = 26
                Height = 23
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
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000404040D0C0C
                  0C251313133A15151544151515451313133C0E0E0E2A07070714010101020000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000010909091A1C1C1C593131319E4343
                  43CC525252E25A5A5AEB5C5C5CEB595959E54A4A4AD3373737B0242424751010
                  1030030303080000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000A0A0A1F2D2D2D9A5C5C5CF47F7F7FFF9898
                  98FFACACACFFBCBCBCFFC2C2C2FFC2C2C2FFB1B1B1FF737373FF696969FF4A4A
                  4AD01A1A1A5B0101010300000000000000000000000000000000000000000000
                  00000000000000000000020202112C2C2CA9676767FF979797FFC1C1C1FFDDDC
                  DCFFE9E6E8FFECE7EBFFE7E1E5FFDDD9DCFFD0CFD0FFB3B3B3FF9D9D9DFFA0A0
                  A0FF858585E71414144C00000000000000000000000000000000000000000000
                  00000000000001010121434343D0777777FFC1C1C1FFFAF9FAFFFFFFFFFFECEA
                  EBFFC5D3C8FFA4C0ABFF9BB9A3FFA5B9AAFFBABEBAFFCDC7CAFFCDC7CCFFB9B8
                  B8FFC0C0C0FFBABABAFB19191969000000000000000000000000000000000000
                  000000000011484848CDA8A8A8FFEDEDEDFFFFFFFFFFCCDBCFFF6EB480FF2BA5
                  4EFF17A944FF13AA44FF14A946FF1AA94BFF26A451FF459F62FF7A9E84FFAFAB
                  ACFFC6C1C5FFCDCECDFFCBCBCBFF1313135B0000000000000000000000000000
                  00002323239CAAAAAAFFFEFDFEFFF6F5F5FF79B889FF0EA43AFF04B43EFF1AA1
                  49FF23A253FF1ABA5CFF22C869FF23C669FF22C669FF1CC363FF15B456FF369D
                  5CFFA3B2A6FFDED8DCFFDADADAFFA9A9A9EF0202022400000000000000000202
                  022F868686FBFCFBFCFFF5F4F4FF47AB64FF00B63AFF07C54EFF39915CFFACA7
                  AAFFBEB9BCFF73A48BFF16BD6EFF1ED27EFF1FCE7DFF1FCE7CFF1FCF7BFF15CC
                  6FFF17AC59FFA5BFAEFFF6EFF3FFE4E4E4FF3B3B3B9800000000000000001E1E
                  1E8EE2E2E2FFFFFEFFFF56B070FF00BB3CFF03C850FF3A9761FFC2B9BFFFE2E0
                  E1FFDFDDDEFFE1D7DCFF6CA68FFF0EC47DFF18D68CFF19D38AFF18D288FF18D2
                  83FF0FD178FF15AD5CFFCBD9CFFFFFFFFFFFA2A2A2EC010101160000001D6D6D
                  6DD7FFFFFFFFA3CBADFF00AF33FF00C749FF2E9759FFCAC1C7FFF3F2F2FFEBE9
                  EAFFE6E2E3FFDDDDDDFFDBD0D4FF5FA28AFF07C781FF12D68EFF13D28BFF12D1
                  86FF11D07FFF02CA6AFF43B274FFFFFBFEFFE8E8E8FF0D0D0D4D06060640BDBD
                  BDF5FFFBFFFF32A752FF00C13AFF23974DFFBFB8BCFFEDEBEDFFEAE7E8FFE2E6
                  E5FFD7E5E0FFF2ECEFFFE9E9E9FFDFD5D9FF52A084FF04C47DFF10D088FF0FCD
                  82FF0ECB7AFF0CCB71FF00B051FFB9D5C2FFFFFFFFFF242424701010104FEBE8
                  EAFCCDDDD0FF00A42FFF16A244FFB5B6B5FFF3EFF2FFE9E7E8FFEAE5E7FF47C5
                  8BFF16C178FFBCD8CDFFF5ECF0FFEFEEEEFFE7DDE1FF4FA382FF00BE74FF0DC7
                  7BFF0CC372FF0AC268FF00B751FF64B381FFFFFFFFFF3A3A3A8219191959FAF5
                  F9FFB1D0B8FF0FAD3EFF45AA64FFFFF8FFFFFEFBFDFFFFF5FCFF6DC697FF00B4
                  57FF01BB66FF18B872FFC4D8D0FFF1EAEDFFEDEDEDFFE1D9DCFF449C77FF00B5
                  62FF09BB65FF08B75CFF00B44CFF3AA660FFFFFFFFFF5050508F1B1B1B5BFAF5
                  F8FFAACDB3FF47B967FF20B04BFF70C78BFFECF7EFFF8BD0A5FF00A642FF05AD
                  51FF08AE59FF00AF5AFF20AF6BFFCBD8D2FFEEE8EBFFECEAEBFFDBD4D7FF3795
                  66FF00A84CFF06AD4EFF00A941FF299A4EFFFFFEFFFF5757579410101046E6E3
                  E6F8B8D2BEFF5CB975FF60C07BFF24A94CFF079C36FF019930FF039E3CFF04A0
                  43FF05A148FF05A34DFF00A149FF28A662FFD9DEDCFFEDE9EBFFECEAEBFFD0CD
                  CFFF2D8A53FF009B37FF009D33FF359751FFFFFEFFFF403F408204040424B4B2
                  B3E0D5E0D7FF71B982FF71C185FF70C085FF4EB26AFF13993BFF008F2AFF0092
                  31FF039438FF04953CFF04963FFF009337FF37A161FFE9E9E9FFEFECEEFFEFEC
                  EEFFCBC9CAFF218040FF00891FFF579B66FFFFF8FDFF17171752000000005555
                  55A0F4F4F4FF92C19CFF80C390FF7EC18EFF7DC18DFF73BC86FF49AA64FF1893
                  3CFF018728FF008627FF00882CFF018A30FF008525FF4BA367FFF8F5F8FFF5F3
                  F4FFF8F3F7FFB7C4BBFF006F12FF9EBBA3FFCBC7CBEE02020216000000000B0B
                  0B3FEAE7E9FFC6D7CAFF8FC49AFF8FC79BFF8BC498FF87C295FF87C295FF7EBD
                  8DFF5EAE73FF379B52FF1A8D3AFF058228FF007E21FF007512FF53A066FFFBFB
                  FBFFFFFFFFFF6DAE7BFF20762FFFE7E5E7FF5151519C00000000000000000000
                  0000626262B3F3F2F2FFB1CDB6FF9DCBA6FF9CCAA5FF98C8A1FF93C59EFF8FC3
                  9AFF8EC299FF8BC198FF82BC8FFF6FB27EFF5CA86EFF4CA05FFF2F9146FF8ABE
                  96FF9DCAA7FF318843FFB7C9BAFFD3D0D3F40505052800000000000000000000
                  00000202021FA1A0A1E6EBECEBFFB6D1BBFFA8CFAFFFA8CFAFFFA4CDACFF9FCA
                  A8FF9BC8A4FF96C6A0FF92C49CFF8FC299FF8CC097FF89BE94FF85BC90FF71B2
                  7EFF68A774FFBFD0C3FFEFEBEFFF242424690000000000000000000000000000
                  0000000000000D0D0D36B9B8B9EEF1F2F1FFC9DCCDFFB2D2B8FFAFD3B6FFAED3
                  B5FFAAD1B2FFA6CEAEFFA2CCAAFF9ECAA7FF9AC8A3FF93C49DFF8BBE95FF93BD
                  9BFFD1DDD4FFEAE8EAFF5A5A5A82000000000000000000000000000000000000
                  0000000000000000000011111127949494CDF6F5F6FFEAF1EBFFCDE0D0FFBCD7
                  C1FFB5D4BAFFB1D3B7FFADD1B4FFA9CEB0FFA7CCAEFFB0CFB6FFCEDFD1FFEFF0
                  EFFFD8D6D8F54040406300000000000000000000000000000000000000000000
                  0000000000000000000000000000040404094A4A4A70C7C6C7E1FBF9FBFFF7FA
                  F8FFECF2EDFFE5EEE6FFE2ECE4FFE5EEE7FFEFF3EFFFF7F6F7FFDBD9DBF67776
                  779F1B1B1B260000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000060606093838384B7979
                  7991A8A7A8BCC9C7C9D9CCCCCCDBB7B7B7C78A898AA1464647671010101A0000
                  0000000000000000000000000000000000000000000000000000}
                NumGlyphs = 1
                Spacing = 1
                OnClick = btnCadAlunosClick
              end
              object bsSkinSpeedButton1: TbsSkinSpeedButton
                Left = 423
                Top = 35
                Width = 26
                Height = 23
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
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000404040D0C0C
                  0C251313133A15151544151515451313133C0E0E0E2A07070714010101020000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000010909091A1C1C1C593131319E4343
                  43CC525252E25A5A5AEB5C5C5CEB595959E54A4A4AD3373737B0242424751010
                  1030030303080000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000A0A0A1F2D2D2D9A5C5C5CF47F7F7FFF9898
                  98FFACACACFFBCBCBCFFC2C2C2FFC2C2C2FFB1B1B1FF737373FF696969FF4A4A
                  4AD01A1A1A5B0101010300000000000000000000000000000000000000000000
                  00000000000000000000020202112C2C2CA9676767FF979797FFC1C1C1FFDDDD
                  DBFFE9E8E5FFECEBE6FFE7E6E1FFDDDCD8FFD1D0CEFFB3B3B3FF9D9D9DFFA0A0
                  A0FF858585E71414144C00000000000000000000000000000000000000000000
                  00000000000001010121434343D0777777FFC1C1C1FFFAFAF9FFFFFFFFFFECEC
                  ECFFC4C7D6FFA2A8C4FF9AA0BEFFA4A8BCFFBABBBFFFCDCCC5FFCECCC6FFB9B9
                  B8FFBFC0C0FFBABABAFB19191969000000000000000000000000000000000000
                  000000000011484848CDA8A8A8FFEDEDEDFFFFFFFFFFCBCDDFFF6A76BAFF253B
                  ABFF0E2AB1FF0626B7FF0628BAFF0C2DBBFF1937B4FF3D53ABFF7780A3FFAFAE
                  AAFFC6C5C1FFCDCDCEFFCBCBCBFF1313135B0000000000000000000000000000
                  00002323239CAAAAAAFFFEFEFDFFF6F6F7FF7780BDFF081FA5FF001FB8FF0B2F
                  CAFF1138D4FF143CDAFF143EDDFF143FDFFF123DE0FF0D38DCFF0730CBFF2F49
                  ABFFA2A5B3FFDEDDD7FFDADADAFFA9A9A9EF0202022400000000000000000202
                  022F868686FBFCFCFBFFF5F5F6FF4653AEFF0014ADFF0C2CC5FF1035D1FF123C
                  DDFF1442E6FF1545ECFF1546EEFF1647EFFF1647EFFF1647EFFF1646EFFF0C3D
                  E9FF1237C1FFA4AAC3FFF6F5EEFFE4E4E4FF3B3B3B9800000000000000001E1E
                  1E8EE2E2E2FFFFFFFFFF5661B3FF0013ACFF0C2BC3FF0E32D0FF103BDFFF1342
                  ECFF1448F6FF154AFAFF154BFBFF154BFCFF154BFCFF154BFCFF154AFBFF1449
                  F8FF0D40F2FF1438C2FFCBCEDCFFFFFFFFFFA2A2A2EC010101160000001D6D6D
                  6DD7FFFFFFFFA3A7D0FF000EA2FF0925BBFF0B2BC6FF0D34D6FF0F3CE5FF1144
                  F2FF1248FBFF134AFFFF134BFFFF134BFFFF134BFFFF134BFFFF134BFFFF1349
                  FDFF1246F7FF0435E7FF455DC1FFFFFFFBFFE8E8E8FF0D0D0D4D06060640BDBD
                  BDF5FFFFFDFF323EA6FF0017AEFF0521BCFF0627C9FF0930D9FF0B38E8FF0C40
                  F6FF0E44FFFF0E46FFFF0E46FFFF0E46FFFF0E46FFFF0E46FFFF0E46FFFF0E45
                  FFFF0E42F9FF0F3EECFF0227C5FFB9BEDAFFFFFFFFFF242424701010104FEBEB
                  E7FCCDCEE1FF02139DFF071DAAFF1B2D92FF1C3094FF1B349FFF1E3AAAFF1E3D
                  B2FF1D3FB6FF2042BAFF2144BDFF1F43BEFF1E42BEFF1E42BEFF1E42BEFF1E41
                  BAFF193EC2FF0D38E2FF0025CFFF6572BEFFFFFFFFFF3A3A3A8219191959FAFA
                  F5FFB1B4D5FF1728AAFF11239FFFCECDC8FFE4E3DBFFD4D3CCFFCDCCC5FFCBCA
                  C3FFCAC8C1FFC6C4BDFFC7C5BEFFCAC8C2FFCECCC6FFCECDC7FFCECCC6FFD4D1
                  C7FFA9ADC1FF092FD1FF0024CCFF3B4DB4FFFFFFFFFF5050508F1B1B1B5BFAF9
                  F4FFABAED2FF4753BAFF2F3DABFFD7D9E0FFFFFFFFFFFFFFFFFFFEFEFEFFF7F7
                  F7FFEFEFEFFFEBEBEBFFE7E7E7FFE5E5E5FFE4E4E4FFE8E8E8FFEEEEEDFFF8F7
                  F2FFBEC5E0FF0425C5FF001FC1FF2B3CACFFFFFFFEFF5757569410101046E6E6
                  E2F8B9BBD7FF5B65BFFF5F69BEFFDADBE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFEFEF9FFF7F6F1FFF1F0EBFFEDECE7FFE9E8E3FFE6E5E1FFF1F0
                  E6FFB0B6D4FF001BB8FF0016B4FF3643A9FFFFFFFEFF40403F8204040424B4B4
                  B1E0D5D6E3FF7279C3FF6D76C5FFC0C3E0FFE5E7F5FFD8DAF0FFC6CBEAFFC9CD
                  ECFFCDD2EFFFCED3F1FFD1D6F2FFCDD2EEFFC4C9E6FFBFC3DFFFC0C5DEFFC6C9
                  DDFF7D86C5FF0013ADFF000CA6FF575EACFFFFFEF7FF17171752000000005555
                  55A0F4F4F4FF9398CBFF8188CDFF7C83CBFF777FCAFF6E77C8FF4754BDFF1628
                  B0FF0012ABFF0010AEFF0015B2FF0119B5FF021BB6FF021AB4FF031AB2FF0319
                  AEFF0215ABFF0315A8FF000696FF9FA1C4FFCBCBC6EE02020216000000000B0B
                  0B3FEAEAE6FFC7C8DDFF9095D0FF9096D2FF8B91D1FF878DD0FF878DD0FF7D85
                  CEFF5D68C5FF3645B9FF1A2BB0FF0518AAFF0011A8FF000EA6FF000DA4FF000C
                  A2FF000C9FFF00059AFF2A2F96FFE7E7E5FF5151519C00000000000000000000
                  0000626262B3F3F3F2FFB2B4D6FF9EA2D7FF9DA2D6FF999DD5FF9499D3FF9095
                  D2FF8F95D2FF8C93D2FF838ACFFF6F78C8FF5C66C2FF4D57BBFF3F49B5FF3843
                  B1FF3640B0FF3842A7FFB8B9D0FFD3D3CEF40505052800000000000000000000
                  00000202021FA1A1A0E6EBEBEDFFB7B9DAFFA8ACDBFFA8ACDBFFA4A8D9FF9FA4
                  D8FF9BA0D6FF969CD4FF9298D3FF9096D2FF8D93D1FF8990CFFF858BCEFF7D83
                  CBFF767CC1FFC0C2D7FFEFEEE9FF242424690000000000000000000000000000
                  0000000000000D0D0D36B9B9B8EEF1F1F3FFC9CBE2FFB2B5DDFFAFB3DEFFAEB2
                  DEFFAAAEDCFFA6ABDAFFA2A7D9FF9EA3D7FF999FD6FF9398D3FF8B91CEFF9498
                  CBFFD1D2E1FFEAEAE7FF5A5A5A82000000000000000000000000000000000000
                  0000000000000000000011111127949493CDF6F6F4FFEAEBF3FFCDCFE5FFBCBF
                  DFFFB5B8DEFFB1B4DDFFADB1DCFFA9ADDAFFA7ABD7FFB0B4D9FFCED0E5FFEFEF
                  F1FFD8D8D5F54040406300000000000000000000000000000000000000000000
                  0000000000000000000000000000040404094A4A4A70C7C7C6E1FBFBF9FFF7F7
                  FAFFECECF4FFE5E5F1FFE2E3F0FFE5E6F1FFEFEFF5FFF7F6F6FFDBDBD8F67777
                  769F1B1B1B260000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000060606093838384B7979
                  7991A8A8A7BCC9C9C7D9CCCCCBDBB7B7B6C78A8A89A1464646671010101A0000
                  0000000000000000000000000000000000000000000000000000}
                NumGlyphs = 1
                Spacing = 1
                OnClick = bsSkinSpeedButton1Click
              end
              object edtEvento: TbsSkinEdit
                Left = 5
                Top = 40
                Width = 252
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
                MaxLength = 100
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
              object edtdataAgendada: TbsSkinDateEdit
                Left = 275
                Top = 40
                Width = 110
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
            end
            object bsSkinDBGrid1: TbsSkinDBGrid
              Left = 1
              Top = 65
              Width = 465
              Height = 309
              HintImageIndex = 0
              TabOrder = 1
              SkinData = frmPrincipal.SkinPrincipal
              SkinDataName = 'grid'
              Transparent = False
              WallpaperStretch = False
              UseSkinFont = True
              UseSkinCellHeight = True
              GridLineColor = clWindowText
              DefaultCellHeight = 20
              ColSizingwithLine = False
              DrawGraphicFields = False
              UseColumnsFont = False
              DefaultRowHeight = 18
              MouseWheelSupport = False
              SaveMultiSelection = False
              PickListBoxSkinDataName = 'listbox'
              PickListBoxCaptionMode = False
              Align = alClient
              DataSource = srcEventosAnimais
              PopupMenu = PopapAnimais
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clBtnText
              TitleFont.Height = 14
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Evento'
                  Width = 239
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Data_Agendada'
                  Title.Caption = 'Data Agendada'
                  Width = 85
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Data_Realizada'
                  Title.Caption = 'Realizado Dia'
                  Width = 115
                  Visible = True
                end>
            end
          end
        end
      end
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 835
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 49
        Width = 831
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 822
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
  object pnlClientesDescontos: TbsSkinPaintPanel
    Left = 0
    Top = 53
    Width = 835
    Height = 23
    HintImageIndex = 0
    TabOrder = 2
    Visible = False
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
  object dspCadClientes: TDataSetProvider
    DataSet = qryCadClientes
    Left = 736
    Top = 407
  end
  object cdsCadClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadClientes'
    Left = 736
    Top = 463
  end
  object srcCadClientes: TDataSource
    DataSet = cdsCadClientes
    Left = 736
    Top = 435
  end
  object dspVariavel: TDataSetProvider
    DataSet = qryvariavel
    Left = 709
    Top = 407
  end
  object qryvariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 708
    Top = 379
  end
  object qryCadClientes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_clientes where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 735
    Top = 379
  end
  object cdsCadAtividades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 764
    Top = 463
  end
  object srcCadAtividades: TDataSource
    DataSet = cdsCadAtividades
    Left = 764
    Top = 435
  end
  object srcPesquisa: TDataSource
    DataSet = cdspesquisa
    Left = 791
    Top = 435
  end
  object sdtsOcorrencias: TSimpleDataSet
    Aggregates = <>
    DataSet.MaxBlobSize = -1
    DataSet.Params = <>
    Params = <>
    Left = 285
    Top = 427
  end
  object srcOcorrencias: TDataSource
    DataSet = sdtsOcorrencias
    Left = 285
    Top = 455
  end
  object cdsCadRotas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 565
    Top = 427
  end
  object srcCadRotas: TDataSource
    DataSet = cdsCadRotas
    Left = 566
    Top = 455
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspvendas'
    BeforeOpen = cdsVendasBeforeOpen
    AfterOpen = cdsVendasAfterOpen
    OnCalcFields = cdsVendasCalcFields
    Left = 510
    Top = 427
  end
  object cdsItensVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    Left = 482
    Top = 427
  end
  object srcItensVendas: TDataSource
    DataSet = cdsItensVendas
    Left = 482
    Top = 455
  end
  object srcVendas: TDataSource
    DataSet = cdsVendas
    Left = 510
    Top = 455
  end
  object srcCtasReceber: TDataSource
    DataSet = cdsCtasReceber
    Left = 538
    Top = 455
  end
  object cdsCtasReceber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    BeforeOpen = cdsCtasReceberBeforeOpen
    AfterOpen = cdsCtasReceberAfterOpen
    OnCalcFields = cdsCtasReceberCalcFields
    Left = 538
    Top = 427
  end
  object qryPesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_clientes where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 791
    Top = 463
  end
  object dspPesquisa: TDataSetProvider
    DataSet = qryPesquisa
    Left = 789
    Top = 407
  end
  object cdspesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    BeforeOpen = cdspesquisaBeforeOpen
    OnCalcFields = cdspesquisaCalcFields
    Left = 789
    Top = 379
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
    Left = 325
    Top = 208
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 454
    Top = 475
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 454
    Top = 503
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    Left = 454
    Top = 427
  end
  object srcRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 454
    Top = 455
  end
  object srcCalientesDescontos: TDataSource
    DataSet = cdsClientesDescontos
    Left = 426
    Top = 455
  end
  object cdsClientesDescontos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientesDescontos'
    BeforeOpen = cdsClientesDescontosBeforeOpen
    Left = 426
    Top = 427
  end
  object dspClientesDescontos: TDataSetProvider
    DataSet = qryClientesDescontos
    Left = 426
    Top = 503
  end
  object qryClientesDescontos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 426
    Top = 475
  end
  object cdsCadProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadProdutos'
    Left = 398
    Top = 427
  end
  object srcCadProdutos: TDataSource
    DataSet = cdsCadProdutos
    Left = 398
    Top = 455
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
    Left = 693
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
    object N4ClientescomDebitoemContaCorrente1: TMenuItem
      Caption = '4 - Clientes com debito em Conta-Corrente'
      OnClick = N4ClientescomDebitoemContaCorrente1Click
    end
    object N5ClientesporVendedoreBairro1: TMenuItem
      Caption = '5 - Clientes por Vendedor e Bairro'
      OnClick = N5ClientesporVendedoreBairro1Click
    end
    object N6ClientesSemComprasamaisde60dias1: TMenuItem
      Caption = '6 - Clientes sem compras a mais de 60 dias'
      OnClick = N6ClientesSemComprasamaisde60dias1Click
    end
    object N5ClientesporVendedoreBairro2: TMenuItem
      Caption = '7 - Clientes por Rota e Bairro'
      OnClick = N5ClientesporVendedoreBairro2Click
    end
  end
  object cdsClientesDebitos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 38
    Top = 300
  end
  object srcClientesDebitos: TDataSource
    DataSet = cdsClientesDebitos
    Left = 39
    Top = 328
  end
  object srcCadFuncionarios: TDataSource
    DataSet = cdsCadFuncionarios
    Left = 370
    Top = 455
  end
  object cdsCadFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 370
    Top = 427
  end
  object qryValidaCPFCNPJ: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from T_validaCNPJCPF')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 342
    Top = 499
  end
  object dspValidaCPFCNPJ: TDataSetProvider
    DataSet = qryValidaCPFCNPJ
    Left = 342
    Top = 471
  end
  object cdsValidaCPFCNPJ: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspValidaCPFCNPJ'
    BeforeOpen = cdsClientesDescontosBeforeOpen
    Left = 342
    Top = 427
  end
  object srcValidaCPFCNPJ: TDataSource
    DataSet = cdsValidaCPFCNPJ
    Left = 342
    Top = 455
  end
  object cdsContaCorrente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    BeforeOpen = cdsContaCorrenteBeforeOpen
    OnCalcFields = cdsContaCorrenteCalcFields
    Left = 593
    Top = 427
  end
  object srcContaCorrente: TDataSource
    DataSet = cdsContaCorrente
    Left = 594
    Top = 455
  end
  object cdsTemp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    OnCalcFields = cdsContaCorrenteCalcFields
    Left = 313
    Top = 427
  end
  object qryRelcliente: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 176
    Top = 264
  end
  object dspRelCliente: TDataSetProvider
    DataSet = qryRelcliente
    Left = 168
    Top = 301
  end
  object cdsRelCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelCliente'
    Left = 224
    Top = 424
  end
  object PopupMenu1: TPopupMenu
    Left = 664
    Top = 240
    object Configurar1: TMenuItem
      Caption = 'Configurar'
      OnClick = Configurar1Click
    end
  end
  object srcClienteAnimais: TDataSource
    DataSet = cdsClienteAnimais
    Left = 257
    Top = 455
  end
  object cdsClienteAnimais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    AfterScroll = cdsClienteAnimaisAfterScroll
    OnCalcFields = cdsContaCorrenteCalcFields
    Left = 257
    Top = 427
  end
  object cdsEventosAnimais: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    OnCalcFields = cdsContaCorrenteCalcFields
    Left = 229
    Top = 427
  end
  object srcEventosAnimais: TDataSource
    DataSet = cdsEventosAnimais
    Left = 229
    Top = 455
  end
  object PopapAnimais: TPopupMenu
    Left = 560
    Top = 432
    object MenuItem1: TMenuItem
      Caption = 'Realizar Evento'
      OnClick = MenuItem1Click
    end
  end
end
