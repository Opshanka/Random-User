//
//  UserListView.swift
//  Random User
//
//  Created by Opshanka Prabath on 2025-06-26.
//
import SwiftUI

struct UserListView: View {
    @StateObject private var viewModel = UserListViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if viewModel.isLoading && viewModel.users.isEmpty {
                    LoadingView()
                } else if let errorMessage = viewModel.errorMessage, viewModel.users.isEmpty {
                    ErrorView(message: errorMessage) {
                        Task {
                            await viewModel.loadUsers()
                        }
                    }
                } else {
                    usersList
                }
            }
            .navigationTitle("Random Users")
            .searchable(text: $viewModel.searchText, prompt: "Search users...")
            .task {
                await viewModel.loadUsers()
            }
        }
    }
    
    private var usersList: some View {
        List(viewModel.filteredUsers) { user in
            NavigationLink(destination: UserDetailView(user: user)) {
                UserRowView(user: user)
            }
        }
        .refreshable {
            await viewModel.refreshUsers()
        }
    }
}

struct UserListView_Previews: PreviewProvider {
    static var previews: some View {
        UserListView()
    }
}
