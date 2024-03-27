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
    @StateObject private var student1 = MyClass()
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Valor x: \(x)")
                Button("Suma 1"){
                    x += 1
                }
                Text("Mi nombre es \(student1.name) y mi edad es \(student1.edad)")
                Button("Change Object"){
                    student1.name =  "Enrique"
                    student1.edad = 21
                }
                NavigationLink(destination: BindigView(y: $x, adult1: student1),
                            tag: 1,
                            selection: $seleccion){
                    Button("Change View x and object"){
                        seleccion = 1
                    }
                }
            }
        }.navigationTitle("ContentView")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
