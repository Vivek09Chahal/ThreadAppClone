//
//  ProfileHeaderView.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/30/24.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    var user: User?
    
    init(user: User?){
        self.user = user
    }
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
                // fullname, username
                VStack(alignment: .leading, spacing: 4){
                    Text(user? .fullname ?? "")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    Text(user? .username ?? "")
                        .font(.subheadline)
                }
                // bio
                if let bio = user?.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text("2 followers")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            CircularProfileImageView(user: user, size: .medium)
        }
    }
}

#Preview {
    ProfileHeaderView(user: DeveloperPreview.shared.user)
}
