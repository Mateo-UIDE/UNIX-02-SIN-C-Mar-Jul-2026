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

# i. git config: Sets system-wide git configurations for the lab.
RUN git config --system --add safe.directory '*' \
 && git config --system init.defaultBranch main \
 && git config --system pull.rebase false \
 && git lfs install --system

# j. chsh: Changes the default shell to zsh for the root user.
RUN chsh -s /usr/bin/zsh root

# k. Heredoc: Uses a heredoc to append custom configuration to .zshrc.
# (BHB Ch.1: Redirection/pipes and shell configuration)
RUN cat >> /root/.zshrc <<'EOF'
PROMPT='%F{magenta}[Mateo-Charro]%f %F{magenta}%1 ~%f %(?.%F{green}✓✓.%F{red}X💀)%f %F{magenta}%#%f '
EOF

# l. CMD: Defines the command that runs when the container starts.
# CMD is executed at runtime, unlike RUN which is executed at build time.
CMD ["/usr/bin/zsh"]