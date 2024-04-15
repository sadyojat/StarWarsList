// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class PlanetDetailQuery: GraphQLQuery {
    static let operationName: String = "PlanetDetail"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query PlanetDetail($planetId: ID) { planet(planetID: $planetId) { __typename id name climates created diameter edited gravity orbitalPeriod population rotationPeriod surfaceWater terrains } }"#
      ))

    public var planetId: GraphQLNullable<ID>

    public init(planetId: GraphQLNullable<ID>) {
      self.planetId = planetId
    }

    public var __variables: Variables? { ["planetId": planetId] }

    struct Data: GraphQL.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("planet", Planet?.self, arguments: ["planetID": .variable("planetId")]),
      ] }

      var planet: Planet? { __data["planet"] }

      /// Planet
      ///
      /// Parent Type: `Planet`
      struct Planet: GraphQL.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Planet }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", GraphQL.ID.self),
          .field("name", String?.self),
          .field("climates", [String?]?.self),
          .field("created", String?.self),
          .field("diameter", Int?.self),
          .field("edited", String?.self),
          .field("gravity", String?.self),
          .field("orbitalPeriod", Int?.self),
          .field("population", Double?.self),
          .field("rotationPeriod", Int?.self),
          .field("surfaceWater", Double?.self),
          .field("terrains", [String?]?.self),
        ] }

        /// The ID of an object
        var id: GraphQL.ID { __data["id"] }
        /// The name of this planet.
        var name: String? { __data["name"] }
        /// The climates of this planet.
        var climates: [String?]? { __data["climates"] }
        /// The ISO 8601 date format of the time that this resource was created.
        var created: String? { __data["created"] }
        /// The diameter of this planet in kilometers.
        var diameter: Int? { __data["diameter"] }
        /// The ISO 8601 date format of the time that this resource was edited.
        var edited: String? { __data["edited"] }
        /// A number denoting the gravity of this planet, where "1" is normal or 1 standard
        /// G. "2" is twice or 2 standard Gs. "0.5" is half or 0.5 standard Gs.
        var gravity: String? { __data["gravity"] }
        /// The number of standard days it takes for this planet to complete a single orbit
        /// of its local star.
        var orbitalPeriod: Int? { __data["orbitalPeriod"] }
        /// The average population of sentient beings inhabiting this planet.
        var population: Double? { __data["population"] }
        /// The number of standard hours it takes for this planet to complete a single
        /// rotation on its axis.
        var rotationPeriod: Int? { __data["rotationPeriod"] }
        /// The percentage of the planet surface that is naturally occuring water or bodies
        /// of water.
        var surfaceWater: Double? { __data["surfaceWater"] }
        /// The terrains of this planet.
        var terrains: [String?]? { __data["terrains"] }
      }
    }
  }

}