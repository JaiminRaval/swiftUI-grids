//
//  FrameworkGridView.swift
//  swiftUI-Grids
//
//  Created by Jaimin Raval on 24/07/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] =  [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks, id: \.id){ frameWork in
                        FrameWorkTitleView(frameWork: frameWork)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

struct FrameWorkTitleView: View {
    var frameWork: Framework
//    var name: String
//    var imageName: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(frameWork.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(frameWork.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
