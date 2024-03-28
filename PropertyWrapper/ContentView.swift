//
//  ContentView.swift
//  PropertyWrapper
//
//  Created by Luis on 27/3/24.
//

import SwiftUI

class MyClass : ObservableObject {
    @Published var name = "Luis"
    @Published var edad = 29
}

struct ContentView: View {
    @State private var x = 0
    @State private var seleccion:Int?
    @State private var isPlaying : Bool = false
    @StateObject private var student1 = MyClass()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Valor x: \(x)")
                Button("Suma 1"){
                    x += 1
                    isPlaying.toggle()
                }
                Text("Mi nombre es \(student1.name) y mi edad es \(student1.edad)")
                Button("Change Object"){
                    student1.name =  "Enrique"
                    student1.edad = 21
                }
                NavigationLink(destination: BindigView(),
                            tag: 1,
                            selection: $seleccion){
                    Button("Change View x and object"){
                        seleccion = 1
                    }
                }
                PlayButton(isPlaying: $isPlaying)
            }
        }.navigationTitle("ContentView")
            .environmentObject(student1)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(MyClass())
    }
}

struct PlayButton : View {
    @Binding var isPlaying : Bool
    
    var body: some View {
        Button(isPlaying ? "Pause" : "Play"){
            isPlaying.toggle()
        }
    }
}
