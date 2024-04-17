//
//  RestAPICaller.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/13/24.
//

import Foundation
import Apollo

enum URLError: Error {
    case invalidURL
}

class RestAPICaller {
    static let shared = RestAPICaller()
    private init() {}
    func fetch<U: Codable> (_ type: StarWarsCharacters) async throws -> AllResults<U> {
        guard let url = URL(string: type.restURL) else { throw URLError.invalidURL }
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode(AllResults<U>.self, from: data)
    }
}
