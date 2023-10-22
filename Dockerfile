FROM rust:latest

COPY ./ ./
RUN cargo update
RUN cargo build --release

EXPOSE 3000
CMD ["./target/release/mpc-websocket"]
