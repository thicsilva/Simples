object frmFinalizaServico: TfrmFinalizaServico
  Left = 0
  Top = 0
  Caption = 'Finalizar servi'#231'o '
  ClientHeight = 479
  ClientWidth = 845
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
  object bsSkinCoolBar2: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 845
    Height = 53
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar2
        ImageIndex = -1
        MinHeight = 49
        Width = 841
      end>
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.SkinPrincipal
    SkinBevel = True
    TabOrder = 0
    object bsSkinToolBar2: TbsSkinToolBar
      Left = 9
      Top = 0
      Width = 832
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
        Left = 724
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
        ExplicitLeft = 543
        ExplicitTop = 12
        ExplicitHeight = 40
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 723
        Top = 0
        Width = 1
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 477
        ExplicitTop = -1
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 70
        Top = 0
        Width = 653
        Height = 49
        Align = alLeft
        SkinData = frmPrincipal.SkinPrincipal
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 76
        ExplicitTop = -1
      end
      object btnConcluir: TbsSkinSpeedButton
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
        Caption = '&Finalizar'
        ShowCaption = True
        NumGlyphs = 1
        Align = alLeft
        Spacing = 1
        Layout = blGlyphTop
        OnClick = btnConcluirClick
        ExplicitLeft = 64
        ExplicitTop = 12
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 53
    Width = 845
    Height = 426
    Align = alClient
    Caption = 'Panel4'
    TabOrder = 1
    object Panel1: TPanel
      Left = 456
      Top = 1
      Width = 388
      Height = 424
      Align = alRight
      TabOrder = 0
      object Panel2: TPanel
        Left = 1
        Top = 1
        Width = 386
        Height = 32
        Align = alTop
        BevelOuter = bvLowered
        TabOrder = 0
      end
      object imageVerso: TcxImage
        Left = 6
        Top = 259
        TabOrder = 1
        Height = 163
        Width = 371
      end
      object imageFrente: TcxImage
        Left = 5
        Top = 66
        TabOrder = 2
        Height = 163
        Width = 372
      end
      object bsSkinLabel1: TbsSkinLabel
        Left = 5
        Top = 39
        Width = 372
        Height = 21
        HintImageIndex = 0
        TabOrder = 3
        SkinData = frmPrincipal.SkinEntradaDados
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
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
        Caption = 'Frente da etiqueta'
        AutoSize = False
      end
      object bsSkinLabel2: TbsSkinLabel
        Left = 6
        Top = 235
        Width = 371
        Height = 21
        HintImageIndex = 0
        TabOrder = 4
        SkinData = frmPrincipal.SkinEntradaDados
        SkinDataName = 'label'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 13
        DefaultFont.Name = 'Tahoma'
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
        Caption = 'Verso da etiqueta'
        AutoSize = False
      end
    end
    object TPanel
      Left = 1
      Top = 1
      Width = 455
      Height = 424
      Align = alClient
      TabOrder = 1
      object pnlteste: TPanel
        Left = 1
        Top = 124
        Width = 453
        Height = 35
        Align = alTop
        TabOrder = 0
        object bsSkinButton1: TbsSkinButton
          Left = 259
          Top = 4
          Width = 108
          Height = 28
          HintImageIndex = 0
          TabOrder = 0
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
          Caption = '    &Atualizar'
          NumGlyphs = 1
          Spacing = 1
          OnClick = bsSkinButton1Click
        end
        object edtQtdeTamanho: TbsSkinEdit
          Left = 161
          Top = 4
          Width = 94
          Height = 29
          Text = '0'
          DefaultColor = clWindow
          DefaultFont.Charset = ANSI_CHARSET
          DefaultFont.Color = clBlack
          DefaultFont.Height = -19
          DefaultFont.Name = 'Arial Narrow'
          DefaultFont.Style = [fsBold]
          UseSkinFont = False
          DefaultWidth = 0
          DefaultHeight = 0
          ButtonMode = False
          SkinDataName = 'edit'
          Alignment = taRightJustify
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
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
        object bsSkinLabel5: TbsSkinLabel
          Left = 2
          Top = 4
          Width = 155
          Height = 28
          HintImageIndex = 0
          TabOrder = 2
          SkinData = frmPrincipal.SkinEntradaDados
          SkinDataName = 'label'
          DefaultFont.Charset = DEFAULT_CHARSET
          DefaultFont.Color = clWindowText
          DefaultFont.Height = -16
          DefaultFont.Name = 'Tahoma'
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
          UseSkinSize = False
          UseSkinFontColor = True
          BorderStyle = bvFrame
          Caption = 'Qtde. Produzida'
          AutoSize = False
        end
      end
      object gridTamanho: TbsSkinDBGrid
        Left = 1
        Top = 159
        Width = 453
        Height = 264
        HintImageIndex = 0
        TabOrder = 1
        SkinDataName = 'grid'
        Transparent = False
        WallpaperStretch = False
        UseSkinFont = True
        UseSkinCellHeight = True
        GridLineColor = clWindowText
        DefaultCellHeight = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ColSizingwithLine = False
        DrawGraphicFields = False
        UseColumnsFont = False
        MouseWheelSupport = False
        SaveMultiSelection = False
        PickListBoxSkinDataName = 'listbox'
        PickListBoxCaptionMode = False
        Align = alClient
        DataSource = srcTmpTamanhos
        ParentFont = False
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBtnText
        TitleFont.Height = 14
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Tamanho'
            Title.Caption = 'Tamanhos'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBtnText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 127
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Qtde'
            Title.Caption = 'Qtde. Solicitada'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBtnText
            Title.Font.Height = -15
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 112
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QtdeProduzida'
            Title.Caption = 'Qtde Produzida'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clBtnText
            Title.Font.Height = -16
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 118
            Visible = True
          end>
      end
      object dbGridItensGrade: TbsSkinDBGrid
        Left = 1
        Top = 1
        Width = 453
        Height = 123
        HintImageIndex = 0
        TabOrder = 2
        SkinDataName = 'grid'
        Transparent = False
        WallpaperStretch = False
        UseSkinFont = True
        UseSkinCellHeight = True
        GridLineColor = clWindowText
        DefaultCellHeight = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clBtnText
        Font.Height = -16
        Font.Name = 'Arial Narrow'
        Font.Style = [fsBold]
        ColSizingwithLine = False
        DrawGraphicFields = False
        UseColumnsFont = False
        MouseWheelSupport = False
        SaveMultiSelection = False
        PickListBoxSkinDataName = 'listbox'
        PickListBoxCaptionMode = False
        Align = alTop
        DataSource = srcItensServico
        ParentFont = False
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBtnText
        TitleFont.Height = 14
        TitleFont.Name = 'Arial'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'Codigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBtnText
            Title.Font.Height = -13
            Title.Font.Name = 'Arial'
            Title.Font.Style = []
            Width = 310
            Visible = True
          end>
      end
    end
  end
  object cdsTmpItensServico: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    AfterScroll = cdsTmpItensServicoAfterScroll
    Left = 506
    Top = 131
    Data = {
      530000009619E0BD010000001800000002000000000003000000530006436F64
      69676F0100490000000100055749445448020002000A00094465736372696361
      6F01004900000001000557494454480200020096000000}
    object cdsTmpItensServicoCodigo: TStringField
      FieldName = 'Codigo'
      Size = 10
    end
    object cdsTmpItensServicoDescricao: TStringField
      FieldName = 'Descricao'
      Size = 150
    end
  end
  object srcItensServico: TDataSource
    DataSet = cdsTmpItensServico
    Left = 506
    Top = 159
  end
  object cdsTmpTamanhos: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterScroll = cdsTmpTamanhosAfterScroll
    Left = 536
    Top = 132
  end
  object srcTmpTamanhos: TDataSource
    DataSet = cdsTmpTamanhos
    Left = 536
    Top = 160
  end
end
