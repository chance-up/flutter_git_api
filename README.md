# search_git_users
git user searching app using git api

# project 실행 방법
1. VSCode에서 Flutter Extension 설치
2. Flutter SDK설치
https://docs.flutter.dev/get-started/install
3. 환경변수 등록
4. 터미널에서 flutter doctor 명령어 수행하여 프로젝트 유효성 검사 수행

# Flutter 기본 정보

## Dependency 추가
> pubspec.yaml 파일에 
> 
> dependencies 혹은  dev_dependencies
> 에
> 용도에 맞게 추가.

또는

> flutter pub add '추가할 패키지명'
  

## 패키지 Repository(Maven, Gradle과 비슷)
> https://pub.dev


## Getting Started(시작 시 참고하면 좋은 코드랩)
> https://docs.flutter.dev/get-started/codelab

## CookBook
> https://docs.flutter.dev/cookbook

## Validation 검사 수행 방법
> flutter doctor

## code analyze 수행 방법(flutter lint 규칙 적용 시킨 경우)
> flutter analyze

## State 개념
> Stateless Widget  : 정적 위젯. 구성 정보에만 의존

> Stateful Widget  : 동적 정보를 유지해야하는 위젯 이미지. State 객체와 상호작용하면서 동적으로 위젯을 구성한다.
> 
> State라는 별도의 객체가 하나 더 필요하고, 이를 Stateful widget에 등록하므로써 동적으로 UI 생성

## Log 출력하는 방법
> import 'dart:developer';

해준 이후 
> log("data :: $element");


## Debug Label 제거 방법
> 해당 라벨은 MaterialApp 위젯의 기본 옵션..

> 아래 옵션을 false 로 하면 된다.

~~~
MaterialApp(
    debugShowCheckedModeBanner: false,
    .
    .
    .
);
~~~
