main(){
  Resturent KFC=Resturent();
  KFC.oder('CHIKEN FRY');
}
class Resturent{
  oder(String item){
    print('$item Ordered');
    shoping(item);
    prepareItem(item);
    print('$item Server');
  }

  prepareItem(String item){
    print('$item cooking');
  }

  shoping(String item){
    print(' Buy Material');
  }

}