import SwiftUI

struct ContentView: View {
    @State var animate : Bool = false
    var body: some View {
        VStack {
            Spacer()
            Text("ACT")
            //Rolling을 넣어준다
            HStack {
                Rolling(font: .system(size: 70), animate: $animate)
                Rolling(font: .system(size: 70), animate: $animate)
                Rolling(font: .system(size: 70), animate: $animate)
                Rolling(font: .system(size: 70), animate: $animate)
                Rolling(font: .system(size: 70), animate: $animate)
                Rolling(font: .system(size: 70), animate: $animate)
            }
            Spacer()
            // 버튼
            HStack{
                Button ("back") {
                    print("back")
                }
                .padding()
                .foregroundColor(Color(.white))
                .background(Color(.black))
                .clipShape(Capsule())
                Spacer()
                Button("Button"){
                    animate.toggle()
                }
                .padding()
                .foregroundColor(Color(.white))
                .background(Color(.black))
                .clipShape(Capsule())
                Spacer()
            }
        }
    }
}

//landscapeView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewInterfaceOrientation(.landscapeRight)
    }
}
