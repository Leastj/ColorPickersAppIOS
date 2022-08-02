//
//  Exo9.swift
//  Exo 2
//
//  Created by Apprenant 23 on 17/03/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var colorRed: Double = 255
    @State private var colorGreen: Double = 255
    @State private var colorBlue: Double = 255
    
    //    @State private var colorHue: Double = 360
    //    @State private var colorSat: Double = 100
    //    @State private var colorLum: Double = 100
    
    var body: some View {
        
        GeometryReader { proxy in
            ZStack {
                
                Button(action:{
                    let pasteboard = UIPasteboard.general
                    let colorToHexa = String(format:"#%02X%02X%02X",
                                             Int(colorRed),
                                             Int(colorGreen),
                                             Int(colorBlue))
                    pasteboard.string = colorToHexa
                }, label:{
                    Color(red: colorRed/255,
                          green: colorGreen/255,
                          blue: colorBlue/255,
                          opacity: 1.0)
                        .ignoresSafeArea()
                })
                
                //                VStack {
                //                    HStack{
                //                        VStack (spacing: 0){
                //                            Spacer()
                //                            Text("🌈 \(Int(colorHue))")
                //                                .fontWeight(.semibold)
                //                            Slider(value: $colorRed, in: 0...360) { isEditing in
                //
                //                            }
                //                            .tint(.red)
                //
                //
                //
                //
                //
                //                        }
                //                        .frame(width: proxy.size.height/3 - 20)
                //
                //                        VStack (spacing: 0){
                //                            Spacer()
                //                            Text("🟢 \(Int(colorSat)) %")
                //                                .fontWeight(.semibold)
                //
                //                            Slider(value: $colorGreen, in: 0...100)
                //                                .tint(.green)
                //
                //                        }
                //                        .frame(width: proxy.size.height/3 - 20)
                //
                //                        VStack (spacing: 0){
                //
                //
                //
                //
                //                            Spacer()
                //                            Text("🔵 \(Int(colorLum)) %")
                //                                .fontWeight(.semibold)
                //                            Slider(value: $colorBlue, in: 0...100)
                //                                .tint(.blue)
                //                        }
                //                        .frame(width: proxy.size.height/3 - 20)
                //
                //                    }
                //                    .frame(height: 70)
                //                    .rotationEffect(.degrees(-90.0)
                //                                    , anchor: .topTrailing)
                //                    .padding(.horizontal, 4)
                //                    .offset(x: -proxy.size.height/2, y: 35)
                //                    Spacer()
                //                }
                
                VStack {
                    Spacer()
                   
                    HStack{
                        ExtractedView(colorValue: $colorRed, color: .red)
                            .frame(width: proxy.size.height/3 - 20)
                        
                        ExtractedView(colorValue: $colorGreen, color: .green)
                            
                        
                        .frame(width: proxy.size.height/3 - 20)
                        
                        
                        ExtractedView(colorValue: $colorBlue, color: .blue)
                            
                           
                        .frame(width: proxy.size.height/3 - 20)
                        
                    }
                    .frame(height: 70)
                    .rotationEffect(.degrees(-90.0)
                                    , anchor: .topLeading)
                    .padding(.horizontal, 4)
                    .offset(y: 60)
                }
            }
        }
    }
}

struct Exo9_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    
@Binding var colorValue: Double
    let color: Color
    
    var body: some View {
        VStack (spacing: 0){
            
            Slider(value: $colorValue, in: 0...255)
                .tint(color)
            if color == .red {
                Text("🔴 \(Int(colorValue))")
                    .fontWeight(.semibold)
            } else if color == .green{
                Text("🟢 \(Int(colorValue))")
                    .fontWeight(.semibold)
            } else if color == .blue{
                Text("🔵 \(Int(colorValue))")
                    .fontWeight(.semibold)
            }
                        
            
            
            Spacer()
            
        }
        
    }
}
