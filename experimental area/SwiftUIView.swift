//
//  SwiftUIView.swift
//  experimental area
//
//  Created by Илья Курлович on 10.03.2023.
//

import SwiftUI
import SceneKit


struct SwiftUIView: View {
    @State private var scaleOn : Double = 0
    var body: some View {
        VStack {
                    SceneView(scene: SCNScene(named: "myModel.usdz"), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                .frame(width: 500, height: 500, alignment: .center)
                .padding()
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack {
                            Button {
                                guard let url = URL(string: "http://www.betaspce.com") else {
                                    // Handle invalid URL
                                    return
                                }
                                UIApplication.shared.open(url)
                            } label: {
                                Text("Website")
                            }
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "arkit")
                            }
                        }
                    }
                }
            }
        }


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
