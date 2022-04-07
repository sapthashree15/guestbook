#!/bin/bash

tone_analyzer="Natural Language Understanding-dt"

B64_URL="https://api.us-south.natural-language-understanding.watson.cloud.ibm.com/instances/922146de-0c00-4996-b902-790726956a6c"
B64_APIKEY="LVg4xDiSWfdIOf69KXqYq47WIAONS9VZCXg9PZaC5GHZ"

cat <<EOF | oc apply -f -
apiVersion: v1
kind: Secret
metadata:
  name: binding-tone
  namespace: sn-labs-sapthashreek
type: Opaque
data:
  url: $B64_URL
  apikey: $B64_APIKEY
EOF
