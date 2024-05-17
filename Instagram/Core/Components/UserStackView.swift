//
//  StackView.swift
//  Instagram
//
//  Created by Denis Dareuskiy on 16.05.24.
//

import SwiftUI

struct UserStackView: View {
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

#Preview {
    UserStackView(value: 12, title: "Posts")
}
