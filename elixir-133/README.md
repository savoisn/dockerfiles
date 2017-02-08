
Dockerfile that wraps elixir universe inside a single docker image.

build with :

```zsh
docker build -t nsa/phoenix:e133 .
```

run it with
```zsh
docker run -it -u `id -u`:`id -g` --rm -v `pwd`:/appli -v /home/nico:/home/nico -v /etc/passwd:/etc/passwd -v /etc/group:/etc/group nsa/phoenix:e133 /bin/bash
```

or 

in zshrc add something like that...

```zsh
#docker run bin bash alias... :)
drbb () {
    if (( $# == 1 ))
    then
        docker run -it -u `id -u`:`id -g` --rm -v `pwd`:/appli -v /home/nico:/home/nico -v /etc/passwd:/etc/passwd -v /etc/group:/etc/group $1 /bin/bash
    else
        echo "need param for image name to run with /bin/bash"
    fi
}
```

and run it with
drbb nsa/phoenix:e133

or 


alias elixir="docker run -it -u `id -u`:`id -g` --rm -v `pwd`:/appli -v /etc/passwd:/etc/passwd -v /etc/group:/etc/group nsa/phoenix:e133 elixir "

alias iex="docker run -it -u `id -u`:`id -g` --rm -v `pwd`:/appli -v /etc/passwd:/etc/passwd -v /etc/group:/etc/group nsa/phoenix:e133 iex "
