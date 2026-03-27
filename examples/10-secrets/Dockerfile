# === 잘못된 방법: ENV로 시크릿 주입 ===
# ENV는 이미지 레이어에 남아서 docker history로 누구나 볼 수 있다
# FROM node:20-slim
# ENV DATABASE_URL=postgres://user:password123@db:5432/mydb   # [함정] 절대 금지!
# RUN npm install

# === 올바른 방법: BuildKit secrets mount ===
# 빌드 시 시크릿이 필요하면 --mount=type=secret을 사용한다
# 시크릿은 이미지 레이어에 저장되지 않는다
FROM node:20-slim
WORKDIR /app
COPY package*.json ./

# BuildKit secret mount — 빌드 시에만 /run/secrets/npmrc 경로로 접근 가능
# 빌드 명령어: docker build --secret id=npmrc,src=.npmrc .
RUN --mount=type=secret,id=npmrc,target=/root/.npmrc \
    npm ci --production

COPY . .

# [함정] ARG로 시크릿을 받는 것도 위험 — docker history에 기록됨
# ARG SECRET_TOKEN    ← 이것도 사용 금지

EXPOSE 3000
CMD ["node", "server.js"]
# 런타임 시크릿은 docker-compose의 secrets 또는 환경변수 파일(env_file)로 전달
