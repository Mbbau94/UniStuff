import java.util.ArrayList;

public class Hamming{
    String[][] tabCod;


    public Hamming(){

    }
	public Hamming(String[][] tab) {
        tabCod=tab;
      

    }

    public String codificaHamming(String txto){
        String buffer="";
        int inicio=0;
        int fim=3;
        int tamanho=txto.length();
        int n=0;
        while (fim<=tamanho) {                               
             //se a palavra é de 3bits  
            if(check(txto.substring(inicio,fim))){ 
                //acrescenta 0 no inicio pq tem de ter 4 bits h7,4
                String bu="0"+txto.substring(inicio,fim);
                buffer+=codifPalavHamm(bu);
                inicio=fim;
                fim+=3;

            }
            else{ // se a palavra de 3bits n existe, le o outro bit e cod
                fim+=1;
                buffer+=codifPalavHamm(txto.substring(inicio,fim));  
                inicio=fim;
                fim=fim+3;
            }

        }
        //System.out.println(buffer);
        return buffer;

    } 

    String codifPalavHamm(String palavra){
        int[][] gCode={{1,1,0,1},{1,0,1,1},{1,0,0,0},{0,1,1,1},{0,1,0,0},{0,0,1,0},{0,0,0,1}};
        //matriz codificadora
        int[] plvr=new int[4];
        int[] palaCod=new int[7];
        String buffer="";
        //int word= Integer.parseInt(palavra); 
        //percorrer a palavra e passar para int e meter no array para multiplicar
        for (int i=0;i<palavra.length() ;i++) {
            char c=palavra.charAt(i);
            int a=Character.getNumericValue(c);
            plvr[i]=a;
            
        }
        palaCod=multiplica(gCode,plvr);
        //fazer a cena do %2
        for (int n=0; n<palaCod.length;n++) {
            palaCod[n]=palaCod[n]%2;
        }

        //parse para string para retornar 

        for (int j=0;j<palaCod.length; j++) {
            buffer+=String.valueOf(palaCod[j]);
        }

        if(buffer==null){
            System.out.println("XXXX-Nao codificou-XXXX");
        }
        return buffer;
    }




    boolean check(String pala){
        boolean b=true;
        for (int i=0; i<4; i++ ){
            if (pala.equals(tabCod[i][1])) {
                b=true;
                break;
            }
            else{
                b=false;
            }
        }
        return b;

    }

    


    public String descodificaHamm(String dados){
        int[][] r={{0,0,1,0,0,0,0},{0,0,0,0,1,0,0},{0,0,0,0,0,1,0},{0,0,0,0,0,0,1}};
        int[] plvr=new int[7];
        int[] result=new int[4];
        String buffer="";
        String stgDesc=""; 
        for (int i=0;i<dados.length();i+=7) {
            String palav=dados.substring(i,i+7);
            for (int j=0;j<palav.length() ;j++) {//passa para int
                char c=palav.charAt(j);
                int a=Character.getNumericValue(c);
                plvr[j]=a;  // tem a palvra em INT para poder multiplicar
            }
            //tem a plvr 
            //ve se tem erros e corrige
            plvr=fixErros(plvr);

            result=multiplica(r,plvr); //multiplica pela matriz descodficadora
            String bb=parsetoString(result);
            stgDesc=stgDesc+bb;

        }
        return stgDesc;
                   
    }

    public int[] fixErros(int[] data){
        int[][] h={{0,0,0,1,1,1,1},{0,1,1,0,0,1,1},{1,0,1,0,1,0,1}};
        int[] result = multiplica(h,data);
        int[] fixed=new int[7];

        for (int n=0; n<result.length;n++) {
            result[n]=result[n]%2;
        }
        //passar para numero o resultado 
        //se for 0 ta bom,se nao corrige
        double erroN=(result[0]*Math.pow(2.0,0))+(result[1]*Math.pow(2.0,1))+(result[2]*Math.pow(2.0,2));

        if (erroN>0) {
            System.out.println("erro encontrado");
            //corrige
            for (int i=0;i<result.length;i++) {
                if (result[i]==erroN) {
                    int[] f={0,0,0,0,0,0,0};
                    f[i]=1;
                    fixed=addMa(data,f);
                }
            }
            
        }
        else if (erroN==0) {
            fixed=data;
        }

        if(fixed==null){
            System.out.println("XXXX-Nao codificou-XXXX");
        }

        return fixed;

    }
                            //7bits 
    public int[] addMa(int[] a, int[] b){
        int[] result=new int[7];
        for (int i=0;i<4;i++) {
            result[i]=a[i]+b[i];
        }
        return result;
    }



    public String parsetoString(int[] res){
        String buffer="";
        for (int l=0;l<res.length; l++) { //passa para string
            buffer+=String.valueOf(res[l]);
            //System.out.println(buffer);
        }
        return buffer;

    }

    // public int verErro(int[] nn){
    //     int[][] h={{1,0,1,0,1,0,1},{0,1,1,0,0,1,1},{0,0,0,1,1,1,1}};
    // }

    public int[] multiplica(int[][] aa, int[] bb){
        int m= aa.length;
        int n= aa[0].length;
        int[] result= new int[aa.length];       
        //if (bb.length != aa[0].length) throw new RuntimeException("Illegal matrix dimensions.");
            for (int li=0;li<m;li++ ) { //linha
                for (int co=0;co<n ;co++ ) {// percorre a lin
                    result[li]+=aa[li][co]*bb[co];
                }
            }

        return result;  
        
    }


}
