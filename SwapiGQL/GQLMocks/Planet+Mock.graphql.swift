// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class Planet: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.Planet
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Planet>>

  public struct MockFields {
    @Field<[String?]>("climates") public var climates
    @Field<String>("created") public var created
    @Field<Int>("diameter") public var diameter
    @Field<String>("edited") public var edited
    @Field<String>("gravity") public var gravity
    @Field<SwapiGQL.ID>("id") public var id
    @Field<String>("name") public var name
    @Field<Int>("orbitalPeriod") public var orbitalPeriod
    @Field<Double>("population") public var population
    @Field<Int>("rotationPeriod") public var rotationPeriod
    @Field<Double>("surfaceWater") public var surfaceWater
    @Field<[String?]>("terrains") public var terrains
  }
}

public extension Mock where O == Planet {
  convenience init(
    climates: [String]? = nil,
    created: String? = nil,
    diameter: Int? = nil,
    edited: String? = nil,
    gravity: String? = nil,
    id: SwapiGQL.ID? = nil,
    name: String? = nil,
    orbitalPeriod: Int? = nil,
    population: Double? = nil,
    rotationPeriod: Int? = nil,
    surfaceWater: Double? = nil,
    terrains: [String]? = nil
  ) {
    self.init()
    _setScalarList(climates, for: \.climates)
    _setScalar(created, for: \.created)
    _setScalar(diameter, for: \.diameter)
    _setScalar(edited, for: \.edited)
    _setScalar(gravity, for: \.gravity)
    _setScalar(id, for: \.id)
    _setScalar(name, for: \.name)
    _setScalar(orbitalPeriod, for: \.orbitalPeriod)
    _setScalar(population, for: \.population)
    _setScalar(rotationPeriod, for: \.rotationPeriod)
    _setScalar(surfaceWater, for: \.surfaceWater)
    _setScalarList(terrains, for: \.terrains)
  }
}
