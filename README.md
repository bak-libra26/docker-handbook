# Docker Handbook

> 컨테이너 격리 원리부터 CI/CD까지 — 공식 문서가 알려주지 않는 Why와 Pitfall을 다룹니다.

[![Blog](https://img.shields.io/badge/blog-bak--libra26.co.kr-green)](https://bak-libra26.co.kr)

## 시작하기

```bash
# Docker Compose로 멀티 서비스 실행
cd docker
docker compose up -d

# 서비스 상태 확인
docker compose ps
```

## 목차

### 기초 — 컨테이너 격리 원리

| # | 주제 | 블로그 |
|---|------|--------|
| 01 | cgroups와 namespace — 컨테이너 격리가 실제로 작동하는 방식 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/cgroups와%20namespace%20—%20컨테이너%20격리가%20실제로%20작동하는%20방식) |
| 02 | 컨테이너 런타임 — Docker Engine, containerd, runc의 관계 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/컨테이너%20런타임%20—%20Docker%20Engine,%20containerd,%20runc의%20관계) |
| 03 | Union Filesystem — Docker 이미지 레이어가 실제로 저장되는 방식 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Union%20Filesystem%20—%20Docker%20이미지%20레이어가%20실제로%20저장되는%20방식) |

### 이미지 빌드

| # | 주제 | 블로그 |
|---|------|--------|
| 04 | Dockerfile 작성법 심화 — 명령어별 동작 원리와 주의점 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Dockerfile%20작성법%20심화%20—%20명령어별%20동작%20원리와%20주의점) |
| 05 | 멀티 스테이지 빌드 — 이미지 크기를 극적으로 줄이는 방법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/멀티%20스테이지%20빌드%20—%20이미지%20크기를%20극적으로%20줄이는%20방법) |
| 06 | 레이어 캐시 전략 — 빌드 시간을 절반으로 줄이는 Dockerfile 최적화 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/레이어%20캐시%20전략%20—%20빌드%20시간을%20절반으로%20줄이는%20Dockerfile%20최적화) |
| 07 | 이미지 태그와 레지스트리 — Docker Hub에서 프라이빗 레지스트리까지 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/이미지%20태그와%20레지스트리%20—%20Docker%20Hub에서%20프라이빗%20레지스트리까지) |
| 08 | 이미지 경량화와 보안 스캐닝 — 프로덕션에 올리기 전에 확인할 것들 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/이미지%20경량화와%20보안%20스캐닝%20—%20프로덕션에%20올리기%20전에%20확인할%20것들) |

### 네트워크와 스토리지

| # | 주제 | 블로그 |
|---|------|--------|
| 09 | Docker 네트워크 기초 — bridge, host, none의 동작 원리 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20네트워크%20기초%20—%20bridge,%20host,%20none의%20동작%20원리) |
| 10 | Docker 네트워크 심화 — overlay, macvlan과 멀티호스트 통신 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20네트워크%20심화%20—%20overlay,%20macvlan과%20멀티호스트%20통신) |
| 11 | 컨테이너 포트 매핑과 프록시 — 외부 요청이 컨테이너에 도달하는 과정 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/컨테이너%20포트%20매핑과%20프록시%20—%20외부%20요청이%20컨테이너에%20도달하는%20과정) |
| 12 | Docker 볼륨과 바인드 마운트 — 데이터를 컨테이너 밖에 저장하는 방법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20볼륨과%20바인드%20마운트%20—%20데이터를%20컨테이너%20밖에%20저장하는%20방법) |

### 보안과 성능

| # | 주제 | 블로그 |
|---|------|--------|
| 13 | Docker 보안 기초 — 루트리스 모드와 권한 최소화 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20보안%20기초%20—%20루트리스%20모드와%20권한%20최소화) |
| 14 | Docker 시크릿과 민감 정보 관리 — 환경변수에 비밀번호를 넣으면 안 되는 이유 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20시크릿과%20민감%20정보%20관리%20—%20환경변수에%20비밀번호를%20넣으면%20안%20되는%20이유) |
| 15 | Docker 성능 튜닝 — CPU, 메모리, IO 리소스 제한과 모니터링 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20성능%20튜닝%20—%20CPU,%20메모리,%20IO%20리소스%20제한과%20모니터링) |
| 16 | Docker 디버깅 — 컨테이너가 죽었을 때 원인을 찾는 방법 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20디버깅%20—%20컨테이너가%20죽었을%20때%20원인을%20찾는%20방법) |

### Docker Compose

| # | 주제 | 블로그 |
|---|------|--------|
| 17 | Docker Compose 기초 — 여러 컨테이너를 하나의 파일로 관리하기 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20Compose%20기초%20—%20여러%20컨테이너를%20하나의%20파일로%20관리하기) |
| 18 | Docker Compose 네트워크와 볼륨 — 서비스 간 통신과 데이터 공유 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20Compose%20네트워크와%20볼륨%20—%20서비스%20간%20통신과%20데이터%20공유) |
| 19 | Docker Compose 실전 — 개발 환경에서 프로덕션 대비까지 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker%20Compose%20실전%20—%20개발%20환경에서%20프로덕션%20대비까지) |

### CI/CD

| # | 주제 | 블로그 |
|---|------|--------|
| 20 | Docker와 CI/CD — GitHub Actions에서 이미지 빌드, 테스트, 배포까지 | [읽기](https://bak-libra26.co.kr/posts/개발/인프라/도커/Docker와%20CI-CD%20—%20GitHub%20Actions에서%20이미지%20빌드,%20테스트,%20배포까지) |

## Docker 환경

```bash
cd docker
docker compose up -d     # Nginx + App + Redis 실행
docker compose down      # 종료
docker compose down -v   # 종료 + 데이터 삭제
```

- **Nginx** (리버스 프록시): localhost:8080
- **App**: localhost:5000
- **Redis**: localhost:6379

## 이 핸드북의 차별점

1. **Why** — 공식 문서가 "이렇게 쓰세요"라면, 여기서는 "왜 이렇게 동작하는지" 설명합니다
2. **Pitfall** — 실무에서 터지는 함정을 모든 글에 포함합니다
3. **한국어** — 한국어로 가장 체계적인 Docker 시리즈를 목표로 합니다

## 저자

**sim.junghun** — Backend Engineer
- Blog: [bak-libra26.co.kr](https://bak-libra26.co.kr)
- GitHub: [@bak-libra26](https://github.com/bak-libra26)
