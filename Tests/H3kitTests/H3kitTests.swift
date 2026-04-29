// from https://github.com/hakkokimkr/h3kit-ios/blob/main/Tests/H3kitTests/H3kitTests.swift

import CoreLocation
@testable import H3kit
import h3lib
import XCTest

final class H3kitTests: XCTestCase {
	func testConversion() throws {
		let latitude = 37.5642135
		let longitude = 127.0016985
		let resolution: Int32 = 14

		let point = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
		let index = point.h3CellIndex(resolution: resolution)
		let hex = String(index, radix: 16, uppercase: true)

		XCTAssertEqual(hex, "8E30E1D88A54307", "Conversion from lat, lon to h3 index")

		var geoCoord = LatLng()
		cellToLatLng(index, &geoCoord)
		print(radsToDegs(geoCoord.lat), radsToDegs(geoCoord.lng))

		let neighbors = point.h3Neighbors(resolution: resolution, ringLevel: 1)
		for item in neighbors {
			print(String(item, radix: 16, uppercase: true))
		}
		XCTAssertEqual(0, 0, "Row count was not zero.")
	}
}
