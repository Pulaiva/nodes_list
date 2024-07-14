//
//  HeaderAndBodyView.swift
//  NodesList
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import SwiftUI

struct HeaderAndBodyView: View {
    let headerText: String
    let bodyText: String?
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(headerText)
                .font(.headline)
                .bold()
                .lineLimit(1)
            Text(bodyText ?? "Indisponível")
                .font(.subheadline)
                .lineLimit(1)
        }
    }
}

#Preview {
    HeaderAndBodyView(headerText: "Nome da Chave:", bodyText: "Chave legal")
}
