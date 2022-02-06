import XCTest
@testable import CodingStyle

final class CodingStyleTests: XCTestCase {
    func testCamelCase() throws {
        @CodingStyle(codingCase: CodingCase.camelCase) var myProperty = "Hello World"
        XCTAssertEqual(myProperty, "HelloWorld")
    }
    
    func testSnakeCase() throws {
        @CodingStyle(codingCase: CodingCase.snakeCase) var myProperty = "Hello World"
        XCTAssertEqual(myProperty, "Hello_World")
    }
    
    func testKebabCase() throws {
        @CodingStyle(codingCase: CodingCase.kebabCase) var myProperty = "Hello World"
        XCTAssertEqual(myProperty, "Hello-World")
    }
}
