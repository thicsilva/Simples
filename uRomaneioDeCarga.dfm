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
    ExplicitLeft = -52
    ExplicitWidth = 760
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
        ExplicitLeft = 677
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 83
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
      end
      object btnok: TbsSkinSpeedButton
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
        ExplicitLeft = -6
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 153
        Top = 0
        Width = 552
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
      end
    end
  end
  object bsSkinPageControl1: TbsSkinPageControl
    Left = 0
    Top = 53
    Width = 811
    Height = 387
    ActivePage = PagNovoRomaneio
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
    ExplicitWidth = 708
    object PagNovoRomaneio: TbsSkinTabSheet
      Caption = 'Inclus'#227'o de Romaneio'
      ExplicitLeft = 2
      ExplicitWidth = 706
      object cxGrid1: TcxGrid
        Left = 0
        Top = 70
        Width = 809
        Height = 296
        Align = alClient
        TabOrder = 0
        ExplicitTop = 76
        ExplicitWidth = 706
        object GrdVendas: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcRomaneio
          DataController.DetailKeyFieldNames = 'Seqvenda'
          DataController.KeyFieldNames = 'SeqVenda'
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
            DataBinding.FieldName = 'Codigo'
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
            DataBinding.FieldName = 'Data da Venda'
            Width = 95
          end
          object GrdVendasTotal_Financeiro: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'Total_Financeiro'
            Width = 80
          end
          object GrdVendasTotal_Peso: TcxGridDBColumn
            DataBinding.FieldName = 'Peso B Total'
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
        Height = 70
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
        ExplicitTop = -6
        ExplicitWidth = 706
        object bsSkinLabel1: TbsSkinLabel
          Left = 24
          Top = 32
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
          Top = 32
          Width = 130
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
          Left = 580
          Top = 32
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
        end
        object bsSkinButton1: TbsSkinButton
          Left = 693
          Top = 32
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
        end
      end
    end
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Consulta Romaneio'
      ExplicitLeft = 2
      ExplicitWidth = 706
    end
  end
  object cdsRomaneio: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 248
    object cdsRomaneioNumeroVenda: TIntegerField
      FieldName = 'NumeroVenda'
    end
    object cdsRomaneioClienteId: TIntegerField
      FieldName = 'ClienteId'
    end
    object cdsRomaneioNome_cliente: TStringField
      FieldName = 'Nome_cliente'
      Size = 60
    end
    object cdsRomaneioVendedor: TStringField
      FieldName = 'Vendedor'
    end
    object cdsRomaneioDataVenda: TDateTimeField
      FieldName = 'DataVenda'
    end
    object cdsRomaneioTotal_Financeiro: TFloatField
      FieldName = 'Total_Financeiro'
    end
    object cdsRomaneioTotal_Peso: TFloatField
      FieldName = 'Total_Peso'
    end
  end
  object srcRomaneio: TDataSource
    DataSet = cdsRomaneio
    Left = 400
    Top = 275
  end
end
