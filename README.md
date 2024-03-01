# sample-api-automation
koreanjson 샘플 API 를 이용한 자동화 레포지토리

## 필요한 패키지 설치
- npm 설치 : (https://nodejs.org/en)
- newman 설치(관리자 권한) : `sudo npm install -g newman`
- allure-commandline 설치(관리자 권한) : `sudo npm install -g allure-commandline`
- newman-allure-reporter 설치(관리자 권한) : `sudo npm install -g newman-reporter-allure`

## 실행 프로세스
- Postman에서 작성한 Collection을 로컬 레포지토리에 Export한다.
- newman 라이브러리 명령어를 이용하여 collection 내의 Request를 수행한다. (json 으로 결과를 도출한다.)
- 수행 결과에 따라 현재 디렉토리 기준 reports/results.json 을 생성한다.
- results.json 을 기반으로 allure-report 를 생성한다.
  
