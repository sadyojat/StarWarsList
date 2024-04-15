// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class AllFilmsQuery: GraphQLQuery {
    static let operationName: String = "AllFilms"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllFilms { allFilms { __typename films { __typename id name: title releaseDate producers openingCrawl director created edited episodeID } } }"#
      ))

    public init() {}

    struct Data: GraphQL.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("allFilms", AllFilms?.self),
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
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var films: [Film?]? { __data["films"] }

        /// AllFilms.Film
        ///
        /// Parent Type: `Film`
        struct Film: GraphQL.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Film }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", GraphQL.ID.self),
            .field("title", alias: "name", String?.self),
            .field("releaseDate", String?.self),
            .field("producers", [String?]?.self),
            .field("openingCrawl", String?.self),
            .field("director", String?.self),
            .field("created", String?.self),
            .field("edited", String?.self),
            .field("episodeID", Int?.self),
          ] }

          /// The ID of an object
          var id: GraphQL.ID { __data["id"] }
          /// The title of this film.
          var name: String? { __data["name"] }
          /// The ISO 8601 date format of film release at original creator country.
          var releaseDate: String? { __data["releaseDate"] }
          /// The name(s) of the producer(s) of this film.
          var producers: [String?]? { __data["producers"] }
          /// The opening paragraphs at the beginning of this film.
          var openingCrawl: String? { __data["openingCrawl"] }
          /// The name of the director of this film.
          var director: String? { __data["director"] }
          /// The ISO 8601 date format of the time that this resource was created.
          var created: String? { __data["created"] }
          /// The ISO 8601 date format of the time that this resource was edited.
          var edited: String? { __data["edited"] }
          /// The episode number of this film.
          var episodeID: Int? { __data["episodeID"] }
        }
      }
    }
  }

}