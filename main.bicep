param location string = 'east us'

param webappname string = 'ntms'

var webname = '${webappname}${uniqueString(resourceGroup().id)}'



resource appserviceplan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: 'appplan1'
  location: location
  sku: {
    name: 'S1'
  }
}

resource webapp 'Microsoft.Web/sites@2023-01-01' = {
  name: webname
  location: location
  properties: {
    serverFarmId: appserviceplan.id
  }
}


