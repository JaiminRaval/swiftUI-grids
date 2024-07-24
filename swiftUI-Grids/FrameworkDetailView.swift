//
//  FrameworkDetailView.swift
//  swiftUI-Grids
//
//  Created by Jaimin Raval on 24/07/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 45, height: 45)
                    
                }
            }
            .padding()
            Spacer()
            FrameworkTitleView(frameWork: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
               debugPrint("learn more tapped")
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundStyle(.white)
                    .cornerRadius(12)
                
            }
            .padding()
            
        }

    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
    .preferredColorScheme(.dark)
}
