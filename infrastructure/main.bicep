param location string = 'polandcentral'
@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

module app './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: 'dmp-justy'
    environment: environment
    location: location
  }
}
