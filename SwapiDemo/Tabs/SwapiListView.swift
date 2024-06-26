//
//  SwapiListView.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/13/24.
//

import SwiftUI

struct SwapiListView: View {
    @StateObject private var viewModel: SwapiViewModel

    init(sourceType: RemoteSourceType = .rest) {
        _viewModel = StateObject(wrappedValue: SwapiViewModel(sourceType: sourceType))
    }

    var body: some View {
        NavigationStack {
            VStack {
                Picker("Learn More about Star Wars", selection: $viewModel.selectedContent) {
                    ForEach(StarWarsCharacters.allCases, id: \.self) { selection in
                        Text(selection.title)
                    }
                }
                .pickerStyle(.segmented)
                .frame(height: 44)
            }
            List {
                Section {
                    ForEach(viewModel.listContent, id: \.self) { Text($0) }
                } footer: {
                    HStack {
                        Spacer()
                        Button {
                            Task {
                                try? await viewModel.fetchContent(viewModel.selectedContent, .paginate)
                            }
                        } label: {
                            Text("Next")
                                .font(.callout).bold()
                                .foregroundStyle(.blue)
                        }
                        .opacity(viewModel.disablePagination ? 0 : 1)
                        Spacer()
                    }

                }
                .listSectionSeparator(.hidden)

            }
            .listStyle(.plain)
            .navigationTitle(viewModel.sourceType == .rest ? "SWAPI Rest API" : "SWAPI GQL API")
        }
        .searchable(
            text: $viewModel.searchText,
            isPresented: $viewModel.isSearchActive,
            prompt: "Search \(viewModel.selectedContent)")
        .onAppear(perform: {
            Task {
                do {
                    try await viewModel.fetchContent(viewModel.selectedContent)
                } catch {
                    print(error)
                }
            }
        })
    }
}

#Preview {
    SwapiListView()
}
