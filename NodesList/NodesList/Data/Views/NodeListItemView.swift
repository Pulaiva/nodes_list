//
//  SwiftUIView.swift
//  NodesList
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import SwiftUI

struct NodeListItemView: View {
  let node: NodeModel

  var body: some View {
    
      // TODO - Show
      // publicKey
      // alias
      // channels
      // capacity
      // firstSeen
      // updatedAt
      // city
      // country
      
      HStack {
          VStack {
              Text("Chave Pública:")
                  .font(.headline)
                  .bold()
                  .lineLimit(1)
              Text(node.publicKey ?? "Indisponível")
                  .font(.headline)
                  .lineLimit(1)
          }.padding(.vertical, 2)
          
          VStack {
              Text("Nome:")
                  .font(.headline)
                  .bold()
                  .lineLimit(1)
              Text(node.nodeAlias ?? "Indisponível")
                  .font(.headline)
                  .lineLimit(1)
          }.padding(.vertical, 2)
      }
      .padding(.horizontal, 8)
    
  }
}
