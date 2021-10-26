void main(){
  int i;
  double P,E,R,T;
  List RP=[];
  List RI=[];
  List UP=[];
  P = 120000;
  T = 120;
  R = 15;
  E = P/T;
  for(i=0;i<120;i++){
    RP[i]+=P-E;
    RI[i]+=(P*R)/1200;
    UP[i]+=P-E;
  }
  print(RP[1]);
  print(RI[1]);
  print(UP[1]);
}