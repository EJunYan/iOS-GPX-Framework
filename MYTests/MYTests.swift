//
//  MYTests.swift
//  MYTests
//
//  Created by eruYan on 2018/12/1.
//

import XCTest

class MYTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        debugPrint("数据测试")
        let root = GPXRoot()
        let me = GPXMetadata()
        root.metadata = me
        let ay = GPXAuthor()
        me.author = ay
        
        let wpt = GPXWaypoint(latitude: 213.2, longitude: 21.0)
        root.addWaypoint(wpt)
        
        wpt?.name = "你好"
        wpt?.time = Date()
        wpt?.elevation = 12.0
//        wpt.latitude = 1231.0
//        wpt.longitude = 2310.0
        
        let trk = GPXTrack()
        let mesg = GPXTrackSegment()
        trk.addTracksegment(mesg)
        let tp = GPXTrackPoint.trackpoint(withLatitude: 112.0, longitude: 123)
        mesg.addTrackpoint(tp)
        tp?.elevation = 21.21
        tp?.time = Date()
//        tp.latitude = 131.0021
//        tp.longitude = 22.22
        
        debugPrint("生成数据", root.gpx() ?? "xx")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
