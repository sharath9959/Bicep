param location string = resourceGroup().location
param  appplanname string= 'appsrvplan'

module appserviceplanmod 'module/app.bicep' ={
name :'modappplan'
params :{
    location: location
    appplanname :appplanname
 }
}
