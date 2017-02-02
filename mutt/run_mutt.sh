export GMAIL="nicolas.savois@gmail.com"
export GMAIL_NAME=$GMAIL
export GMAIL_PASS="02Gmail@31%32%34"
export GMAIL_FROM=$GMAIL
export gpg_id="$(gpg --list-keys --with-colons nicolas.savois@gmail.com | awk -F':' '/^pub/ { print $5 }')"

docker run -it --rm \
    -v /etc/localtime:/etc/localtime \
    -e GMAIL -e GMAIL_NAME \
    -e GMAIL_PASS -e GMAIL_FROM \
		-e gpg_id \
    -v $HOME/.gnupg:/home/user/.gnupg \
    -v $HOME/.mutt/cache/:/home/user/.mutt/cache/ \
    --name mutt \
    nsa/mutt
