object frmCtasReceber: TfrmCtasReceber
  Left = 145
  Top = 161
  BorderIcons = []
  Caption = 'Cadastro e Manuten'#231#227'o de contas a receber'
  ClientHeight = 470
  ClientWidth = 737
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
  object pagCadastro: TbsSkinPageControl
    Left = 0
    Top = 53
    Width = 737
    Height = 417
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
      object cxGrid1: TcxGrid
        Left = 0
        Top = 176
        Width = 735
        Height = 217
        Align = alClient
        PopupMenu = MenuGrid
        TabOrder = 1
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
          OnCellDblClick = GridCtasReceberCellDblClick
          OnCustomDrawCell = GridCtasReceberCustomDrawCell
          DataController.DataSource = srcPesquisa
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
          Styles.GroupByBox = frmPrincipal.cxStyle4
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object GridCtasReceberseqvenda: TcxGridDBColumn
            Caption = 'Venda N'#186
            DataBinding.FieldName = 'seqvenda'
            Width = 60
          end
          object Column_Nome_Status: TcxGridDBColumn
            Caption = 'Situa'#231#227'o'
            DataBinding.FieldName = 'Nome_Status'
            Width = 77
          end
          object GridCtasReceberDocumento: TcxGridDBColumn
            DataBinding.FieldName = 'Documento'
            Width = 73
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
          object GridCtasReceberData_Emissao: TcxGridDBColumn
            Caption = 'Emiss'#227'o'
            DataBinding.FieldName = 'Data_Emissao'
            Width = 70
          end
          object Data_Vencimento: TcxGridDBColumn
            Caption = 'Vencimento'
            DataBinding.FieldName = 'Data_Vencimento'
            Width = 80
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
          object Nome_FormaPagamento: TcxGridDBColumn
            Caption = 'Forma de Pagamento'
            DataBinding.FieldName = 'Nome_FormaPagamento'
            Width = 136
          end
          object GridCtasReceberData_Atu: TcxGridDBColumn
            Caption = 'Atualizado Em'
            DataBinding.FieldName = 'Data_Atu'
            Width = 110
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
          object Cod_FormaPagamento: TcxGridDBColumn
            Caption = 'Cod FormaPagamento'
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
          object GridCtasReceberColumn2: TcxGridDBColumn
            Caption = 'Vlr. Perdido'
            DataBinding.FieldName = 'vlr_Perdido'
          end
          object Columm_Nome_Rota: TcxGridDBColumn
            DataBinding.FieldName = 'Nome_Rota'
            Width = 150
          end
        end
        object TabTipoPagamento: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = srcTipoPagamento
          DataController.DetailKeyFieldNames = 'Sequencia'
          DataController.KeyFieldNames = 'Sequencia'
          DataController.MasterKeyFieldNames = 'Sequencia'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object TabTipoPagamentoColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
          end
          object TabTipoPagamentoColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Valor'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = GridCtasReceber
          object cxGrid1Level2: TcxGridLevel
            GridView = TabTipoPagamento
          end
        end
      end
      object PanelSelecao: TbsSkinPanel
        Left = 0
        Top = 104
        Width = 735
        Height = 72
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
        Caption = 'PanelSelecao'
        Align = alTop
        object lblTurma: TbsSkinStdLabel
          Left = 220
          Top = 43
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
        object cmbTipoPesquisa: TbsSkinComboBox
          Left = 17
          Top = 6
          Width = 161
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
          Text = 'Nome Cliente'
          Items.Strings = (
            'Nome Cliente'
            'C.N.P.J/C.P.F'
            'Numero de Controle'
            'Numero da Venda'
            'Codigo Cliente')
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
          Left = 187
          Top = 6
          Width = 203
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
          OnKeyDown = EdtPesquisaKeyDown
          OnKeyPress = EdtPesquisaKeyPress
        end
        object chkPesqTodoTexto: TbsSkinCheckRadioBox
          Left = 407
          Top = 5
          Width = 138
          Height = 25
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
        object dtpData_Ini: TbsSkinDateEdit
          Left = 127
          Top = 40
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
        object dtpData_Fim: TbsSkinDateEdit
          Left = 242
          Top = 40
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
          TabOrder = 4
          ButtonImageIndex = -1
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object btnSelecionar: TbsSkinButton
          Left = 544
          Top = 6
          Width = 110
          Height = 25
          HintImageIndex = 0
          TabOrder = 5
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
          ImageIndex = 5
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
          Caption = ' &Pesquisar'
          NumGlyphs = 1
          Spacing = 1
          OnClick = btnSelecionarClick
        end
        object cmbTipoFiltro: TbsSkinComboBox
          Left = 547
          Top = 40
          Width = 107
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
          CharCase = ecNormal
          DefaultColor = clWindow
          Text = 'A Receber'
          Items.Strings = (
            'A Receber'
            'Recebido'
            'Todos')
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
        object cmbPeriodo: TbsSkinComboBox
          Left = 340
          Top = 40
          Width = 174
          Height = 20
          HintImageIndex = 0
          TabOrder = 7
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
        object cmbTipoData: TbsSkinComboBox
          Left = 16
          Top = 40
          Width = 105
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
          Text = 'Data do Vencimento'
          Items.Strings = (
            'Data do Vencimento'
            'Data de Emiss'#227'o'
            'Data de Pagamento')
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
      end
      object pnlLoteRecebimento: TbsSkinExPanel
        Left = 0
        Top = 0
        Width = 735
        Height = 49
        HintImageIndex = 0
        TabOrder = 2
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
        Caption = 'Controle de Remessa para venda'
        object edtCod_Funcionario: TbsSkinEdit
          Left = 127
          Top = 23
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
          SkinData = frmPrincipal.SkinPrincipal
          SkinDataName = 'edit'
          Alignment = taRightJustify
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
          OnExit = edtCod_FuncionarioExit
        end
        object cmbNome_Funcionario: TbsSkinDBLookupComboBox
          Left = 224
          Top = 23
          Width = 270
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
          ListSource = srcSupervisor
          OnChange = cmbNome_FuncionarioChange
        end
        object pnlRemessaAberta: TPanel
          Left = 500
          Top = 23
          Width = 230
          Height = 20
          Caption = 'Supervisor Com Remessa Aberta'
          Color = clSkyBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 2
          Visible = False
        end
        object bsSkinLabel2: TbsSkinLabel
          Left = 3
          Top = 23
          Width = 118
          Height = 21
          HintImageIndex = 0
          TabOrder = 3
          SkinDataName = 'label'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clRed
          DefaultFont.Height = -15
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
          Caption = 'Supervisor'
          PopupMenu = bsSkinPopupMenu1
          AutoSize = False
        end
      end
      object pnlRecebimentoPorLote: TbsSkinExPanel
        Left = 0
        Top = 49
        Width = 735
        Height = 55
        HintImageIndex = 0
        TabOrder = 3
        Visible = False
        SkinDataName = 'expanel'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = False
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
        Caption = 'Controle de Recebimento por Lote'
        object bsSkinLabel1: TbsSkinLabel
          Left = 3
          Top = 27
          Width = 118
          Height = 21
          HintImageIndex = 0
          TabOrder = 0
          SkinDataName = 'label'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clRed
          DefaultFont.Height = -15
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
          Caption = 'Selecione o Lote'
          PopupMenu = bsSkinPopupMenu1
          AutoSize = False
        end
        object cmbLote: TbsSkinComboBox
          Left = 125
          Top = 27
          Width = 98
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
          ImageIndex = -1
          CharCase = ecNormal
          DefaultColor = clWindow
          Text = 'Nome Cliente'
          ItemIndex = -1
          DropDownCount = 8
          HorizontalExtent = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold, fsItalic]
          Sorted = False
          Style = bscbFixedStyle
          OnChange = cmbLoteChange
        end
        object lblVendedor: TbsSkinLabel
          Left = 227
          Top = 27
          Width = 499
          Height = 21
          HintImageIndex = 0
          TabOrder = 2
          SkinDataName = 'label'
          DefaultFont.Charset = ANSI_CHARSET
          DefaultFont.Color = clNavy
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial Narrow'
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
          Caption = 'Vendedor'
          AutoSize = False
        end
        object lblLote: TbsSkinLabel
          Left = 670
          Top = 27
          Width = 56
          Height = 21
          Hint = 'Click bot'#227'o direito nova Sequencia'
          HintImageIndex = 0
          TabOrder = 3
          SkinDataName = 'label'
          DefaultFont.Charset = ANSI_CHARSET
          DefaultFont.Color = clRed
          DefaultFont.Height = -16
          DefaultFont.Name = 'Arial Narrow'
          DefaultFont.Style = [fsBold]
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
          Alignment = taRightJustify
          Caption = '0001'
          PopupMenu = bsSkinPopupMenu1
          ShowHint = True
          AutoSize = False
        end
      end
    end
    object tabCadastro: TbsSkinTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object bsSkinStdLabel1: TbsSkinStdLabel
        Left = 172
        Top = 131
        Width = 41
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
        Caption = 'Historico'
      end
      object bsSkinStdLabel5: TbsSkinStdLabel
        Left = 183
        Top = 83
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
        Caption = 'Cliente'
      end
      object bsSkinStdLabel8: TbsSkinStdLabel
        Left = 384
        Top = 49
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
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'stdlabel'
        Caption = 'Data Cadastro'
      end
      object bsSkinStdLabel2: TbsSkinStdLabel
        Left = 174
        Top = 155
        Width = 39
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
        Caption = 'Emiss'#227'o'
      end
      object lblVencimentos: TbsSkinStdLabel
        Left = 374
        Top = 153
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
        Caption = '1'#186' Vencimento'
      end
      object lblDiasa: TbsSkinStdLabel
        Left = 192
        Top = 180
        Width = 21
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
        Caption = 'Dias'
      end
      object bsSkinStdLabel6: TbsSkinStdLabel
        Left = 347
        Top = 180
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
        Caption = 'Numero de Parcelas'
      end
      object Label1: TLabel
        Left = 222
        Top = 283
        Width = 80
        Height = 19
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bsSkinStdLabel7: TbsSkinStdLabel
        Left = 135
        Top = 109
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
      end
      object cmbCod_Fornecedor: TbsSkinDBLookupComboBox
        Left = 220
        Top = 78
        Width = 63
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
        DefaultHeight = 20
        UseSkinFont = True
        DefaultColor = clWindow
        ListBoxDefaultItemHeight = 20
        ListBoxUseSkinFont = True
        ListBoxUseSkinItemHeight = True
        KeyField = 'codigo'
        ListField = 'Codigo;Descricao'
        ListSource = srcCadClientes
        OnChange = cmbCod_FornecedorChange
      end
      object edtHistorico: TbsSkinEdit
        Left = 220
        Top = 126
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
        MaxLength = 75
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
      object edtData_cad: TbsSkinEdit
        Left = 466
        Top = 44
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
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'edit'
        ReadOnly = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
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
      object edtCod_Fornecedor: TbsSkinEdit
        Left = 219
        Top = 78
        Width = 45
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
        Alignment = taRightJustify
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
        OnExit = edtCod_FornecedorExit
      end
      object cmbNome_Fornecedor: TbsSkinDBLookupComboBox
        Left = 289
        Top = 76
        Width = 259
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
        KeyField = 'codigo'
        ListField = 'Descricao;Codigo'
        ListSource = srcCadClientes
        OnChange = cmbNome_FornecedorChange
      end
      object edtData_Emissao: TbsSkinDateEdit
        Left = 220
        Top = 150
        Width = 91
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
        SkinData = frmPrincipal.SkinEntradaDados
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
      object edtData_Vencimento: TbsSkinDateEdit
        Left = 456
        Top = 150
        Width = 91
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
        SkinData = frmPrincipal.SkinEntradaDados
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
      object rdgTipoVencimento: TbsSkinRadioGroup
        Left = 220
        Top = 201
        Width = 331
        Height = 65
        HintImageIndex = 0
        TabOrder = 8
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
        Caption = 'Tipo de Vencimento'
        OnClick = rdgTipoVencimentoClick
        UseSkinSize = True
        ButtonSkinDataName = 'radiobox'
        ButtonDefaultFont.Charset = DEFAULT_CHARSET
        ButtonDefaultFont.Color = clWindowText
        ButtonDefaultFont.Height = 14
        ButtonDefaultFont.Name = 'Arial'
        ButtonDefaultFont.Style = []
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'Vencimento Fixo'
          'Numero de dias')
      end
      object edtParcelas: TbsSkinSpinEdit
        Left = 457
        Top = 173
        Width = 91
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
      object edtDias: TbsSkinSpinEdit
        Left = 220
        Top = 173
        Width = 91
        Height = 20
        HintImageIndex = 0
        TabOrder = 6
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
      object EdtVlr_total: TEditN
        Left = 470
        Top = 278
        Width = 81
        Height = 24
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        Text = '0,00'
        ColorOnFocus = clWhite
        ColorOnNotFocus = clWhite
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
      object cmbNome_CentroCusto: TbsSkinDBLookupComboBox
        Left = 288
        Top = 102
        Width = 258
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
        ListSource = srcCadCtoCusto
        OnChange = cmbNome_CentroCustoChange
      end
      object cmbCod_CentroCusto: TbsSkinDBLookupComboBox
        Left = 220
        Top = 102
        Width = 63
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
        ListField = 'Codigo;Descricao'
        ListSource = srcCadCtoCusto
        OnChange = cmbCod_CentroCustoChange
      end
      object edtCod_CentroCusto: TbsSkinEdit
        Left = 219
        Top = 102
        Width = 45
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
        Alignment = taRightJustify
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
        OnExit = edtCod_CentroCustoExit
      end
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 737
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 733
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 724
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
        Left = 567
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
        ExplicitLeft = 673
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object btnexcluir: TbsSkinSpeedButton
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
        ImageIndex = 13
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = '&Receber'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnexcluirClick
        ExplicitLeft = -6
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object btnalterar: TbsSkinSpeedButton
        Left = 263
        Top = 0
        Width = 70
        Height = 49
        HintImageIndex = 0
        Visible = False
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
        OnClick = btnalterarClick
        ExplicitLeft = 257
        ExplicitTop = 12
      end
      object btnincluir: TbsSkinSpeedButton
        Left = 193
        Top = 0
        Width = 70
        Height = 49
        HintImageIndex = 0
        Visible = False
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
        Enabled = False
        OnClick = btnincluirClick
        ExplicitLeft = 151
        ExplicitTop = 12
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 333
        Top = 0
        Width = 70
        Height = 49
        HintImageIndex = 0
        Visible = False
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
        ExplicitLeft = 499
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 140
        Top = 0
        Width = 53
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -1
      end
      object btnok: TbsSkinSpeedButton
        Left = 70
        Top = 0
        Width = 70
        Height = 49
        HintImageIndex = 0
        Visible = False
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
        ExplicitLeft = 33
        ExplicitTop = 12
      end
      object btnSeparador: TbsSkinBevel
        Left = 533
        Top = 0
        Width = 34
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 583
        ExplicitTop = -1
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 403
        Top = 0
        Width = 34
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 431
        ExplicitTop = -1
      end
      object bsSkinMenuSpeedButton1: TbsSkinMenuSpeedButton
        Left = 437
        Top = 0
        Width = 96
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
        ImageIndex = 0
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Relatorios'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        NewStyle = False
        TrackPosition = bstpRight
        UseImagesMenuImage = False
        UseImagesMenuCaption = False
        SkinPopupMenu = MenuRelatorios
        TrackButtonMode = False
        ExplicitLeft = 421
        ExplicitTop = 12
      end
    end
  end
  object srcCadClientes: TDataSource
    DataSet = cdsCadClientes
    Left = 516
    Top = 223
  end
  object srcPesquisa: TDataSource
    DataSet = cdsPesquisa
    Left = 541
    Top = 223
  end
  object srcCadCtoCusto: TDataSource
    Left = 489
    Top = 223
  end
  object MenuRelatorios: TbsSkinPopupMenu
    Left = 480
    Top = 25
    object BorderodeEntrega1: TMenuItem
      Caption = 'Contas a Receber'
      OnClick = BorderodeEntrega1Click
    end
    object RecebimentosporLote1: TMenuItem
      Caption = 'Recebimentos por Lote'
      OnClick = RecebimentosporLote1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Gri: TMenuItem
      Caption = 'Exportar Excel '
      Visible = False
      OnClick = GriClick
    end
    object DuplicataMercantil1: TMenuItem
      Caption = 'Duplicata Mercantil'
      OnClick = DuplicataMercantil1Click
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
    OnNewPage = ImpMatricialNewPage
    Left = 260
    Top = 241
  end
  object QryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 597
    Top = 168
  end
  object dspVariavel: TDataSetProvider
    DataSet = QryVariavel
    Left = 597
    Top = 196
  end
  object cdsCadClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 516
    Top = 251
  end
  object cdsCadCtoCusto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 489
    Top = 251
  end
  object dspPesquisa: TDataSetProvider
    DataSet = QryPesquisa
    Left = 541
    Top = 195
  end
  object QryPesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'Select * from T_Ctasreceber where 1=2')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 567
    Top = 167
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    AfterOpen = cdsPesquisaAfterOpen
    OnCalcFields = cdsPesquisaCalcFields
    Left = 542
    Top = 251
  end
  object QryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 537
    Top = 168
  end
  object CxPropriedades: TcxPropertiesStore
    Components = <
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
          'Visible'
          'Width')
      end
      item
        Component = cmbTipoPesquisa
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
        Component = Cod_FormaPagamento
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
        Component = Data_Vencimento
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
        Component = GridCtasReceberCod_Cliente
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
        Component = GridCtasReceberCod_emp
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
        Component = GridCtasReceberColumn1
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
        Component = GridCtasReceberColumn2
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
        Component = GridCtasReceberData_Atu
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
        Component = GridCtasReceberData_Cad
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
        Component = GridCtasReceberData_Emissao
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
        Component = GridCtasReceberDocumento
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
        Component = GridCtasReceberHistorico
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
        Component = GridCtasReceberOperador
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
        Component = GridCtasRecebersequencia
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
        Component = GridCtasReceberseqvenda
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
        Component = GridCtasRecebervlr_Areceber
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
        Component = GridCtasreceberVlr_Comissao
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
        Component = gridCtasreceberVlr_Desconto
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
        Component = GridCtasReceberVlr_Devolvido
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
        Component = GridCtasreceberVlr_Recebido
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
        Component = GrifCtasreceberDescricao
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
    StorageName = 'c:\teste'
    StorageType = stStream
    Left = 316
    Top = 241
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        HitTypes = []
        Index = 0
      end>
    Left = 344
    Top = 241
  end
  object MenuGrid: TbsSkinPopupMenu
    Left = 372
    Top = 241
    object Marcarcomoentregue1: TMenuItem
      Caption = 'Marcar como entregue'
      OnClick = Marcarcomoentregue1Click
    end
    object alterarVencimentoeTipodePagamento1: TMenuItem
      Caption = 'Alterar Vencimento e Tipo de Pagamento'
      OnClick = alterarVencimentoeTipodePagamento1Click
    end
    object ProrrogarvencimntoNDias1: TMenuItem
      Caption = 'Prorrogar vencimnto N Dias'
      OnClick = ProrrogarvencimntoNDias1Click
    end
  end
  object bsSkinPopupMenu1: TbsSkinPopupMenu
    Left = 196
    Top = 249
    object MenuItem1: TMenuItem
      Caption = 'Gerar novo Lote'
      OnClick = MenuItem1Click
    end
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 461
    Top = 251
  end
  object DataSource1: TDataSource
    DataSet = cdsRelatorio
    Left = 461
    Top = 223
  end
  object srcSupervisor: TDataSource
    Left = 117
    Top = 327
  end
  object frxDuplicataMErcantil: TfrxReport
    Version = '4.9.105'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41842.964457743100000000
    ReportOptions.LastChange = 41857.597552094900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 344
    Top = 328
    Datasets = <
      item
        DataSet = frxDBCliente
        DataSetName = 'dbSetCliente'
      end
      item
        DataSet = frxDbEmpresa
        DataSetName = 'dbSetEmpresa'
      end>
    Variables = <
      item
        Name = ' Financeiro'
        Value = Null
      end
      item
        Name = 'Valor'
        Value = ' '
      end
      item
        Name = 'Vencimento'
        Value = ' '
      end
      item
        Name = 'Documento'
        Value = ' '
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
      object MasterData1: TfrxMasterData
        Height = 510.236550000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        DataSet = frxDBCliente
        DataSetName = 'dbSetCliente'
        RowCount = 0
        object Memo2: TfrxMemoView
          Left = 181.417440000000000000
          Top = 82.929190000000000000
          Width = 362.834880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'DUPLICATA')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 79.370130000000000000
          ShowHint = False
        end
        object Shape2: TfrxShapeView
          Left = 180.858380000000000000
          Top = 3.779530000000000000
          Width = 529.134200000000000000
          Height = 79.370130000000000000
          ShowHint = False
        end
        object Shape3: TfrxShapeView
          Left = 544.252320000000000000
          Top = 83.149660000000000000
          Width = 166.299320000000000000
          Height = 124.724490000000000000
          ShowHint = False
        end
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 83.149660000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'FATURA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 102.047310000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 93.826840000000000000
          Top = 102.047310000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'NUMERO')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 355.275820000000000000
          Top = 102.047310000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'VENCIMENTO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 181.417440000000000000
          Top = 102.047310000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'VALOR')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 268.346630000000000000
          Top = 102.047310000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No ORDEM')
          ParentFont = False
        end
        object Shape5: TfrxShapeView
          Left = 7.559060000000000000
          Top = 143.622140000000000000
          Width = 109.606370000000000000
          Height = 313.700990000000000000
          ShowHint = False
        end
        object Shape6: TfrxShapeView
          Left = 117.165430000000000000
          Top = 207.874150000000000000
          Width = 593.386210000000000000
          Height = 177.637910000000000000
          ShowHint = False
        end
        object Memo10: TfrxMemoView
          Left = 93.826840000000000000
          Top = 120.944960000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Documento]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 181.417440000000000000
          Top = 120.944960000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Valor]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 268.346630000000000000
          Top = 120.944960000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Documento]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 117.165430000000000000
          Top = 385.512060000000000000
          Width = 192.756030000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'DATA DO ACEITE')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Left = 116.944960000000000000
          Top = 328.819110000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'VALOR POR EXTENSO.')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 230.551330000000000000
          Top = 328.819110000000000000
          Width = 480.000310000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'Cento e trinta dois reais')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Left = 185.196970000000000000
          Top = 3.779530000000000000
          Width = 514.016080000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'DUPLICATA DE VENDA MERCANTIL')
          ParentFont = False
        end
        object dbSetEmpresaCNPJCPF: TfrxMemoView
          Left = 181.417440000000000000
          Top = 54.354360000000000000
          Width = 527.165740000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'CNPJ.: [dbSetEmpresa."CNPJCPF"]')
          ParentFont = False
        end
        object dbSetEmpresaEndereco: TfrxMemoView
          Left = 181.417440000000000000
          Top = 23.456710000000000000
          Width = 528.945270000000000000
          Height = 16.779530000000000000
          ShowHint = False
          DataSet = frxDbEmpresa
          DataSetName = 'dbSetEmpresa'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            
              '[dbSetEmpresa."Endereco"] [dbSetEmpresa."Bairro"]  CEP.:[dbSetEm' +
              'presa."Cep"] [dbSetEmpresa."Cidade"] - [dbSetEmpresa."UF"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 181.417440000000000000
          Top = 37.015770000000000000
          Width = 529.134200000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Telefone..: [dbSetEmpresa."Telefone"]/[dbSetEmpresa."fax"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 117.165430000000000000
          Top = 143.622140000000000000
          Width = 427.086890000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Desconto de                                             Ate')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          Left = 120.944960000000000000
          Top = 188.976500000000000000
          Width = 423.307360000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Cond. Espec.:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Left = 544.252320000000000000
          Top = 90.149660000000000000
          Width = 166.299320000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'Para uso da'
            ' institui'#195#167#195#163'o Financeira')
          ParentFont = False
        end
        object dbSetClienteDescricao: TfrxMemoView
          Left = 123.283550000000000000
          Top = 208.496290000000000000
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
            'Nome Sacado:  [dbSetCliente."Descricao"]')
          ParentFont = False
        end
        object dbSetClienteEndereco: TfrxMemoView
          Left = 123.283550000000000000
          Top = 229.953000000000000000
          Width = 587.449290000000000000
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
              'bSetCliente."Cidade"]-[dbSetCliente."UF"] ')
          ParentFont = False
        end
        object dbSetClienteTelefone: TfrxMemoView
          Left = 124.724490000000000000
          Top = 249.448980000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Memo.UTF8 = (
            'CEP.:[dbSetCliente."CEP"] Telefone.: [dbSetCliente."Telefone"]')
        end
        object Memo24: TfrxMemoView
          Left = 124.724490000000000000
          Top = 275.905690000000000000
          Width = 587.449290000000000000
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
              'bSetCliente."Cidade"]-[dbSetCliente."UF"] ')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 126.165430000000000000
          Top = 295.401670000000000000
          Width = 325.039580000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBCliente
          DataSetName = 'dbSetCliente'
          Memo.UTF8 = (
            'CEP.:[dbSetCliente."CEP"] Telefone.: [dbSetCliente."Telefone"]')
        end
        object Memo15: TfrxMemoView
          Left = 309.921460000000000000
          Top = 385.512060000000000000
          Width = 400.630180000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8 = (
            'ASS DO SACADO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 117.165430000000000000
          Top = 351.496290000000000000
          Width = 593.386210000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haBlock
          HideZeros = True
          Memo.UTF8 = (
            
              'Reconhe'#195#167'o(emos) a exatid'#195#163'o desta duplicata de venda mercantila' +
              ' importancia acima, que pagarei(remos) a [dbSetEmpresa."Nome_Fan' +
              'tasia"] ou a sua ordemna pra'#195#167'a e vencimentos indicados ')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 117.165430000000000000
          Top = 407.968770000000000000
          Width = 593.386210000000000000
          Height = 49.133890000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haBlock
          Memo.UTF8 = (
            'Na falta de oagamento no vencimento ser'#195#163'o cobrados'
            ' - Juros de mora de acordo com alegisla'#195#167#195#163'o'
            ' - Despesas Bancarias')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 7.559060000000000000
          Top = 120.944960000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Valor]')
          ParentFont = False
        end
        object Vencimento: TfrxMemoView
          Left = 355.275820000000000000
          Top = 120.944960000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Vencimento]')
          ParentFont = False
        end
      end
    end
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
    DataSet = cdsCadClientes
    BCDToCurrency = False
    Left = 389
    Top = 312
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
    Left = 418
    Top = 312
  end
  object cdsTipoPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsppagto'
    Left = 277
    Top = 339
  end
  object srcTipoPagamento: TDataSource
    DataSet = cdsTipoPagamento
    Left = 277
    Top = 311
  end
  object qryPagto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 253
    Top = 312
  end
  object dsppagto: TDataSetProvider
    DataSet = qryPagto
    Left = 251
    Top = 340
  end
end
