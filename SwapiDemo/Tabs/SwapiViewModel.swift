//
//  SwapiViewModel.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/14/24.
//

import Foundation

@MainActor
class SwapiViewModel: ObservableObject {
    @Published var listContent = [String]()
    @Published var selectedContent: SwapiContent = .films
    @Published var searchText = ""
    @Published var isSearchActive = false
    
    let sourceType: RemoteSourceType
    
    init(sourceType: RemoteSourceType = .rest) {
        self.sourceType = sourceType
    }    
}


extension SwapiViewModel {
    func fetchContent(_ type: SwapiContent) async throws {
        switch sourceType {
        case .rest:
            try await fetchRestAPIContent(type)
        case .gql:
            fetchGQLContent(type)
        }
    }
    
    private func fetchRestAPIContent(_ type: SwapiContent) async throws {
        switch type {
        case .people:
            let result = try await RestAPICaller.shared.fetch(type) as AllResults<People>
            listContent = result.results.compactMap { $0.name }
        case .planets:
            let result = try await RestAPICaller.shared.fetch(type) as AllResults<Planet>
            listContent = result.results.compactMap { $0.name }
        case .vehicles:
            let result = try await RestAPICaller.shared.fetch(type) as AllResults<Vehicle>
            listContent = result.results.compactMap { $0.name }
        case .films:
            let result = try await RestAPICaller.shared.fetch(type) as AllResults<Film>
            listContent = result.results.compactMap { $0.name }
        case .species:
            let result = try await RestAPICaller.shared.fetch(type) as AllResults<Species>
            listContent = result.results.compactMap { $0.name }
        case .starships:
            let result = try await RestAPICaller.shared.fetch(type) as AllResults<Starship>
            listContent = result.results.compactMap { $0.name }
        }
    }
    
    private func fetchGQLContent(_ type: SwapiContent) {
        switch type {
        case .people:
            GQLClient.shared.fetchAllPeople { [weak self] in
                guard let self else { return }
                self.listContent = $0
            }
        case .films:
            GQLClient.shared.fetchAllFilms { [weak self] in
                guard let self else { return }
                self.listContent = $0
            }
        case .planets:
            GQLClient.shared.fetchAllPlanets { [weak self] in
                guard let self else { return }
                self.listContent = $0
            }
        case .species:
            GQLClient.shared.fetchAllSpecies { [weak self] in
                guard let self else { return }
                self.listContent = $0
            }
        case .starships:
            GQLClient.shared.fetchAllStarships { [weak self] in
                guard let self else { return }
                self.listContent = $0
            }
        case .vehicles:
            GQLClient.shared.fetchAllVehicles { [weak self] in
                guard let self else { return }
                self.listContent = $0
            }
        }
    }
}
