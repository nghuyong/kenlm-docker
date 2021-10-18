# kenlm-docker

## build image
```bash
docker build . -t nghuyong/kenlm
```

## run image
```
docker run -it -v $(pwd)/example:/var nghuyong/kenlm bash
./lmplz -o 2 --verbose_header --text /var/test.in --arpa /var/arpa.kenlm
```