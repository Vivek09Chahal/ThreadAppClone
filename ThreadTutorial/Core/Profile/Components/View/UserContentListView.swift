//
//  UserContentListView.swift
//  ThreadTutorial
//
//  Created by Vivek Chahal on 10/30/24.
//

import SwiftUI

struct UserContentListView: View {
    
    @StateObject var viewModel: UserContentListViewModel
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation
    
    // to adjust the view
    private var filterBarWidth: CGFloat{
        let count = CGFloat(ProfileThreadFilter.allCases.count)
        return UIScreen.main.bounds.width / count - 20
    }

    init(user: User){
        self._viewModel = StateObject(wrappedValue: UserContentListViewModel(user: user))
    }
    
    var body: some View {
        VStack{
            HStack{
                ForEach(ProfileThreadFilter.allCases){ filter in
                    VStack{
                        Text(filter.title)
                            .font(.subheadline)
                            .fontWeight(selectedFilter == filter ? .semibold : .regular)
                        
                        if selectedFilter == filter {
                            Rectangle()
                                .foregroundStyle(.black)
                                .frame(width: filterBarWidth, height: 1)
                                .matchedGeometryEffect(id: "item", in: animation)
                        } else {
                            Rectangle()
                                .foregroundStyle(.clear)
                                .frame(width: filterBarWidth, height: 1)
                        }
                    }
                    .onTapGesture {
                        withAnimation(.spring()){
                            selectedFilter = filter
                        }
                    }
                }
            }
            
            LazyVStack{
                ForEach(viewModel.threads){ thread in
                    ThreadCell(thread: thread)
                }
            }
        }
    }
}

#Preview {
    UserContentListView(user: DeveloperPreview.shared.user)
}
