// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class AllVehiclesQuery: GraphQLQuery {
    static let operationName: String = "AllVehicles"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllVehicles($after: String, $before: String, $first: Int, $last: Int) { allVehicles(after: $after, before: $before, first: $first, last: $last) { __typename vehicles { __typename id name model passengers vehicleClass maxAtmospheringSpeed manufacturers length edited crew created costInCredits consumables cargoCapacity } pageInfo { __typename endCursor hasNextPage hasPreviousPage startCursor } totalCount } }"#
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
        .field("allVehicles", AllVehicles?.self, arguments: [
          "after": .variable("after"),
          "before": .variable("before"),
          "first": .variable("first"),
          "last": .variable("last")
        ]),
      ] }

      var allVehicles: AllVehicles? { __data["allVehicles"] }

      /// AllVehicles
      ///
      /// Parent Type: `VehiclesConnection`
      struct AllVehicles: GraphQL.SelectionSet {
        let __data: DataDict
        init(_dataDict: DataDict) { __data = _dataDict }

        static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.VehiclesConnection }
        static var __selections: [ApolloAPI.Selection] { [
          .field("__typename", String.self),
          .field("vehicles", [Vehicle?]?.self),
          .field("pageInfo", PageInfo.self),
          .field("totalCount", Int?.self),
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var vehicles: [Vehicle?]? { __data["vehicles"] }
        /// Information to aid in pagination.
        var pageInfo: PageInfo { __data["pageInfo"] }
        /// A count of the total number of objects in this connection, ignoring pagination.
        /// This allows a client to fetch the first five objects by passing "5" as the
        /// argument to "first", then fetch the total count so it could display "5 of 83",
        /// for example.
        var totalCount: Int? { __data["totalCount"] }

        /// AllVehicles.Vehicle
        ///
        /// Parent Type: `Vehicle`
        struct Vehicle: GraphQL.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Vehicle }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("id", GraphQL.ID.self),
            .field("name", String?.self),
            .field("model", String?.self),
            .field("passengers", String?.self),
            .field("vehicleClass", String?.self),
            .field("maxAtmospheringSpeed", Int?.self),
            .field("manufacturers", [String?]?.self),
            .field("length", Double?.self),
            .field("edited", String?.self),
            .field("crew", String?.self),
            .field("created", String?.self),
            .field("costInCredits", Double?.self),
            .field("consumables", String?.self),
            .field("cargoCapacity", Double?.self),
          ] }

          /// The ID of an object
          var id: GraphQL.ID { __data["id"] }
          /// The name of this vehicle. The common name, such as "Sand Crawler" or "Speeder
          /// bike".
          var name: String? { __data["name"] }
          /// The model or official name of this vehicle. Such as "All-Terrain Attack
          /// Transport".
          var model: String? { __data["model"] }
          /// The number of non-essential people this vehicle can transport.
          var passengers: String? { __data["passengers"] }
          /// The class of this vehicle, such as "Wheeled" or "Repulsorcraft".
          var vehicleClass: String? { __data["vehicleClass"] }
          /// The maximum speed of this vehicle in atmosphere.
          var maxAtmospheringSpeed: Int? { __data["maxAtmospheringSpeed"] }
          /// The manufacturers of this vehicle.
          var manufacturers: [String?]? { __data["manufacturers"] }
          /// The length of this vehicle in meters.
          var length: Double? { __data["length"] }
          /// The ISO 8601 date format of the time that this resource was edited.
          var edited: String? { __data["edited"] }
          /// The number of personnel needed to run or pilot this vehicle.
          var crew: String? { __data["crew"] }
          /// The ISO 8601 date format of the time that this resource was created.
          var created: String? { __data["created"] }
          /// The cost of this vehicle new, in Galactic Credits.
          var costInCredits: Double? { __data["costInCredits"] }
          /// The maximum length of time that this vehicle can provide consumables for its
          /// entire crew without having to resupply.
          var consumables: String? { __data["consumables"] }
          /// The maximum number of kilograms that this vehicle can transport.
          var cargoCapacity: Double? { __data["cargoCapacity"] }
        }

        /// AllVehicles.PageInfo
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