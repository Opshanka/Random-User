//
//  UserService.swift
//  Random User
//
//  Created by Opshanka Prabath on 2025-06-26.
//
import SwiftUI

class UserService: ObservableObject {
    private let baseURL = "https://randomuser.me/api/"
    
    func fetchUsers(count: Int = 20) async throws -> [User] {
        guard let url = URL(string: "\(baseURL)?results=\(count)") else {
            throw NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
            throw NetworkError.serverError
        }
        
        let apiResponse = try JSONDecoder().decode(APIResponse.self, from: data)
        return apiResponse.results
    }
}

enum NetworkError: Error, LocalizedError {
    case invalidURL
    case serverError
    case decodingError
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .serverError:
            return "Server error occurred"
        case .decodingError:
            return "Failed to decode data"
        }
    }
}
