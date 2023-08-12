//
//  ContentView.swift
//  SwiftUI-OnBoard
//
//  Created by Bekzhan Talgat on 12.08.2023.
//

import SwiftUI
import SwiftUIX

struct OnboardView: View {
    var body: some View {
        ZStack {
            background
            
            TabView {
                OnboardingCardView()
                OnboardingCardView()
                OnboardingCardView()
            }
            .tabViewStyle(PageTabViewStyle())
        }
    }
    
    var background: some View {
        LinearGradient(
            gradient: Gradient(
                stops: [
                    .init(color: Color(red: 0.8, green: 0.4, blue: 0.7, opacity: 1), location: 0),
                    .init(color: Color(red: 0.3, green: 0.1, blue: 0.7, opacity: 1), location: 1),
                ]
            ),
            startPoint: .init(x: 0.5, y: 0.0),
            endPoint: .init(x: 0, y: 1)
        )
        .ignoresSafeArea()
        .overlay {
            ZStack {
                Wave()
                
                Wave1()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
    }
}

struct OnboardingCardView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                Text("120 hours of videos")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.white.opacity(0.7))
                
                LinearGradient(
                    gradient: .init(
                        stops: [
                            .init(color: Color(hex: "FF8989"), location: 0),
                            .init(color: Color(hex: "C8DEFF"), location: 0.5),
                            .init(color: Color(hex: "369DFC"), location: 1),
                        ]
                    ),
                    startPoint: .init(x: 0, y: 0),
                    endPoint: .init(x: 1, y: 1)
                )
                .frame(height: 140)
                .mask(
                    Text("Learn \ndesign \nand code")
                        .font(.largeTitle)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                )
                
                Text("Learn by building real apps using Swift, React, Flutter and more. Design files and source codes are included for each course")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.7))
            }
            .padding(30)
            .background(
                LinearGradient(
                    gradient: Gradient(
                        stops: [
                            .init(color: Color(red: 0.1, green: 0.1, blue: 0.3, opacity: 1), location: 0),
                            .init(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0), location: 1),
                        ]
                    ),
                    startPoint: .init(x: 0, y: 0.0),
                    endPoint: .init(x: 0, y: 0.95)
                )
            )
            .mask(
                RoundedRectangle(cornerRadius: 30, style: .continuous)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 30, style: .continuous)
                    .stroke(
                        LinearGradient(
                            gradient: .init(
                                stops: [
                                    .init(color: .init(hex: "F0FFFFFF"), location: 0),
                                    .init(color: .init(hex: "00FFFFFF"), location: 1),
                                ]
                            ),
                            startPoint: .top,
                            endPoint: .bottom
                        ),
                        lineWidth: 1
                    )
                    .blendMode(.overlay)
                    .overlay(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .stroke(
                                LinearGradient(
                                    gradient: .init(
                                        stops: [
                                            .init(color: .init(hex: "F0FFFFFF"), location: 0),
                                            .init(color: .init(hex: "00FFFFFF"), location: 1),
                                        ]
                                    ),
                                    startPoint: .top,
                                    endPoint: .bottom
                                ),
                                lineWidth: 3
                            )
                            .blur(radius: 10)
                    )
            )
            .background(
                VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark)
                    .mask(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .fill(
                                LinearGradient(
                                    gradient: .init(
                                        colors: [
                                            .white,
                                            .white,
                                            .clear
                                        ]),
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                            )
                    )
            )
            .padding(20)
        }
        .padding(.bottom, 60)
        .background(
            LinearGradient(
                gradient: Gradient(
                    stops: [
                        .init(color: Color(red: 0.1, green: 0.1, blue: 0.3, opacity: 1), location: 0),
                        .init(color: Color(red: 0.0, green: 0.0, blue: 0.0, opacity: 0), location: 1),
                    ]
                ),
                startPoint: .bottom,
                endPoint: .init(x: 0.5, y: 0.05)
            )
        )
        .mask(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
        )
        .overlay(
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .stroke(
                    LinearGradient(
                        gradient: .init(
                            stops: [
                                .init(color: .init(hex: "F0FFFFFF"), location: 0),
                                .init(color: .init(hex: "00FFFFFF"), location: 1),
                            ]
                        ),
                        startPoint: .bottom,
                        endPoint: .top
                    ),
                    lineWidth: 1
                )
                .blendMode(.overlay)
                .overlay(
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .stroke(
                            LinearGradient(
                                gradient: .init(
                                    stops: [
                                        .init(color: .init(hex: "F0FFFFFF"), location: 0),
                                        .init(color: .init(hex: "00FFFFFF"), location: 1),
                                    ]
                                ),
                                startPoint: .bottom,
                                endPoint: .top
                            ),
                            lineWidth: 3
                        )
                        .blur(radius: 10)
                )
        )
        .background(
            VisualEffectBlurView(blurStyle: .systemUltraThinMaterialDark)
                .mask(
                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                        .fill(
                            LinearGradient(
                                gradient: .init(colors: [.white, .white, .clear]),
                                startPoint: .bottom,
                                endPoint: .top
                            )
                        )
                )
//                .blur(radius: 30)
        )
        .padding(20)
    }
}

