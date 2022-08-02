//
//  exo11.swift
//  LeaColorPicker
//
//  Created by Apprenant 23 on 18/03/2022.
//

import SwiftUI

struct exo11: View {
    @State private var degrees: Double = 25
    var body: some View {
        
        
        
        HStack(spacing: 0){
            
            ZStack{
                
                Rectangle()
                    .fill(Color.orange)
                    .ignoresSafeArea()
                
                Text("Kelvin")
                    .fontWeight(.semibold)
                    .font (.system(size: 20))
                    .foregroundColor(Color.white)
            }
            
            ZStack{
                
                Rectangle()
                    .fill(Color.blue)
                    .ignoresSafeArea()
                
                Text("Fahrenheit")
                    .fontWeight(.semibold)
                    .font (.system(size: 20))
                    .foregroundColor(Color.white)
                
            }
            ZStack{
                
                
                Rectangle()
                    .fill(Color.pink)
                    .ignoresSafeArea()
                
                Text("Celsius")
                    .fontWeight(.semibold)
                    .font (.system(size: 20))
                    .foregroundColor(Color.white)
                
                
                
            }
            
            
            
            
        }
    }
    
    
    struct exo11_Previews: PreviewProvider {
        static var previews: some View {
            exo11()
        }
    }

