//
//  Wave.swift
//  SwiftUI-OnBoard
//
//  Created by Bekzhan Talgat on 12.08.2023.
//

import SwiftUI

struct Wave: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                stops: [
                    .init(color: Color(hex: "FF4667"), location: 0),
                    .init(color: Color(hex: "FEAD80"), location: 1),
                ]
            ),
            startPoint: .init(x: 0.5, y: 0.5),
            endPoint: .init(x: 0, y: 1)
        )
        .mask(WaveShape().frame(width: 448, height: 913))
        .offset(x: 0, y: 150)
    }
}

//struct Wave_Previews: PreviewProvider {
//    static var previews: some View {
//        Wave()
//    }
//}

struct WaveShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.43235*width, y: 0.37075*height))
        path.addCurve(to: CGPoint(x: 0.00294*width, y: 0.0034*height), control1: CGPoint(x: 0.33561*width, y: 0.0883*height), control2: CGPoint(x: 0.0902*width, y: 0.01701*height))
        path.addLine(to: CGPoint(x: 0.00294*width, y: 0.9966*height))
        path.addLine(to: CGPoint(x: 0.99706*width, y: 0.9949*height))
        path.addLine(to: CGPoint(x: 0.99706*width, y: 0.61395*height))
        path.addCurve(to: CGPoint(x: 0.43235*width, y: 0.37075*height), control1: CGPoint(x: 0.99706*width, y: 0.61395*height), control2: CGPoint(x: 0.52206*width, y: 0.63265*height))
        path.closeSubpath()
        return path
    }
}
