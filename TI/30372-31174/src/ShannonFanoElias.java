public class ShannonFanoElias{
	String texto;
	Simbolo[] probabilidades;
	int num;
	String tabeCodigo[][]; // com o simbolo e respectivo codigo 


	ShannonFanoElias(String txto, Simbolo[] probbdds, int numSimb){
		texto=txto;
		probabilidades=probbdds;
		num=numSimb;
		tabeCodigo=new String[num][2];
		meteCodigos();	


	}


	public String[][] getTabelaCodigo(){
		return tabeCodigo;
	}

	public void meteCodigos(){ // cria a tabela com simbolo e codigo
		double[][] opTabel=new double[num][4]; // tabela para operaçoes 
		int lx=0; //comprimento
		double px=0; //probabilidade
		double fx=0; //prob acomulada
		double f_x=0;//metade da dist da de fx
		String codigo=""; //codigo final

		for(int i=0; i<num; i++){
			tabeCodigo[i][0]=probabilidades[i].simbolo();
			px= probabilidades[i].probabilidade(); //pos 0 da tab
			lx= (int)Math.ceil( -(Math.log(px)/Math.log(2) )+ 1) ; //pos 3 da tab
			opTabel[i][0] = px;
			opTabel[i][3]=lx;
			if (i==0) {		//primeiro caso
				fx=px;
				f_x=fx/2;
				opTabel[i][1]=fx;
				opTabel[i][2]=f_x;
			}else{
				fx=(opTabel[i-1][1])+opTabel[i][0];
				opTabel[i][1]=fx;
				f_x=((opTabel[i][1]-opTabel[i-1][1])/2)+(opTabel[i-1][1]);
				
				opTabel[i][2]=f_x;
			}

			// passa para binario
			
			codigo = "";    
    		for (int n=lx; n> 0; n--) {    
        		double r = f_x * 2;   // Multiply current fraction (n) by 2
        		if( r >= 1 ) {      // If the ones-place digit >= 1
            		codigo += "1";       // Concat a "1" to the end of the result string (val)
            		f_x = r - 1;        // Remove the 1 from the current fraction (n)
        		}else{              // If the ones-place digit == 0
            		codigo += "0";       // Concat a "0" to the end of the result string (val)
            		f_x = r;            // Set the current fraction (n) to the new fraction
        		}
    		}
    		
    		if (codigo.length()==3) {
    			String x = "0"+codigo;
    			codigo=x;

    		}

    		tabeCodigo[i][1]=codigo;



		}
	}

	public String codificaTexto(){
		String textoCod = "";
		for (int i =0; i<texto.length(); i++) {
			String letCod = charCode(texto.charAt(i));
			if (letCod!=null) {
				textoCod+=letCod;
			}
		}

		return textoCod;
	}

	public String charCode(char letra){  // de acordo com a letra, 
		String codig=null;					//vai buscar o codigo
		for (int i=0; i<num; i++) {
			if (tabeCodigo[i][0].equals(String.valueOf(letra))) {
				codig=tabeCodigo[i][1]; // percorre a tabela dos codigos  
				break;					// e ve se a letra la esta
			}
		}
		return codig;
	}

	public String descodificaSha(){
		String resultado="";
		for (int i=0;i<texto.length();i+=4) {
			String bu=texto.substring(i,i+4);
			resultado+=descodShaPalavra(bu);


		}
		System.out.println("descodificado");
		return resultado;
		
	}
	
	public String descodShaPalavra(String b){
		String aa="";
		for (int i=0;i<tabeCodigo.length;i++) {
			if (b.equals(tabeCodigo[i][1])) {
				aa=tabeCodigo[i][0];
				break;
			}
		}
		

	return aa;	
	}




}