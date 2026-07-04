Pemilik memiliki 2 akun Telegram yang diizinkan mengakses Hermes bot: ID utama 6988384384 dan ID kedua 1318997833. Konfigurasi telegram.allowed_users sudah di-set ke kedua ID.
§
User GitHub username: miyazakikazuto. GitHub CLI authenticated with token scopes: gist, read:org, repo, workflow. User created private repo miyazakikazuto/hermes-config for Hermes config backup.
§
Termux Android aarch64, Hermes repo at ~/hermes-agent, venv at ~/hermes-agent/venv, prefer smallest working config, no extra tools if avoidable. Hermes context already tuned: context_length=80000, compression.t\operatorname{reshold}=0.50, target_ratio=0.22, protect_last_n=14, protect_first_n=2, prompt_caching.cache_ttl=5m. Telegram allowed users: 6988384384, 1318997833, home channel: 6988384384.
§
Gateway plan: WSL primary, Termux backup (active-passive). Syncthing linking ~/.hermes to ~/HermesShared/.hermes for config sync. Termux device ID 9myey-qacpy, WSL device ID DVZUJTI-PQVDZEF-J2IXNUS-ENZFP44-NTFTWUX-RMKCLHI-JY7IDOK-PLCW2AW. rtk not viable on Termux aarch64 without build-from-source; using native Hermes context compression instead.