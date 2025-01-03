//
//  ContentView.swift
//  Restart
//
//  Created by k21047kk on 2025/01/01.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack{
            if isOnboardingViewActive {
                OnBoardingView()
            } else {
                HomeView()
            }
        }
        .animation(.easeOut(duration: 0.5),value: isOnboardingViewActive)

    }
}

#Preview {
    ContentView()
}
