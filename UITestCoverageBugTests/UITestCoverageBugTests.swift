//
//  UITestCoverageBugTests.swift
//  UITestCoverageBugTests
//
//  Created by Yu, William on 10/31/16.
//  Copyright © 2016 iwllyu. All rights reserved.
//

import XCTest
@testable import UITestCoverageBug

class UITestCoverageBugTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testUnitTest() {
        let vc = ViewController()
        vc.testedViaUnitTest()
    }

}
