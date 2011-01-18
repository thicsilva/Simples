object frmCadPerfil: TfrmCadPerfil
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Cadastro e manute'#231#227'o do perfil do usuario'
  ClientHeight = 524
  ClientWidth = 533
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
  object bsSkinPanel7: TbsSkinPanel
    Left = 0
    Top = 44
    Width = 533
    Height = 44
    TabOrder = 2
    SkinData = frmPrincipal.Skindata
    SkinDataName = 'panel'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = 14
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultWidth = 0
    DefaultHeight = 0
    UseSkinFont = True
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
      Left = 11
      Top = 14
      Width = 97
      Height = 13
      Caption = 'Nome do Novo Perfil'
    end
    object edtNovoPerfil: TbsSkinEdit
      Left = 114
      Top = 12
      Width = 247
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
    end
    object btnAdiciona: TbsSkinButton
      Left = 382
      Top = 8
      Width = 110
      Height = 25
      TabOrder = 1
      SkinData = frmPrincipal.Skindata
      SkinDataName = 'button'
      DefaultFont.Charset = DEFAULT_CHARSET
      DefaultFont.Color = clWindowText
      DefaultFont.Height = 14
      DefaultFont.Name = 'Arial'
      DefaultFont.Style = []
      DefaultWidth = 0
      DefaultHeight = 0
      UseSkinFont = False
      ImageList = frmPrincipal.Imagebutoes
      ImageIndex = 10
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
      OnClick = btnAdicionaClick
    end
  end
  object bsSkinPanel3: TbsSkinPanel
    Left = 0
    Top = 88
    Width = 533
    Height = 436
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
    Caption = 'bsSkinPanel3'
    Align = alClient
    ExplicitHeight = 410
    object bsSkinPanel8: TbsSkinPanel
      Left = 1
      Top = 1
      Width = 531
      Height = 179
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
      object ArvorePerfil: TbsSkinTreeView
        Left = 1
        Top = 1
        Width = 529
        Height = 177
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        UseSkinFont = True
        SkinData = frmPrincipal.Skindata
        SkinDataName = 'treeview'
        DefaultColor = clWindow
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Images = frmPrincipal.cxSmallImages
        Indent = 27
        ParentFont = False
        TabOrder = 0
        OnChange = ArvorePerfilChange
      end
    end
    object pnlConfig: TbsSkinExPanel
      Left = 1
      Top = 180
      Width = 531
      Height = 255
      TabOrder = 1
      SkinData = frmPrincipal.Skindata
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
      Align = alClient
      Caption = 'Configure os acessos'
      ExplicitHeight = 229
      object Menuraiz: TbsSkinTreeView
        Left = 1
        Top = 44
        Width = 256
        Height = 189
        Hint = 'Bot'#227'o Direito Aciona o Menu'
        VScrollBar = bsSkinScrollBar1
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        UseSkinFont = True
        SkinData = frmPrincipal.Skindata
        SkinDataName = 'treeview'
        DefaultColor = clWindow
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        Indent = 19
        ParentFont = False
        ParentShowHint = False
        PopupMenu = bsSkinPopupMenu1
        ShowHint = True
        TabOrder = 0
        OnChange = MenuraizChange
        ExplicitLeft = 4
        ExplicitTop = 50
        ExplicitHeight = 184
      end
      object lstAcessos: TbsSkinListView
        Left = 280
        Top = 44
        Width = 250
        Height = 189
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultColor = clWindow
        UseSkinFont = True
        SkinData = frmPrincipal.Skindata
        SkinDataName = 'listview'
        Align = alClient
        AllocBy = 10
        Checkboxes = True
        Columns = <>
        ColumnClick = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 14
        Font.Name = 'Arial'
        Font.Style = []
        FullDrag = True
        GridLines = True
        RowSelect = True
        ParentFont = False
        ShowWorkAreas = True
        TabOrder = 1
        ViewStyle = vsSmallIcon
        HeaderSkinDataName = 'toolbutton'
        OnChange = lstAcessosChange
        OnColumnClick = lstAcessosColumnClick
        ExplicitLeft = 266
        ExplicitWidth = 264
        ExplicitHeight = 184
      end
      object bsSkinPanel1: TbsSkinPanel
        Left = 276
        Top = 44
        Width = 4
        Height = 189
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
        Align = alLeft
        ExplicitLeft = 257
        ExplicitHeight = 184
      end
      object pnlCaminho: TPanel
        Left = 1
        Top = 21
        Width = 529
        Height = 23
        Align = alTop
        Caption = 'pnlCaminho'
        Color = 16578765
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 3
      end
      object bsSkinScrollBar1: TbsSkinScrollBar
        Left = 257
        Top = 44
        Width = 19
        Height = 189
        TabOrder = 4
        Visible = False
        SkinDataName = 'vscrollbar'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 19
        DefaultHeight = 0
        UseSkinFont = True
        Both = False
        BothMarkerWidth = 19
        BothSkinDataName = 'bothhscrollbar'
        CanFocused = False
        Align = alLeft
        Kind = sbVertical
        PageSize = 0
        Min = 0
        Max = 100
        Position = 0
        SmallChange = 1
        LargeChange = 1
        ExplicitLeft = 62
        ExplicitTop = 80
        ExplicitHeight = 200
      end
      object bsSkinStatusBar1: TbsSkinStatusBar
        Left = 1
        Top = 233
        Width = 529
        Height = 21
        TabOrder = 5
        SkinDataName = 'statusbar'
        DefaultFont.Charset = DEFAULT_CHARSET
        DefaultFont.Color = clWindowText
        DefaultFont.Height = 14
        DefaultFont.Name = 'Arial'
        DefaultFont.Style = []
        DefaultWidth = 0
        DefaultHeight = 0
        UseSkinFont = True
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
        ExplicitLeft = 464
        ExplicitTop = 232
        ExplicitWidth = 150
      end
    end
  end
  object bsSkinCoolBar1: TbsSkinCoolBar
    Left = 0
    Top = 0
    Width = 533
    Height = 44
    AutoSize = True
    Bands = <
      item
        Control = bsSkinToolBar1
        ImageIndex = -1
        MinHeight = 40
        Width = 527
      end>
    Images = frmPrincipal.Imagebutoes
    SkinDataName = 'controlbar'
    SkinData = frmPrincipal.Skindata
    SkinBevel = True
    TabOrder = 0
    object bsSkinToolBar1: TbsSkinToolBar
      Left = 12
      Top = 0
      Width = 513
      Height = 40
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
        Left = 425
        Top = 0
        Width = 70
        Height = 40
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
        OnClick = btnFecharClick
        ExplicitLeft = 362
        ExplicitTop = 8
      end
      object btnexcluir: TbsSkinSpeedButton
        Left = 70
        Top = 0
        Width = 70
        Height = 40
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
        ExplicitLeft = 64
        ExplicitTop = 8
      end
      object btnalterar: TbsSkinSpeedButton
        Left = 0
        Top = 0
        Width = 70
        Height = 40
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
        ExplicitLeft = -6
        ExplicitTop = 8
      end
      object BtnCancela: TbsSkinSpeedButton
        Left = 225
        Top = 0
        Width = 70
        Height = 40
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
        ExplicitLeft = 295
        ExplicitTop = 8
      end
      object bsSkinBevel1: TbsSkinBevel
        Left = 140
        Top = 0
        Width = 15
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 210
        ExplicitTop = -5
      end
      object btnok: TbsSkinSpeedButton
        Left = 155
        Top = 0
        Width = 70
        Height = 40
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
        Enabled = False
        OnClick = btnokClick
        ExplicitLeft = 149
        ExplicitTop = 8
      end
      object bsSkinBevel2: TbsSkinBevel
        Left = 295
        Top = 0
        Width = 130
        Height = 40
        Align = alLeft
        SkinData = frmPrincipal.Skindata
        SkinDataName = 'bevel'
        DividerMode = True
        ExplicitLeft = 301
        ExplicitTop = -5
      end
    end
  end
  object cdsFormacaoMenu: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Menu'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ItemMenu'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SubItemMenu'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'imageIndex'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'menu;itemmenu'
    Params = <>
    StoreDefs = True
    Left = 372
    Top = 143
    Data = {
      990000009619E0BD0100000018000000040000000000030000009900044D656E
      750100490000000100055749445448020002001E00084974656D4D656E750100
      490000000100055749445448020002001E000B5375624974656D4D656E750100
      490000000100055749445448020002001E000A696D616765496E646578040001
      000000000001000D44454641554C545F4F524445520200820000000000}
    object cdsFormacaoMenuMenu: TStringField
      FieldName = 'Menu'
      Size = 30
    end
    object cdsFormacaoMenuItemMenu: TStringField
      FieldName = 'ItemMenu'
      Size = 30
    end
    object cdsFormacaoMenuSubItemMenu: TStringField
      FieldName = 'SubItemMenu'
      Size = 30
    end
    object cdsFormacaoMenuImageIndex: TIntegerField
      FieldName = 'ImageIndex'
    end
  end
  object actSubItens: TActionList
    Left = 316
    Top = 143
    object Incluir: TAction
      Category = 'Cadastros'
      Caption = 'Incluir'
    end
    object alterar: TAction
      Category = 'Cadastros'
      Caption = 'alterar'
    end
    object Excluir: TAction
      Category = 'Cadastros'
      Caption = 'Excluir'
    end
    object Pesquisa: TAction
      Category = 'Cadastros'
      Caption = 'Pesquisa'
    end
    object Imprimir: TAction
      Category = 'Cadastros'
      Caption = 'Imprimir'
    end
    object CupomLiberar: TAction
      Category = 'Cupom Fiscal'
      Caption = 'Liberar Acesso'
      ImageIndex = 3
    end
    object actfianceiro: TAction
      Category = 'Financeiro'
      Caption = 'Liberar Acesso'
    end
    object Action1: TAction
      Category = 'Seguran'#231'a'
      Caption = 'Incluir'
    end
    object Action2: TAction
      Category = 'Seguran'#231'a'
      Caption = 'Aletara'
    end
    object Action3: TAction
      Category = 'Seguran'#231'a'
      Caption = 'Excluir'
    end
    object Action4: TAction
      Category = 'Seguran'#231'a'
      Caption = 'Pesquisar'
    end
    object Action5: TAction
      Category = 'Seguran'#231'a'
      Caption = 'Imprimir'
    end
    object Action6: TAction
      Category = 'Utilitarios'
      Caption = 'Liberar Acesso'
    end
    object Action7: TAction
      Category = 'Relatorios'
      Caption = 'Liberar Acesso'
    end
    object Liberar: TAction
      Category = 'Movimento'
      Caption = 'Liberar Acesso'
    end
    object act_AlteraPrecoVenda: TAction
      Category = 'Movimento'
      Caption = 'Vendas - Altera Preco de Venda'
    end
    object Action9: TAction
      Category = 'Atendimento Tecnico'
      Caption = 'Liberar acesso'
    end
    object Action10: TAction
      Category = 'Propostas'
      Caption = 'Libera Acesso'
    end
  end
  object CdsSubItens: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Menu'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'ItemMenu'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'SubItemMenu'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'imageIndex'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'menu;itemmenu'
    Params = <>
    StoreDefs = True
    Left = 345
    Top = 143
    Data = {
      990000009619E0BD0100000018000000040000000000030000009900044D656E
      750100490000000100055749445448020002001E00084974656D4D656E750100
      490000000100055749445448020002001E000B5375624974656D4D656E750100
      490000000100055749445448020002001E000A696D616765496E646578040001
      000000000001000D44454641554C545F4F524445520200820000000000}
    object StringField1: TStringField
      FieldName = 'Menu'
      Size = 30
    end
    object StringField2: TStringField
      FieldName = 'ItemMenu'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'SubItemMenu'
      Size = 30
    end
    object IntegerField1: TIntegerField
      FieldName = 'ImageIndex'
    end
  end
  object qryCadPerfil: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from T_Perfil')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 186
    Top = 171
    object qryCadPerfilCod_Emp: TStringField
      FieldName = 'Cod_Emp'
      FixedChar = True
      Size = 3
    end
    object qryCadPerfilData_Cad: TSQLTimeStampField
      FieldName = 'Data_Cad'
    end
    object qryCadPerfilData_Atu: TSQLTimeStampField
      FieldName = 'Data_Atu'
    end
    object qryCadPerfilData_Mov: TSQLTimeStampField
      FieldName = 'Data_Mov'
    end
    object qryCadPerfilCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object qryCadPerfilDescricao: TStringField
      FieldName = 'Descricao'
      Size = 50
    end
  end
  object dspCadPerfil: TDataSetProvider
    DataSet = qryCadPerfil
    Left = 186
    Top = 199
  end
  object cdsCadPerfil: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCadPerfil'
    Left = 186
    Top = 227
  end
  object qryPerfilAcesso: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from T_acessoPerfil')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 214
    Top = 171
    object qryPerfilAcessoSequencia: TIntegerField
      FieldName = 'Sequencia'
    end
    object qryPerfilAcessocod_emp: TStringField
      FieldName = 'cod_emp'
      FixedChar = True
      Size = 3
    end
    object qryPerfilAcessodata_cad: TSQLTimeStampField
      FieldName = 'data_cad'
    end
    object qryPerfilAcessodata_Atu: TSQLTimeStampField
      FieldName = 'data_Atu'
    end
    object qryPerfilAcessoData_mov: TSQLTimeStampField
      FieldName = 'Data_mov'
    end
    object qryPerfilAcessoCod_Perfil: TIntegerField
      FieldName = 'Cod_Perfil'
    end
    object qryPerfilAcessoCategoria: TStringField
      FieldName = 'Categoria'
      Size = 30
    end
    object qryPerfilAcessoMenu: TStringField
      FieldName = 'Menu'
      Size = 30
    end
    object qryPerfilAcessoItem: TStringField
      FieldName = 'Item'
      Size = 30
    end
    object qryPerfilAcessoAcesso: TBooleanField
      FieldName = 'Acesso'
    end
  end
  object dspPerfilAcesso: TDataSetProvider
    DataSet = qryPerfilAcesso
    Left = 214
    Top = 199
  end
  object cdsPerfilAcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPerfilAcesso'
    Left = 214
    Top = 227
  end
  object cdstmpAcessoPerfil: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Menu'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'item'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'acesso'
        DataType = ftBoolean
      end
      item
        Name = 'Categoria'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 242
    Top = 227
    Data = {
      790000009619E0BD0100000018000000040000000000030000007900044D656E
      750100490000000100055749445448020002003200046974656D010049000000
      01000557494454480200020032000661636573736F0200030000000000094361
      7465676F7269610100490000000100055749445448020002001E000000}
    object cdstmpAcessoPerfilMenu: TStringField
      FieldName = 'Menu'
      Size = 50
    end
    object cdstmpAcessoPerfilitem: TStringField
      FieldName = 'item'
      Size = 50
    end
    object cdstmpAcessoPerfilacesso: TBooleanField
      FieldName = 'acesso'
    end
    object cdstmpAcessoPerfilcategoria: TStringField
      FieldName = 'categoria'
      Size = 30
    end
  end
  object SkinForm: TbsBusinessSkinForm
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
    UseDefaultObjectHint = True
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
    SkinData = frmPrincipal.Skindata
    MinHeight = 0
    MinWidth = 0
    MaxHeight = 0
    MaxWidth = 0
    Magnetic = False
    MagneticSize = 5
    BorderIcons = [biSystemMenu, biMinimize, biMaximize, biRollUp]
    Left = 268
    Top = 144
  end
  object qryModific: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from T_acessoPerfil')
    SQLConnection = frmPrincipal.dbxPrincipal
    Left = 158
    Top = 171
    object IntegerField2: TIntegerField
      FieldName = 'Sequencia'
    end
    object StringField4: TStringField
      FieldName = 'cod_emp'
      FixedChar = True
      Size = 3
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'data_cad'
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'data_Atu'
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'Data_mov'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Cod_Perfil'
    end
    object StringField5: TStringField
      FieldName = 'Categoria'
      Size = 30
    end
    object StringField6: TStringField
      FieldName = 'Menu'
      Size = 30
    end
    object StringField7: TStringField
      FieldName = 'Item'
      Size = 30
    end
    object BooleanField1: TBooleanField
      FieldName = 'Acesso'
    end
  end
  object bsSkinPopupMenu1: TbsSkinPopupMenu
    SkinData = frmPrincipal.Skindata
    Left = 144
    Top = 104
    object MarcarTodos1: TMenuItem
      Caption = 'Marcar Todos'
      OnClick = MarcarTodos1Click
    end
    object DesmarcarTodos1: TMenuItem
      Caption = 'Desmarcar Todos'
      OnClick = DesmarcarTodos1Click
    end
  end
end
