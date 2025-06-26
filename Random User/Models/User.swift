//
//  User.swift
//  Random User
//
//  Created by Opshanka Prabath on 2025-06-26.
//
import SwiftUI

struct User: Codable, Identifiable {
    let id = UUID()
    let gender: String
    let name: Name
    let email: String
    let phone: String
    let picture: Picture
    
    var fullName: String {
        "\(name.title) \(name.first) \(name.last)"
    }
    
    var displayName: String {
        "\(name.first) \(name.last)"
    }
}

struct Name: Codable {
    let title: String
    let first: String
    let last: String
}

struct Picture: Codable {
    let large: String
    let medium: String
    let thumbnail: String
}
