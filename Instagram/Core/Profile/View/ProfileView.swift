//
//  ProfileView.swift
//  Instagram
//
//  Created by Denis Dareuskiy on 15.05.24.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter({$0.user?.fullname == user.fullname})
    }
    
    var body: some View {
        ScrollView {
            //header
            ProfileHeaderView(user: user)
            
            //post grid view
            PostGridView(posts: posts)
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
