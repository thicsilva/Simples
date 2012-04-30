object frmInventario: TfrmInventario
  Left = 0
  Top = 0
  Caption = 'Inclusao e consulta de Inventario'
  ClientHeight = 443
  ClientWidth = 798
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bsSkinCoolBar1: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 798
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 794
      end>
    SkinDataName = 'controlbar'
    SkinBevel = True
    TabOrder = 0
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 785
      Height = 40
      HintImageIndex = 0
      TabOrder = 0
      SkinDataName = 'bigtoolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 70
      DefaultHeight = 40
      UseSkinFont = True
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
      object btnFechar: TbsSkinSpeedButton
        Left = 681
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
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
        ExplicitLeft = 479
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 415
        Top = 0
        Width = 266
        Height = 40
        Align = alLeft
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 345
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
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
        ExplicitLeft = 339
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 115
        Height = 40
        Align = alLeft
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object bsSkinMenuSpeedButton1: TbsSkinMenuSpeedButton
        Left = 185
        Top = 0
        Width = 112
        Height = 40
        HintImageIndex = 0
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
        Caption = 'Relatorios'
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
        ExplicitLeft = 191
        ExplicitTop = 8
      end
      object btnIncluir: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
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
        OnClick = btnIncluirClick
        ExplicitLeft = -18
        ExplicitTop = 8
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 297
        Top = 0
        Width = 48
        Height = 40
        Align = alLeft
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 377
        ExplicitTop = -5
      end
    end
  end
  object PagGeral: TbsSkinPageControl
    Left = 0
    Top = 44
    Width = 798
    Height = 399
    ActivePage = TabInventario
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
      Caption = 'Consulta Inventario'
      object cxGrid1: TcxGrid
        Left = 0
        Top = 43
        Width = 796
        Height = 335
        Align = alClient
        TabOrder = 0
        object GridDBInventario: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcPesquisa
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skSum
              Column = Column_Vlr_Total
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object Column_Data_Cad: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'Data_Cad'
            Width = 100
          end
          object Column_Motivo: TcxGridDBColumn
            DataBinding.FieldName = 'Motivo'
            Width = 250
          end
          object Column_Vlr_Total: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'Vlr_Total'
            Width = 80
          end
          object Column_Operador: TcxGridDBColumn
            DataBinding.FieldName = 'Operador'
            Width = 150
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = GridDBInventario
        end
      end
      object bsSkinPanel1: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 796
        Height = 43
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
        object bsSkinButton2: TbsSkinButton
          Left = 653
          Top = 9
          Width = 107
          Height = 28
          HintImageIndex = 0
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
          OnClick = bsSkinButton2Click
        end
        object cmbtipoconsulta: TbsSkinComboBox
          Left = 8
          Top = 11
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
          Text = 'Motivo'
          Items.Strings = (
            'Motivo'
            'Data')
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
          Top = 11
          Width = 499
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
      end
      object edtPco_venda: TbsSkinEdit
        Left = 415
        Top = 124
        Width = 59
        Height = 18
        Text = '0,00'
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
        Alignment = taRightJustify
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
    object TabInventario: TbsSkinTabSheet
      Caption = 'Inventario dos produtos'
      object bsSkinPanel3: TbsSkinPanel
        Left = 0
        Top = 57
        Width = 796
        Height = 47
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
        object bsSkinStdLabel7: TbsSkinStdLabel
          Left = 3
          Top = 16
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
          SkinDataName = 'stdlabel'
          Caption = 'Produto'
        end
        object bsSkinStdLabel8: TbsSkinStdLabel
          Left = 295
          Top = 16
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
          SkinDataName = 'stdlabel'
          Caption = 'Quantidade'
        end
        object edtProd_inv: TbsSkinEdit
          Left = 46
          Top = 13
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
          ParentFont = False
          TabOrder = 0
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
          OnExit = edtProd_invExit
        end
        object cmbNome_ProdutoInv: TbsSkinDBLookupComboBox
          Left = 113
          Top = 13
          Width = 176
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
          OnChange = cmbNome_ProdutoInvChange
        end
        object edtQtde_inv: TbsSkinEdit
          Left = 356
          Top = 13
          Width = 57
          Height = 18
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
          SkinDataName = 'edit'
          Alignment = taRightJustify
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
        object bsSkinButton1: TbsSkinButton
          Left = 545
          Top = 6
          Width = 107
          Height = 28
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
        object bsSkinButton3: TbsSkinButton
          Left = 432
          Top = 6
          Width = 107
          Height = 28
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
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 104
        Width = 796
        Height = 274
        Align = alClient
        TabOrder = 1
        object cxGridDBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcTempItensInventario
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '0'
              Kind = skSum
              Column = cxGridDBColumn3
            end
            item
              Format = ',0.00'
              Kind = skSum
              Column = cxGridDBColumn5
            end
            item
              Format = '0'
              Kind = skCount
              Column = cxGridDBColumn1
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.Footer = True
          OptionsView.FooterAutoHeight = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          OptionsView.Indicator = True
          Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Codigo'
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 324
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            DataBinding.FieldName = 'Saldo'
            Width = 70
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'Quantidade'
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'Diferen'#231'a'
            DataBinding.FieldName = 'Diferenca'
            Width = 70
          end
          object cxGridDBColumn4: TcxGridDBColumn
            Caption = 'Pre'#231'o'
            DataBinding.FieldName = 'Pco_Venda'
          end
          object cxGridDBColumn5: TcxGridDBColumn
            Caption = 'Total'
            DataBinding.FieldName = 'Vlr_Total'
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object bsSkinExPanel1: TbsSkinExPanel
        Left = 0
        Top = 0
        Width = 796
        Height = 57
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
        Caption = 'Dados do Inventario'
        object bsSkinStdLabel9: TbsSkinStdLabel
          Left = 10
          Top = 32
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
          Caption = 'Motivo'
        end
        object edtMotivoInventario: TbsSkinEdit
          Left = 48
          Top = 29
          Width = 473
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
        end
        object cmbSetores: TbsSkinDBLookupComboBox
          Left = 533
          Top = 29
          Width = 249
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
          ListSource = srcSetores
        end
      end
    end
  end
  object bsSkinPopupMenu1: TbsSkinPopupMenu
    Left = 338
    Top = 220
    object Clientes1: TMenuItem
      Caption = '1 - Relatorio de Contagem'
      OnClick = Clientes1Click
    end
    object ClientesSemCompras1: TMenuItem
      Caption = '2 - Relatorio de Divergencia'
      OnClick = ClientesSemCompras1Click
    end
  end
  object cdsTempItensInventario: TClientDataSet
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
        Size = 20
      end
      item
        Name = 'Quantidade'
        DataType = ftInteger
      end
      item
        Name = 'Pco_venda'
        DataType = ftFloat
      end
      item
        Name = 'Diferenca'
        DataType = ftInteger
      end
      item
        Name = 'Saldo'
        DataType = ftInteger
      end
      item
        Name = 'vlr_Total'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 208
    Top = 225
    Data = {
      9E0000009619E0BD0100000018000000070000000000030000009E0006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020014000A5175616E74696461646504000100000000000950636F
      5F76656E64610800040000000000094469666572656E63610400010000000000
      0553616C646F040001000000000009766C725F546F74616C0800040000000000
      0000}
    object cdsTempItensInventarioCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object cdsTempItensInventarioDescricao: TStringField
      FieldName = 'Descricao'
    end
    object cdsTempItensInventarioPco_venda: TFloatField
      FieldName = 'Pco_venda'
    end
    object cdsTempItensInventarioQuantidade: TIntegerField
      FieldName = 'Quantidade'
    end
    object cdsTempItensInventarioDiferenca: TIntegerField
      FieldName = 'Diferenca'
    end
    object cdsTempItensInventarioSaldo: TIntegerField
      FieldName = 'Saldo'
    end
    object cdsTempItensInventariovlr_total: TFloatField
      FieldName = 'vlr_total'
    end
  end
  object srcTempItensInventario: TDataSource
    DataSet = cdsTempItensInventario
    Left = 208
    Top = 253
  end
  object srcCadProdutos: TDataSource
    DataSet = cdsCadProdutos
    Left = 180
    Top = 253
  end
  object cdsCadProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 180
    Top = 225
  end
  object qryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 153
    Top = 169
  end
  object dspvariavel: TDataSetProvider
    DataSet = qryVariavel
    Left = 153
    Top = 197
  end
  object srcInventario: TDataSource
    DataSet = cdsInventario
    Left = 125
    Top = 253
  end
  object cdsInventario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspInventario'
    Left = 125
    Top = 225
  end
  object dspInventario: TDataSetProvider
    DataSet = qryInventario
    Left = 125
    Top = 197
  end
  object qryInventario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 125
    Top = 169
  end
  object qryItensInventario: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 97
    Top = 169
  end
  object dspItensInventario: TDataSetProvider
    DataSet = qryItensInventario
    Left = 97
    Top = 197
  end
  object cdsItensInventario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider2'
    Left = 97
    Top = 225
  end
  object srcItensInventario: TDataSource
    DataSet = cdsItensInventario
    Left = 97
    Top = 253
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
    Left = 366
    Top = 220
  end
  object qryRelatorio: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 69
    Top = 169
  end
  object dspRelatorio: TDataSetProvider
    DataSet = qryRelatorio
    Left = 69
    Top = 197
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRelatorio'
    Left = 69
    Top = 225
  end
  object srcRelatorio: TDataSource
    DataSet = cdsRelatorio
    Left = 69
    Top = 253
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 236
    Top = 225
  end
  object srcPesquisa: TDataSource
    DataSet = cdsPesquisa
    Left = 236
    Top = 253
  end
  object cdsSetores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 264
    Top = 225
  end
  object srcSetores: TDataSource
    DataSet = cdsSetores
    Left = 264
    Top = 253
  end
end
