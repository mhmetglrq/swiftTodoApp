//
//  LoginView.swift
//  todo
//
//  Created by Mehmet Güler on 23.07.2024.
//

import SwiftUI



struct LoginView: View {
    @State var email=""
    @State var password=""

    var body: some View {
        NavigationView{
            VStack{
                //Header
                HeaderView()
                // Login Form
                Form{
                    TextField("Email Address",text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password",text: $password
                    )
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button{
                        //Attemp Login
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                        Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                }
                Spacer()
                // Create Account
                VStack{
                    Text("New Around Here?")
                    
                    NavigationLink("Create An Account",destination: RegisterView())
                    
                }
                .padding(.bottom,50)
            }
        }
    }
}

#Preview {
    LoginView()
}
