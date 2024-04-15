// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

protocol GraphQL_SelectionSet: ApolloAPI.SelectionSet & ApolloAPI.RootSelectionSet
where Schema == GraphQL.SchemaMetadata {}

protocol GraphQL_InlineFragment: ApolloAPI.SelectionSet & ApolloAPI.InlineFragment
where Schema == GraphQL.SchemaMetadata {}

protocol GraphQL_MutableSelectionSet: ApolloAPI.MutableRootSelectionSet
where Schema == GraphQL.SchemaMetadata {}

protocol GraphQL_MutableInlineFragment: ApolloAPI.MutableSelectionSet & ApolloAPI.InlineFragment
where Schema == GraphQL.SchemaMetadata {}

extension GraphQL {
  typealias ID = String

  typealias SelectionSet = GraphQL_SelectionSet

  typealias InlineFragment = GraphQL_InlineFragment

  typealias MutableSelectionSet = GraphQL_MutableSelectionSet

  typealias MutableInlineFragment = GraphQL_MutableInlineFragment

  enum SchemaMetadata: ApolloAPI.SchemaMetadata {
    static let configuration: ApolloAPI.SchemaConfiguration.Type = SchemaConfiguration.self

    static func objectType(forTypename typename: String) -> ApolloAPI.Object? {
      switch typename {
      case "Root": return GraphQL.Objects.Root
      case "PeopleConnection": return GraphQL.Objects.PeopleConnection
      case "Person": return GraphQL.Objects.Person
      case "Film": return GraphQL.Objects.Film
      case "Planet": return GraphQL.Objects.Planet
      case "Species": return GraphQL.Objects.Species
      case "Starship": return GraphQL.Objects.Starship
      case "Vehicle": return GraphQL.Objects.Vehicle
      case "PersonFilmsConnection": return GraphQL.Objects.PersonFilmsConnection
      case "PageInfo": return GraphQL.Objects.PageInfo
      case "SpeciesConnection": return GraphQL.Objects.SpeciesConnection
      case "VehiclesConnection": return GraphQL.Objects.VehiclesConnection
      case "StarshipsConnection": return GraphQL.Objects.StarshipsConnection
      case "FilmsConnection": return GraphQL.Objects.FilmsConnection
      case "PlanetsConnection": return GraphQL.Objects.PlanetsConnection
      default: return nil
      }
    }
  }

  enum Objects {}
  enum Interfaces {}
  enum Unions {}

}