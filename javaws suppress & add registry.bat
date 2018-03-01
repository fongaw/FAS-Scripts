@echo off
echo "Configuring deployment.properties in C:\Windows\Sun\Java\Deployment"
javaws -userConfig deployment.expiration.check.enabled false
javaws -userConfig deployment.expiration.check.enabled.locked
setx deployment.expiration.check.enabled false /m
javaws -userConfig deployment.javaws.autodownload=never
javaws -userConfig deployment.javaws.autodownload.locked
javaws -userConfig deployment.expiration.check.enabled=false
javaws -userConfig deployment.expiration.check.enabled.locked
javaws -userConfig deployment.expiration.decision=never
javaws -userConfig deployment.expiration.decision.locked
javaws -userConfig deployment.expiration.decision.suppression=true
javaws -userConfig deployment.expiration.decision.suppression.locked
setx deployment.expiration.check.enabled false /m
echo "Done..."
pause

