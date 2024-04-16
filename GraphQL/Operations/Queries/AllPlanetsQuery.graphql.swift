// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class AllPlanetsQuery: GraphQLQuery {
    static let operationName: String = "AllPlanets"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllPlanets($after: String, $before: String, $first: Int, $last: Int) { allPlanets(after: $after, before: $before, first: $first, last: $last) { __typename planets { __typename climates created diameter edited gravity id name orbitalPeriod population rotationPeriod surfaceWater terrains } pageInfo { __typename endCursor hasNextPage hasPreviousPage startCursor } totalCount } }"#
      ))

    public var after: GraphQLNullable<String>
    public var before: GraphQLNullable<String>
    public var first: GraphQLNullable<Int>
    public var last: GraphQLNullable<Int>

    public init(
      after: GraphQLNullable<String>,
      before: GraphQLNullable<String>,
      first: GraphQLNullable<Int>,
      last: GraphQLNullable<Int>
    ) {
      self.after = after
      self.before = before
      self.first = first
      self.last = last
    }

    public var __variables: Variables? { [
      "after": after,
      "before": before,
      "first": first,
      "last": last
    ] }

    struct Data: GraphQL.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("allPlanets", AllPlanets?.self, arguments: [
          "after": .variable("after"),
          "before": .variable("before"),
          "first": .variable("first"),
          "last": .variable("last")
        ]),
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
          .field("pageInfo", PageInfo.self),
          .field("totalCount", Int?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var planets: [Planet?]? { __data["planets"] }
        /// Information to aid in pagination.
        var pageInfo: PageInfo { __data["pageInfo"] }
        /// A count of the total number of objects in this connection, ignoring pagination.
        /// This allows a client to fetch the first five objects by passing "5" as the
        /// argument to "first", then fetch the total count so it could display "5 of 83",
        /// for example.
        var totalCount: Int? { __data["totalCount"] }

        /// AllPlanets.Planet
        ///
        /// Parent Type: `Planet`
        struct Planet: GraphQL.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Planet }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("climates", [String?]?.self),
            .field("created", String?.self),
            .field("diameter", Int?.self),
            .field("edited", String?.self),
            .field("gravity", String?.self),
            .field("id", GraphQL.ID.self),
            .field("name", String?.self),
            .field("orbitalPeriod", Int?.self),
            .field("population", Double?.self),
            .field("rotationPeriod", Int?.self),
            .field("surfaceWater", Double?.self),
            .field("terrains", [String?]?.self),
          ] }

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
        }

        /// AllPlanets.PageInfo
        ///
        /// Parent Type: `PageInfo`
        struct PageInfo: GraphQL.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.PageInfo }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("endCursor", String?.self),
            .field("hasNextPage", Bool.self),
            .field("hasPreviousPage", Bool.self),
            .field("startCursor", String?.self),
          ] }

          /// When paginating forwards, the cursor to continue.
          var endCursor: String? { __data["endCursor"] }
          /// When paginating forwards, are there more items?
          var hasNextPage: Bool { __data["hasNextPage"] }
          /// When paginating backwards, are there more items?
          var hasPreviousPage: Bool { __data["hasPreviousPage"] }
          /// When paginating backwards, the cursor to continue.
          var startCursor: String? { __data["startCursor"] }
        }
      }
    }
  }

}