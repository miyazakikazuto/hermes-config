# Hermes Config Sync

Private repo for Hermes config & memory sync across WSL/Termux.

## Workflow

- WSL (utama): edit config, lalu push
- Termux (cadangan): pull sebelum pakai

```bash
# WSL
cd ~/workspace/hermes-config
git add .hermes/config.yaml .hermes/.env .hermes/memories .hermes/skills
git commit -m "update config"
git push

# Termux
cd ~/workspace/hermes-config
git pull
```
