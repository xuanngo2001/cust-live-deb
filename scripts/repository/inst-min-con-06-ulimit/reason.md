**Debian 13 (Trixie) uses `1024` as its default soft `nofile` limit**, so you did not manually set it. 

Why Debian Defaults to 1024

- **Kernel & PAM defaults.** Debian inherits the traditional Linux kernel soft limit of `1024` (with a hard limit usually set to `524288` or `1048576` via `systemd`). 
- **Root user exception.** Even on Linux setups that apply higher defaults via `/etc/security/limits.conf` using wildcards (`*`), PAM ignores `*` for the `root` user unless `root` is explicitly named—leaving `root` shells strictly at `1024`. 
- **Minimal / custom bootstrap.** Because you bootstrapped a custom Debian 13 environment without a full desktop display manager stack (which sometimes raises session limits via systemd user slices), your shell sessions simply inherit the stock `1024` soft limit. 

How to Make the Fix Permanent on Custom Debian 13

Since you bootstrapped this system yourself, choose whichever method fits your init/login setup: 

1. **If you use `systemd` and standard login/SSH/display sessions:**  
    Create a drop-in override directory so updates don't overwrite your changes:
    
    bash
    
    ```
    mkdir -p /etc/systemd/system.conf.d /etc/systemd/user.conf.d
    printf "[Manager]\nDefaultLimitNOFILE=65536:524288\n" > /etc/systemd/system.conf.d/limits.conf
    printf "[Manager]\nDefaultLimitNOFILE=65536:524288\n" > /etc/systemd/user.conf.d/limits.conf
    ```
    
    Use code with caution.
    
    Copy code text to clipboard.
    
    And explicitly add `root` to `/etc/security/limits.d/99-root-nofile.conf` (making sure `pam_limits.so` is enabled in `/etc/pam.d/common-session`): 
    
    bash
    
    ```
    printf "root soft nofile 65536\nroot hard nofile 524288\n" > /etc/security/limits.d/99-root-nofile.conf
    ```
    
    Use code with caution.
    
    Copy code text to clipboard.
    
2. **If you boot via a custom init script, chroot, or minimal TTY without PAM:**  
    Add `ulimit -n 65536` directly into `/root/.bashrc` or `/etc/profile` so every shell automatically raises its soft limit up to the kernel's hard limit before you run VS Code. 

Would you like to check **whether `systemd` and `pam_limits.so` are active** in your custom bootstrap, or just add **`ulimit -n 65536`** straight to `/root/.bashrc`?