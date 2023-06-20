//
//  SliderView.swift
//  NumberSearch
//
//  Created by Elena Sharipova on 19.06.2023.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var currentValue: Double
    
    let targetValue: Int
    let alpha: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Подвиньте слайдер, как можно ближе к: \(targetValue).")
            
            HStack {
                Text("0")
                UISliderRepresentation(value: $currentValue, alpha: alpha)
                Text("100")
            }
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(currentValue: .constant(100.0), targetValue: 100, alpha: 1)
    }
}
