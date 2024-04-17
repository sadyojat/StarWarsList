//
//  GQLClient.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/14/24.
//

import Foundation
import Apollo
import SwapiGQL

typealias GQLListCompletion = (([String]) -> Void)
typealias AllPeople = AllPeopleQuery.Data.AllPeople
typealias AllFilms = AllFilmsQuery.Data.AllFilms
typealias AllPlanets = AllPlanetsQuery.Data.AllPlanets
typealias AllSpecies = AllSpeciesQuery.Data.AllSpecies
typealias AllStarships = AllStarshipsQuery.Data.AllStarships
typealias AllVehicles = AllVehiclesQuery.Data.AllVehicles

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

    func fetchAllPeople(_ header: AllQueryHeader = AllQueryHeader(), _ completion: ((AllPeople?) -> Void)? = nil ) {
        client.fetch(query: AllPeopleQuery(first: header.first, last: header.last,
                                                   before: header.before, after: header.after)) { result in
            do {
                guard let data = try result.get().data else { return }
                completion?(data.allPeople)
            } catch {
                print(error)
            }
        }
    }

    func fetchAllFilms(_ header: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
        client.fetch(query: AllFilmsQuery(after: header.after, before: header.before,
                                                  first: header.first, last: header.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allFilms?.films as? [AllFilms.Film] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }

    func fetchAllPlanets(_ header: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
        client.fetch(query:
                        AllPlanetsQuery(after: header.after, before: header.before,
                                                first: header.first, last: header.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allPlanets?.planets as? [AllPlanets.Planet] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }

    func fetchAllSpecies(_ header: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
        client.fetch(query:
                        AllSpeciesQuery(after: header.after, before: header.before,
                                                first: header.first, last: header.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allSpecies?.species as? [AllSpecies.Specy] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }

    func fetchAllStarships(_ header: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
            client.fetch(query: AllStarshipsQuery(
                after: header.after,
                before: header.before,
                first: header.first,
                last: header.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allStarships?.starships as? [AllStarships.Starship] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }

    func fetchAllVehicles(_ header: AllQueryHeader = AllQueryHeader(), _ completion: GQLListCompletion? = nil) {
        client.fetch(query:
                        AllVehiclesQuery(
                            after: header.after,
                            before: header.before,
                            first: header.first,
                            last: header.last)) { result in
            do {
                guard let data = try result.get().data else { return }
                if let people = data.allVehicles?.vehicles as? [AllVehicles.Vehicle] {
                    completion?(people.compactMap { $0.name ?? nil })
                }
            } catch {
                print(error)
            }
        }
    }
}
