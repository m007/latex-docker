LaTeX docker container
=====

This container helps compiling latex sources without the need to install all latex packages on your system.

Setup
-----
First, add your local user to docker group:
```bash
sudo usermod -aG docker YOURUSERNAME
```

Pull image:
```bash
docker pull calvinspiff/latex-docker
```
or build:
```bash
docker build -t calvinspiff/latex-docker .

```

Usage:
-----

Switch to a directory containing your latex sources, then:

```bash
# Suppose example.tex is the document you want to compile
/path/to/your/dockercmd.sh example.tex

# View
./example.pdf
```

Why should I use this container?
-----

- Easy setup
- Uses latexmk to compile
- Preserves UID and GID of local user
- Use container like local command
