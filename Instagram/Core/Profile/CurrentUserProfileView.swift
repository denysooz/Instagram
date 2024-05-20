//
//  CurrentUserProfileView.swift
//  Instagram
//
//  Created by Denis Dareuskiy on 19.05.24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({$0.user?.fullname == user.fullname})
    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //header
                ProfileHeaderView(user: user)
                
                //post grid view
                PostGridView(posts: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
