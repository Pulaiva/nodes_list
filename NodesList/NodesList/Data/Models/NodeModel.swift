//
//  NodeModel.swift
//  NodesList
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import Foundation

public struct NodeModel: Codable, Identifiable {
    public var id: UUID = UUID()
    var publicKey: String?
    var nodeAlias: String?
    var channels: Int?
    var capacity: Int?
    var firstSeen: Date?
    var updatedAt: Date?
    var city: String?
    var country: NodeCountry?
    
    private enum CodingKeys: String, CodingKey {
        case publicKey
        case nodeAlias = "alias"
        case channels
        case capacity
        case firstSeen
        case updatedAt
        case city
        case country
    }
}

public struct NodeCountry: Codable {
    
    var de: String?
    var en: String?
    var es: String?
    var fr: String?
    var ja: String?
    var ptBR: String?
    var ru: String?
    var zhCN: String?
    
    private enum CodingKeys: String, CodingKey {
        case de
        case en
        case es
        case fr
        case ja
        case ptBR = "pt-Br"
        case zhCN = "zh-CN"
    }
}
