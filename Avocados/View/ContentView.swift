//
//  ContentView.swift
//  Avocados
//
//  Created by Labhesh Dudi on 26/10/25.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    var headers: [Header] = headersData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - HEADER
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                // MARK: - DISHER VIEW
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifer())
                
                DishesView()
                
                // MARK: - FOOTER
                
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocado")
                        .font(.system(.title, design: .serif))
                        .modifier(TitleModifer())
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                        .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifer: ViewModifier {
    func body(content: Content) -> some View {
        content
            .fontWeight(.bold)
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

#Preview {
    ContentView(headers: headersData)
}
