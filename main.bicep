targetScope = 'resourceGroup'

module peerFirstVnetSecondVnet 'peering.bicep' = {
  name: 'peerFirstToSecond'
  scope: resourceGroup('FirstVnetRg')
  params: {
    existingLocalVirtualNetworkName: 'firstVnet'
    existingRemoteVirtualNetworkName: 'secondVnet'
    existingRemoteVirtualNetworkResourceGroupName: 'secondVnetRg'
  }
}

module peerSecondVnetFirstVnet 'peering.bicep' = {
  name: 'peerSecondToFirst'
  scope: resourceGroup('SecondVnetRg')
  params: {
    existingLocalVirtualNetworkName: 'secondVnet'
    existingRemoteVirtualNetworkName: 'firstVnet'
    existingRemoteVirtualNetworkResourceGroupName: 'firstVnetRg'
  }
}