param location string = 'east us'

resource appserviceplan 'Microsoft.Web/serverfarms@2023-01-01' = {
  name: 'appplan1'
  location: location
  sku: {
    name: 'S1'
  }
}
