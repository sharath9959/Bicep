param sqlsvrname string = 'shasqlsvr'
param location string = resourceGroup().location
param sqllogin string = 'lab'
param sqlpass string = 'sqlpass@1234'
param dbname string = 'shadb01'


resource sqlServer01 'Microsoft.Sql/servers@2014-04-01' ={
name:sqlsvrname
  location: location
  properties :{
    administratorLogin:sqllogin
    administratorLoginPassword:sqlpass
  }

}

resource sqlServerDatabase 'Microsoft.Sql/servers/databases@2014-04-01' = {
  parent: sqlServer01
  name: dbname
  location: location
  properties: {
    collation: 'SQL_Latin1_General_CP1_CI_AS'
    edition: 'Basic'
    maxSizeBytes: '2147483648'
    requestedServiceObjectiveName: 'Basic'
  }
}
