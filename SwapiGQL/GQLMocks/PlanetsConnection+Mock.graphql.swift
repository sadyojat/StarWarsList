// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class PlanetsConnection: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.PlanetsConnection
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<PlanetsConnection>>

  public struct MockFields {
    @Field<PageInfo>("pageInfo") public var pageInfo
    @Field<[Planet?]>("planets") public var planets
    @Field<Int>("totalCount") public var totalCount
  }
}

public extension Mock where O == PlanetsConnection {
  convenience init(
    pageInfo: Mock<PageInfo>? = nil,
    planets: [Mock<Planet>?]? = nil,
    totalCount: Int? = nil
  ) {
    self.init()
    _setEntity(pageInfo, for: \.pageInfo)
    _setList(planets, for: \.planets)
    _setScalar(totalCount, for: \.totalCount)
  }
}
