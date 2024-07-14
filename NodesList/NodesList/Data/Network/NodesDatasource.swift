//
//  NodesDatasource.swift
//  NodesList
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import Foundation
import Alamofire

protocol NodesDatasourceProtocol {
    func getNodes(onSuccess: @escaping([NodeModel]?)->(), onError: @escaping (Error)->())
}


class NodesRemoteDatasource: NodesDatasourceProtocol {
    func getNodes(onSuccess: @escaping([NodeModel]?)->(), onError: @escaping (Error)->()) {
        AF.request(Endpoint.getNodes)
            .responseDecodable(of: [NodeModel]?.self) { response in
                switch response.result {
                case .success(let nodes):
                    onSuccess(nodes)
                case .failure(let error):
                    onError(error)
                }
            }
    }
}
    
class NodesMockDatasource: NodesDatasourceProtocol {
    func getNodes(onSuccess: @escaping ([NodeModel]?) -> (), onError: @escaping (any Error) -> ()) {
       
    }
}
