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
        @Published var nodes: [NodeModel] = []
                                    
        @Published var viewState: ViewState = .initial
        @Published var errorMessage: String? = nil
        
        private var datasource = NodesRemoteDatasource()
        private var cancellables: Set<AnyCancellable> = []
        
        func getNodes() {
            viewState = .loading
            
            datasource.getNodes(
                onSuccess: { [weak self] nodes in
                    self?.nodes = nodes ?? []
                    self?.viewState = .success
                },
                onError: { [weak self] error in
                    guard let self = self else { return }
                    self.errorMessage = error.localizedDescription
                    self.viewState = .failure
                })
        }
    }
}
