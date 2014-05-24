object dtmCadastro: TdtmCadastro
  OldCreateOrder = False
  Height = 150
  Width = 215
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 24
    Top = 24
  end
  object srcEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 24
    Top = 72
  end
  object srcCliente: TDataSource
    DataSet = cdsClientes
    Left = 128
    Top = 72
  end
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 128
    Top = 24
  end
end
