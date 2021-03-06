//
//  GeneraterTests.swift
//  MonoGenerator
//
//  Created by mono on 2016/11/16.
//
//

import XCTest
@testable import MonoGenerator

class GeneratorTests: XCTestCase {
    static var allTests : [(String, (GeneratorTests) -> () throws -> Void)] {
        return [
            ("testGenerate", testGenerate),
            ("testGenerate_suffix", testGenerate_suffix),
            ("testGenerate_maxCount", testGenerate_maxCount),
        ]
    }

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
        XCTAssertEqual(target.generate(maxLength: 100), "value(　´･‿･｀)")
    }

}
