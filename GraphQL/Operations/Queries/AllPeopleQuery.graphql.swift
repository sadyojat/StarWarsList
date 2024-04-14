// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class AllPeopleQuery: GraphQLQuery {
    static let operationName: String = "AllPeople"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllPeople { allPeople { __typename people { __typename name birthYear eyeColor gender hairColor filmConnection { __typename films { __typename title } } } } }"#
      ))

    public init() {}

    struct Data: GraphQL.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("allPeople", AllPeople?.self),
      ] }

      var allPeople: AllPeople? { __data["allPeople"] }

      /// AllPeople
      ///
      /// Parent Type: `PeopleConnection`
      struct AllPeople: GraphQL.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.PeopleConnection }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("people", [Person?]?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var people: [Person?]? { __data["people"] }

        /// AllPeople.Person
        ///
        /// Parent Type: `Person`
        struct Person: GraphQL.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Person }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String?.self),
            .field("birthYear", String?.self),
            .field("eyeColor", String?.self),
            .field("gender", String?.self),
            .field("hairColor", String?.self),
            .field("filmConnection", FilmConnection?.self),
          ] }

          /// The name of this person.
          var name: String? { __data["name"] }
          /// The birth year of the person, using the in-universe standard of BBY or ABY -
          /// Before the Battle of Yavin or After the Battle of Yavin. The Battle of Yavin is
          /// a battle that occurs at the end of Star Wars episode IV: A New Hope.
          var birthYear: String? { __data["birthYear"] }
          /// The eye color of this person. Will be "unknown" if not known or "n/a" if the
          /// person does not have an eye.
          var eyeColor: String? { __data["eyeColor"] }
          /// The gender of this person. Either "Male", "Female" or "unknown",
          /// "n/a" if the person does not have a gender.
          var gender: String? { __data["gender"] }
          /// The hair color of this person. Will be "unknown" if not known or "n/a" if the
          /// person does not have hair.
          var hairColor: String? { __data["hairColor"] }
          var filmConnection: FilmConnection? { __data["filmConnection"] }

          /// AllPeople.Person.FilmConnection
          ///
          /// Parent Type: `PersonFilmsConnection`
          struct FilmConnection: GraphQL.SelectionSet {
            let __data: DataDict
            init(_dataDict: DataDict) { __data = _dataDict }

            static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.PersonFilmsConnection }
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

            /// AllPeople.Person.FilmConnection.Film
            ///
            /// Parent Type: `Film`
            struct Film: GraphQL.SelectionSet {
              let __data: DataDict
              init(_dataDict: DataDict) { __data = _dataDict }

              static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Film }
              static var __selections: [ApolloAPI.Selection] { [
                .field("__typename", String.self),
                .field("title", String?.self),
              ] }

              /// The title of this film.
              var title: String? { __data["title"] }
            }
          }
        }
      }
    }
  }

}