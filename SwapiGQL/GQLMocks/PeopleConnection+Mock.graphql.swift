// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class PeopleConnection: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.PeopleConnection
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<PeopleConnection>>

  public struct MockFields {
    @Field<PageInfo>("pageInfo") public var pageInfo
    @Field<[Person?]>("people") public var people
    @Field<Int>("totalCount") public var totalCount
  }
}

public extension Mock where O == PeopleConnection {
  convenience init(
    pageInfo: Mock<PageInfo>? = nil,
    people: [Mock<Person>?]? = nil,
    totalCount: Int? = nil
  ) {
    self.init()
    _setEntity(pageInfo, for: \.pageInfo)
    _setList(people, for: \.people)
    _setScalar(totalCount, for: \.totalCount)
  }
}
