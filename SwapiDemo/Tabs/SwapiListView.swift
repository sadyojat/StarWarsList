//
//  SwapiListView.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/13/24.
//

import SwiftUI


struct SwapiListView: View {
    
    @State var searchText = ""
    @State var isSearchActive = false
    
    @State var selectedContent: SwapiContent = .films
    
    @State var listContent = [String]()
    
    private let sourceType: RemoteSourceType
    
    init(sourceType: RemoteSourceType = .rest) {
        self.sourceType = sourceType
    }
    
    var body: some View {
       
        NavigationStack {
            VStack {
                Picker("Learn More about Star Wars", selection: $selectedContent) {
                    ForEach(SwapiContent.allCases, id: \.self) { selection in
                        Text(selection.title)
                    }
                }
                .pickerStyle(.segmented)
                .frame(height: 44)
                .onChange(of: selectedContent) { _, newValue in
                    Task {
                        do { try await fetchContent(newValue) }
                        catch {  print(error) }
                    }
                }
            }
            List {
                Section {
                    ForEach(listContent, id: \.self) { Text($0) }
                } footer: {
                    HStack {
                        Spacer()
                        Button {
                            
                        } label: {
                            Text("Next")
                                .font(.callout).bold()
                                .foregroundStyle(.blue)
                        }
                        .opacity(1)
                        Spacer()
                    }

                }
                .listSectionSeparator(.hidden)
                
            }
            .listStyle(.plain)
            .navigationTitle(sourceType == .rest ? "SWAPI Rest API" : "SWAPI GQL API")
        }
        .searchable(text: $searchText, isPresented: $isSearchActive, prompt: "Search \(selectedContent)")
        .onAppear(perform: {
            Task {
                do { try await fetchContent(selectedContent) }
                catch { print(error) }
            }
        })
    }
}

extension SwapiListView {
    private func fetchContent(_ type: SwapiContent) async throws {
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
            GQLClient.shared.fetchAllPeople { listContent = $0 }
        case .films:
            GQLClient.shared.fetchAllFilms { listContent = $0 }
        case .planets:
            GQLClient.shared.fetchAllPlanets { listContent = $0 }
        case .species:
            GQLClient.shared.fetchAllSpecies { listContent = $0 }
        case .starships:
            GQLClient.shared.fetchAllStarships { listContent = $0 }
        case .vehicles:
            GQLClient.shared.fetchAllVehicles { listContent = $0 }
        }
    }
}

#Preview {
    SwapiListView()
}
