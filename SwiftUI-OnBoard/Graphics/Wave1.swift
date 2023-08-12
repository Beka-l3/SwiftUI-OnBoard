//
//  Wave1.swift
//  SwiftUI-OnBoard
//
//  Created by Bekzhan Talgat on 12.08.2023.
//

import SwiftUI

struct Wave1: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                stops: [
                    .init(color: Color(hex: "FF143E"), location: 0),
                    .init(color: Color(hex: "7241FF"), location: 1),
                ]
            ),
            startPoint: .init(x: 0.5, y: 0.25),
            endPoint: .init(x: 0.25, y: 2.5)
        )
        .mask(WaveShape1().frame(width: 1048, height: 913))
        .offset(x: 0, y: 300)
    }
}

//struct Wave1_Previews: PreviewProvider {
//    static var previews: some View {
//        Wave1()
//    }
//}

struct WaveShape1: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = rect.size.width
        let height = rect.size.height
        path.move(to: CGPoint(x: 0.47337*width, y: 0.36111*height))
        path.addCurve(to: CGPoint(x: 0, y: 0.00758*height), control1: CGPoint(x: 0.31575*width, y: 0.17627*height), control2: CGPoint(x: 0.24556*width, y: -0.04293*height))
        path.addLine(to: CGPoint(x: 0, y: height))
        path.addLine(to: CGPoint(x: width, y: 0.99747*height))
        path.addLine(to: CGPoint(x: width, y: 0.51768*height))
        path.addCurve(to: CGPoint(x: 0.47337*width, y: 0.36111*height), control1: CGPoint(x: width, y: 0.51768*height), control2: CGPoint(x: 0.64349*width, y: 0.56061*height))
        path.closeSubpath()
        return path
    }
}
