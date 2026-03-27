#!/bin/bash
# Docker 디버깅 명령어 모음

# 컨테이너 로그 (최근 100줄 + 실시간)
docker logs --tail 100 -f <container>

# 종료된 컨테이너의 이전 로그
docker logs <container> 2>&1 | tail -50

# 컨테이너 내부 진입
docker exec -it <container> /bin/sh

# 컨테이너 상태 확인
docker inspect <container> --format='{{.State.Status}} Exit:{{.State.ExitCode}}'

# 주의: Exit Code 137 = SIGKILL (OOM 또는 docker kill)
# OOM 확인: docker inspect <container> --format='{{.State.OOMKilled}}'

# 리소스 사용량 실시간 모니터링
docker stats --no-stream

# 네트워크 디버깅
docker network inspect bridge
