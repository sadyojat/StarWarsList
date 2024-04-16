// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class FilmsConnection: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.FilmsConnection
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<FilmsConnection>>

  public struct MockFields {
    @Field<[Film?]>("films") public var films
    @Field<PageInfo>("pageInfo") public var pageInfo
    @Field<Int>("totalCount") public var totalCount
  }
}

public extension Mock where O == FilmsConnection {
  convenience init(
    films: [Mock<Film>?]? = nil,
    pageInfo: Mock<PageInfo>? = nil,
    totalCount: Int? = nil
  ) {
    self.init()
    _setList(films, for: \.films)
    _setEntity(pageInfo, for: \.pageInfo)
    _setScalar(totalCount, for: \.totalCount)
  }
}
