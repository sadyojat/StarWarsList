// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public typealias ID = String

public protocol SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == SwapiGQL.SchemaMetadata {}

public protocol InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == SwapiGQL.SchemaMetadata {}

public protocol MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == SwapiGQL.SchemaMetadata {}

public protocol MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == SwapiGQL.SchemaMetadata {}

public enum SchemaMetadata: ApolloAPI.SchemaMetadata {
  public static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

  public static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
    switch typename {
    case "Root": return SwapiGQL.Objects.Root
    case "PeopleConnection": return SwapiGQL.Objects.PeopleConnection
    case "Person": return SwapiGQL.Objects.Person
    case "Film": return SwapiGQL.Objects.Film
    case "Planet": return SwapiGQL.Objects.Planet
    case "Species": return SwapiGQL.Objects.Species
    case "Starship": return SwapiGQL.Objects.Starship
    case "Vehicle": return SwapiGQL.Objects.Vehicle
    case "PersonFilmsConnection": return SwapiGQL.Objects.PersonFilmsConnection
    case "PageInfo": return SwapiGQL.Objects.PageInfo
    case "SpeciesConnection": return SwapiGQL.Objects.SpeciesConnection
    case "VehiclesConnection": return SwapiGQL.Objects.VehiclesConnection
    case "StarshipsConnection": return SwapiGQL.Objects.StarshipsConnection
    case "FilmsConnection": return SwapiGQL.Objects.FilmsConnection
    case "PlanetsConnection": return SwapiGQL.Objects.PlanetsConnection
    default: return nil
    }
  }
}

public enum Objects {}
public enum Interfaces {}
public enum Unions {}
