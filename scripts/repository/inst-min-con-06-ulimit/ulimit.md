#ulimit

# Reason
vscode is crashing when it is opened because ulimit -n is 1024 which is a decade old settings and not suitable for modern GUI app.
So, increase it to 65536.

Add ulimit -n 65536 directly into /root/.bashrc or /etc/profile so every shell automatically raises its soft limit up to the kernel's hard limit before you run VS Code.

ulimit -n
ulimit -n 65536
ulimit -n
