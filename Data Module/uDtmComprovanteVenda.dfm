object DtmComprovante: TDtmComprovante
  OldCreateOrder = False
  Height = 154
  Width = 215
  object frxOrdemServico: TfrxReport
    Version = '4.9.105'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41706.281067442100000000
    ReportOptions.LastChange = 41927.950872071800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 53
    Top = 13
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
        Name = ' Personalizado'
        Value = Null
      end
      item
        Name = 'TotalLocacao'
        Value = '0'
      end
      item
        Name = 'CNPJCliente'
        Value = #39'0'#39
      end
      item
        Name = 'CNPJEmpresa'
        Value = #39'00'#39
      end
      item
        Name = 'NumeroVenda'
        Value = Null
      end
      item
        Name = 'FormaPagamento'
        Value = Null
      end
      item
        Name = 'Vendedor'
        Value = Null
      end
      item
        Name = 'Servicos'
        Value = Null
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
      Duplex = dmSimplex
      object ReportTitle1: TfrxReportTitle
        Height = 109.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Shape2: TfrxShapeView
          Left = 1.779530000000000000
          Top = 0.881880000000000000
          Width = 710.551640000000000000
          Height = 101.504020000000000000
          ShowHint = False
        end
        object dbSetEmpresaNome_Fantasia: TfrxMemoView
          Left = 3.779530000000000000
          Top = 24.897650000000000000
          Width = 710.362710000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Nome_Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetEmpresa."Nome_Fantasia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object dbSetEmpresaCNPJCPF: TfrxMemoView
          Left = 2.574830000000000000
          Top = 85.590600000000000000
          Width = 708.583180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'CNPJ.: [CNPJEmpresa]')
          ParentFont = False
        end
        object dbSetEmpresaEndereco: TfrxMemoView
          Left = 2.574830000000000000
          Top = 63.252010000000000000
          Width = 706.583180000000000000
          Height = 16.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Endere'#195#167'o.: [dbSetEmpresa."Endereco"] [dbSetEmpresa."Bairro"] [d' +
              'bSetEmpresa."Cidade"]/[dbSetEmpresa."UF"] CEP.:[dbSetEmpresa."Ce' +
              'p"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          Top = 2.440940000000000000
          Width = 190.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = clMenuText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Assistencia Tecnica')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 906.252320000000000000
        Top = 151.181200000000000000
        Width = 718.110700000000000000
        object Shape3: TfrxShapeView
          Left = 1.000000000000000000
          Top = 1.039270000000000000
          Width = 712.331170000000000000
          Height = 82.385900000000000000
          ShowHint = False
        end
        object dbSetClienteDescricao: TfrxMemoView
          Left = 1.338590000000000000
          Top = 19.559060000000000000
          Width = 392.913730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome [dbSetCliente."Descricao"]')
          ParentFont = False
        end
        object dbSetClienteresponsavel: TfrxMemoView
          Left = 400.850650000000000000
          Top = 19.905380000000000000
          Width = 162.039270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Telefone.: [dbSetCliente."Telefone"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 1.779530000000000000
          Top = 2.259740000000000000
          Width = 175.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = clMenuText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ordem de Servi'#195#167'o')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Left = 568.000000000000000000
          Top = 0.803030000000000000
          Height = 80.881880000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object NumeroVenda: TfrxMemoView
          Left = 568.000000000000000000
          Top = 21.803030000000000000
          Width = 145.370130000000000000
          Height = 25.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[NumeroVenda]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 4.779530000000000000
          Top = 360.023500000000000000
          Width = 314.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo35: TfrxMemoView
          Left = 6.779530000000000000
          Top = 363.803030000000000000
          Width = 302.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome.:  [dbSetCliente."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Vendedor: TfrxMemoView
          Left = 482.440940000000000000
          Top = 321.141620000000000000
          Width = 225.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Data de Saida   ____/____/____')
        end
        object Memo3: TfrxMemoView
          Left = 7.559060000000000000
          Top = 320.480520000000000000
          Width = 217.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Data de Entrada   ____/____/____')
        end
        object Line2: TfrxLineView
          Left = 396.850650000000000000
          Top = 359.614410000000000000
          Width = 314.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          Left = 399.850650000000000000
          Top = 363.614410000000000000
          Width = 310.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Digitell Games Import'#194#180's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 3.779530000000000000
          Top = 125.724490000000000000
          Width = 710.551640000000000000
          Height = 188.976500000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '1 - A loja n'#195#163'o se responsabiliza pela procedencia do aparelho, ' +
              'sendo esta total responsabilidade do cliente.'
            
              '2 - O aparelho n'#195#163'o retirado no prazo de 90 dias poder'#195#161' ser ven' +
              'dido ou desmontado para reposi'#195#167#195#163'o de pe'#195#167'as para suprir gastos' +
              ' de manuten'#195#167'ao conforme a lei 4.131/08 de 62.'
            
              '3 - Caso o aparelho descrito acima apresente outro defeito, dife' +
              'rente do reclamado, mesmo dentro do prazo de garantia estara suj' +
              'eito a um novo or'#195#167'amento.'
            
              '4 - O prazo minimo para o or'#195#167'amento e de ate 7 dias, caso haja ' +
              'um desacordo no prazo estipulado de entrega do apareho s'#195#179' ser'#195#161 +
              ' entregue no prazo de 30 dias conforme a lei ou devolvido nas me' +
              'smas condi'#195#167#195#181'es que foi entregue pelo cliente.'
            
              '5 - O APARELHO S'#195#8220' SER'#195#129' ENTREGUE COM ESSA ORDEM DE SERVI'#195#8225'O OU ' +
              'COM O CPF DO TITULAR.'
            
              '6 - A garantia do servi'#195#167'o prestado s'#195#163'o de 90 dias a partir da ' +
              'data da entrega. '
            ''
            'Concordo com os termos acima e assino.')
          ParentFont = False
        end
        object Vendedor1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 64.472480000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Defeito Reclamado.: [Vendedor]')
        end
        object FormaPagamento: TfrxMemoView
          Left = 3.779530000000000000
          Top = 47.574830000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto.: [FormaPagamento]')
        end
        object Line4: TfrxLineView
          Top = 393.071120000000000000
          Width = 729.449290000000000000
          ShowHint = False
          Frame.Style = fsDash
          Frame.Typ = [ftTop]
        end
        object Servicos: TfrxMemoView
          Left = 3.779530000000000000
          Top = 86.929190000000000000
          Width = 710.551640000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Servi'#195#167'os Executados..: [Servicos]')
        end
        object Shape1: TfrxShapeView
          Left = 1.779530000000000000
          Top = 400.630180000000000000
          Width = 710.551640000000000000
          Height = 101.504020000000000000
          ShowHint = False
        end
        object Memo7: TfrxMemoView
          Left = 3.779530000000000000
          Top = 424.645950000000000000
          Width = 710.362710000000000000
          Height = 34.015770000000000000
          ShowHint = False
          DataField = 'Nome_Fantasia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            '[dbSetEmpresa."Nome_Fantasia"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 2.574830000000000000
          Top = 485.338900000000000000
          Width = 708.583180000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            'CNPJ.: [CNPJEmpresa]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 2.574830000000000000
          Top = 463.000310000000000000
          Width = 706.583180000000000000
          Height = 16.779530000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              'Endere'#195#167'o.: [dbSetEmpresa."Endereco"] [dbSetEmpresa."Bairro"] [d' +
              'bSetEmpresa."Cidade"]/[dbSetEmpresa."UF"] CEP.:[dbSetEmpresa."Ce' +
              'p"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Top = 402.189240000000000000
          Width = 190.606370000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = clMenuText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Assistencia Tecnica')
          ParentFont = False
        end
        object Shape4: TfrxShapeView
          Top = 506.693260000000000000
          Width = 712.331170000000000000
          Height = 82.385900000000000000
          ShowHint = False
        end
        object Memo11: TfrxMemoView
          Left = 4.118120000000000000
          Top = 525.213050000000000000
          Width = 392.913730000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Nome [dbSetCliente."Descricao"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 399.850650000000000000
          Top = 525.559370000000000000
          Width = 162.039270000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Telefone.: [dbSetCliente."Telefone"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 0.779530000000000000
          Top = 507.913730000000000000
          Width = 175.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          BrushStyle = bsClear
          Color = clMenuText
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ordem de Servi'#195#167'o')
          ParentFont = False
        end
        object Line5: TfrxLineView
          Left = 567.000000000000000000
          Top = 506.457020000000000000
          Height = 80.881880000000000000
          ShowHint = False
          Frame.Typ = [ftLeft]
        end
        object Line6: TfrxLineView
          Left = 3.779530000000000000
          Top = 865.677490000000000000
          Width = 314.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo16: TfrxMemoView
          Left = 5.779530000000000000
          Top = 869.457020000000000000
          Width = 302.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Nome.:  [dbSetCliente."Descricao"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 481.440940000000000000
          Top = 826.795610000000000000
          Width = 225.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Data de Saida   ____/____/____')
        end
        object Memo18: TfrxMemoView
          Left = 6.559060000000000000
          Top = 826.134510000000000000
          Width = 217.811070000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Data de Entrada   ____/____/____')
        end
        object Line7: TfrxLineView
          Left = 395.850650000000000000
          Top = 865.268400000000000000
          Width = 314.000000000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo19: TfrxMemoView
          Left = 398.850650000000000000
          Top = 869.268400000000000000
          Width = 310.047310000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = clWhite
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'Digitell Games Import'#194#180's')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 2.779530000000000000
          Top = 631.378480000000000000
          Width = 710.551640000000000000
          Height = 188.976500000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            
              '1 - A loja n'#195#163'o se responsabiliza pela procedencia do aparelho, ' +
              'sendo esta total responsabilidade do cliente.'
            
              '2 - O aparelho n'#195#163'o retirado no prazo de 90 dias poder'#195#161' ser ven' +
              'dido ou desmontado para reposi'#195#167#195#163'o de pe'#195#167'as para suprir gastos' +
              ' de manuten'#195#167'ao conforme a lei 4.131/08 de 62.'
            
              '3 - Caso o aparelho descrito acima apresente outro defeito, dife' +
              'rente do reclamado, mesmo dentro do prazo de garantia estara suj' +
              'eito a um novo or'#195#167'amento.'
            
              '4 - O prazo minimo para o or'#195#167'amento e de ate 7 dias, caso haja ' +
              'um desacordo no prazo estipulado de entrega do apareho s'#195#179' ser'#195#161 +
              ' entregue no prazo de 30 dias conforme a lei ou devolvido nas me' +
              'smas condi'#195#167#195#181'es que foi entregue pelo cliente.'
            
              '5 - O APARELHO S'#195#8220' SER'#195#129' ENTREGUE COM ESSA ORDEM DE SERVI'#195#8225'O OU ' +
              'COM O CPF DO TITULAR.'
            
              '6 - A garantia do servi'#195#167'o prestado s'#195#163'o de 90 dias a partir da ' +
              'data da entrega. '
            ''
            'Concordo com os termos acima e assino.')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 2.779530000000000000
          Top = 570.126470000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Defeito Reclamado.: [Vendedor]')
        end
        object Memo22: TfrxMemoView
          Left = 2.779530000000000000
          Top = 553.228820000000000000
          Width = 559.370440000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Produto.: [FormaPagamento]')
        end
        object Memo23: TfrxMemoView
          Left = 2.779530000000000000
          Top = 592.583180000000000000
          Width = 710.551640000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Servi'#195#167'os Executados..: [Servicos]')
        end
        object Memo24: TfrxMemoView
          Left = 568.709030000000000000
          Top = 49.133890000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object TotalLocacao: TfrxMemoView
          Left = 612.283860000000000000
          Top = 49.133890000000000000
          Width = 98.267780000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalLocacao]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 566.929500000000000000
          Top = 525.913730000000000000
          Width = 145.370130000000000000
          Height = 25.118120000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[NumeroVenda]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Left = 568.929500000000000000
          Top = 550.590910000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = cl3DLight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'Total')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 609.504330000000000000
          Top = 553.590910000000000000
          Width = 98.267780000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8 = (
            '[TotalLocacao]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 595.386210000000000000
          Width = 85.015770000000000000
          Height = 19.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#194#186' Servi'#195#167'o')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Left = 593.386210000000000000
          Top = 506.236550000000000000
          Width = 85.015770000000000000
          Height = 19.338590000000000000
          ShowHint = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial Narrow'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8 = (
            'N'#194#186' Servi'#195#167'o')
          ParentFont = False
        end
      end
    end
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
    Left = 110
    Top = 65
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
      'EnderecoObra=EnderecoObra'
      'Placa=Placa'
      'DescricaoVeiculo=DescricaoVeiculo')
    BCDToCurrency = False
    Left = 34
    Top = 66
  end
end
