//
//  ProfileView.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/29/24.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            // bio and test
            VStack(spacing: 20) {
                ProfileHeaderView(user: user)
                Button{
                    
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 352, height: 32)
                        .background(.black)
                        .clipShape(.rect(cornerRadius: 8))
                }
                
                // user conyemt list view
                UserContentListView(user: user)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding(.horizontal)
    }
}


#Preview {
    ProfileView(user: DeveloperPreview.shared.user)
}
