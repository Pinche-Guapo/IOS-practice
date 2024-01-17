//
//  label_scanApp.swift
//  label scan
//
//  Created by 한정재 on 12/29/23.
//

import SwiftUI

@main
struct label_scanApp: App {
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false

    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                MainPage()
            } else {
                Login()
            }
        }
    }
}

struct Previews_label_scanApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
