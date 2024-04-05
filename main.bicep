param location string = 'east us'

resource appserviceplan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: 'appplan1'
  location: location
  sku: {
    name: 'S1'
  }
}

resource webapp 'Microsoft.Web/sites@2023-01-01' = {
  name: 'ntmswebapp44'
  location: location
  properties: {
    serverFarmId: appserviceplan.id
  }
}
