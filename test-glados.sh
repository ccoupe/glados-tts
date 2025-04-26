#! /bin/bash
#
curl http://bronco.local:8132/v1/audio/speech   -H "Authorization: Bearer not-needed"   -H "Content-Type: application/json"   -d '{ "model": "kokoro", "input": "Believe you can and you are halfway there.", "voice": "af_heart" }'   --output speech.mp3
