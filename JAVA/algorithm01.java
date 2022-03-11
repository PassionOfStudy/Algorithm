// 직사각형별찍기 문제
package JAVA;
import java.util.Scanner;
public class algorithm01 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();

        
        for(int i=0; i<b; i++) {
            String star = "*".repeat(a);
            System.out.println(star);
            star = "*";
        }
    }
}        

/*
<< 직사각형별찍기 문제 >>
## 처음 나의 문제풀이 접근 ##
> 이중 for문을 이용하여 별을 찍을 것을 생각함
> ex) 처음 직사각형 가로의 값만큼 별 문자를 반복해서 저장하여 한줄을 출력하고 그 자체를 세로의 값만큼 반복

## 다른 구현 방법 생각 ##
> 별찍기 문제에서는 이중 for문이 빈번하게 쓰이지만 다른 방법이 없을까 고민하던 찰나에 문자열을 반복하는 함수가 있어서
  사용하여 문제를 해결하였다. for문을 한 번만 사용해도 된다는 점이있으며 코드가 간결해 진 것 같았다.

## 문제를 풀면서 맞이한 문제점 ##
  1) Scanner함수에 대한 이해
> 아무래도 자바라는 언어를 모르는 상태에서 문제를 처음접해서 떡하니 놓여진 Scanner라는 클래스??를 사용해야하는데
  사용방법을 몰라 구글링을 통해 알아보았다. (참고자료 : https://st-lab.tistory.com/92)
  * Scanner 클래스특징
  1-1) 기본적인 데이터 타입들을 Scanner의 메소드를 사용하여 입력받을 수 있음
  >> String(문자열)을 입력받고 싶을 때 : next() or nextLine()
  >> int(정수)로 입력받고 싶을 때 : nextInt()
  1-2) Scanner를 사용할 시 util패키지 경로의 Scanner 클래스를 호출해야 한다.
  >> 자바에서 쓰이는 대부분의 클래스인 lang패키지가 아니라면 import를 통해 호출해주어야 사용가능!
  >> Scanner의 경우에는 java.util 패키지 안에 존재
  1-3). 공백(띄어쓰기) 또는 개행(줄 바꿈)을 기준으로 읽는다.
  Scanner의 입력 메소드들은 대부분 공백과 개행(' ', '\t', '\r', '\n'등등..)을 기준으로 읽는다.
  덕분에 사용자의 편의에 따라 쉽게 입력을 받을 수 있다.
*/ 