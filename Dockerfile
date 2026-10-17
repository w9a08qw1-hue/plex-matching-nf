FROM ghcr.io/metatube-community/metatube-server:dev

# Northflank 포트 설정
ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["/metatube-server"]
CMD ["-port", "8080"]
