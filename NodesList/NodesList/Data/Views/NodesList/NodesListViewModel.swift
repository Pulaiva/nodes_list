//
//  NodesListViewModel.swift
//  NodesList
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import Foundation
import Combine

extension NodesListView {
    
    class ViewModel: ObservableObject {
        @Published var nodes: [NodeModel] = [NodeModel(publicKey: "Public Key 1", nodeAlias: "Node Alias 1", channels: 1234, capacity: 1234, firstSeen: Date(), updatedAt: Date(), city: "City", country: NodeCountry(en: "Brazil", ptBR: "Brasil")),
                                             NodeModel(publicKey: "Public Key 2", nodeAlias: "Node Alias 2", channels: 4321, capacity: 4321, firstSeen: Date(), updatedAt: Date(), city: "City", country: NodeCountry(en: "Brazil", ptBR: "Brasil")),]
                                    
        @Published var viewState: ViewState = .initial
        @Published var errorMessage: String? = nil
        
        private var cancellables: Set<AnyCancellable> = []
        
        func getNodes() {
            viewState = .loading
            
            // TODO: - Get nodes from a datasource...
            nodes = [NodeModel(publicKey: "Public Key 1", nodeAlias: "Node Alias 1", channels: 1234, capacity: 1234, firstSeen: Date(), updatedAt: Date(), city: "City", country: NodeCountry(en: "Brazil", ptBR: "Brasil")),
                     NodeModel(publicKey: "Public Key 2", nodeAlias: "Node Alias 2", channels: 4321, capacity: 4321, firstSeen: Date(), updatedAt: Date(), city: "City", country: NodeCountry(en: "Brazil", ptBR: "Brasil")),]
            
            viewState = .success
        }
    }
}
