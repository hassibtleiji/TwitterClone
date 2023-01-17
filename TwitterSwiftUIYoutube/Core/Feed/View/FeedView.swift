//
//  FeedView.swift
//  TwitterSwiftUI
//
//  Created by Hassib Tleiji on 1/9/23.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 20, id: \.self) {_ in
                       TweetRowView()
                            .padding()
                    }
                }
            }
            
            Button {
                showNewTweetView.toggle()
                print("Show new tweet view..")
            }label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width:40, height:40)
                    .padding(15)

            }
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView) {
               NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
