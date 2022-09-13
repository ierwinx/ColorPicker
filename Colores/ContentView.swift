import SwiftUI

struct ContentView: View {
    
    @State var color: Color = .red
    @State var iSeleccion = 0
    @State var iSteper = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            ColorPicker("Selecciona un color", selection: $color)
            
            Text("El color que seleccionaste es:")
            
            HStack {
                Rectangle()
                    .frame(width: 100, height: 100)
                    .foregroundColor(color)
                
                Circle()
                    .foregroundColor(color)
                    .frame(width: 100, height: 100)
            }
            
            Picker(selection: $iSeleccion, label: Text("Picker")) {
                Text("Selecciona un valor").tag(0)
                Text("1").tag(1)
                Text("2").tag(2)
            }
            .tint(.blue)
            .pickerStyle(.menu)
            
            
            Spacer()
                .frame(height: 30)
            
            Stepper(value: $iSteper, in: -10...10, step: 2) {
                Label {
                    Text("Valor \(iSteper)")
                } icon: {
                    Image(systemName: "pencil")
                }
            }
            
            Spacer()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
