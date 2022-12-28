//
//  MyJankenTests.swift
//  MyJankenTests
//
//  Created by 伊佐治恵介 on 2022/12/09.
//

import XCTest
@testable import MyJanken

final class MyJankenTests: XCTestCase {
    
    let viewController = ViewController()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAnswerNumber() throws {
        XCTAssertEqual(viewController.answerNumber,0)
    }
    
    func testBothNumberAreDifferent() throws {
        let initNum = viewController.answerNumber
        
        viewController.shuffle(0)

        let newNum = viewController.answerNumber

        XCTAssertTrue(initNum == newNum)
    }


}
