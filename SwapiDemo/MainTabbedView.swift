//
//  ContentView.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/13/24.
//

import SwiftUI

enum RemoteSourceType: Int, CaseIterable {
    case rest = 0
    case gql

    var title: String {
        switch self {
        case .rest: "Rest API"
        case .gql: "GraphQL"
        }
    }

    var icon: String {
        switch self {
        case .rest: "pencil.and.scribble"
        case .gql: "apple.terminal.on.rectangle"
        }
    }
}

struct MainTabbedView: View {

    @State var selectedTab = RemoteSourceType.rest

    init() {
        UITabBar.appearance().backgroundColor = .lightGray
    }

    var body: some View {

        TabView(selection: $selectedTab,
                content: {
            SwapiListView(sourceType: .rest)
                .tag(RemoteSourceType.rest)
                .tabItem {
                    Label(RemoteSourceType.rest.title, systemImage: RemoteSourceType.rest.icon)
                }

            SwapiListView(sourceType: .gql)
                .tag(RemoteSourceType.gql)
                .tabItem {
                    Label(RemoteSourceType.gql.title, systemImage: RemoteSourceType.gql.icon)
                }
        })
    }
}

#Preview {
    MainTabbedView()
}
