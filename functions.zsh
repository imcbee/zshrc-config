# check the logs of a current running container, example usage: logs dibnet-content-service
logs() {
    dibnet-docker
    docker-compose logs "$1"
}

# for updating your "_auth" in your .npmrc file after a password change, example usage: updatecsn lastname_firstname@bah.com mynewpassword123
updatecsn() {
    echo -n ''"$1"':'"$2"'' | openssl base64
}

# log into the docker registry with your CSN account (e-mail address for username), parameter can be mac or windows. example usage: dockerlogin windows
dockerlogin() {
    if [[ "$1" == "mac" ]]; then
        echo "log into the docker registry with your CSN account (e-mail address for username)..."
        docker login dibnet-docker.nexus.boozallencsn.com
        docker login dibnet-docker-internal.nexus.boozallencsn.com
    elif [[ "$1" == "windows" ]]; then
        echo "log into the docker registry with your CSN account (e-mail address for username)..."
        winpty docker login dibnet-docker.nexus.boozallencsn.com
        winpty docker login dibnet-docker-internal.nexus.boozallencsn.com
    else
        echo "Usage: dockerlogin windows/mac, example usage: dockerlogin windows"
    fi
}
