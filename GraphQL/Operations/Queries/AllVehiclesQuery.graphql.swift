// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

extension GraphQL {
  class AllVehiclesQuery: GraphQLQuery {
    static let operationName: String = "AllVehicles"
    static let operationDocument: ApolloAPI.OperationDocument = .init(
      definition: .init(
        #"query AllVehicles { allVehicles { __typename vehicles { __typename name model passengers vehicleClass maxAtmospheringSpeed manufacturers length id edited crew created costInCredits consumables cargoCapacity } } }"#
      ))

    public init() {}

    struct Data: GraphQL.SelectionSet {
      let __data: DataDict
      init(_dataDict: DataDict) { __data = _dataDict }

      static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Root }
      static var __selections: [ApolloAPI.Selection] { [
        .field("allVehicles", AllVehicles?.self),
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
        ] }

        /// A list of all of the objects returned in the connection. This is a convenience
        /// field provided for quickly exploring the API; rather than querying for
        /// "{ edges { node } }" when no edge data is needed, this field can be be used
        /// instead. Note that when clients like Relay need to fetch the "cursor" field on
        /// the edge to enable efficient pagination, this shortcut cannot be used, and the
        /// full "{ edges { node } }" version should be used instead.
        var vehicles: [Vehicle?]? { __data["vehicles"] }

        /// AllVehicles.Vehicle
        ///
        /// Parent Type: `Vehicle`
        struct Vehicle: GraphQL.SelectionSet {
          let __data: DataDict
          init(_dataDict: DataDict) { __data = _dataDict }

          static var __parentType: ApolloAPI.ParentType { GraphQL.Objects.Vehicle }
          static var __selections: [ApolloAPI.Selection] { [
            .field("__typename", String.self),
            .field("name", String?.self),
            .field("model", String?.self),
            .field("passengers", String?.self),
            .field("vehicleClass", String?.self),
            .field("maxAtmospheringSpeed", Int?.self),
            .field("manufacturers", [String?]?.self),
            .field("length", Double?.self),
            .field("id", GraphQL.ID.self),
            .field("edited", String?.self),
            .field("crew", String?.self),
            .field("created", String?.self),
            .field("costInCredits", Double?.self),
            .field("consumables", String?.self),
            .field("cargoCapacity", Double?.self),
          ] }

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
          /// The ID of an object
          var id: GraphQL.ID { __data["id"] }
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
      }
    }
  }

}