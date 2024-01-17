//
//  ContentView.swift
//  label scan
//
//  Created by 한정재 on 12/29/23.
//
import SwiftUI

struct Login: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername: Float = 0
    @State private var wrongPassword: Float = 0

    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)

                VStack {
                    Text("로그인")
                        .font(.largeTitle)
                        .bold()
                        .padding()

                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))

                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))

                    Button("Login") {
                        // Authenticate user
                        authenticateUser(username: username, password: password)
                    }
                        .foregroundColor(.white)
                        .frame(width: 300, height: 50)
                        .background(Color.black)
                        .cornerRadius(10)
                }
            }
            .navigationBarHidden(true)
        }
    }

    func authenticateUser(username: String, password: String) {
        if username.lowercased() == "1" {
            wrongUsername = 0
            if password.lowercased() == "0604" {
                wrongPassword = 0
                // Set the login status to true
                UserDefaults.standard.set(true, forKey: "isLoggedIn")
                
                // Dismiss the login screen
                if let window = UIApplication.shared.windows.first {
                    window.rootViewController?.dismiss(animated: true, completion: nil)
                }
            } else {
                wrongPassword = 2
            }
        } else {
            wrongUsername = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
