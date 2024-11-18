//
//  ProtocolsBootcamp.swift
//  SwiftUIThinkingAdvancedLearning
//
//  Created by Kritchanat on 23/11/2567 BE.
//

import SwiftUI

struct DefaultColorTheme: ColorThemeProtocol {
    let primary: Color = .blue
    let secondary: Color = .white
    let tertiary: Color = .gray
}

struct AlternativeColorTheme: ColorThemeProtocol {
    let primary: Color = .red
    let secondary: Color = .white
    let tertiary: Color = .green
}

struct AnotherAlternativeColorTheme: ColorThemeProtocol {
    let primary: Color = .blue
    let secondary: Color = .red
    let tertiary: Color = .purple
}

protocol ColorThemeProtocol {
    var primary: Color { get }
    var secondary: Color { get }
    var tertiary: Color { get }
}

protocol ButtonTextProtocol {
    var buttonText: String { get }
}

protocol ButtonPressedProtocols {
    func buttonPressed()
}

protocol ButtonDataSourceProtocols: ButtonTextProtocol, ButtonPressedProtocols {
    
}

class DefaultDataSource: ButtonDataSourceProtocols {
    var buttonText: String = "Protocols are awesome!"
    
    func buttonPressed() {
        print("Button was pressed!")
    }
}

class AlternativeDataSource: ButtonTextProtocol {
    var buttonText: String = "Protocols are lame!"
}

struct ProtocolsBootcamp: View {
    
    let colorTheme: ColorThemeProtocol
    let dataSource: ButtonDataSourceProtocols
    
    var body: some View {
        ZStack {
            colorTheme.tertiary
                .ignoresSafeArea()
            
            Text(dataSource.buttonText)
                .font(.headline)
                .foregroundColor(colorTheme.secondary)
                .padding()
                .background(colorTheme.primary)
                .cornerRadius(10)
                .onTapGesture {
                    dataSource.buttonPressed()
                }
        }
    }
}

#Preview {
    ProtocolsBootcamp(colorTheme: DefaultColorTheme(), dataSource: DefaultDataSource())
    ProtocolsBootcamp(colorTheme: AlternativeColorTheme(), dataSource: DefaultDataSource())
    ProtocolsBootcamp(colorTheme: AnotherAlternativeColorTheme(), dataSource: DefaultDataSource())
}
