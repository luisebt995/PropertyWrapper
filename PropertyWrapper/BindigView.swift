//
//  BindigView.swift
//  PropertyWrapper
//
//  Created by Luis on 27/3/24.
//

import SwiftUI

struct BindigView: View {
    @Binding var y: Int
    @State var seleccion : Int?
    @ObservedObject var adult1: MyClass
    var body: some View {
        //NavigationView{
            VStack{
                Text("The value is: \(y)")
                Button("Add 2"){
                    y += 2

                }
                Text("Me llamo \(adult1.name) y tengo \(adult1.edad)")
                Button("Change Object"){
                    adult1.name = "Josh"
                    adult1.edad = 2
                }
                NavigationLink(destination: ThirdView(),
                            tag: 1,
                            selection: $seleccion){
                    Button("Change View x"){
                        seleccion = 1
                    }
                }
            }
        //}.navigationTitle("BindingView")
    }
}

struct BindigView_Previews: PreviewProvider {
    static var previews: some View {
        //BindigView(y: .constant(5), adult1: .init())
        BindigView(y: .constant(5), adult1: MyClass())
    }
}
