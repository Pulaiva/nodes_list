//
//  SwiftUIView.swift
//  NodesList
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import SwiftUI

struct NodeListItemView: View {
    var publicKey: String?
    var nodeAlias: String?
    var channels: String?
    var capacity: String?
    var firstSeen: String?
    var updatedAt: String?
    var city: String?
    var country: String?

  var body: some View {
      VStack(spacing: 16) {
          HStack(spacing: 40) {
              HeaderAndBodyView(headerText: "Chave Pública:", bodyText: publicKey)
              HeaderAndBodyView(headerText: "Nome:", bodyText: nodeAlias)
              HeaderAndBodyView(headerText: "Quantidade de Canais:", bodyText: channels)
          }
          HStack(spacing: 40) {
              HeaderAndBodyView(headerText: "Quantidade de Bitcoin:", bodyText: capacity)
              HeaderAndBodyView(headerText: "Se tornou público em:", bodyText: firstSeen)
              HeaderAndBodyView(headerText: "Atualizado em:", bodyText: updatedAt)
          }
          HStack(spacing: 40) {
              HeaderAndBodyView(headerText: "Cidade:", bodyText: city)
              HeaderAndBodyView(headerText: "País:", bodyText: country)
          }
      }
  }
}

#Preview {
    NodeListItemView(publicKey: "123", nodeAlias: "Nome", channels: "12352", capacity: "1234567", firstSeen: "14/07/2024", updatedAt: "14/07/2024", city: "São Paulo", country:  "Vancôver")
}
