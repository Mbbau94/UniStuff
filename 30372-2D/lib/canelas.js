function enter(c, dx, dy, sx, sy, r) {
    c.save();
    c.translate(dx,dy);
    c.scale(sx,sy);
    c.rotate(r*Math.PI/180);
}

function leave(c, fs, ss) {
    c.restore();
    c.fillStyle = fs;
    c.strokeStyle = ss;
    c.fill();
    c.stroke();
}

function style(c, fs){
    c.fillStyle = fs;
    c.fill();
}


function circulo (c) {
    c.beginPath();
        c.ellipse( 0,0, 1,1, 0, 0,2*Math.PI); 
    c.closePath();
}

function cilindro(c){
    
    c.beginPath();
        c.moveTo(0.1, -0.7);
        c.lineTo(-0.2,-0.7);
        c.quadraticCurveTo(-0.4, -0.75,-0.2,-0.8);
        c.lineTo(0.1,-0.8)
        c.quadraticCurveTo(0.25,-0.75,0.11,-0.7);
    c.closePath();

}

function lista(c){
    c.beginPath();
        c.moveTo(0.3,-0.23);
        c.lineTo(0.3,0.8);
        c.lineTo(0.4,0.7);
        c.lineTo(0.4,-0.14);
    c.closePath();
        //c.lineTo();       
        
}


function interior1_bola(c){
    c.beginPath();
        c.moveTo(-0.04,-0.33);
        c.quadraticCurveTo(0.44,0.04,-0.06,0.43);
        c.lineTo(-0.21,0.31);
        c.quadraticCurveTo(0.057,0.19,-0.22,0.05);
        c.quadraticCurveTo(0.06,-0.1,-0.22,-0.22);
    c.closePath();

}

function interior2_bola(c){
    c.beginPath();
        c.moveTo(0,0);
        c.lineTo(0.38,0);
        c.lineTo(0.69,-0.22);
        c.quadraticCurveTo(0.46,-0.42,0,-0.45);
    c.closePath();

}





function bola_pequena(c) {


    enter(c, -3, -0.6, 0.9, 0.9, 0);
    circulo(c)
    leave(c,"blue", "blue");

    
    enter(c, -2.88, 1, 1.9, 2.4, 0);
    cilindro(c);
    leave(c,"yellow", "yellow");

    enter(c, -2.88, 1.43, 1.9, 2.4, 0);
    cilindro(c);
    leave(c,"yellow", "yellow");

    c.lineWidth = 0.03;    
    enter(c, -2.33, -0.66, 1.1, 1.6, 0);
    interior1_bola(c);
    leave(c,"yellow", "yellow");


    //cenas de lado
    c.lineWidth = 0.03;    
    enter(c, -2.33, -0.66, 1.1, 1.6, 0);
    interior1_bola(c);
    leave(c,"yellow", "yellow");


    
    c.lineWidth = 0.03;    
    enter(c, -3.66, -0.66, 1.1, 1.6, 0);
    c.scale(-1, 1);
    interior1_bola(c);
    leave(c,"yellow", "yellow");

    // cenas de cima e baixo


    //cima direita
    c.lineWidth = 0.03;    
    enter(c, -2.94, -1.04, 0.75, 1, 0);
    interior2_bola(c);
    leave(c,"yellow", "yellow");

    //cima esquerda
    c.lineWidth = 0.03;    
    enter(c, -3.03, -1.04, 0.78, 1, 0);
    c.scale(-1, 1);
    interior2_bola(c);
    leave(c,"yellow", "yellow");


    //baixo direita
    c.lineWidth = 0.03;    
    enter(c, -3.02, -0.13, 0.75, 1, 0);
    c.scale(-1, -1);
    interior2_bola(c);
    leave(c,"yellow", "yellow");

    //baixo esquerda
    c.lineWidth = 0.03;    
    enter(c, -2.95, -0.13, 0.75, 1, 0);
    c.scale(1, -1);
    interior2_bola(c);
    leave(c,"yellow", "yellow");



    //circulo do fim  azul*******************
    enter(c, -2, -8.6, 0.2, 0.2, 0);
    circulo(c)
    c.fillStyle="green";
    leave(c,"black", "red");


}

