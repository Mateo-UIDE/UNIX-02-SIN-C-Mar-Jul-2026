# a. Base Image: Using Kali Linux rolling for a security-focused environment.
# Layer caching ensures that unchanged layers are reused, speeding up builds.
FROM kalilinux/kali-rolling:latest

# b. ENV: Global environment variables for the system.
# Defines non-interactive mode for installers, language encoding, 
# and terminal capabilities. (BHB Ch.1: environment variables)
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

# c. RUN (debconf): Pre-seeding answers for packages.
# Prevents Wireshark from pausing the build to ask for user input.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections

# d. RUN (apt-get): The main installation block.
# We combine commands into one RUN to minimize image layers (improving size/speed).
# && ensures execution only proceeds if the previous command succeeds. (BHB Ch.3)
RUN apt-get update && apt-get install -y --no-install-recommends \
    neovim vim zsh bash-completion \
    perl make gawk sed grep \
    coreutils findutils procps less tree jq \
    man-db manpages manpages-posix \
    curl wget git git-lfs ca-certificates locales \
    shellcheck \
    nmap masscan \
    tcpdump tshark \
    netcat-traditional socat dnsutils whois traceroute mtr-tiny iproute2 net-tools iputils-ping \
    tor torsocks proxychains4 obfs4proxy \
    httpie \
    \

# e. sed: Modifies locale.gen to enable Spanish. (BHB Ch.2: text processing)
    && sed -i 's/# es_ES.UTF-8/es_ES.UTF-8/' /etc/locale.gen \
    && locale-gen \
    \

# f. Cleanup: Removes cache files in the same layer to keep the image slim.
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# g. SHELL: Forces bash as the default shell for all subsequent RUN instructions.
SHELL ["/bin/bash", "-c"]

# h. WORKDIR: Sets the default directory when the container starts.
WORKDIR /workspaces

# Configuración de Git para el contenedor:
# - safe.directory *: confía en cualquier repo montado (necesario porque
#   /workspaces/... tiene un UID distinto al de root dentro del container).
# - init.defaultBranch main: evita warnings de "master vs main" en git init.
# - pull.rebase false: merge por defecto al hacer pull (más intuitivo)
# - git lfs install --system: registra los hooks de LFS globalmente para
#   que, si un repo los necesita, funcionen sin sorpresas.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# ----------------------------------------------------------------------------
# CMD: comando que se ejecuta por defecto al arrancar el contenedor
# ----------------------------------------------------------------------------
# Lanza una shell bash interactiva. Codespaces la sobrescribe con su
# propia terminal integrada de VS Code, pero es buena práctica dejarla
# definida para que la imagen sea usable también con Docker puro.
# Prompt del curso para bash
Run chsh -s /usr/bin/zsh root
Run cat >> /root/.zshrc <<'EOF'
PROMPT='%F{magenta}[Mateo-Charro]%f %F{magenta}%1 ~%f %(?.%F{green}✓✓.%F{red}X💀)%f %F{magenta}%#%f '
EOF
CMD ["/usr/bin/zsh"]