FROM oven/bun:1.4
WORKDIR /app
COPY . .
RUN bun install --frozen-lockfile
RUN bun run build
EXPOSE 3000
CMD ["bun", "start", "--character=characters/morgan.character.json"]
