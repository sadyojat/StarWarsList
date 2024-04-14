// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class AllStarshipsQuery: GraphQLQuery {
    static let operationName: String = "AllStarships"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllStarships { allStarships { __typename starships { __typename id length model name passengers starshipClass hyperdriveRating crew created costInCredits consumables cargoCapacity } } }"#
      ))

    public init() {}

    struct Data: GraphQL.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("allStarships", AllStarships?.self),
      ] }

      var allStarships: AllStarships? { __data["allStarships"] }

      /// AllStarships
      ///
      /// Parent Type: `StarshipsConnection`
      struct AllStarships: GraphQL.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.StarshipsConnection }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("starships", [Starship?]?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var starships: [Starship?]? { __data["starships"] }

        /// AllStarships.Starship
        ///
        /// Parent Type: `Starship`
        struct Starship: GraphQL.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Starship }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", GraphQL.ID.self),
            .field("length", Double?.self),
            .field("model", String?.self),
            .field("name", String?.self),
            .field("passengers", String?.self),
            .field("starshipClass", String?.self),
            .field("hyperdriveRating", Double?.self),
            .field("crew", String?.self),
            .field("created", String?.self),
            .field("costInCredits", Double?.self),
            .field("consumables", String?.self),
            .field("cargoCapacity", Double?.self),
          ] }

          /// The ID of an object
          var id: GraphQL.ID { __data["id"] }
          /// The length of this starship in meters.
          var length: Double? { __data["length"] }
          /// The model or official name of this starship. Such as "T-65 X-wing" or "DS-1
          /// Orbital Battle Station".
          var model: String? { __data["model"] }
          /// The name of this starship. The common name, such as "Death Star".
          var name: String? { __data["name"] }
          /// The number of non-essential people this starship can transport.
          var passengers: String? { __data["passengers"] }
          /// The class of this starship, such as "Starfighter" or "Deep Space Mobile
          /// Battlestation"
          var starshipClass: String? { __data["starshipClass"] }
          /// The class of this starships hyperdrive.
          var hyperdriveRating: Double? { __data["hyperdriveRating"] }
          /// The number of personnel needed to run or pilot this starship.
          var crew: String? { __data["crew"] }
          /// The ISO 8601 date format of the time that this resource was created.
          var created: String? { __data["created"] }
          /// The cost of this starship new, in galactic credits.
          var costInCredits: Double? { __data["costInCredits"] }
          /// The maximum length of time that this starship can provide consumables for its
          /// entire crew without having to resupply.
          var consumables: String? { __data["consumables"] }
          /// The maximum number of kilograms that this starship can transport.
          var cargoCapacity: Double? { __data["cargoCapacity"] }
        }
      }
    }
  }

}