//
//  GQLClient.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/14/24.
//

import Foundation
import Apollo

typealias GQLListCompletion = (([String]) -> Void)

struct AllQueryHeader {
    var first: GraphQLNullable<Int> = nil
    var last: GraphQLNullable<Int> = nil
    var before: GraphQLNullable<String> = nil
    var after: GraphQLNullable<String> = nil
}

class GQLClient {
    static let shared = GQLClient()
    private init() {}
    private let client = ApolloClient(url: URL(string: "https://swapi-graphql.netlify.app/.netlify/functions/index")!)
    
    func fetchAllPeople(_ h: AllQueryHeader = AllQueryHeader(), _ completion: ((GraphQL.AllPeople?) -> Void)? = nil ) {
        client.fetch(query: GraphQL.AllPeopleQuery(first: h.first, last: h.last,
                                                   before: h.before, after: h.after)) { result in
            do {
                guard let data = try result.get().data else { return }
                completion?(data.allPeople)
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllFilms(_ h: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
        client.fetch(query: GraphQL.AllFilmsQuery(after: h.after, before: h.before,
                                                  first: h.first, last: h.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allFilms?.films as? [GraphQL.AllFilms.Film] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllPlanets(_ h: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
        client.fetch(query: 
                        GraphQL.AllPlanetsQuery(after: h.after, before: h.before, 
                                                first: h.first, last: h.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allPlanets?.planets as? [GraphQL.AllPlanets.Planet] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllSpecies(_ h: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
        client.fetch(query: 
                        GraphQL.AllSpeciesQuery(after: h.after, before: h.before,
                                                first: h.first, last: h.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allSpecies?.species as? [GraphQL.AllSpecies.Specy] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllStarships(_ h: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
        client.fetch(query: GraphQL.AllStarshipsQuery(after: h.after, before: h.before, first: h.first, last: h.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allStarships?.starships as? [GraphQL.AllStarships.Starship] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
    func fetchAllVehicles(_ h: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
        client.fetch(query: GraphQL.AllVehiclesQuery(after: h.after, before: h.before, first: h.first, last: h.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allVehicles?.vehicles as? [GraphQL.AllVehicles.Vehicle] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
    
        
}
