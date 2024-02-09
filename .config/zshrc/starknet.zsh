STARKLI_ENV_PATH="$HOME/.starkli/"
if [ -d "$STARKLI_ENV_PATH" ]; then
  source "$STARKLI_ENV_PATH/env"
fi;

export STARKNET_ACCOUNT="$HOME/.starkli-wallets/deployer/account.json"
export STARKNET_KEYSTORE="$HOME/.starkli-wallets/deployer/keystore.json"
