// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class Person: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.Person
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Person>>

  public struct MockFields {
    @Field<String>("birthYear") public var birthYear
    @Field<String>("eyeColor") public var eyeColor
    @Field<PersonFilmsConnection>("filmConnection") public var filmConnection
    @Field<String>("gender") public var gender
    @Field<String>("hairColor") public var hairColor
    @Field<SwapiGQL.ID>("id") public var id
    @Field<String>("name") public var name
  }
}

public extension Mock where O == Person {
  convenience init(
    birthYear: String? = nil,
    eyeColor: String? = nil,
    filmConnection: Mock<PersonFilmsConnection>? = nil,
    gender: String? = nil,
    hairColor: String? = nil,
    id: SwapiGQL.ID? = nil,
    name: String? = nil
  ) {
    self.init()
    _setScalar(birthYear, for: \.birthYear)
    _setScalar(eyeColor, for: \.eyeColor)
    _setEntity(filmConnection, for: \.filmConnection)
    _setScalar(gender, for: \.gender)
    _setScalar(hairColor, for: \.hairColor)
    _setScalar(id, for: \.id)
    _setScalar(name, for: \.name)
  }
}
