// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class PlanetDetailQuery: GraphQLQuery {
  public static let operationName: String = "PlanetDetail"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query PlanetDetail($id: ID) { planet(id: $id) { __typename id name climates created diameter edited gravity orbitalPeriod population rotationPeriod surfaceWater terrains } }"#
    ))

  public var id: GraphQLNullable<ID>

  public init(id: GraphQLNullable<ID>) {
    self.id = id
  }

  public var __variables: Variables? { ["id": id] }

  public struct Data: SwapiGQL.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.Root }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("planet", Planet?.self, arguments: ["id": .variable("id")]),
    ] }

    public var planet: Planet? { __data["planet"] }

    /// Planet
    ///
    /// Parent Type: `Planet`
    public struct Planet: SwapiGQL.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SwapiGQL.Objects.Planet }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("id", SwapiGQL.ID.self),
        .field("name", String?.self),
        .field("climates", [String?]?.self),
        .field("created", String?.self),
        .field("diameter", Int?.self),
        .field("edited", String?.self),
        .field("gravity", String?.self),
        .field("orbitalPeriod", Int?.self),
        .field("population", Double?.self),
        .field("rotationPeriod", Int?.self),
        .field("surfaceWater", Double?.self),
        .field("terrains", [String?]?.self),
      ] }

      /// The ID of an object
      public var id: SwapiGQL.ID { __data["id"] }
      /// The name of this planet.
      public var name: String? { __data["name"] }
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
  }
}
