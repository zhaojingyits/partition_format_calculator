int calculateNTFS(int targetGB) {
  const double size=7.84423828125;
  return ((1024*targetGB/size).ceil()*size).ceil();
}
int calculateFAT(int targetGB) =>(targetGB-1)*4+1024*targetGB;