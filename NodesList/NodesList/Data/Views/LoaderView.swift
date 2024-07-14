//
//  LoaderView.swift
//  NodesList
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import Foundation
import SwiftUI

struct LoaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("Carregando...")
                .font(.headline)
                .tint(.blue)
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                .scaleEffect(2.0, anchor: .center)
        }
    }
}
