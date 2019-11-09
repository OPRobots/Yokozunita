
///////////////////////////////////
////    Declaración de pines   ////
///////////////////////////////////

#define MOTOR_DERECHO_ADELANTE 5
#define MOTOR_DERECHO_ATRAS 9
#define MOTOR_DERECHO_AMP A2
#define MOTOR_IZQUIERDO_ADELANTE 11
#define MOTOR_IZQUIERDO_ATRAS 10
#define MOTOR_IZQUIERDO_AMP A1

#define LED_ROJO 6
#define LED_VERDE 7
#define LED_AMARILLO 8
#define LED_BLANCO 13

#define SW_A 2
#define SW_B 3
#define SW_C 4
int interruptor[] = {SW_A, SW_B};
int pin[] = {0, 0};
#define BOTON 12

#define LECTURA_BAT A0
#define SENSOR_DERECHO A4
#define SENSOR_IZQUIERDO A3
#define SENSOR_LINEA_DERECHO A7
#define SENSOR_LINEA_IZQUIERDO A6
#define SENSOR_LINEA_CENTRAL A5

//////////////////////////
////    Estrategias   ////
//////////////////////////
#define ESTRATEGIA_SALIDA_FRONTAL 0
#define ESTRATEGIA_SALIDA_LADO_DERECHO 1
#define ESTRATEGIA_SALIDA_LADO_IZQUIERDO 2
#define ESTRATEGIA_SALIDA_ESPALDAS 3
#define COMPROBACION_SENSORES_RIVAL 8
#define ESTRATEGIA_EVITAR_SALIRSE 9
#define ESTRATEGIA_BUSCAR 10
#define ESTARTEGIA_ATAQUE 16

////////////////////////
////    Variables   ////
////////////////////////

int estrategia = 0;
int binario = 1;

int velD = 0;
int velI = 0;
int velMax = 200;
int velInicial = 170;
int velBase = 120;

float millisInicio = 0;
float millisAnterior = 0;

int alante_I = 0;
int alante_D = 0;
int alante_C = 0;
int enemigo_D = 0;
int enemigo_I = 0;

// Variables varias
int aleatorio = 250;
int contador = 0;
int i = 0;
bool arranque = false;

void setup() {
  Serial.begin(115200);

  pinMode(MOTOR_DERECHO_ADELANTE, OUTPUT);
  pinMode(MOTOR_DERECHO_ATRAS, OUTPUT);
  pinMode(MOTOR_DERECHO_AMP, INPUT);
  pinMode(MOTOR_IZQUIERDO_ADELANTE, OUTPUT);
  pinMode(MOTOR_IZQUIERDO_ATRAS, OUTPUT);
  pinMode(MOTOR_IZQUIERDO_AMP, INPUT);

  analogWrite(MOTOR_DERECHO_ADELANTE, 0);
  digitalWrite(MOTOR_DERECHO_ATRAS, LOW);
  analogWrite(MOTOR_IZQUIERDO_ADELANTE, 0);
  digitalWrite(MOTOR_IZQUIERDO_ATRAS, LOW);

  pinMode(LED_ROJO, OUTPUT);
  pinMode(LED_AMARILLO, OUTPUT);
  pinMode(LED_VERDE, OUTPUT);
  pinMode(LED_BLANCO, OUTPUT);

  pinMode(SW_A, INPUT_PULLUP);
  pinMode(SW_B, INPUT_PULLUP);
  pinMode(SW_C, INPUT_PULLUP);
  pinMode(BOTON, INPUT_PULLUP);

  pinMode(LECTURA_BAT, INPUT);
  pinMode(SENSOR_DERECHO, INPUT);
  pinMode(SENSOR_IZQUIERDO, INPUT);
  pinMode(SENSOR_LINEA_DERECHO, INPUT);
  pinMode(SENSOR_LINEA_IZQUIERDO, INPUT);
  pinMode(SENSOR_LINEA_CENTRAL, INPUT);

  //////////////////////////////////////////////////////
  ////    realizamos la lectura de la estrategia    ////
  //////////////////////////////////////////////////////

  for (i = 1; i >= 0; i--) {
    pin[i] = !digitalRead(interruptor[i]);
    estrategia = estrategia + (pin[i] * binario);
    binario = binario * 2;
  }
  //estrategia = COMPROBACION_SENSORES_RIVAL;
  Serial.println(estrategia);
}

