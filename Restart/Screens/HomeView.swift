//
//  HomeView.swift
//  Restart
//
//  Created by k21047kk on 2025/01/01.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - PROPERTIES
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true
            }) {
                Text("Restart")
            }
                
        }
    }
}

#Preview {
    HomeView()
}
