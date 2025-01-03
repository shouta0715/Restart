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
  @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {

        VStack(spacing: 20){
            
            
            Spacer()

            // MARK: - HEADER
            ZStack{
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                
                Image(.character2)
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(
                      .easeInOut(duration: 4).repeatForever(),
                      value: isAnimating
                    )
            }
                
            // MARK: - CENTER
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .foregroundColor(.secondary)
                .font(.title3)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .padding()
            
            
            Spacer()
            
            // MARK: - FOOTER
            Button(action: {
                playSound(sound: "success", type: "m4a")
                isOnboardingViewActive = true
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
            } //: Button
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
        .onAppear {
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
            isAnimating = true
          })
        }

    }
}

#Preview {
    HomeView()
}
