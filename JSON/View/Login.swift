//
//  Login.swift
//  JSON
//
//  Created by Alondra García Morales on 19/10/23.
//

import SwiftUI

struct Login: View {
    
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var  login : PostViewModel
    
    var body: some View {
        ZStack{
            
            GeometryReader{ proxy in
                let frame = proxy.frame(in: .global)
                Image("bg1").resizable().frame(width: frame.size.width, height: frame.size.height )
            }
            GeometryReader {proxy in
                BlurView(style: .light)
            }
            VStack(){
                Text("Login into your account")
                    .foregroundStyle(.white)
                    .font(.system(size: 40, weight:.bold, design: .rounded))
                    .offset(x:-50, y:-50)
                
                TextField("", text: $email, prompt:Text("Username/Email").foregroundColor(.white).fontWeight(.light))
                    .keyboardType(.emailAddress)
                    .offset(x:15)
                    .padding(.bottom, 5)
                
                
                Rectangle()
                    .frame(width: 330, height: 1)
                    .foregroundStyle(.white)
                    .padding(.bottom)

               
                SecureField("", text: $password, prompt: Text("Password").foregroundStyle(.white).fontWeight(.light))
                    .offset(x:15)
                    .padding(.bottom, 5)

                    
                Rectangle()
                    .frame(width: 330, height: 1)
                    .foregroundStyle(.white)
                    .padding(.bottom,50)
                
                Button(action:{
                    login.login(email: email , password: password)
                }){
                    LogInButton()
                }
                
                Text("Don't have any account?")
                    .font(.footnote)
                    .foregroundStyle(.white)
                    .offset(x:-85, y:160)
                
            }.padding(.all)
        }.edgesIgnoringSafeArea(.all)
    }
}


struct BlurView: UIViewRepresentable {
    
    let style: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIVisualEffectView(
            effect: UIBlurEffect(style: style))
        return view
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {
        ///do nothing
    }
}

struct LogInButton : View{
    var body: some View {
        
        Text("Log In")
            .font(.title3)
            .bold()
            .foregroundStyle(.white)
            .frame(maxWidth: 295 , maxHeight: 10)
            .padding()
            .background(Color(.black))
            .clipShape(RoundedRectangle(cornerRadius: 50, style: .continuous))
    }
}
