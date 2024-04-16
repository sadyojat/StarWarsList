//
//  SwapiListViewSnapshotTests.swift
//  SwapiListViewSnapshotTests
//
//  Created by Alok Irde on 4/15/24.
//

import SnapshotTesting
import XCTest
@testable import SwapiDemo
import SwiftUI

final class SwapiListViewSnapshotTests: XCTestCase {

    func testInitView() throws {
        let vc = UIHostingController(rootView: SwapiListView(sourceType: .gql))
        assertSnapshot(of: vc, as: .image)
    }

}
