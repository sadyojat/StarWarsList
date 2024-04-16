// @generated
// This file was automatically generated and should not be edited.

import ApolloTestSupport
import SwapiGQL

public class Root: MockObject {
  public static let objectType: ApolloAPI.Object = SwapiGQL.Objects.Root
  public static let _mockFields = MockFields()
  public typealias MockValueCollectionType = Array<Mock<Root>>

  public struct MockFields {
    @Field<FilmsConnection>("allFilms") public var allFilms
    @Field<PeopleConnection>("allPeople") public var allPeople
    @Field<PlanetsConnection>("allPlanets") public var allPlanets
    @Field<SpeciesConnection>("allSpecies") public var allSpecies
    @Field<StarshipsConnection>("allStarships") public var allStarships
    @Field<VehiclesConnection>("allVehicles") public var allVehicles
    @Field<Planet>("planet") public var planet
  }
}

public extension Mock where O == Root {
  convenience init(
    allFilms: Mock<FilmsConnection>? = nil,
    allPeople: Mock<PeopleConnection>? = nil,
    allPlanets: Mock<PlanetsConnection>? = nil,
    allSpecies: Mock<SpeciesConnection>? = nil,
    allStarships: Mock<StarshipsConnection>? = nil,
    allVehicles: Mock<VehiclesConnection>? = nil,
    planet: Mock<Planet>? = nil
  ) {
    self.init()
    _setEntity(allFilms, for: \.allFilms)
    _setEntity(allPeople, for: \.allPeople)
    _setEntity(allPlanets, for: \.allPlanets)
    _setEntity(allSpecies, for: \.allSpecies)
    _setEntity(allStarships, for: \.allStarships)
    _setEntity(allVehicles, for: \.allVehicles)
    _setEntity(planet, for: \.planet)
  }
}