function texto(c, texto, cor){
    c.save();
        c.fillStyle = cor;
        c.fillText(texto ,0, 0);
    c.restore();
}


function rectangulo_coroa(c){

    c.beginPath();
        c.moveTo(0.1, -0.7);
        c.lineTo(-0.2,-0.7);
        c.quadraticCurveTo(-0.4, -0.75,-0.2,-0.8);
        c.lineTo(0.1,-0.8)
        c.quadraticCurveTo(0.25,-0.75,0.11,-0.7);
    c.closePath();
}
/*
function curvar(c){

    var cx =150;
    var cy= 150;
          //  need to calculate center..
    var step = Math.PI * 2 / 10;  // step based on array length (2xPI=360°)
    for (var angle = 0, i = 0; angle < Math.PI * 2; angle += step) {
        
        enter(c, -0.8+angle*0.4, 1, 3.2, 1.2, 0);
        c.setTransform(1,0,0,1,cx+angle*10, cy+angle*15); // hard reset transforms + translate
        c.rotate(angle);                // absolute rotate wheel center
        c.translate(cx - 40, 0);        // abertura do circulo
       // c.rotate(Math.PI*0.5);       // 90°, if needed...
        rectangulo_coroa(c);
        leave(c,"black", "red");

             // draw at new origin
    }
}
*/
function coroa1(c){

    c.beginPath();
    c.moveTo(-0.6,0.1);
    c.lineTo(-0.2,0.3);
    c.quadraticCurveTo(0.25,0.22,0.6,0.3);
    c.lineTo(1,0.1);
    c.quadraticCurveTo(0.25,-0.3,-0.59,0.1);

}


function coroa2(c){

    c.beginPath();
    c.moveTo(-0.5,0);
    c.lineTo(-0.4,0.4);
    c.quadraticCurveTo(0.20,0.02,0.7,0.4);
    c.lineTo(0.8,0);
    c.quadraticCurveTo(0.6,0.05,0.5,-0.15);
    c.quadraticCurveTo(0.29,0,0.15,-0.2);
    c.quadraticCurveTo(-0.01,-0.01,-0.2,-0.15);
    c.quadraticCurveTo(-0.32,0.08,-0.49,0);

}

function coroa2_1(c){
    c.beginPath();
    c.moveTo(0.805,0)
    c.quadraticCurveTo(0.6,0.06,0.5,-0.15);
    c.quadraticCurveTo(0.29,0,0.15,-0.2);
    c.quadraticCurveTo(-0.01,-0.01,-0.2,-0.15);
    c.quadraticCurveTo(-0.29,0.071,-0.5,0);
}

function coroa2_2(c){
    c.beginPath()
    c.moveTo(-0.4,0.415);
    c.quadraticCurveTo(0.12,0.23,0.7,0.4);
    c.quadraticCurveTo(0.72,0.38,0.7,0.36);
    c.quadraticCurveTo(0.1,0.2,-0.42,0.38);
    c.quadraticCurveTo(-0.43,0.4,-0.41,0.42);
    c.closePath();


}

function coroa2_3(c){
    c.beginPath()
    c.moveTo(-0.4,0.4);
    c.quadraticCurveTo(0.12,0.03,0.7,0.4);
    c.quadraticCurveTo(0.72,0.38,0.7,0.36);
    c.quadraticCurveTo(0.1,-0.03,-0.42,0.38);
    c.quadraticCurveTo(-0.43,0.4,-0.41,0.42);
    c.closePath();


}

function coroa2_4(c){
    c.beginPath()
    c.moveTo(-0.4,0.4);
    c.lineTo(-0.35,0.4);
    c.lineTo(-0.35,-0.15);
    c.lineTo(-0.4,-0.15);
    c.closePath();


}

