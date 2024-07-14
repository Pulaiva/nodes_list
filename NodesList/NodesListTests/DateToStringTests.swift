//
//  DateToStringTests.swift
//  NodesListTests
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import XCTest
@testable import NodesList

final class DateToStringTests: XCTestCase {

    override func setUpWithError() throws {}

    override func tearDownWithError() throws {}
    
    func testFormatDateToString() {
        // 1 - Arrange
        let someDateTime: Date? = Date(timeIntervalSince1970: 1720977391) // July 14, 1997, 10:26 AM
        var outputString: String? = ""
        
        // 2 - Act
        outputString = someDateTime?.toString()
        
        // 3 - Assert
        XCTAssertEqual(outputString, "14/07/2024")
    }
    
    func testFormatNilDateToString() {
        // 1 - Arrange
        let someDateTime: Date? = nil
        var outputString: String? = ""
        
        // 2 - Act
        outputString = someDateTime?.toString()
        
        // 3 - Assert
        XCTAssertEqual(outputString, nil)
    }
}
