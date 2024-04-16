// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class PersonFilmsConnection: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.PersonFilmsConnection
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<PersonFilmsConnection>>

  public struct MockFields {
    @Field<[Film?]>("films") public var films
  }
}

public extension Mock where O == PersonFilmsConnection {
  convenience init(
    films: [Mock<Film>?]? = nil
  ) {
    self.init()
    _setList(films, for: \.films)
  }
}
