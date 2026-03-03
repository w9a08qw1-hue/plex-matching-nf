# 1. 노드 환경 빌려오기
FROM node:18-alpine

# 2. 작업 폴더 만들기
WORKDIR /app

# 3. 메타튜브 소스 가져오기 (커뮤니티 버전)
RUN apk add --no-cache git && \
    git clone https://github.com/metatube-community/metatube-server.git .

# 4. 필요한 부품 설치 및 빌드
RUN npm install && npm run build

# 5. 실행 준비
EXPOSE 8080
CMD ["npm", "start"]
