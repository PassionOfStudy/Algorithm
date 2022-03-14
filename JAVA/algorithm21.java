package JAVA;
// 이상한 문자 만들기
class Solution {
    public String solution(String s) {
        // 로직 = 전체 문자열s를 문자열1개의 배열로 나누어 각 조건에 맞게 처리해준다.
        String answer = "";
        // 1. 전체 문자열 s를 split("") 메서드를 통해 각 문자열 하나씩 나눈다.
        String[] str = s.split("");
        // 2. 별도의 인덱스(index)를 만들어 공백을 만날경우 인덱스를 0으로 초기화한다.
        int index = 0;
        // 3. for문을 반복하며, 내부 인덱스 i가 짝수이면 대문자, 홀수이면 소문자를 출력해 저장한다.
        for(int i=0; i<str.length; i++) {
            if(str[i].equals(" ")) {
                index = 0;
            } else if(index % 2 == 0) {
                str[i] = str[i].toUpperCase();
                index++;
            } else if(index % 2 != 0) {
                str[i] = str[i].toLowerCase();
                index++;
            }
            answer += str[i];
        } 
        
        return answer;
    }
}
public class algorithm21 {
    public static void main(String[] args) {
        
    }   
}
/*
<< 이상한 문자 만들기 >>
## 나의 문제풀이 접근 ##
> 로직 => 1) 전체 문자열을 단일 문자열 배열로 나눈다.
         2) 문자열 배열의 길이 만큼 for문을 반복한다. 이때 빈문자를 만났을 때 초기화해줄 index를 for문 밖에 선언!
         3) for문 돌면서 for문 밖의 인덱스가 짝수면 대문자를, 홀수면 소문자를 출력해준다.

## 다른 구현 방법 생각 ##
> 다들 비슷한 원리로 문제를 푼 것으로 생각됨.

## 문제를 풀면서 맞이한 문제점 ##
  1. 처음에 문자열을 어떤 단위로 나눌 것인지에 따라서 문제의 복잡성이 달라진다.
    > 처음 문자열을 " "(공백)으로 나눈 후, 다시 이중 for문을 이용하여 풀려 했더니 코드가 복잡하고, 어지러워졌다.
      결국 내가 짠 코드임에도 불구하고 어디에서 로직이 잘 못된지 파악하지 못하고 처음부터 다시 로직을 구현했다.
  
 ## 다른 사람 풀이 중 심플한 코드 첨부
 1. 내가 처음에 생각한대로 공백을 기준으로 문자열배열로 나눠서 안풀렸는데, 다름 사람은 똑같은 방법으로 잘 푼다..;;
/////////////////////////////////////////////////////////////////
class Solution {
      public String solution(String s) {
          String answer = "";
          String[] a=s.split(" ",-1);

          for(int i=0; i<a.length; i++){
              String msg=a[i];
              for(int j=0; j<msg.length(); j++){
                  if(j%2==1){
                     String b=Character.toString(msg.charAt(j));
                     answer+=b.toLowerCase();
                  }else{
                      String b=Character.toString(msg.charAt(j));
                         answer+=b.toUpperCase();
                  }
              }
              if(i==a.length-1){break;}
              answer+=" ";
          }

          return answer;
      }
}
////////////////////////////////////////////////////////////////// 
*/