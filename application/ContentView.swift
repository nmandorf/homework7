//
//  ContentView.swift
//  application
//
//  Created by Noa Mandorf on 9/29/25.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("1749776514964")
            .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
            .frame(width: 92.0, height: 92.0)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            
    }
}

extension VerticalAlignment {
    enum alignTop: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    static let alignTopCenter = VerticalAlignment(alignTop.self)
}

struct ContentView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack{
                CircleImage()
                Spacer()
                VStack (alignment: .trailing){
                    Text("Hello")
                        .font(.title)
                    
                    Text("My Name is Noa")
                        .font(.subheadline)
                    }
            }
            .padding()
            .background(Color(hue: 0.606, saturation: 0.248, brightness: 1.0, opacity: 0.84))
            .clipped()
            HStack (alignment: .alignTopCenter){
                VStack{
                    Text("Bio")
                        .font(.title)
                        .alignmentGuide(.alignTopCenter) { d in
                            d[VerticalAlignment.top]}
                    
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text("This is my story")
                        .font(.title)
                        .alignmentGuide(.alignTopCenter) { d in
                            d[VerticalAlignment.top]}
                    Text("I am a student here at CSM studying computer science")
                        .font(.subheadline)
                        .multilineTextAlignment(.trailing)
                }
            }
            .colorInvert()

            .padding()
            .background(Color(hue: 0.606, saturation: 0.749, brightness: 0.472, opacity: 0.84))
            .clipped()
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
    }
}

#Preview {
    ContentView()
}
