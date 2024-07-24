//
//  FrameworkTitleView.swift
//  swiftUI-Grids
//
//  Created by Jaimin Raval on 24/07/24.
//

import SwiftUI

struct FrameworkTitleView: View {
        var frameWork: Framework
        
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

//#Preview {
//    FrameworkTitleView(frameWork: Fra)
//}
