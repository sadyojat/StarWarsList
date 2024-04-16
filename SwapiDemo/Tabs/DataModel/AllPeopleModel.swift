//
//  AllPeopleModel.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/15/24.
//

import Combine
import Foundation
import ApolloAPI

class AllPeopleModel: ObservableObject {
    private(set) var people: [AllPeople.Person]? {
        didSet {
            if let people {
                names = people.compactMap{$0.name}
            }
        }
    }
    private(set) var pageInfo: AllPeople.PageInfo?
    private(set) var totalCount: Int?
    @Published private(set) var names: [String] = []       
    
    func fetch(_ fetchState: ContentFetchState = .cacheHitOrLoad) {
        var queryHeader = AllQueryHeader()
        switch fetchState {
        case .cacheHitOrLoad:
            queryHeader.first = GraphQLNullable<Int>(integerLiteral: people?.count ?? 10)
        case .paginate:
            queryHeader.first = GraphQLNullable<Int>(integerLiteral: ((people?.count ?? 0) + 10))
        }
        GQLClient.shared.fetchAllPeople(queryHeader) { [weak self] in
            guard let self, let incoming = $0 else { return }
            self.people = incoming.people?.compactMap({ $0 }) ?? []
            self.pageInfo = incoming.pageInfo
            self.totalCount = incoming.totalCount ?? 0
        }
    }
}
