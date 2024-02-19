#!/bin/bash

# Solana 네트워크 RPC 엔드포인트
NETWORK="https://api.mainnet-beta.solana.com"

# 생성할 검증자 수
BATCH_COUNT=1

# 결과를 저장할 파일 경로
OUTFILE="validator-identity.json"

# solana validators create-validators 명령어 실행
solana validators create-validators \
  --batch-count $BATCH_COUNT \
  --network $NETWORK \
  --outfile $OUTFILE

echo "New validators created and saved to $OUTFILE"
