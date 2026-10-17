FROM docker pull ghcr.io/metatube-community/metatube-server:dev

# 노스플랭크가 사용하는 8080 포트로 실행하도록 강제 설정
ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["/metatube-server"]
CMD ["-port", "8080"]
