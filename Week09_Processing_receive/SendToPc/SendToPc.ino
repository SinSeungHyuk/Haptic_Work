int cnt1 = 0;
void setup() {
  Serial.begin(9600);
}

// 1초마다 PC로 숫자를 보내는 예제
void loop() {
  char buf[255];
  sprintf(buf, "%d", cnt1); buf에 cnt1의 값을 정수형으로 넣기
  // "%d"->"%c" 로 바꾸면 cnt1의 값에따른 아스키코드가 출력됨
  
  Serial.println(buf);
  cnt1++;
  
  delay(1000); 1초씩 딜레이
}