function coroa2_5(c){
    c.beginPath();
    c.moveTo(-0.48,0);
    c.lineTo(-0.45,0.15);
    c.quadraticCurveTo(0.15,-0.18,0.75,0.13);
    c.lineTo(0.78,0);
    c.quadraticCurveTo(0.6,0.05,0.48,-0.15);
    c.quadraticCurveTo(0.29,0,0.15,-0.2);
    c.quadraticCurveTo(-0.01,-0.01,-0.19,-0.15);
    c.quadraticCurveTo(-0.32,0.08,-0.48,0);

}

function center(c){
    c.beginPath();
    c.lineTo(0,-1);
    c.lineTo(0,1);
}

function losangulo(c){
    c.beginPath();
    c.moveTo(0,-0.5);
    c.lineTo(0.5,0);
    c.lineTo(0,0.5);
    c.lineTo(-0.5,0);
    c.closePath();
}

function triangulo(c){
    c.beginPath();
    c.moveTo(0,-0.5);
    c.lineTo(0.5,0);
    c.lineTo(0,0.5);
    c.closePath();
}

function elipse(c){
    c.beginPath();
        c.ellipse( 1.3,1.2, 1,1, 0, 0,2*Math.PI); 
    c.closePath();

}



//enter(c, posx, posy, escala, escala, 0);

