#define MOTOR_DERECHO_ADELANTE 5
#define MOTOR_DERECHO_ATRAS 9
#define MOTOR_DERECHO_AMP A2
#define MOTOR_IZQUIERDO_ADELANTE 11
#define MOTOR_IZQUIERDO_ATRAS 10
#define MOTOR_IZQUIERDO_AMP A1

#define LED_SEMAFORO_A 6
#define LED_SEMAFORO_B 7
#define LED_SEMAFORO_C 8
#define LED_LINEA 13

#define SW_A 2
#define SW_B 3
#define SW_C 4
#define BTN_INICIO 12

#define LECTURA_BAT A0
#define SENSOR_DERECHO A4
#define SENSOR_IZQUIERDO A3
#define SENSOR_LINEA_DERECHO A7
#define SENSOR_LINEA_IZQUIERDO A6
#define SENSOR_LINEA_CENTRAL A5



void setup() {
  Serial.begin(115200);

  pinMode(MOTOR_DERECHO_ADELANTE, OUTPUT);
  pinMode(MOTOR_DERECHO_ATRAS, OUTPUT);
  pinMode(MOTOR_DERECHO_AMP, INPUT);
  pinMode(MOTOR_IZQUIERDO_ADELANTE, OUTPUT);
  pinMode(MOTOR_IZQUIERDO_ATRAS, OUTPUT);
  pinMode(MOTOR_IZQUIERDO_AMP, INPUT);
  /*
    pinMode(LED_SEMAFORO_A, OUTPUT);
    pinMode(LED_SEMAFORO_B, OUTPUT);
    pinMode(LED_SEMAFORO_C, OUTPUT);*/
  pinMode(LED_LINEA, OUTPUT);

  pinMode(SW_A, INPUT_PULLUP);
  pinMode(SW_B, INPUT_PULLUP);
  pinMode(SW_C, INPUT_PULLUP);
  pinMode(BTN_INICIO, INPUT_PULLUP);

  pinMode(LECTURA_BAT, INPUT);
  pinMode(SENSOR_DERECHO, INPUT);
  pinMode(SENSOR_IZQUIERDO, INPUT);
  pinMode(SENSOR_LINEA_DERECHO, INPUT);
  pinMode(SENSOR_LINEA_IZQUIERDO, INPUT);
  pinMode(SENSOR_LINEA_CENTRAL, INPUT);

  /*digitalWrite(LED_SEMAFORO_A, HIGH);
    digitalWrite(LED_SEMAFORO_B, HIGH);
    digitalWrite(LED_SEMAFORO_C, HIGH);*/

  analogWrite(MOTOR_DERECHO_ADELANTE, 128);
  digitalWrite(MOTOR_DERECHO_ATRAS, LOW);
  analogWrite(MOTOR_IZQUIERDO_ADELANTE, 128);
  digitalWrite(MOTOR_IZQUIERDO_ATRAS, LOW);

}

void loop() {
  comprobacion_entradas();
}


void comprobacion_entradas() {

  Serial.print("SWA: ");
  Serial.print(digitalRead(SW_A));
  Serial.print(" SWB: ");
  Serial.print(digitalRead(SW_B));
  Serial.print(" SWC: ");
  Serial.print(digitalRead(SW_C));
  Serial.print(" BTN: ");
  Serial.print(digitalRead(BTN_INICIO));
  Serial.print(" BAT: ");
  Serial.print(analogRead(LECTURA_BAT));
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

}
