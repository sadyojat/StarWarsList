// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class AllSpeciesQuery: GraphQLQuery {
    static let operationName: String = "AllSpecies"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllSpecies { allSpecies { __typename species { __typename id name language hairColors eyeColors edited designation created classification averageLifespan averageHeight } } }"#
      ))

    public init() {}

    struct Data: GraphQL.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("allSpecies", AllSpecies?.self),
      ] }

      var allSpecies: AllSpecies? { __data["allSpecies"] }

      /// AllSpecies
      ///
      /// Parent Type: `SpeciesConnection`
      struct AllSpecies: GraphQL.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.SpeciesConnection }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("species", [Specy?]?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var species: [Specy?]? { __data["species"] }

        /// AllSpecies.Specy
        ///
        /// Parent Type: `Species`
        struct Specy: GraphQL.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Species }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", GraphQL.ID.self),
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
          var id: GraphQL.ID { __data["id"] }
          /// The name of this species.
          var name: String? { __data["name"] }
          /// The language commonly spoken by this species.
          var language: String? { __data["language"] }
          /// Common hair colors for this species, null if this species does not typically
          /// have hair.
          var hairColors: [String?]? { __data["hairColors"] }
          /// Common eye colors for this species, null if this species does not typically
          /// have eyes.
          var eyeColors: [String?]? { __data["eyeColors"] }
          /// The ISO 8601 date format of the time that this resource was edited.
          var edited: String? { __data["edited"] }
          /// The designation of this species, such as "sentient".
          var designation: String? { __data["designation"] }
          /// The ISO 8601 date format of the time that this resource was created.
          var created: String? { __data["created"] }
          /// The classification of this species, such as "mammal" or "reptile".
          var classification: String? { __data["classification"] }
          /// The average lifespan of this species in years, null if unknown.
          var averageLifespan: Int? { __data["averageLifespan"] }
          /// The average height of this species in centimeters.
          var averageHeight: Double? { __data["averageHeight"] }
        }
      }
    }
  }

}