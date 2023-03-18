//
//  ContentView.swift
//  experimental area
//
//  Created by Илья Курлович on 10.03.2023.
//

import SwiftUI
import SafariCover

struct ContentView: View {
    @State var moveSquare: Double = 0
    @State var isPresented: Bool = false
    var body: some View {
        VStack {
            Text("Кнопка перехода по ссылке")
                .foregroundColor(.accentColor)
                .safariCover($isPresented, url: "https://github.com/TopScrech")
                .padding()
                .onTapGesture {
                    isPresented = true
                }
            Spacer()
            VStack{
                Spacer()
                Rectangle()
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(10)
                    .shadow(color: .blue, radius: 5)
                    .foregroundColor(.purple)
                Slider(value: $moveSquare)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
