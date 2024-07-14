//
//  NodesListView.swift
//  NodesList
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import SwiftUI

struct NodesListView: View {
    @State private var viewModel = ViewModel()
    
    init(viewModel: NodesListView.ViewModel = ViewModel()) {
        self.viewModel = viewModel
//        viewModel.getNodes()
    }
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            List {
                ForEach(viewModel.nodes) { node in
                    NodeListItemView(
                        publicKey: node.publicKey,
                        nodeAlias: node.nodeAlias,
                        channels: node.channels?.toString,
                        capacity: node.capacity?.toString,
                        firstSeen: node.firstSeen?.toString(),
                        updatedAt: node.updatedAt?.toString(),
                        city: node.city,
                        country: node.country?.ptBR ?? node.country?.en
                    )
                }
            }
        }
    }
}

#Preview {
    NodesListView()
}
