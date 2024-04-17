//
//  RestAPIConfig.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/13/24.
//

import ApolloAPI
import Foundation

protocol SwapiRestConformance {
    var restURL: String { get }
    var title: String { get }
}

enum ContentFetchState: Int, CaseIterable {
    case cacheHitOrLoad
    case paginate
}

enum StarWarsCharacters: SwapiRestConformance, CaseIterable {
    case films
    case people
    case planets
    case species
    case starships
    case vehicles

    var restURL: String {
        switch self {
        case .films: "https://swapi.dev/api/films/"
        case .people: "https://swapi.dev/api/people/"
        case .planets: "https://swapi.dev/api/planets/"
        case .species: "https://swapi.dev/api/species/"
        case .starships: "https://swapi.dev/api/starships/"
        case .vehicles: "https://swapi.dev/api/vehicles/"
        }
    }

    var title: String {
        switch self {
        case .films: "Films"
        case .people: "People"
        case .planets: "Planets"
        case .vehicles: "Vehicles"
        case .species: "Species"
        case .starships: "Starships"
        }
    }
}
