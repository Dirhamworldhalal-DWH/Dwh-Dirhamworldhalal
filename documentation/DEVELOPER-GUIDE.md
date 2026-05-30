# Dirham World Halal - Developer Guide

## Pour Développeurs & Contributeurs

### Prérequis

- Node.js 16+
- npm ou yarn
- Solidity knowledge
- Git

### Installation

```bash
# Clone repository
git clone https://github.com/Dirhamworldhalal-DWH/Dwh-Dirhamworldhalal.git
cd Dwh-Dirhamworldhalal

# Install dependencies
npm install

# Setup environment
cp .env.example .env
```

### Smart Contracts

```bash
# Compile
npx hardhat compile

# Test
npx hardhat test

# Deploy (Testnet)
npx hardhat run scripts/deploy.js --network bscTestnet

# Deploy (Mainnet)
npx hardhat run scripts/deploy.js --network bscMainnet
```

### Contribution

1. Fork le repo
2. Create feature branch
3. Commit changes
4. Push & create PR

---

Voir [blockchain/smart-contracts/](../blockchain/smart-contracts/) pour détails.