void loop() {
  alante_I = analogRead(SENSOR_LINEA_IZQUIERDO);
  alante_D = analogRead(SENSOR_LINEA_DERECHO);
  alante_C = analogRead(SENSOR_LINEA_CENTRAL);

  enemigo_D = analogRead(SENSOR_DERECHO);
  enemigo_I = analogRead(SENSOR_IZQUIERDO);

  if (alante_I < 300 /*|| alante_D > 300*/ || alante_C < 300) {
    estrategia = ESTRATEGIA_EVITAR_SALIRSE;
    digitalWrite(LED_BLANCO, HIGH);
  } else {
    digitalWrite(LED_BLANCO, LOW);
  }

  if (enemigo_D > 400 && enemigo_I > 400 && digitalRead(BOTON) == false) {
    estrategia = COMPROBACION_SENSORES_RIVAL;
  }

  if (digitalRead(BOTON) == false) {
    digitalWrite(13, LOW);
    arranque = true;
    millisInicio = millis();
  } else if ((millis() >= (millisInicio + 5000)) && (arranque == true) && (millisInicio > 0)) {
    //Serial.println(estrategia);
    switch (estrategia) {
      case ESTRATEGIA_SALIDA_FRONTAL: //Salida de frente (rival mas lento)
        velD = velBase;
        velI = velBase;
        asignar_velocidad();
        estrategia = ESTARTEGIA_ATAQUE;
        break;

      case ESTRATEGIA_SALIDA_LADO_DERECHO: //Salida de lado derecho
        velD = -velInicial;
        velI = velInicial;
        asignar_velocidad();
        delay(500);
        //estrategia = 20;
        estrategia = ESTARTEGIA_ATAQUE;
        break;

      case ESTRATEGIA_SALIDA_LADO_IZQUIERDO: //Salida de lado izquierdo
        velD = velInicial;
        velI = -velInicial;
        asignar_velocidad();
        delay(500);
        //estrategia = 20;
        estrategia = ESTARTEGIA_ATAQUE;
        break;

      case ESTRATEGIA_SALIDA_ESPALDAS: //Salida de espaldas
        velD = -velInicial;
        velI = velInicial;
        asignar_velocidad();
        delay(500);
        estrategia = ESTARTEGIA_ATAQUE;
        //estrategia = 20;
        break;

      case COMPROBACION_SENSORES_RIVAL: //Comprobación sensores de rival
        if (enemigo_I > 200) {
          digitalWrite(LED_AMARILLO, HIGH);
        } else {
          digitalWrite(LED_AMARILLO, LOW);
        }
        if (enemigo_D > 200) {
          digitalWrite(LED_VERDE, HIGH);
        } else {
          digitalWrite(LED_VERDE, LOW);
        }
        break;

      case ESTRATEGIA_EVITAR_SALIRSE: //Retroceder y 'girar' en borde
        velD = -velMax;
        velI = -velMax;
        delay(150);
        estrategia = ESTARTEGIA_ATAQUE;
        break;

      case ESTRATEGIA_BUSCAR: //Buscar
        velD = 0;
        velI = velBase;
        /*if (contador < aleatorio) {
          velD = 0;
          velI = velBase;
          delay(1);
          contador = contador + 1;
        } else {
          velD = velBase;
          velI = 0;
          delay(1);
          contador = contador + 1;
          if (contador > aleatorio * 2) {
            contador = 0;
            aleatorio = random(100, 1000);
          }
        }*/
        if (enemigo_D > 200 || enemigo_I > 200) {
          estrategia = ESTARTEGIA_ATAQUE;
        }
        break;

      case ESTARTEGIA_ATAQUE:                     //ataque (la idea es que aqui este la mayoria del tiempo. intentara no perder al rival e ir a por el)
        if (enemigo_D > 200 && enemigo_I > 200) { //Robot de frente, A SACOOO!!!
          velD = velMax;
          velI = velMax;
        } else if (enemigo_D >= 200 && enemigo_I < 200) { //Rival por la derecha, DERECHA RAAAS!!!
          velD = velBase;
          velI = velMax;
        } else if (enemigo_D < 200 && enemigo_I >= 200) { //Rival por la izquierda, IZQUIERDA RAAAS!!!
          velD = velMax;
          velI = velBase;
        } else if (enemigo_D < 200 && enemigo_I < 200) { //DOKO!!??
          estrategia = ESTRATEGIA_BUSCAR;
        }

        aleatorio = random(100, 1000);
        break;
      case 20:
        velI = 0;
        velD = 0;
        break;
    }
    asignar_velocidad();

  } //Fin del if de arranque de 5s

  //comprobacion_entradas();
} //Fin del loop

void comprobacion_entradas() {

  Serial.print(" SWA: ");
  Serial.print(digitalRead(SW_A));
  Serial.print(" SWB: ");
  Serial.print(digitalRead(SW_B));
  Serial.print(" SWC: ");
  Serial.print(digitalRead(SW_C));
  Serial.print(" BTN: ");
  Serial.print(digitalRead(BOTON));
  Serial.print(" BAT: ");
  Serial.print(analogRead(LECTURA_BAT));
  Serial.print(200);
  Serial.print(" ");
  Serial.print(90);
  Serial.print(" ");
  Serial.print(0);
  Serial.print(" DER: ");
  Serial.print(analogRead(SENSOR_DERECHO));
  Serial.print(" IZQ: ");
  Serial.print(analogRead(SENSOR_IZQUIERDO));
  Serial.print(" LID: ");
  Serial.print(analogRead(SENSOR_LINEA_DERECHO));
  Serial.print(" LII: ");
  Serial.print(analogRead(SENSOR_LINEA_IZQUIERDO));
  Serial.print(" LIC: ");
  Serial.print(analogRead(SENSOR_LINEA_CENTRAL));
  Serial.print(" MDA: ");
  Serial.print(analogRead(MOTOR_DERECHO_AMP));
  Serial.print(" MIA: ");
  Serial.print(analogRead(MOTOR_IZQUIERDO_AMP));
  Serial.print("\n");
  delay(2);
}

void asignar_velocidad() {

  velD = constrain(velD, -255, 255);
  velI = constrain(velI, -255, 255);


  Serial.print(velI);
  Serial.print("\t");
  Serial.println(velD);
  if (velD >= 0) {
    analogWrite(MOTOR_DERECHO_ADELANTE, velD);
    analogWrite(MOTOR_DERECHO_ATRAS, LOW);
  } else {
    digitalWrite(MOTOR_DERECHO_ADELANTE, LOW);
    digitalWrite(MOTOR_DERECHO_ATRAS, abs(velD));
  }

  if (velI >= 0) {
    analogWrite(MOTOR_IZQUIERDO_ADELANTE, velI);
    analogWrite(MOTOR_IZQUIERDO_ATRAS, LOW);
  } else {
    digitalWrite(MOTOR_IZQUIERDO_ADELANTE, LOW);
    digitalWrite(MOTOR_IZQUIERDO_ATRAS, abs(velI));
  }
}
