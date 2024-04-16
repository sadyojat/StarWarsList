// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class VehiclesConnection: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.VehiclesConnection
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<VehiclesConnection>>

  public struct MockFields {
    @Field<PageInfo>("pageInfo") public var pageInfo
    @Field<Int>("totalCount") public var totalCount
    @Field<[Vehicle?]>("vehicles") public var vehicles
  }
}

public extension Mock where O == VehiclesConnection {
  convenience init(
    pageInfo: Mock<PageInfo>? = nil,
    totalCount: Int? = nil,
    vehicles: [Mock<Vehicle>?]? = nil
  ) {
    self.init()
    _setEntity(pageInfo, for: \.pageInfo)
    _setScalar(totalCount, for: \.totalCount)
    _setList(vehicles, for: \.vehicles)
  }
}
