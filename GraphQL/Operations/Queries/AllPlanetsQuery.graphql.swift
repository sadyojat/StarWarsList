// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class AllPlanetsQuery: GraphQLQuery {
    static let operationName: String = "AllPlanets"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllPlanets { allPlanets { __typename planets { __typename id name orbitalPeriod population rotationPeriod surfaceWater terrains climates created diameter edited gravity } } }"#
      ))

    public init() {}

    struct Data: GraphQL.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("allPlanets", AllPlanets?.self),
      ] }

      var allPlanets: AllPlanets? { __data["allPlanets"] }

      /// AllPlanets
      ///
      /// Parent Type: `PlanetsConnection`
      struct AllPlanets: GraphQL.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.PlanetsConnection }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("planets", [Planet?]?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var planets: [Planet?]? { __data["planets"] }

        /// AllPlanets.Planet
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
            .field("orbitalPeriod", Int?.self),
            .field("population", Double?.self),
            .field("rotationPeriod", Int?.self),
            .field("surfaceWater", Double?.self),
            .field("terrains", [String?]?.self),
            .field("climates", [String?]?.self),
            .field("created", String?.self),
            .field("diameter", Int?.self),
            .field("edited", String?.self),
            .field("gravity", String?.self),
          ] }

          /// The ID of an object
          var id: GraphQL.ID { __data["id"] }
          /// The name of this planet.
          var name: String? { __data["name"] }
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
        }
      }
    }
  }

}