object frmDevolucaoVenda: TfrmDevolucaoVenda
  Left = 218
  Top = 222
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'devolucao de Vendas  Efetuadas'
  ClientHeight = 456
  ClientWidth = 710
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grpDevolveItem: TbsSkinGroupBox
    Left = 0
    Top = 53
    Width = 710
    Height = 380
    HintImageIndex = 0
    TabOrder = 0
    SkinDataName = 'groupbox'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clTeal
    DefaultFont.Height = -15
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
    Caption = 'Informe a quantidade devolvida dos produtos'
    Align = alClient
    object dbgConsulta: TbsSkinDBGrid
      Left = 1
      Top = 23
      Width = 708
      Height = 356
      HintImageIndex = 0
      TabOrder = 0
      SkinDataName = 'grid'
      Transparent = False
      WallpaperStretch = False
      UseSkinFont = False
      UseSkinCellHeight = True
      GridLineColor = clWindowText
      DefaultCellHeight = 20
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      DrawGraphicFields = False
      UseColumnsFont = False
      DefaultRowHeight = 20
      MouseWheelSupport = False
      SaveMultiSelection = False
      PickListBoxSkinDataName = 'listbox'
      PickListBoxCaptionMode = False
      Align = alClient
      DataSource = srcTmpItensDevolucoes
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = dbgConsultaColExit
      Columns = <
        item
          Expanded = False
          FieldName = 'Codigo'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          ReadOnly = True
          Width = 228
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtde_Vendida'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Pco_Venda'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Qtde_devolvida'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          ReadOnly = True
          Visible = True
        end>
    end
  end
  object bsSkinStatusBar1: TbsSkinStatusBar
    Left = 0
    Top = 433
    Width = 710
    Height = 23
    HintImageIndex = 0
    TabOrder = 1
    SkinDataName = 'statusbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
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
    DefaultAlignment = taLeftJustify
    DefaultCaptionHeight = 22
    BorderStyle = bvNone
    CaptionMode = False
    RollUpMode = False
    RollUpState = False
    NumGlyphs = 1
    Spacing = 2
    Caption = 'bsSkinStatusBar1'
    Align = alBottom
    SizeGrip = False
    object btnTotalizar: TbsSkinSpeedButton
      Left = 266
      Top = 2
      Width = 81
      Height = 18
      HintImageIndex = 0
      SkinDataName = 'toolbutton'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = -15
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      CheckedMode = False
      UseSkinSize = False
      UseSkinFontColor = False
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
      Caption = 'Totalizar'
      ShowCaption = True
      NumGlyphs = 1
      Spacing = 1
      OnClick = btnTotalizarClick
    end
    object bsSkinStatusPanel1: TbsSkinStatusPanel
      Left = 0
      Top = 0
      Width = 130
      Height = 23
      HintImageIndex = 0
      TabOrder = 0
      SkinDataName = 'statuspanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clNavy
      DefaultFont.Height = -16
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      ShadowEffect = False
      ShadowColor = clBlack
      ShadowOffset = 0
      ShadowSize = 3
      ReflectionEffect = False
      ReflectionOffset = -5
      EllipsType = bsetNoneEllips
      UseSkinSize = False
      UseSkinFontColor = True
      BorderStyle = bvFrame
      Align = alLeft
      Caption = 'Total Devolvido'
      AutoSize = False
      ImageIndex = -1
      NumGlyphs = 1
    end
    object edtVlr_Recebido: TbsSkinEdit
      Left = 130
      Top = 0
      Width = 130
      Height = 23
      Text = '0,00'
      DefaultColor = clWindow
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clBlack
      DefaultFont.Height = -16
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = [fsBold]
      UseSkinFont = False
      DefaultWidth = 0
      DefaultHeight = 0
      ButtonMode = False
      SkinDataName = 'statusedit'
      ReadOnly = True
      Align = alLeft
      Alignment = taRightJustify
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Enabled = False
      ParentFont = False
      TabOrder = 1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      ExplicitTop = 1
    end
  end
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 710
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 49
        Width = 704
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 2
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 11
      Top = 0
      Width = 695
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
        Caption = 'Ok'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnokClick
        ExplicitLeft = 12
        ExplicitTop = 8
        ExplicitHeight = 40
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 541
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -1
      end
      object btnFechar: TbsSkinSpeedButton
        Left = 611
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
        ExplicitLeft = 487
        ExplicitTop = 8
        ExplicitHeight = 40
      end
    end
  end
  object cdsTmpItensDevolucoes: TClientDataSet
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
        Size = 50
      end
      item
        Name = 'Qtde_Vendida'
        DataType = ftInteger
      end
      item
        Name = 'Pco_Venda'
        DataType = ftFloat
      end
      item
        Name = 'Qtde_devolvida'
        DataType = ftInteger
      end
      item
        Name = 'vlr_Desconto'
        DataType = ftFloat
      end
      item
        Name = 'Pco_Custo'
        DataType = ftFloat
      end
      item
        Name = 'pco_Venda_Atual'
        DataType = ftFloat
      end
      item
        Name = 'total'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsTmpItensDevolucoesCalcFields
    Left = 276
    Top = 240
    Data = {
      D20000009619E0BD010000001800000009000000000003000000D20006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000C517464655F56656E6469646104000100000000000950
      636F5F56656E646108000400000000000E517464655F6465766F6C7669646104
      000100000000000C766C725F446573636F6E746F08000400000000000950636F
      5F437573746F08000400000000000F70636F5F56656E64615F417475616C0800
      04000000000005746F74616C08000400000000000000}
    object cdsTmpItensDevolucoesCodigo: TIntegerField
      DisplayWidth = 9
      FieldName = 'Codigo'
    end
    object cdsTmpItensDevolucoesDescricao: TStringField
      DisplayWidth = 28
      FieldName = 'Descricao'
      Size = 50
    end
    object cdsTmpItensDevolucoesQtde_Vendida: TIntegerField
      DisplayLabel = 'Qtde. Venda'
      DisplayWidth = 15
      FieldName = 'Qtde_Vendida'
    end
    object cdsTmpItensDevolucoesPco_Venda: TFloatField
      DisplayLabel = 'Pco. Venda'
      DisplayWidth = 12
      FieldName = 'Pco_Venda'
    end
    object cdsTmpItensDevolucoesQtde_devolvida: TIntegerField
      DisplayLabel = 'Qtde. Devolvida'
      DisplayWidth = 15
      FieldName = 'Qtde_devolvida'
    end
    object cdsTmpItensDevolucoesPerc_Desc: TFloatField
      FieldName = 'Vlr_Desconto'
      Precision = 4
    end
    object cdsTmpItensDevolucoespco_Custo: TFloatField
      FieldName = 'pco_Custo'
      DisplayFormat = '0.00'
    end
    object cdsTmpItensDevolucoesPco_Venda_Atual: TFloatField
      FieldName = 'Pco_Venda_Atual'
    end
    object cdsTmpItensDevolucoesTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '0.00'
      Calculated = True
    end
  end
  object srcTmpItensDevolucoes: TDataSource
    DataSet = cdsTmpItensDevolucoes
    Left = 276
    Top = 268
  end
  object dspVariavel: TDataSetProvider
    DataSet = qryVariavel
    Left = 304
    Top = 212
  end
  object qryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 304
    Top = 184
  end
  object cdsItensvendas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 240
    Data = {
      850000009619E0BD010000001800000005000000000003000000850006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000C517464655F56656E6469646104000100000000000950
      636F5F56656E646108000400000000000E517464655F6465766F6C7669646104
      000100000000000000}
  end
  object qryItensDevolucoes: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 360
    Top = 184
  end
  object dspItensDevolucoes: TDataSetProvider
    DataSet = qryItensDevolucoes
    Left = 360
    Top = 212
  end
  object cdsItensDevolucoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspItensDevolucoes'
    Left = 361
    Top = 240
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 248
    Top = 240
    Data = {
      850000009619E0BD010000001800000005000000000003000000850006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000C517464655F56656E6469646104000100000000000950
      636F5F56656E646108000400000000000E517464655F6465766F6C7669646104
      000100000000000000}
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 219
    Top = 240
    Data = {
      850000009619E0BD010000001800000005000000000003000000850006436F64
      69676F04000100000000000944657363726963616F0100490000000100055749
      4454480200020032000C517464655F56656E6469646104000100000000000950
      636F5F56656E646108000400000000000E517464655F6465766F6C7669646104
      000100000000000000}
  end
  object qrymodific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 333
    Top = 184
  end
  object qrySaldos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 389
    Top = 184
  end
  object dspSaldos: TDataSetProvider
    DataSet = qrySaldos
    Left = 389
    Top = 212
  end
  object cdsSaldos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSaldos'
    Left = 389
    Top = 240
  end
  object cdsHistoricoOS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspVariavel'
    Left = 192
    Top = 240
  end
  object SkinForm: TbsBusinessSkinForm
    UseRibbon = False
    QuickButtons = <>
    QuickButtonsShowHint = False
    QuickButtonsShowDivider = True
    ClientInActiveEffect = False
    ClientInActiveEffectType = bsieSemiTransparent
    DisableSystemMenu = False
    AlwaysResize = False
    PositionInMonitor = bspDefault
    UseFormCursorInNCArea = False
    MaxMenuItemsInWindow = 0
    ClientWidth = 0
    ClientHeight = 0
    HideCaptionButtons = False
    AlwaysShowInTray = False
    LogoBitMapTransparent = False
    AlwaysMinimizeToTray = False
    UseSkinFontInMenu = True
    ShowIcon = False
    MaximizeOnFullScreen = False
    AlphaBlend = False
    AlphaBlendAnimation = True
    AlphaBlendValue = 200
    ShowObjectHint = False
    MenusAlphaBlend = False
    MenusAlphaBlendAnimation = False
    MenusAlphaBlendValue = 200
    DefCaptionFont.Charset = DEFAULT_CHARSET
    DefCaptionFont.Color = clBtnText
    DefCaptionFont.Height = 14
    DefCaptionFont.Name = 'Arial'
    DefCaptionFont.Style = [fsBold]
    DefInActiveCaptionFont.Charset = DEFAULT_CHARSET
    DefInActiveCaptionFont.Color = clBtnShadow
    DefInActiveCaptionFont.Height = 14
    DefInActiveCaptionFont.Name = 'Arial'
    DefInActiveCaptionFont.Style = [fsBold]
    DefMenuItemHeight = 20
    DefMenuItemFont.Charset = DEFAULT_CHARSET
    DefMenuItemFont.Color = clWindowText
    DefMenuItemFont.Height = 14
    DefMenuItemFont.Name = 'Arial'
    DefMenuItemFont.Style = []
    UseDefaultSysMenu = True
    SkinData = frmPrincipal.SkinPrincipal
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 148
    Top = 152
  end
end
