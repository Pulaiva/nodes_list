//
//  DateExtension.swift
//  NodesList
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import Foundation

extension Date {
    func toString(withFormat: String = "dd/MM/yyyy") -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "pt_BR")
        dateFormatter.dateFormat = withFormat
        return dateFormatter.string(from: self)
    }
}
