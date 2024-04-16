// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class StarshipsConnection: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.StarshipsConnection
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<StarshipsConnection>>

  public struct MockFields {
    @Field<PageInfo>("pageInfo") public var pageInfo
    @Field<[Starship?]>("starships") public var starships
    @Field<Int>("totalCount") public var totalCount
  }
}

public extension Mock where O == StarshipsConnection {
  convenience init(
    pageInfo: Mock<PageInfo>? = nil,
    starships: [Mock<Starship>?]? = nil,
    totalCount: Int? = nil
  ) {
    self.init()
    _setEntity(pageInfo, for: \.pageInfo)
    _setList(starships, for: \.starships)
    _setScalar(totalCount, for: \.totalCount)
  }
}
