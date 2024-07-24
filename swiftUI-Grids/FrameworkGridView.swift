//
//  FrameworkGridView.swift
//  swiftUI-Grids
//
//  Created by Jaimin Raval on 24/07/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    let columns: [GridItem] =  [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible()),]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks, id: \.id){ frameWork in
                        FrameworkTitleView(frameWork: frameWork)
                            .onTapGesture {
                                // changing viewModel's framework
                                viewModel.selectedFramework = frameWork
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}

