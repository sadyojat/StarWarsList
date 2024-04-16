// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class AllPeopleQuery: GraphQLQuery {
  public static let operationName: String = "AllPeople"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query AllPeople($first: Int, $last: Int, $before: String, $after: String) { allPeople(first: $first, last: $last, before: $before, after: $after) { __typename people { __typename id name birthYear eyeColor gender hairColor filmConnection { __typename films { __typename title } } } pageInfo { __typename endCursor hasNextPage hasPreviousPage startCursor } totalCount } }"#
    ))

  public var first: GraphQLNullable<Int>
  public var last: GraphQLNullable<Int>
  public var before: GraphQLNullable<String>
  public var after: GraphQLNullable<String>

  public init(
    first: GraphQLNullable<Int>,
    last: GraphQLNullable<Int>,
    before: GraphQLNullable<String>,
    after: GraphQLNullable<String>
  ) {
    self.first = first
    self.last = last
    self.before = before
    self.after = after
  }

  public var __variables: Variables? { [
    "first": first,
    "last": last,
    "before": before,
    "after": after
  ] }

  public struct Data: SwapiGQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.Root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("allPeople", AllPeople?.self, arguments: [
        "first": .variable("first"),
        "last": .variable("last"),
        "before": .variable("before"),
        "after": .variable("after")
      ]),
    ] }

    public var allPeople: AllPeople? { __data["allPeople"] }

    /// AllPeople
    ///
    /// Parent Type: `PeopleConnection`
    public struct AllPeople: SwapiGQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.PeopleConnection }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("people", [Person?]?.self),
        .field("pageInfo", PageInfo.self),
        .field("totalCount", Int?.self),
      ] }

      /// A list of all of the objects returned in the connection. This is a convenience
      /// field provided for quickly exploring the API; rather than querying for
      /// "{ edges { node } }" when no edge data is needed, this field can be be used
      /// instead. Note that when clients like Relay need to fetch the "cursor" field on
      /// the edge to enable efficient pagination, this shortcut cannot be used, and the
      /// full "{ edges { node } }" version should be used instead.
      public var people: [Person?]? { __data["people"] }
      /// Information to aid in pagination.
      public var pageInfo: PageInfo { __data["pageInfo"] }
      /// A count of the total number of objects in this connection, ignoring pagination.
      /// This allows a client to fetch the first five objects by passing "5" as the
      /// argument to "first", then fetch the total count so it could display "5 of 83",
      /// for example.
      public var totalCount: Int? { __data["totalCount"] }

      /// AllPeople.Person
      ///
      /// Parent Type: `Person`
      public struct Person: SwapiGQL.SelectionSet {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.Person }
        public static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("id", SwapiGQL.ID.self),
          .field("name", String?.self),
          .field("birthYear", String?.self),
          .field("eyeColor", String?.self),
          .field("gender", String?.self),
          .field("hairColor", String?.self),
          .field("filmConnection", FilmConnection?.self),
        ] }

        /// The ID of an object
        public var id: SwapiGQL.ID { __data["id"] }
        /// The name of this person.
        public var name: String? { __data["name"] }
        /// The birth year of the person, using the in-universe standard of BBY or ABY -
        /// Before the Battle of Yavin or After the Battle of Yavin. The Battle of Yavin is
        /// a battle that occurs at the end of Star Wars episode IV: A New Hope.
        public var birthYear: String? { __data["birthYear"] }
        /// The eye color of this person. Will be "unknown" if not known or "n/a" if the
        /// person does not have an eye.
        public var eyeColor: String? { __data["eyeColor"] }
        /// The gender of this person. Either "Male", "Female" or "unknown",
        /// "n/a" if the person does not have a gender.
        public var gender: String? { __data["gender"] }
        /// The hair color of this person. Will be "unknown" if not known or "n/a" if the
        /// person does not have hair.
        public var hairColor: String? { __data["hairColor"] }
        public var filmConnection: FilmConnection? { __data["filmConnection"] }

        /// AllPeople.Person.FilmConnection
        ///
        /// Parent Type: `PersonFilmsConnection`
        public struct FilmConnection: SwapiGQL.SelectionSet {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.PersonFilmsConnection }
          public static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("films", [Film?]?.self),
          ] }

          /// A list of all of the objects returned in the connection. This is a convenience
          /// field provided for quickly exploring the API; rather than querying for
          /// "{ edges { node } }" when no edge data is needed, this field can be be used
          /// instead. Note that when clients like Relay need to fetch the "cursor" field on
          /// the edge to enable efficient pagination, this shortcut cannot be used, and the
          /// full "{ edges { node } }" version should be used instead.
          public var films: [Film?]? { __data["films"] }

          /// AllPeople.Person.FilmConnection.Film
          ///
          /// Parent Type: `Film`
          public struct Film: SwapiGQL.SelectionSet {
            public let __data: DataDict
            public init(_dataDict: DataDict) { __data = _dataDict }

            public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.Film }
            public static var __selections: [ApolloAPI.Selection] { [
              .field("__typename", String.self),
              .field("title", String?.self),
            ] }

            /// The title of this film.
            public var title: String? { __data["title"] }
          }
        }
      }

      /// AllPeople.PageInfo
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
