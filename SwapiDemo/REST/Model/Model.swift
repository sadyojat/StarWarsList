//
//  Films.swift
//  SwapiDemo
//
//  Created by Alok Irde on 4/13/24.
//

import Foundation

struct AllResults<T: Codable>: Codable {
    var count: Int
    var next: String?
    var previous: String?
    let results: [T]
}

struct People: Codable {
    let name: String
    let birthyear: String
    let eyecolor: String
    let films: [String]
    let gender: String
    let haircolor: String
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case birthyear = "birth_year"
        case eyecolor = "eye_color"
        case haircolor = "hair_color"
        case films = "films"
        case gender = "gender"
    }
}

struct Film: Codable {
    let name: String
    let openingCrawl: String
    let characters: [String]
    enum CodingKeys: String, CodingKey {
        case name = "title"
        case openingCrawl = "opening_crawl"
        case characters = "characters"
    }
}

struct Planet: Codable {
    let name: String
    let residents: [String]
    let films: [String]
}

struct Species: Codable {
    let name: String
    let classification: String
    let people: [String]
    let films: [String]
    let skinColors: String
    let eyeColors: String
    let language: String
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case classification = "classification"
        case people = "people"
        case films = "films"
        case skinColors = "skin_colors"
        case eyeColors = "eye_colors"
        case language = "language"
    }
}

struct Starship: Codable {
    let name: String
    let model: String
    let manufacturer: String
    let cost: String
    let pilots: [String]
    let films: [String]
    let starshipClass: String

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case model = "model"
        case manufacturer = "manufacturer"
        case cost = "cost_in_credits"
        case pilots = "pilots"
        case films = "films"
        case starshipClass = "starship_class"
    }
}

struct Vehicle: Codable {
    let name: String
    let model: String
    let manufacturer: String
    let cost: String
    let pilots: [String]
    let films: [String]
    let vehicleClass: String
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case model = "model"
        case manufacturer = "manufacturer"
        case cost = "cost_in_credits"
        case pilots = "pilots"
        case films = "films"
        case vehicleClass = "vehicle_class"
    }
}
