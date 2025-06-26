//
//  UserListViewModel.swift
//  Random User
//
//  Created by Opshanka Prabath on 2025-06-26.
//
import SwiftUI

@MainActor
class UserListViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var searchText = ""
    
    private let userService = UserService()
    
    var filteredUsers: [User] {
        if searchText.isEmpty {
            return users
        } else {
            return users.filter { user in
                user.displayName.localizedCaseInsensitiveContains(searchText) ||
                user.email.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    
    func loadUsers() async {
        isLoading = true
        errorMessage = nil
        
        do {
            let fetchedUsers = try await userService.fetchUsers()
            users = fetchedUsers
        } catch {
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
    
    func refreshUsers() async {
        await loadUsers()
    }
}
