import SwiftUI
import SDWebImageSwiftUI

struct FavouriteView: View {
    
    @StateObject var favVM = FavouriteViewModel.shared
    
    var body: some View {
        ZStack{
            
            ScrollView{
                LazyVStack {
                    ForEach( favVM.listArr , id: \.id, content: {
                        fObj in
                        
                        FavouriteRow(fObj: fObj) 
                        
                    })
                }
                .padding(20)
                .padding(.top, .topInsets + 46)
                .padding(.bottom, .bottomInsets + 60)
            
            }
            
            
            VStack {
                    
                HStack{
                   
                    Spacer()
                    
                    Text("Favorites")
                        .font(.customfont(.bold, fontSize: 20))
                        .frame(height: 46)
                    Spacer()

                }
                .padding(.top, .topInsets)
                .background(Color.white)
                .shadow(color: Color.black.opacity(0.2),  radius: 2 )
                
                Spacer()
                
                
                RoundButton(title: "Add All To Cart") {
                    for item in favVM.listArr {
                        CartViewModel.serviceCallAddToCart(prodId: item.id, qty: 1) { isDone, message in
                            self.favVM.errorMessage = message
                            self.favVM.showError = true
                        }
                    }
                }
                    .padding(.horizontal, 20)
                    .padding(.bottom, .bottomInsets + 80)
                
            }
            
            
            
        }
        .onAppear{
            favVM.serviceCallList()
        }
        .ignoresSafeArea()
        .alert(isPresented: $favVM.showError, content: {
            
            Alert(title: Text(Globs.AppName), message: Text(favVM.errorMessage)  , dismissButton: .default(Text("Ok"))  )
        })
    }
}

struct FavouriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteView()
    }
}
