//
//  ProfileView.swift
//  Instagram
//
//  Created by Denis Dareuskiy on 15.05.24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            //header
            VStack {
                //pic and stats
                HStack {
                    Image("mary")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    VStack {
                        Text("3")
                        
                        Text("Posts")
                    }
                    
                    VStack {
                        Text("3")
                        
                        Text("Posts")
                    }
                    
                    VStack {
                        Text("3")
                        
                        Text("Posts")
                    } //19:19
                }
                
                //name and bio
                VStack(alignment: .leading, spacing: 4) {
                    Text("Mary Yarmak")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("The best of the best")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                
                //action button
                Button {
                    
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360 , height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                }
                
                Divider()
            }
            //post grid view
        }
    }
}

#Preview {
    ProfileView()
}
