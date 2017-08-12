object frmConsItensDevolvidos: TfrmConsItensDevolvidos
  Left = 0
  Top = 0
  Caption = 'Consulta produtos Devolvidos'
  ClientHeight = 360
  ClientWidth = 778
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
  object cxGrid2: TcxGrid
    Left = 0
    Top = 53
    Width = 778
    Height = 307
    Align = alClient
    TabOrder = 0
    object gridMovimento: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = srcItensDevolucoes
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0'
          Kind = skCount
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Column = ColumnVlr_Total
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupSummaryLayout = gslAlignWithColumns
      Styles.StyleSheet = frmPrincipal.GridTableViewStyleSheetDevExpress
      object gridMovimentoColumn1: TcxGridDBColumn
        Caption = 'Codigo'
        DataBinding.FieldName = 'Cod_Produto'
        Width = 47
      end
      object gridMovimentoColumn2: TcxGridDBColumn
        DataBinding.FieldName = 'Descricao'
        Width = 200
      end
      object gridMovimentoColumn3: TcxGridDBColumn
        Caption = 'Data '
        DataBinding.FieldName = 'Data_Devolucao'
        Width = 100
      end
      object Columnqtde_Devolvida: TcxGridDBColumn
        Caption = 'Qtde. Devolvida'
        DataBinding.FieldName = 'qtde_Devolvida'
        HeaderAlignmentHorz = taRightJustify
        Width = 115
      end
      object gridMovimentoColumn6: TcxGridDBColumn
        Caption = 'Pco. Venda'
        DataBinding.FieldName = 'Pco_venda'
        HeaderAlignmentHorz = taRightJustify
        Width = 80
      end
      object ColumnVlr_Total: TcxGridDBColumn
        Caption = 'Total'
        DataBinding.FieldName = 'Vlr_Total'
        FooterAlignmentHorz = taCenter
        HeaderAlignmentHorz = taRightJustify
        Width = 95
      end
      object gridMovimentoColumn4: TcxGridDBColumn
        DataBinding.FieldName = 'Operador'
        Width = 150
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = gridMovimento
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 778
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 774
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 1
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 765
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
        Left = 665
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
        ExplicitLeft = 704
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 0
        Top = 0
        Width = 665
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -1
      end
    end
  end
  object qryItensDevolucoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 262
    Top = 155
  end
  object DspItensDevolucoes: TDataSetProvider
    DataSet = qryItensDevolucoes
    Left = 262
    Top = 183
  end
  object cdsItensDevolucoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensVendas'
    AfterOpen = cdsItensDevolucoesAfterOpen
    Left = 262
    Top = 211
  end
  object srcItensDevolucoes: TDataSource
    DataSet = cdsItensDevolucoes
    Left = 262
    Top = 239
  end
end
