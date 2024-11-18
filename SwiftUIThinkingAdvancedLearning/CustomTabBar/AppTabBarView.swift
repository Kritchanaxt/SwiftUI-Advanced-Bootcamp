//
//  AppTabBarView.swift
//  SwiftUIThinkingAdvancedLearning
//
//  Created by Kritchanat on 21/11/2567 BE.
//


import SwiftUI

// Generics
// ViewBuilder
// PreferenceKey
// MatchedGeometryEffect

struct AppTabBarView: View {
    
    @State private var selection: String = "home"
    @State private var tabSelection: TabBarItem = .home
    
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            Color.green
//            TestTabView(text: "1")
                .tabBarItem(tab: .profile, selection: $tabSelection)
            
            Color.orange
//            TestTabView(text: "2")
                .tabBarItem(tab: .messages, selection: $tabSelection)
            
            Color.red
//            TestTabView(text: "3")
                .tabBarItem(tab: .home, selection: $tabSelection)
            
            Color.blue
//            TestTabView(text: "4")
                .tabBarItem(tab: .favorites, selection: $tabSelection)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

//struct AppTabBarView_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        AppTabBarView()
//    }
//}

#Preview {
    AppTabBarView()
}

extension AppTabBarView {
    
    private var defaultTabView: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
            Color.orange
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
    
}

struct TestTabView: View {
    
    let text: String
    @State private var textFieldText: String = ""
    
    init(text: String) {
        self.text = text
        print("INIT" + text)
    }
    
    var body: some View {
        VStack {
            Text(text)
                .onAppear {
                    print("ONAPPEAR" + text)
            }
            TextField("Type something...", text: $textFieldText)
                .disableAutocorrection(true)
            
        }
    }
}
