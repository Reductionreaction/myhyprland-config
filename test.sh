#!/bin/bash

getMotto() {
  res=$(curl -s 'https://v1.hitokoto.cn/?encode=json')
  hitokoto=$(echo "$res" | jq -r '.hitokoto')
  from=$(echo "$res" | jq -r '.from')
  echo "“$hitokoto” -- $from"
}

export MOTTO=$(getMotto)

echo "$MOTTO"
