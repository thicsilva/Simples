object frmProdDescricaoComplementar: TfrmProdDescricaoComplementar
  Left = 0
  Top = 0
  Caption = 'Descri'#231#227'o Complementar de Produtos'
  ClientHeight = 381
  ClientWidth = 497
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
    Width = 497
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 491
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.Skindata
    SkinBevel = True
    TabOrder = 0
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 12
      Top = 0
      Width = 70
      Height = 40
      HintImageIndex = 0
      TabOrder = 0
      SkinData = frmPrincipal.Skindata
      SkinDataName = 'bigtoolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 70
      DefaultHeight = 40
      UseSkinFont = True
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
        Left = 401
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        SkinData = frmPrincipal.Skindata
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 70
        DefaultHeight = 40
        UseSkinFont = True
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
        ExplicitLeft = 487
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 0
        Top = 0
        Width = 18
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 18
        Top = 0
        Width = 70
        Height = 40
        HintImageIndex = 0
        SkinData = frmPrincipal.Skindata
        SkinDataName = 'bigtoolbutton'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
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
        ExplicitLeft = 24
        ExplicitTop = 8
      end
      object bsSkinBevel3: TbsSkinBevel
        Left = 88
        Top = 0
        Width = 313
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitTop = -5
      end
    end
  end
  object bsSkinExPanel1: TbsSkinExPanel
    Left = 0
    Top = 44
    Width = 497
    Height = 53
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
    Align = alTop
    Caption = 'Descricao Original'
    object bsSkinStdLabel15: TbsSkinStdLabel
      Left = 7
      Top = 29
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
      SkinData = frmPrincipal.Skindata
      SkinDataName = 'stdlabel'
      Caption = 'Produto'
    end
    object edtCod_Produto: TbsSkinEdit
      Left = 50
      Top = 26
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
      SkinData = frmPrincipal.Skindata
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtProd_Descricao: TbsSkinEdit
      Left = 121
      Top = 26
      Width = 368
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
      SkinData = frmPrincipal.Skindata
      SkinDataName = 'edit'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = 14
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object bsSkinExPanel2: TbsSkinExPanel
    Left = 0
    Top = 97
    Width = 497
    Height = 120
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
    Caption = 'Descri'#231#227'o Complementar'
    object MemComplemento: TMemo
      Left = 1
      Top = 21
      Width = 495
      Height = 98
      Align = alClient
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 16
    end
  end
  object bsSkinStatusBar1: TbsSkinStatusBar
    Left = 0
    Top = 360
    Width = 497
    Height = 21
    HintImageIndex = 0
    TabOrder = 3
    SkinDataName = 'statusbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
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
  end
  object bsSkinDBGrid1: TbsSkinDBGrid
    Left = 0
    Top = 241
    Width = 497
    Height = 100
    HintImageIndex = 0
    TabOrder = 4
    SkinDataName = 'grid'
    Transparent = False
    WallpaperStretch = False
    UseSkinFont = True
    UseSkinCellHeight = True
    HScrollBar = bsSkinScrollBar1
    GridLineColor = clWindowText
    DefaultCellHeight = 20
    DrawGraphicFields = False
    UseColumnsFont = False
    DefaultRowHeight = 17
    MouseWheelSupport = False
    SaveMultiSelection = False
    PickListBoxSkinDataName = 'listbox'
    PickListBoxCaptionMode = False
    Align = alClient
    DataSource = DataSource1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Complemento'
        Width = 1000
        Visible = True
      end>
  end
  object bsSkinPanel1: TbsSkinPanel
    Left = 0
    Top = 217
    Width = 497
    Height = 24
    HintImageIndex = 0
    TabOrder = 5
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
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
  end
  object bsSkinScrollBar1: TbsSkinScrollBar
    Left = 0
    Top = 341
    Width = 497
    Height = 19
    HintImageIndex = 0
    TabOrder = 6
    Visible = False
    SkinDataName = 'hscrollbar'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 19
    UseSkinFont = True
    Both = False
    BothMarkerWidth = 19
    BothSkinDataName = 'bothhscrollbar'
    CanFocused = False
    Align = alBottom
    Kind = sbHorizontal
    PageSize = 0
    Min = 0
    Max = 0
    Position = 0
    SmallChange = 1
    LargeChange = 1
    ExplicitLeft = 344
    ExplicitTop = 304
    ExplicitWidth = 200
  end
  object cdsDescricaoComplementar: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = cdsDescricaoComplementar
    Left = 200
    Top = 260
  end
  object QryVariavel: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 253
    Top = 130
  end
  object dspVariavel: TDataSetProvider
    DataSet = QryVariavel
    Left = 253
    Top = 157
  end
end
