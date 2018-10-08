//
//  DistanceUnitConverterTests.swift
//  unit_converterTests
//
//  Created by Arjav Lad on 19/06/18.
//  Copyright © 2018 Arjav Lad. All rights reserved.
//

import XCTest
@testable import unit_converter

class DistanceUnitConverterTests: XCTestCase {

    let distanceConverter = DistanceUnitConverter()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConvertMeterToCentimeter() {
        let distanceInCM = distanceConverter.convert(distance: 10, from: .meter, to: .centimeter)
        XCTAssertEqual(distanceInCM, 1000, "Convertion from meter to centimeter is incorrect")
    }

    func testConvertMeterToKilometer() {
        let distanceInKM = distanceConverter.convert(distance: 10, from: .meter, to: .kilometer)
        XCTAssertEqual(distanceInKM, 0.01, "Convertion from meter to kilometer is incorrect")
    }

    func testConvertMeterToMeter() {
        let distanceInM = distanceConverter.convert(distance: 10, from: .meter, to: .meter)
        XCTAssertEqual(distanceInM, 10, "Convertion from meter to meter is incorrect")
    }

    func testConvertMeterToMilimeter() {
        let distanceInMM = distanceConverter.convert(distance: 10, from: .meter, to: .milimeter)
        XCTAssertEqual(distanceInMM, 10000, "Convertion from meter to milimeter is incorrect")
    }

    func testConvertCentimeterToMeter() {
        let distanceInM = distanceConverter.convert(distance: 10, from: .centimeter, to: .meter)
        XCTAssertEqual(distanceInM, 0.1, "Convertion from centimeter to meter is incorrect")
    }

    func testConvertCentimeterToKilometer() {
        let distanceInKM = distanceConverter.convert(distance: 100, from: .centimeter, to: .kilometer)
        XCTAssertEqual(distanceInKM, 0.001, "Convertion from centimeter to kilometer is incorrect")
    }

    func testConvertCentimeterToMiliometer() {
        let distanceInMM = distanceConverter.convert(distance: 10, from: .centimeter, to: .milimeter)
        XCTAssertEqual(distanceInMM, 100, "Convertion from centimeter to miliometer is incorrect")
    }

    func testConvertCentimeterToCentimeter() {
        let distanceInCM = distanceConverter.convert(distance: 10, from: .centimeter, to: .centimeter)
        XCTAssertEqual(distanceInCM, 10, "Convertion from centimeter to centimeter is incorrect")
    }

    func testConvertKilometerToMeter() {
        let distanceInM = distanceConverter.convert(distance: 10, from: .kilometer, to: .meter)
        XCTAssertEqual(distanceInM, 10000, "Convertion from kilometer to meter is incorrect")
    }

    func testConvertKilometerToCentimeter() {
        let distanceInCM = distanceConverter.convert(distance: 10, from: .kilometer, to: .centimeter)
        XCTAssertEqual(distanceInCM, 1000000, "Convertion from kilometer to centimeter is incorrect")
    }

    func testConvertKilometerToMilimeter() {
        let distanceInMM = distanceConverter.convert(distance: 10, from: .kilometer, to: .milimeter)
        XCTAssertEqual(distanceInMM, 10000000, "Convertion from kilometer to milimeter is incorrect")
    }

    func testConvertKilometerToKilometer() {
        let distanceInKM = distanceConverter.convert(distance: 10, from: .kilometer, to: .kilometer)
        XCTAssertEqual(distanceInKM, 10, "Convertion from kilometer to kilometer is incorrect")
    }

    func testConvertMilimeterToMeter() {
        let distanceInM = distanceConverter.convert(distance: 10, from: .milimeter, to: .meter)
        XCTAssertEqual(distanceInM, 0.01, "Convertion from milimeter to meter is incorrect")
    }

    func testConvertMilimeterToCentimeter() {
        let distanceInCM = distanceConverter.convert(distance: 10, from: .milimeter, to: .centimeter)
        XCTAssertEqual(distanceInCM, 1, "Convertion from milimeter to centimeter is incorrect")
    }

    func testConvertMilimeterToMilimeter() {
        let distanceInMM = distanceConverter.convert(distance: 10, from: .milimeter, to: .milimeter)
        XCTAssertEqual(distanceInMM, 10, "Convertion from milimeter to milimeter is incorrect")
    }

    func testConvertMilimeterToKilometer() {
        let distanceInKM = distanceConverter.convert(distance: 10, from: .milimeter, to: .kilometer)
        XCTAssertEqual(distanceInKM, 0.00001, "Convertion from milimeter to kilometer is incorrect")
    }
    
    func testFail() {
        
        XCTAssertFalse(true)
    }

}
