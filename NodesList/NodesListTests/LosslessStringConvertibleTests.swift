//
//  IntUtilsTests.swift
//  NodesListTests
//
//  Created by Lucas Gomes de Paiva on 14/07/24.
//

import Foundation
import XCTest
@testable import NodesList

final class LosslessStringConvertibleTests: XCTestCase {
    override func setUpWithError() throws {}
    override func tearDownWithError() throws {}
    
    func testFormatOptionalIntToString() {
        // 1 - Arrange
        let inputInt: Int? = 123
        var outputString: String? = ""
        
        // 2 - Act
        outputString = inputInt?.toString
        
        // 3 - Assert
        XCTAssertEqual(outputString, "123")
    }
    
    func testFormatOptionalNilToString() {
        // 1 - Arrange
        let inputInt: Int? = nil
        var outputString: String? = ""
        
        // 2 - Act
        outputString = inputInt?.toString
        
        // 3 - Assert
        XCTAssertEqual(outputString, nil)
    }
    
    func testFormatNegativeIntToString() {
        // 1 - Arrange
        let inputInt: Int = -123
        var outputString: String? = ""
        
        // 2 - Act
        outputString = inputInt.toString
        
        // 3 - Assert
        XCTAssertEqual(outputString, "-123")
    }
}
