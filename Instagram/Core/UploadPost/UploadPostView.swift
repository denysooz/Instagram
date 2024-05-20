//
//  UploadPostView.swift
//  Instagram
//
//  Created by Denis Dareuskiy on 20.05.24.
//

import SwiftUI

struct UploadPostView: View {
    var body: some View {
        VStack {
            //action tool bar
            HStack {
                Button {
                    print("Cancel upload")
                } label: {
                    Text("Cancel")
                }
                
                Text("New post")
                
                Button {
                    print("Upload post")
                } label: {
                    Text("Upload")
                }
                
                //post image and caption
                HStack {
                    
                }
            }
        }
    }
}

#Preview {
    UploadPostView()
}
