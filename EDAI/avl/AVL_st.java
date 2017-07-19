

  public class AVL_st<E> extends Comparable<E>{
    NoAVL<E> raiz=null; 
  
  
  public AVL_st(){
   //tobe done
  }
  
  
  public boolean isEmpty(){
   //tobe done
    return false;
  }

  private int altura(NoAVL<E> n){
    //tobe done
    return 0;
  }
  
  public int altura(){
    //tobe done
    return 0;
  }
  
  
    
  public void insere(E x){
    //tobe done
  }
    
  private NoAVL<E> insere(E x,  NoAVL<E> n){
    //tobe done
    return null;
  }
  
  
  
  private NoAVL<E> rotacaoDir(NoAVL<E> n0){
    //tobe done
    return null;
  }
  
  private NoAVL<E> rotacaoEsq(NoAVL<E> n0){
    //tobe done
    return null;
  }
  
  private NoAVL<E> duplaEsqDir(NoAVL<E> n0){
    //tobe done
     return null;
  }

  private NoAVL<E> duplaDirEsq(NoAVL<E> n0){
    //tobe done
     return null;
  }
  
    
  private void addTree(NoAVL<E> x, int coordX, int coordY, GraphDraw f,int j,int nivel,int larg){
    if(x!=null){
      f.addNode(x.toString(), coordX,coordY);
      int i=f.nodesSize()-1;
      //System.out.println(i);
      if(j!=-1){
        f.addEdge(j,i);  
      }
      int n=(int)Math.pow(2,nivel);
      int dist=larg/(2*n);
      if(x.esq!=null)
        addTree(x.esq,coordX-dist,coordY+50,f,i,nivel+1,larg);
      
      if (x.dir!=null) 
        addTree(x.dir,coordX+dist ,coordY+50,f,i,nivel+1,larg);
      
    }
    
  }
  
  public void draw(String s){
    GraphDraw frame = new GraphDraw(s);
    int h=altura();
    int d=30;
    int nos_nivel_h=(int) Math.pow(2,h+1);
    //System.out.println(nos_nivel_h);
    
    int larguraFrame=d*(nos_nivel_h +1);
    int alturaFrame=70*(h+1);
    //System.out.println(alturaFrame);
    //System.out.println("Largura="+larguraFrame);
    frame.setSize(larguraFrame,alturaFrame);
 
    frame.setVisible(true);
    if (!isEmpty())
      addTree(raiz, larguraFrame/2,50,frame,-1,1,larguraFrame);   
    else
      frame.setSize(50,150);
    
    
  }
  
  
}