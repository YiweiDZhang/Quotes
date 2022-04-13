//
//  DataServiceTests.swift
//  QuotesTests
//
//  Created by Yiwei Zhang on 14/4/2022.
//

import XCTest

class DataServiceTests: XCTestCase {
    
    private var dataService: DataService!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        self.dataService = DataService()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetQuote() {
        let expectation = expectation(description: "Quote received.")
        
        self.dataService.getQuote(completion: { quote in
            XCTAssert(quote != nil, "Get quote successfully.")
            
            expectation.fulfill()
        })
        
        waitForExpectations(timeout: 10) { error in
            XCTAssertNil(error, "Quote not received.")
        }
    }

}