function emblema(c) {

    //coroa_baixo1
    c.lineWidth = 0.05;
    enter(c, -1, 1.25, 5, 4, 0);
    c.scale(1,1);
    coroa1(c);
    leave(c,"blue", "blue");

    c.lineWidth = 0.01;
    enter(c, -0.97, 1.27, 4.9, 3.9, 0);
    c.scale(1,1);
    coroa1(c);
    leave(c,"yellow", "blue");

    c.lineWidth = 0.01;
    enter(c, -0.77, 1.4, 4, 2.9, 0);
    c.scale(1,1);
    coroa1(c);
    leave(c,"blue", "blue");


//riscar dentro da coroa

    var j = 0;
    for (var i = 0; i <= 11; i++) {
        if (i>=6) {
            enter(c, 0.3+i*0.5, 0.9+i*0.11, 3.8, 2.5, -108+j);
            cilindro(c);
            leave(c,"yellow","yellow");
            j+=3;
        }
        else{

            enter(c, 0.2+i*0.5, 1.55-i*0.05, 3.8, 2.5, -103+j);
            cilindro(c);
            leave(c,"yellow","yellow");
            j+=3;

        }
        

    }
    

    //coroa2

    enter(c, -1, 0, 7, 4, 0);
    c.scale(1,1);
    coroa2(c);
    leave(c,"blue", "blue");

    enter(c, -0.99, 0.03, 6.9, 3.9, 0);
    c.scale(1,1);
    coroa2(c);
    leave(c,"yellow", "blue");

//risca ao meio da coroa
    c.lineWidth=0.04;
    enter(c, -1, -2.03, 7.4, 7.4, 0.5);
    c.scale(1,1);
    coroa2_2(c);
    leave(c,"yellow", "blue");


    c.lineWidth=0.04;
    enter(c, -0.8, 0.66, 5.8, 2.7, -0.5);
    coroa2_3(c);
    leave(c,"blue", "blue");

    c.lineWidth=0.04;
    enter(c, 3.3, 2.5, 2.8, 2, 61);
    coroa2_4(c);
    leave(c,"blue", "blue");

    c.lineWidth=0.04;
    enter(c, -2.3, 1.23, 2.8, 2, -61);
    coroa2_4(c);
    leave(c,"blue", "blue");

    c.lineWidth=0.04;
    enter(c, -1, 0.25, 7, 4, 0.5);
    c.scale(1,1);
    coroa2_5(c);
    leave(c,"yellow", "blue");



// triangulos e losangulos da coroa

    enter(c, 0, 0.62, 0.7, 0.4, 0);
    losangulo(c);
    leave(c,"blue", "blue");

    enter(c, -3.9, 1.3, 0.5, 0.5, -19);
    triangulo(c);
    leave(c,"blue", "blue");

    enter(c, 4, 1.3, 0.5, 0.5, 26);
    c.scale(-1,1);
    triangulo(c);
    leave(c,"blue", "blue");

// elipses brancas
    enter(c, -2.55, 0.65, 0.3, 0.15, 12);
    c.scale(1,1);
    elipse(c);
    leave(c,"white", "blue");

    enter(c, 2.7, 0.69, 0.3, 0.15, 12);
    c.scale(-1,1);
    elipse(c);
    leave(c,"white", "blue");

// bolas pequenas cima da esq pa direita
    c.lineWidth=0.08;
    enter(c, 0, -1.18, 0.35, 0.35, 0);
    circulo(c);
    leave(c,"yellow", "blue");

    enter(c, -4.5, -0.38, 0.35, 0.35, 0);
    circulo(c);
    leave(c,"yellow", "blue");


    enter(c, -2.5, -0.98, 0.35, 0.35, 0);
    circulo(c);
    leave(c,"yellow", "blue");

    enter(c, 2.5, -0.98, 0.35, 0.35, 0);
    circulo(c);
    leave(c,"yellow", "blue");

    enter(c, 4.7, -0.38, 0.35, 0.35, 0);
    circulo(c);
    leave(c,"yellow", "blue");



    ////////////////////

    //bola grande
    c.lineWidth = 0.35;

    enter(c, 0, 7, 5, 5, 0);
    circulo(c)
    leave(c,"white", "blue");

    //lista azul direita

    c.lineWidth = 0.05;

    enter(c, -1.5, 4.4, 11.5, 9, 0);
    lista(c);
    leave(c,"blue", "blue");

    //lista azul esquerda 
    c.lineWidth = 0.05;

    enter(c, 1.5, 4.4, 11.5, 9, 0);
    c.scale(-1, 1);
    lista(c);
    leave(c,"blue", "blue");

    //bola de dentro
    c.lineWidth = 0.125;
    
    enter(c, 4.49, 7.8, 1.5, 1.5, 0);
    bola_pequena(c);
    leave(c, "blue", "blue");


    c.font = "bold 1.5px Times New Roman";

    // Letras + sombra - Para não repetir código

    var letras = ['C', 'F', 'C'];
    var poslx = [-4.7, -.75, 3.1];
    var posly = [7.5, 11.2, 7.5];


    for (var i = 0; i < letras.length; i++){

        enter(c, poslx[i]+0.1, posly[i]+0.1, 1.3, 1.3, 0);
        texto (c, letras[i], "gray");
        leave(c, c.fillStyle, c.strokeStyle);
    }

    c.font = "bold 2.5px Times New Roman";
    enter(c, -1.2, 4.1, .5, .5, 0);
    texto (c, "2010", "blue");
    leave(c, c.fillStyle, c.strokeStyle);


    // fazer os rectangulos da coroa seguidos

    /*for (var i = 0; i <= 10; i++) {

        enter(c, -0.8+i*0.3, 1, -1.2, 1.2, 0);
        c.rotate(Math.PI / 2-i*0.05);
        rectangulo_coroa(c);
        leave(c,"yellow", "yellow");
    }*/

    enter(c, 2, 3, 1, 1, 0);
    curvar(c);
    leave(c,"yellow", "yellow");



    c.lineWidth=0.05
    enter(c, 0, 3, 1, 7, 0);
    center(c);
    leave(c,"black", "black");
    //fundo azul coroa
    
    

}

function espaco(c) {

	c.save();
    enter(c, 190, 80, 30, 30, 0);
    emblema(c);
    leave(c, c.fillStyle, c.strokeStyle);
    c.restore();

}

function main() {
    var c2d = document.getElementById("acanvas").getContext("2d");
    espaco(c2d);
}
