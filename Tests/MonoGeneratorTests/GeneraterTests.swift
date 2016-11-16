//
//  GeneraterTests.swift
//  MonoGenerator
//
//  Created by mono on 2016/11/16.
//
//

import XCTest
@testable import MonoGenerator

class GeneraterTests: XCTestCase {
    private var target: Generator!

    override func setUp() {
        super.setUp()
        target = Generator(value: "value")
    }

    func testGenerate() {
        XCTAssertEqual(target.generate(), "value(　´･‿･｀)")
    }

    func testGenerate_suffix() {
        XCTAssertEqual(target.generate(suffix: "(　´･‿･｀)🐶🍎📱"), "value(　´･‿･｀)🐶🍎📱")
    }

    func testGenerate_maxCount() {
        XCTAssertEqual(target.generate(maxLength: 6), "value(")
    }

}
