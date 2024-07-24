//
//  FrameworkGridViewModel.swift
//  swiftUI-Grids
//
//  Created by Jaimin Raval on 24/07/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
    
}
