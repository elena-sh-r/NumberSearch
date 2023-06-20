//
//  UISliderRepresentation.swift
//  NumberSearch
//
//  Created by Elena Sharipova on 19.06.2023.
//

import SwiftUI

/// Слайдер, созданный на UIKit
struct UISliderRepresentation: UIViewRepresentable {
    
    @Binding var value: Double
    
    let thumbTintColor: UIColor = .red
    let alpha: Int
    
    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.minimumValue = 1
        slider.maximumValue = 100
        
        slider.thumbTintColor = thumbTintColor
        
        slider.addTarget(
            context.coordinator,
            action: #selector(Coordinator.valueChanged),
            for: .valueChanged
        )
        
        return slider
    }
    
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.thumbTintColor = thumbTintColor.withAlphaComponent(CGFloat(alpha) / 100)
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(value: $value)
    }
}

// MARK: - Coordinator
extension UISliderRepresentation {
    class Coordinator: NSObject {
        
        @Binding var value: Double
        
        init(value: Binding<Double>) {
            self._value = value
        }
        
        @objc func valueChanged(_ sender: UISlider) {
            value = Double(sender.value)
        }
    }
}

struct SliderViewRepresentable_Previews: PreviewProvider {
    static var previews: some View {
        UISliderRepresentation(value: .constant(100), alpha: 1)
    }
}
