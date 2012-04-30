object frmMovCaixa: TfrmMovCaixa
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Consulta e manuten'#231#227'o de lan'#231'amentos do caixa'
  ClientHeight = 399
  ClientWidth = 813
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
  object bsSkinCoolBar1: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 813
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 809
      end>
    SkinDataName = 'controlbar'
    SkinData = FrmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 0
    object bsSkinSpeedButton2: TbsSkinSpeedButton
      Left = 329
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
      ImageIndex = 7
      RepeatMode = False
      RepeatInterval = 100
      Transparent = True
      Flat = True
      AllowAllUp = False
      Down = False
      GroupIndex = 0
      Caption = '&Imprimir'
      ShowCaption = True
      NumGlyphs = 1
      Align = alLeft
      Spacing = 1
      Layout = blGlyphTop
      ExplicitLeft = 319
      ExplicitTop = 8
    end
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 800
      Height = 40
      HintImageIndex = 0
      TabOrder = 0
      SkinData = FrmPrincipal.SkinPrincipal
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
      Images = FrmPrincipal.Imagebutoes
      object btnFechar: TbsSkinSpeedButton
        Left = 775
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        SkinData = FrmPrincipal.SkinPrincipal
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
        ExplicitLeft = 606
        ExplicitTop = 8
      end
      object btnPrePagamento: TbsSkinSpeedButton
        Left = 292
        Top = 0
        Width = 97
        Height = 40
        HintImageIndex = 0
        SkinData = FrmPrincipal.SkinPrincipal
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
        Caption = 'Pre-&Pagamento'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnPrePagamentoClick
        ExplicitLeft = 201
        ExplicitTop = 8
      end
      object btnincluir: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        SkinData = FrmPrincipal.SkinPrincipal
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
        Caption = '&Lan'#231'ar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnincluirClick
        ExplicitLeft = -6
        ExplicitTop = 8
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 591
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        SkinData = FrmPrincipal.SkinPrincipal
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
        ExplicitLeft = 488
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 731
        Top = 0
        Width = 44
        Height = 40
        Align = alLeft
        SkinData = FrmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 603
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 661
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        SkinData = FrmPrincipal.SkinPrincipal
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
        ExplicitLeft = 570
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 55
        Height = 40
        Align = alLeft
        SkinData = FrmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 64
        ExplicitTop = -5
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 389
        Top = 0
        Width = 37
        Height = 40
        Align = alLeft
        SkinData = FrmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 286
        ExplicitTop = -5
      end
      object btnEstornar: TbsSkinSpeedButton
        Left = 125
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        SkinData = FrmPrincipal.SkinPrincipal
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
        Caption = 'E&stornar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnEstornarClick
        ExplicitLeft = 131
        ExplicitTop = 8
      end
      object btnFecharcaixa: TbsSkinSpeedButton
        Left = 496
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        SkinData = FrmPrincipal.SkinPrincipal
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
        ImageIndex = 12
        RepeatMode = False
        RepeatInterval = 100
        Transparent = True
        Flat = True
        AllowAllUp = False
        Down = False
        GroupIndex = 0
        Caption = 'Fechar &Caixa'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnFecharcaixaClick
        ExplicitLeft = 490
        ExplicitTop = 8
      end
      object btnImprimir: TbsSkinSpeedButton
        Left = 426
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        SkinData = FrmPrincipal.SkinPrincipal
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
        Caption = '&Imprimir'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnImprimirClick
        ExplicitLeft = 335
        ExplicitTop = 8
      end
      object bsSkinBevel4: TbsSkinBevel
        Left = 566
        Top = 0
        Width = 25
        Height = 40
        Align = alLeft
        SkinData = FrmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 469
        ExplicitTop = -5
      end
      object btnRecebimentos: TbsSkinSpeedButton
        Left = 195
        Top = 0
        Width = 97
        Height = 40
        HintImageIndex = 0
        SkinData = FrmPrincipal.SkinPrincipal
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
        Caption = 'Recebimentos'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnRecebimentosClick
        ExplicitLeft = 201
        ExplicitTop = 8
      end
    end
  end
  object PagCadastro: TbsSkinPageControl
    Left = 0
    Top = 44
    Width = 813
    Height = 355
    ActivePage = bsSkinTabSheet1
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
    SkinData = FrmPrincipal.SkinPrincipal
    SkinDataName = 'tab'
    object bsSkinTabSheet1: TbsSkinTabSheet
      Caption = 'Consulta'
      object GridMovCaixa: TcxGrid
        Left = 0
        Top = 49
        Width = 811
        Height = 285
        Align = alClient
        TabOrder = 0
        object GrdDespesas: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = srcPesquisa
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
          OptionsView.GroupFooterMultiSummaries = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.GroupSummaryLayout = gslAlignWithColumns
          Styles.Group = FrmPrincipal.cxStyle5
          Styles.GroupByBox = FrmPrincipal.cxStyle4
          Styles.StyleSheet = FrmPrincipal.GridTableViewStyleSheetDevExpress
          object colum_NomeD_C: TcxGridDBColumn
            Caption = 'Tipo Lan.'
            DataBinding.FieldName = 'NomeD_C'
            Width = 80
          end
          object Colum_Descricao: TcxGridDBColumn
            DataBinding.FieldName = 'Descricao'
            Width = 150
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
          end
          object colum_Seqvenda: TcxGridDBColumn
            Caption = 'N'#186' Venda'
            DataBinding.FieldName = 'Seqvenda'
            Width = 70
          end
          object Column_Esrtornado: TcxGridDBColumn
            DataBinding.FieldName = 'Estornado'
            Width = 80
          end
          object GrdDespesasColumn1: TcxGridDBColumn
            DataBinding.FieldName = 'Nome_Cliente'
          end
        end
        object GridMovCaixaLevel1: TcxGridLevel
          GridView = GrdDespesas
        end
      end
      object PanelConsulta: TbsSkinPanel
        Left = 0
        Top = 0
        Width = 811
        Height = 49
        HintImageIndex = 0
        TabOrder = 1
        SkinData = FrmPrincipal.SkinPrincipal
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
          Left = 642
          Top = 23
          Width = 137
          Height = 24
          HintImageIndex = 0
          SkinData = FrmPrincipal.SkinPrincipal
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
          Left = 123
          Top = 29
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
          SkinData = FrmPrincipal.SkinPrincipal
          SkinDataName = 'stdlabel'
          Caption = 'Ate.'
        end
        object dtpData_Fim: TbsSkinDateEdit
          Left = 151
          Top = 26
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
          SkinData = FrmPrincipal.SkinPrincipal
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
          Left = 24
          Top = 26
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
          SkinData = FrmPrincipal.SkinPrincipal
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
          Left = 246
          Top = 26
          Width = 180
          Height = 20
          HintImageIndex = 0
          TabOrder = 2
          SkinData = FrmPrincipal.SkinPrincipal
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
        object cmbCaixa: TbsSkinDBLookupComboBox
          Left = 434
          Top = 26
          Width = 190
          Height = 20
          HintImageIndex = 0
          TabOrder = 3
          SkinData = FrmPrincipal.SkinPrincipal
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
          ListSource = srcCaixa
          OnChange = cmbNome_formaPagamentoChange
        end
        object chkMostraCaixaFechado: TCheckBox
          Left = 24
          Top = 3
          Width = 233
          Height = 17
          Caption = 'Visualizar Caixa Fechado'
          TabOrder = 4
        end
      end
    end
    object bsSkinTabSheet2: TbsSkinTabSheet
      Caption = 'Manutencao'
      object bsSkinExPanel1: TbsSkinExPanel
        Left = 160
        Top = 47
        Width = 449
        Height = 218
        HintImageIndex = 0
        TabOrder = 0
        SkinData = FrmPrincipal.SkinEntradaDados
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
        Caption = 'Dados para lancamento no Caixa'
        object bsSkinStdLabel6: TbsSkinStdLabel
          Left = 25
          Top = 174
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
          SkinData = FrmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Valor da Despesa'
        end
        object bsSkinStdLabel8: TbsSkinStdLabel
          Left = 11
          Top = 42
          Width = 100
          Height = 13
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = FrmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Data de Lan'#231'amento'
        end
        object bsSkinStdLabel9: TbsSkinStdLabel
          Left = 28
          Top = 70
          Width = 83
          Height = 13
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = FrmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Tipo Lan'#231'amento'
        end
        object bsSkinStdLabel11: TbsSkinStdLabel
          Left = 70
          Top = 144
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
          SkinData = FrmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Historico'
        end
        object bsSkinStdLabel13: TbsSkinStdLabel
          Left = 25
          Top = 95
          Width = 86
          Height = 13
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = FrmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Tipo de Despesas'
        end
        object lblCliente: TbsSkinStdLabel
          Left = 18
          Top = 199
          Width = 93
          Height = 13
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = FrmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Cliente Para Credito'
        end
        object bsSkinStdLabel1: TbsSkinStdLabel
          Left = 85
          Top = 120
          Width = 26
          Height = 13
          EllipsType = bsetNone
          UseSkinFont = True
          UseSkinColor = True
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -11
          DefaultFont.Name = 'MS Sans Serif'
          DefaultFont.Style = []
          SkinData = FrmPrincipal.SkinEntradaDados
          SkinDataName = 'stdlabel'
          Caption = 'Caixa'
        end
        object edtDataMov: TbsSkinDateEdit
          Left = 122
          Top = 37
          Width = 86
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
          SkinData = FrmPrincipal.SkinEntradaDados
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
        object cmbD_C: TbsSkinComboBox
          Left = 122
          Top = 63
          Width = 85
          Height = 20
          HintImageIndex = 0
          TabOrder = 1
          SkinData = FrmPrincipal.SkinEntradaDados
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
          CharCase = ecNormal
          DefaultColor = clWindow
          Text = 'Saida'
          Items.Strings = (
            'Entrada'
            'Saida')
          ItemIndex = 1
          DropDownCount = 8
          HorizontalExtent = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          Sorted = False
          Style = bscbFixedStyle
          OnChange = cmbD_CChange
        end
        object EdtValor: TbsSkinEdit
          Left = 122
          Top = 165
          Width = 103
          Height = 22
          Text = '0,00'
          DefaultColor = clWindow
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -15
          DefaultFont.Name = 'Arial'
          DefaultFont.Style = [fsBold]
          UseSkinFont = False
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinData = FrmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object Edthistorico: TbsSkinEdit
          Left = 122
          Top = 139
          Width = 301
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
          SkinData = FrmPrincipal.SkinEntradaDados
          SkinDataName = 'edit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          CharCase = ecUpperCase
          MaxLength = 100
          ParentFont = False
          TabOrder = 7
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
        end
        object cmbNome_TipoDespesa: TbsSkinDBLookupComboBox
          Left = 208
          Top = 88
          Width = 215
          Height = 20
          HintImageIndex = 0
          TabOrder = 4
          SkinData = FrmPrincipal.SkinEntradaDados
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
          ListSource = srcCadOperacoes
          OnChange = cmbNome_TipoDespesaChange
        end
        object cmbCod_TipoDespesa: TbsSkinDBLookupComboBox
          Left = 122
          Top = 89
          Width = 85
          Height = 20
          HintImageIndex = 0
          TabOrder = 3
          SkinData = FrmPrincipal.SkinEntradaDados
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
          ListField = 'codigo;descricao'
          ListSource = srcCadOperacoes
          OnChange = cmbCod_TipoDespesaChange
        end
        object cmbNome_formaPagamento: TbsSkinDBLookupComboBox
          Left = 213
          Top = 63
          Width = 214
          Height = 20
          HintImageIndex = 0
          TabOrder = 2
          SkinData = FrmPrincipal.SkinEntradaDados
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
          ListSource = srcCadFormasPagamento
          OnChange = cmbNome_formaPagamentoChange
        end
        object cmbNome_Cliente: TbsSkinDBLookupComboBox
          Left = 207
          Top = 193
          Width = 214
          Height = 20
          HintImageIndex = 0
          TabOrder = 10
          SkinData = FrmPrincipal.SkinEntradaDados
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
          ListSource = srcCadClientes
          OnChange = cmbNome_ClienteChange
        end
        object edtcod_Cliente: TbsSkinEdit
          Left = 122
          Top = 193
          Width = 79
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
          SkinData = FrmPrincipal.SkinPrincipal
          SkinDataName = 'edit'
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = 14
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          LeftImageIndex = -1
          LeftImageHotIndex = -1
          LeftImageDownIndex = -1
          RightImageIndex = -1
          RightImageHotIndex = -1
          RightImageDownIndex = -1
          OnExit = edtcod_ClienteExit
        end
        object cmbCod_Caixa: TbsSkinDBLookupComboBox
          Left = 122
          Top = 114
          Width = 85
          Height = 20
          HintImageIndex = 0
          TabOrder = 5
          SkinData = FrmPrincipal.SkinEntradaDados
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
          ListField = 'codigo;descricao'
          ListSource = srcCaixa
          OnChange = cmbCod_CaixaChange
        end
        object cmbNome_Caixa: TbsSkinDBLookupComboBox
          Left = 208
          Top = 113
          Width = 215
          Height = 20
          HintImageIndex = 0
          TabOrder = 6
          SkinData = FrmPrincipal.SkinEntradaDados
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
          ListSource = srcCaixa
          OnChange = cmbNome_CaixaChange
        end
      end
    end
  end
  object qryPesquisa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmPrincipal.dbxPrincipal
    Left = 586
    Top = 120
  end
  object dspPesquisa: TDataSetProvider
    DataSet = qryPesquisa
    Left = 586
    Top = 148
  end
  object cdsPesquisa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesquisa'
    BeforeOpen = cdsPesquisaBeforeOpen
    OnCalcFields = cdsPesquisaCalcFields
    Left = 587
    Top = 176
  end
  object srcPesquisa: TDataSource
    DataSet = cdsPesquisa
    Left = 587
    Top = 204
  end
  object qryMovCaixa: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmPrincipal.dbxPrincipal
    Left = 614
    Top = 120
  end
  object dspMovCaixa: TDataSetProvider
    DataSet = qryMovCaixa
    Left = 614
    Top = 148
  end
  object cdsMovCaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMovCaixa'
    BeforeOpen = cdsPesquisaBeforeOpen
    Left = 615
    Top = 176
  end
  object srcMovCaixa: TDataSource
    DataSet = cdsMovCaixa
    Left = 615
    Top = 204
  end
  object srcCadOperacoes: TDataSource
    DataSet = cdsCadOperacoes
    Left = 643
    Top = 204
  end
  object cdsCadOperacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    BeforeOpen = cdsPesquisaBeforeOpen
    Left = 643
    Top = 176
  end
  object qryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmPrincipal.dbxPrincipal
    Left = 559
    Top = 120
  end
  object dspVariavel: TDataSetProvider
    DataSet = qryVariavel
    Left = 560
    Top = 148
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
    Left = 400
    Top = 112
  end
  object cdsRelatorio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 671
    Top = 176
  end
  object cdsCadFormasPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 699
    Top = 176
  end
  object srcCadFormasPagamento: TDataSource
    DataSet = cdsCadFormasPagamento
    Left = 699
    Top = 204
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = FrmPrincipal.dbxPrincipal
    Left = 531
    Top = 120
  end
  object cdsCadClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 728
    Top = 176
  end
  object srcCadClientes: TDataSource
    DataSet = cdsCadClientes
    Left = 728
    Top = 204
  end
  object srcCaixa: TDataSource
    DataSet = cdsCaixas
    Left = 756
    Top = 204
  end
  object cdsCaixas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 756
    Top = 176
  end
end
