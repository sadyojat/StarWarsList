// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class Vehicle: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.Vehicle
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Vehicle>>

  public struct MockFields {
    @Field<Double>("cargoCapacity") public var cargoCapacity
    @Field<String>("consumables") public var consumables
    @Field<Double>("costInCredits") public var costInCredits
    @Field<String>("created") public var created
    @Field<String>("crew") public var crew
    @Field<String>("edited") public var edited
    @Field<SwapiGQL.ID>("id") public var id
    @Field<Double>("length") public var length
    @Field<[String?]>("manufacturers") public var manufacturers
    @Field<Int>("maxAtmospheringSpeed") public var maxAtmospheringSpeed
    @Field<String>("model") public var model
    @Field<String>("name") public var name
    @Field<String>("passengers") public var passengers
    @Field<String>("vehicleClass") public var vehicleClass
  }
}

public extension Mock where O == Vehicle {
  convenience init(
    cargoCapacity: Double? = nil,
    consumables: String? = nil,
    costInCredits: Double? = nil,
    created: String? = nil,
    crew: String? = nil,
    edited: String? = nil,
    id: SwapiGQL.ID? = nil,
    length: Double? = nil,
    manufacturers: [String]? = nil,
    maxAtmospheringSpeed: Int? = nil,
    model: String? = nil,
    name: String? = nil,
    passengers: String? = nil,
    vehicleClass: String? = nil
  ) {
    self.init()
    _setScalar(cargoCapacity, for: \.cargoCapacity)
    _setScalar(consumables, for: \.consumables)
    _setScalar(costInCredits, for: \.costInCredits)
    _setScalar(created, for: \.created)
    _setScalar(crew, for: \.crew)
    _setScalar(edited, for: \.edited)
    _setScalar(id, for: \.id)
    _setScalar(length, for: \.length)
    _setScalarList(manufacturers, for: \.manufacturers)
    _setScalar(maxAtmospheringSpeed, for: \.maxAtmospheringSpeed)
    _setScalar(model, for: \.model)
    _setScalar(name, for: \.name)
    _setScalar(passengers, for: \.passengers)
    _setScalar(vehicleClass, for: \.vehicleClass)
  }
}
