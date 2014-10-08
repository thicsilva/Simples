object frmCalMQuadrado: TfrmCalMQuadrado
  Left = 0
  Top = 0
  Caption = 'Calculo do pre'#231'o por  metro '
  ClientHeight = 244
  ClientWidth = 349
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
    Width = 349
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 345
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 0
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 70
      Height = 40
      HintImageIndex = 0
      TabOrder = 0
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'bigtoolpanel'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 70
      DefaultHeight = 40
      UseSkinFont = True
      EmptyDrawing = False
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
        Left = 241
        Top = 0
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
        Align = alLeft
        Spacing = 2
        Layout = blGlyphTop
        OnClick = btnFecharClick
        ExplicitLeft = 417
        ExplicitTop = 8
      end
      object btnok: TbsSkinSpeedButton
        Left = 0
        Top = 0
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
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnokClick
        ExplicitLeft = -6
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 171
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 64
        ExplicitTop = -5
      end
    end
  end
  object panelgeral: TbsSkinExPanel
    Left = 0
    Top = 44
    Width = 349
    Height = 200
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
    Align = alClient
    Caption = 'Informe as Medidas para o Metro Quadrado'
    object bsSkinStdLabel1: TbsSkinStdLabel
      Left = 51
      Top = 37
      Width = 30
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
      Caption = 'Altura '
    end
    object bsSkinStdLabel2: TbsSkinStdLabel
      Left = 168
      Top = 37
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'stdlabel'
      Caption = 'Comprimento'
    end
    object bsSkinStdLabel3: TbsSkinStdLabel
      Left = 172
      Top = 77
      Width = 57
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
      Caption = 'Total Em M.'
    end
    object bsSkinStdLabel4: TbsSkinStdLabel
      Left = 27
      Top = 117
      Width = 51
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
      Caption = 'Valor do M'
    end
    object bsSkinStdLabel5: TbsSkinStdLabel
      Left = 166
      Top = 117
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
      SkinData = frmPrincipal.SkinPrincipal
      SkinDataName = 'stdlabel'
      Caption = 'Total a pagar'
    end
    object AtualizaRec: TbsSkinSpeedButton
      Left = 18
      Top = 148
      Width = 311
      Height = 24
      HintImageIndex = 0
      SkinData = frmPrincipal.SkinPrincipal
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
    object lbl01: TbsSkinStdLabel
      Left = 24
      Top = 77
      Width = 58
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
      Caption = 'Complemnto'
    end
    object edtaltura: TbsSkinNumericEdit
      Left = 87
      Top = 34
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
      OnExit = AtualizaRecClick
    end
    object edtcomprimento: TbsSkinNumericEdit
      Left = 235
      Top = 34
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
      SkinData = frmPrincipal.SkinEntradaDados
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
      OnExit = AtualizaRecClick
    end
    object edtMEtroQ: TbsSkinNumericEdit
      Left = 235
      Top = 74
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
      OnExit = AtualizaRecClick
    end
    object edtVlrMetro: TbsSkinNumericEdit
      Left = 87
      Top = 114
      Width = 65
      Height = 20
      Text = '0,00'
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
      TabOrder = 4
      ButtonImageIndex = -1
      LeftImageIndex = -1
      LeftImageHotIndex = -1
      LeftImageDownIndex = -1
      RightImageIndex = -1
      RightImageHotIndex = -1
      RightImageDownIndex = -1
      OnExit = AtualizaRecClick
    end
    object edtTotal: TbsSkinNumericEdit
      Left = 235
      Top = 114
      Width = 65
      Height = 20
      Text = '0,00'
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
      ReadOnly = True
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
      OnExit = AtualizaRecClick
    end
    object edtComplemento: TbsSkinNumericEdit
      Left = 87
      Top = 74
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
      OnExit = AtualizaRecClick
    end
  end
end
