//
//  UserDetailView.swift
//  Random User
//
//  Created by Opshanka Prabath on 2025-06-26.
//
import SwiftUI

struct UserDetailView: View {
    let user: User
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // Profile Image
                AsyncImage(url: URL(string: user.picture.large)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color.gray.opacity(0.3))
                        .overlay(
                            Image(systemName: "person.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.gray)
                        )
                }
                .frame(width: 200, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .shadow(radius: 5)
                
                // User Information
                VStack(spacing: 16) {
                    DetailRowView(
                        icon: "person.fill",
                        title: "Full Name",
                        value: user.fullName
                    )
                    
                    DetailRowView(
                        icon: "envelope.fill",
                        title: "Email",
                        value: user.email
                    )
                    
                    DetailRowView(
                        icon: "phone.fill",
                        title: "Phone",
                        value: user.phone
                    )
                }
                .padding(.horizontal)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle("User Profile")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            UserDetailView(user: sampleUser)
        }
    }
    
    static let sampleUser = User(
        gender: "female",
        name: Name(title: "Ms", first: "Jane", last: "Doe"),
        email: "jane.doe@example.com",
        phone: "123-456-7890",
        picture: Picture(
            large: "https://randomuser.me/api/portraits/women/1.jpg",
            medium: "https://randomuser.me/api/portraits/med/women/1.jpg",
            thumbnail: "https://randomuser.me/api/portraits/thumb/women/1.jpg"
        )
    )
}
