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
        LazyVGrid(columns: columns){
            FrameWorkTitleView(name: "app-clip",imageName: "App-Clip")
            FrameWorkTitleView(name: "app-clip",imageName: "App-Clip")
            FrameWorkTitleView(name: "app-clip",imageName: "App-Clip")
            FrameWorkTitleView(name: "app-clip",imageName: "App-Clip")
            FrameWorkTitleView(name: "app-clip",imageName: "App-Clip")
            FrameWorkTitleView(name: "app-clip",imageName: "App-Clip")
            FrameWorkTitleView(name: "app-clip",imageName: "App-Clip")
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameWorkTitleView: View {
    var name: String
    var imageName: String
    
    var body: some View {
        VStack(spacing: 10) {
            Image(name)
                .resizable()
                .frame(width: 90, height: 90)
            Text(imageName)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            
        }
    }
}
