// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllSpeciesQuery: GraphQLQuery {
  public static let operationName: String = "AllSpecies"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query AllSpecies($after: String, $before: String, $first: Int, $last: Int) { allSpecies(after: $after, before: $before, first: $first, last: $last) { __typename species { __typename id name language hairColors eyeColors edited designation created classification averageLifespan averageHeight } totalCount pageInfo { __typename endCursor hasNextPage hasPreviousPage startCursor } } }"#
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
      .field("allSpecies", AllSpecies?.self, arguments: [
        "after": .variable("after"),
        "before": .variable("before"),
        "first": .variable("first"),
        "last": .variable("last")
      ]),
    ] }

    public var allSpecies: AllSpecies? { __data["allSpecies"] }

    /// AllSpecies
    ///
    /// Parent Type: `SpeciesConnection`
    public struct AllSpecies: SwapiGQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.SpeciesConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("species", [Specy?]?.self),
        .field("totalCount", Int?.self),
        .field("pageInfo", PageInfo.self),
      ] }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var species: [Specy?]? { __data["species"] }
      /// A count of the total number of objects in this connection, ignoring pagination.
      /// This allows a client to fetch the first five objects by passing "5" as the
      /// argument to "first", then fetch the total count so it could display "5 of 83",
      /// for example.
      public var totalCount: Int? { __data["totalCount"] }
      /// Information to aid in pagination.
      public var pageInfo: PageInfo { __data["pageInfo"] }

      /// AllSpecies.Specy
      ///
      /// Parent Type: `Species`
      public struct Specy: SwapiGQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.Species }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", SwapiGQL.ID.self),
          .field("name", String?.self),
          .field("language", String?.self),
          .field("hairColors", [String?]?.self),
          .field("eyeColors", [String?]?.self),
          .field("edited", String?.self),
          .field("designation", String?.self),
          .field("created", String?.self),
          .field("classification", String?.self),
          .field("averageLifespan", Int?.self),
          .field("averageHeight", Double?.self),
        ] }

        /// The ID of an object
        public var id: SwapiGQL.ID { __data["id"] }
        /// The name of this species.
        public var name: String? { __data["name"] }
        /// The language commonly spoken by this species.
        public var language: String? { __data["language"] }
        /// Common hair colors for this species, null if this species does not typically
        /// have hair.
        public var hairColors: [String?]? { __data["hairColors"] }
        /// Common eye colors for this species, null if this species does not typically
        /// have eyes.
        public var eyeColors: [String?]? { __data["eyeColors"] }
        /// The ISO 8601 date format of the time that this resource was edited.
        public var edited: String? { __data["edited"] }
        /// The designation of this species, such as "sentient".
        public var designation: String? { __data["designation"] }
        /// The ISO 8601 date format of the time that this resource was created.
        public var created: String? { __data["created"] }
        /// The classification of this species, such as "mammal" or "reptile".
        public var classification: String? { __data["classification"] }
        /// The average lifespan of this species in years, null if unknown.
        public var averageLifespan: Int? { __data["averageLifespan"] }
        /// The average height of this species in centimeters.
        public var averageHeight: Double? { __data["averageHeight"] }
      }

      /// AllSpecies.PageInfo
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
