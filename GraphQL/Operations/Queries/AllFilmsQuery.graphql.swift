// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class AllFilmsQuery: GraphQLQuery {
    static let operationName: String = "AllFilms"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllFilms($after: String, $before: String, $first: Int, $last: Int) { allFilms(after: $after, before: $before, first: $first, last: $last) { __typename films { __typename created director edited episodeID id openingCrawl producers releaseDate name: title } pageInfo { __typename endCursor hasNextPage hasPreviousPage startCursor } totalCount } }"#
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
        .field("allFilms", AllFilms?.self, arguments: [
          "after": .variable("after"),
          "before": .variable("before"),
          "first": .variable("first"),
          "last": .variable("last")
        ]),
      ] }

      var allFilms: AllFilms? { __data["allFilms"] }

      /// AllFilms
      ///
      /// Parent Type: `FilmsConnection`
      struct AllFilms: GraphQL.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.FilmsConnection }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("films", [Film?]?.self),
          .field("pageInfo", PageInfo.self),
          .field("totalCount", Int?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var films: [Film?]? { __data["films"] }
        /// Information to aid in pagination.
        var pageInfo: PageInfo { __data["pageInfo"] }
        /// A count of the total number of objects in this connection, ignoring pagination.
        /// This allows a client to fetch the first five objects by passing "5" as the
        /// argument to "first", then fetch the total count so it could display "5 of 83",
        /// for example.
        var totalCount: Int? { __data["totalCount"] }

        /// AllFilms.Film
        ///
        /// Parent Type: `Film`
        struct Film: GraphQL.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Film }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("created", String?.self),
            .field("director", String?.self),
            .field("edited", String?.self),
            .field("episodeID", Int?.self),
            .field("id", GraphQL.ID.self),
            .field("openingCrawl", String?.self),
            .field("producers", [String?]?.self),
            .field("releaseDate", String?.self),
            .field("title", alias: "name", String?.self),
          ] }

          /// The ISO 8601 date format of the time that this resource was created.
          var created: String? { __data["created"] }
          /// The name of the director of this film.
          var director: String? { __data["director"] }
          /// The ISO 8601 date format of the time that this resource was edited.
          var edited: String? { __data["edited"] }
          /// The episode number of this film.
          var episodeID: Int? { __data["episodeID"] }
          /// The ID of an object
          var id: GraphQL.ID { __data["id"] }
          /// The opening paragraphs at the beginning of this film.
          var openingCrawl: String? { __data["openingCrawl"] }
          /// The name(s) of the producer(s) of this film.
          var producers: [String?]? { __data["producers"] }
          /// The ISO 8601 date format of film release at original creator country.
          var releaseDate: String? { __data["releaseDate"] }
          /// The title of this film.
          var name: String? { __data["name"] }
        }

        /// AllFilms.PageInfo
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