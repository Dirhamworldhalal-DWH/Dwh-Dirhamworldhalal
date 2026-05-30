# BNB Smart Chain Node Setup

## Prérequis

- Ubuntu 18.04+ ou similaire
- 4+ CPU cores
- 16+ GB RAM
- 500+ GB SSD
- Connexion stabel

## Installation

### 1. Installer Go

```bash
wget https://go.dev/dl/go1.20.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source ~/.profile
go version
```

### 2. Cloner BSC

```bash
git clone https://github.com/bnb-chain/bsc.git
cd bsc
```

### 3. Compiler

```bash
make geth
```

### 4. Configurer Node

```bash
# Créer dossier data
mkdir -p ~/bsc-data

# Télécharger config
wget https://github.com/bnb-chain/bsc/releases/download/v1.2.0/mainnet.json
```

### 5. Lancer Node

```bash
./build/bin/geth \
  --config mainnet.json \
  --datadir ~/bsc-data \
  --http \
  --http.addr 0.0.0.0 \
  --http.port 8545
```

## Vérification

```bash
curl -X POST http://localhost:8545 \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","method":"eth_blockNumber","params":[],"id":1}'
```

## Configuration Complète

Voir [BSC Official Docs](https://docs.bnbchain.org/)

---

**Status**: 📋 Guide de base
**Mise à jour**: Mai 2026
