// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class Starship: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.Starship
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Starship>>

  public struct MockFields {
    @Field<Double>("cargoCapacity") public var cargoCapacity
    @Field<String>("consumables") public var consumables
    @Field<Double>("costInCredits") public var costInCredits
    @Field<String>("created") public var created
    @Field<String>("crew") public var crew
    @Field<Double>("hyperdriveRating") public var hyperdriveRating
    @Field<SwapiGQL.ID>("id") public var id
    @Field<Double>("length") public var length
    @Field<String>("model") public var model
    @Field<String>("name") public var name
    @Field<String>("passengers") public var passengers
    @Field<String>("starshipClass") public var starshipClass
  }
}

public extension Mock where O == Starship {
  convenience init(
    cargoCapacity: Double? = nil,
    consumables: String? = nil,
    costInCredits: Double? = nil,
    created: String? = nil,
    crew: String? = nil,
    hyperdriveRating: Double? = nil,
    id: SwapiGQL.ID? = nil,
    length: Double? = nil,
    model: String? = nil,
    name: String? = nil,
    passengers: String? = nil,
    starshipClass: String? = nil
  ) {
    self.init()
    _setScalar(cargoCapacity, for: \.cargoCapacity)
    _setScalar(consumables, for: \.consumables)
    _setScalar(costInCredits, for: \.costInCredits)
    _setScalar(created, for: \.created)
    _setScalar(crew, for: \.crew)
    _setScalar(hyperdriveRating, for: \.hyperdriveRating)
    _setScalar(id, for: \.id)
    _setScalar(length, for: \.length)
    _setScalar(model, for: \.model)
    _setScalar(name, for: \.name)
    _setScalar(passengers, for: \.passengers)
    _setScalar(starshipClass, for: \.starshipClass)
  }
}
