param location string = 'polandcentral'
param appName string
@allowed(['dev', 'prod'])
param environment string

targetScope = 'resourceGroup'

module app './appservice.bicep' = {
  name: 'appservice'
  params: {
    appName: appName
    environment: environment
    location: location
  }
}
