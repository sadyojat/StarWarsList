//
//  GQLClient.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/14/24.
//

import Foundation
import Apollo

typealias GQLListCompletion = (([String]) -> Void)

class GQLClient {
    static let shared = GQLClient()
    private init() {}
    private let client = ApolloClient(url: URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!)
    
    func fetchAllPeople(_ completion: GQLListCompletion? = nil ) {
        client.fetch(query: GraphQL.AllPeopleQuery()) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allPeople?.people as? [GraphQL.AllPeopleQuery.Data.AllPeople.Person] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllFilms(_ completion: GQLListCompletion? = nil) {
        client.fetch(query: GraphQL.AllFilmsQuery()) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allFilms?.films as? [GraphQL.AllFilmsQuery.Data.AllFilms.Film] {
                    completion?(people.compactMap { $0.title ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllPlanets(_ completion: GQLListCompletion? = nil) {
        client.fetch(query: GraphQL.AllPlanetsQuery()) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allPlanets?.planets as? [GraphQL.AllPlanetsQuery.Data.AllPlanets.Planet] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllSpecies(_ completion: GQLListCompletion? = nil) {
        client.fetch(query: GraphQL.AllSpeciesQuery()) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allSpecies?.species as? [GraphQL.AllSpeciesQuery.Data.AllSpecies.Specy] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllStarships(_ completion: GQLListCompletion? = nil) {
        client.fetch(query: GraphQL.AllStarshipsQuery()) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allStarships?.starships as? [GraphQL.AllStarshipsQuery.Data.AllStarships.Starship] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllVehicles(_ completion: GQLListCompletion? = nil) {
        client.fetch(query: GraphQL.AllVehiclesQuery()) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allVehicles?.vehicles as? [GraphQL.AllVehiclesQuery.Data.AllVehicles.Vehicle] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
        
}
