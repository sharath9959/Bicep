param location string = resourceGroup().location
param  appplanname string


resource bicepappplan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name : appplanname
  location : location
  sku: {
    name: 'F1'
    capacity: 0
  }
}
