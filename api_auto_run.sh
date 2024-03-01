# reports 디렉토리 생성
mkdir -p reports

# newman 라이브러리를 이용하여 API 자동화 수행
echo "API 자동화 테스트 수행..."
newman run collection.json -e global_variables.json -r allure --reporter-allure-export reports/

# Allure 리포트 생성
echo "Allure 리포트 생성..."
allure generate reports/ -o allure-report/ --clean

# 생성된 Allure 리포트 열기
echo "Allure 리포트 열기..."
allure serve reports

# 생성된 reports 및 allure-reports 디렉토리 삭제
echo "reports 디렉토리 삭제"
rm -rf reports
rm -rf allure-report