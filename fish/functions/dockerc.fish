# Compose: prefer podman-compose, fall back to docker on machines that force it
function dockerc --description 'compose via podman-compose, else docker compose'
    if command -q podman-compose
        podman-compose $argv
    else if command -q docker; and docker compose version >/dev/null 2>&1
        docker compose $argv
    else if command -q docker-compose
        docker-compose $argv
    else
        echo "dockerc: no compose tool found (podman-compose, docker compose, docker-compose)" >&2
        return 127
    end
end
