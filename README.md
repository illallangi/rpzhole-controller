rpzhole-controller
============

Generates an RPZ zonefile from https://github.com/StevenBlack/hosts

Install
-------

Installs a coredns server with a rpzhole-controller as a sidecar updating the zonefile every 6 hours

    kubectl apply -f https://github.com/illallangi/rpzhole-controller/releases/latest/download/deploy.yaml
