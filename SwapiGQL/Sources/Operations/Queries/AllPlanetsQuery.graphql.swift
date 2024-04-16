// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllPlanetsQuery: GraphQLQuery {
  public static let operationName: String = "AllPlanets"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
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

  public struct Data: SwapiGQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.Root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allPlanets", AllPlanets?.self, arguments: [
        "after": .variable("after"),
        "before": .variable("before"),
        "first": .variable("first"),
        "last": .variable("last")
      ]),
    ] }

    public var allPlanets: AllPlanets? { __data["allPlanets"] }

    /// AllPlanets
    ///
    /// Parent Type: `PlanetsConnection`
    public struct AllPlanets: SwapiGQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.PlanetsConnection }
      public static var __selections: [ApolloAPI.Selection] { [
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
      public var planets: [Planet?]? { __data["planets"] }
      /// Information to aid in pagination.
      public var pageInfo: PageInfo { __data["pageInfo"] }
      /// A count of the total number of objects in this connection, ignoring pagination.
      /// This allows a client to fetch the first five objects by passing "5" as the
      /// argument to "first", then fetch the total count so it could display "5 of 83",
      /// for example.
      public var totalCount: Int? { __data["totalCount"] }

      /// AllPlanets.Planet
      ///
      /// Parent Type: `Planet`
      public struct Planet: SwapiGQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.Planet }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("climates", [String?]?.self),
          .field("created", String?.self),
          .field("diameter", Int?.self),
          .field("edited", String?.self),
          .field("gravity", String?.self),
          .field("id", SwapiGQL.ID.self),
          .field("name", String?.self),
          .field("orbitalPeriod", Int?.self),
          .field("population", Double?.self),
          .field("rotationPeriod", Int?.self),
          .field("surfaceWater", Double?.self),
          .field("terrains", [String?]?.self),
        ] }

        /// The climates of this planet.
        public var climates: [String?]? { __data["climates"] }
        /// The ISO 8601 date format of the time that this resource was created.
        public var created: String? { __data["created"] }
        /// The diameter of this planet in kilometers.
        public var diameter: Int? { __data["diameter"] }
        /// The ISO 8601 date format of the time that this resource was edited.
        public var edited: String? { __data["edited"] }
        /// A number denoting the gravity of this planet, where "1" is normal or 1 standard
        /// G. "2" is twice or 2 standard Gs. "0.5" is half or 0.5 standard Gs.
        public var gravity: String? { __data["gravity"] }
        /// The ID of an object
        public var id: SwapiGQL.ID { __data["id"] }
        /// The name of this planet.
        public var name: String? { __data["name"] }
        /// The number of standard days it takes for this planet to complete a single orbit
        /// of its local star.
        public var orbitalPeriod: Int? { __data["orbitalPeriod"] }
        /// The average population of sentient beings inhabiting this planet.
        public var population: Double? { __data["population"] }
        /// The number of standard hours it takes for this planet to complete a single
        /// rotation on its axis.
        public var rotationPeriod: Int? { __data["rotationPeriod"] }
        /// The percentage of the planet surface that is naturally occuring water or bodies
        /// of water.
        public var surfaceWater: Double? { __data["surfaceWater"] }
        /// The terrains of this planet.
        public var terrains: [String?]? { __data["terrains"] }
      }

      /// AllPlanets.PageInfo
      ///
      /// Parent Type: `PageInfo`
      public struct PageInfo: SwapiGQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.PageInfo }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("endCursor", String?.self),
          .field("hasNextPage", Bool.self),
          .field("hasPreviousPage", Bool.self),
          .field("startCursor", String?.self),
        ] }

        /// When paginating forwards, the cursor to continue.
        public var endCursor: String? { __data["endCursor"] }
        /// When paginating forwards, are there more items?
        public var hasNextPage: Bool { __data["hasNextPage"] }
        /// When paginating backwards, are there more items?
        public var hasPreviousPage: Bool { __data["hasPreviousPage"] }
        /// When paginating backwards, the cursor to continue.
        public var startCursor: String? { __data["startCursor"] }
      }
    }
  }
}
