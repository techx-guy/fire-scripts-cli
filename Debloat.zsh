#!/bin/zsh
#Branding
pwd="$(dirname "$(which "$0")")"
cat $pwd/PenroseASCII.txt
#Define deBloat function
Debloat (){
adb shell pm disable-user com.amazon.recess
adb shell pm disable-user com.amazon.platform.fdrw
adb shell pm disable-user com.amazon.ssmsys
adb shell pm disable-user com.amazon.whisperplay.contracts
adb shell pm disable-user com.ivona.orchestrator
adb shell pm disable-user com.amazon.device.sync
adb shell pm disable-user com.amazon.device.logmanager
adb shell pm disable-user com.amazon.dpcclient
adb shell pm disable-user com.amazon.ceviche
adb shell pm disable-user com.amazon.alta.h2clientservice
adb shell pm disable-user com.amazon.ftv.screensaver
adb shell pm disable-user com.amazon.ftv.glorialist
adb shell pm disable-user com.amazon.ods.kindleconnect
adb shell pm disable-user com.android.providers.downloads.ui
adb shell pm disable-user com.amazon.sharingservice.android.client.proxy
adb shell pm disable-user com.amazon.android.marketplace
adb shell pm disable-user com.amazon.tifobserver
adb shell pm disable-user com.amazon.aca
adb shell pm disable-user com.amazon.ale
adb shell pm disable-user com.amazon.dcp
adb shell pm disable-user com.amazon.ssm
adb shell pm disable-user com.amazon.tv.csapp
adb shell pm disable-user com.amazon.tahoe
adb shell pm disable-user com.amazon.naatyam
adb shell pm disable-user com.amazon.tv.fw.metrics
adb shell pm disable-user com.amazon.firehomestarter
adb shell pm disable-user com.amazon.securitysyncclient
adb shell pm disable-user com.amazon.device.sale.service
adb shell pm disable-user com.amazon.cardinal
adb shell pm disable-user com.amazon.tcomm.client
adb shell pm disable-user com.amazon.tv.forcedotaupdater.v2
adb shell pm disable-user com.amazon.client.metrics
adb shell pm disable-user amazon.jackson19
adb shell pm disable-user com.android.managedprovisioning
adb shell pm disable-user com.amazon.imdb.tv.android.app
adb shell pm disable-user com.amazon.tmm.tutorial
adb shell pm disable-user com.amazon.device.software.ota
adb shell pm disable-user com.amazon.dcp.contracts.framework.library
adb shell pm disable-user com.amazon.tv.support
adb shell pm disable-user com.amazon.ags.app
adb shell pm disable-user com.amazon.tv.nimh
adb shell pm disable-user com.amazon.sync.provider.ipc
adb shell pm disable-user com.amazon.tv.legal.notices
adb shell pm disable-user android.amazon.perm
adb shell pm disable-user com.amazon.kso.blackbird
adb shell pm disable-user com.amazon.providers.contentsupport
adb shell pm disable-user com.amazon.device.crashmanager
adb shell pm disable-user com.amazon.whisperjoin.middleware.np
adb shell pm disable-user com.amazon.application.compatibility.enforcer
adb shell pm disable-user com.amazon.whisperplay.service.install
adb shell pm disable-user com.ivona.tts.oem
adb shell pm disable-user com.amazon.tv.launcher
adb shell pm disable-user com.amazon.shoptv.client
adb shell pm disable-user com.amazon.device.software.ota.override
adb shell pm disable-user com.amazon.alexashopping
adb shell pm disable-user com.amazon.communication.discovery
adb shell pm disable-user com.amazon.tv.releasenotes
adb shell pm disable-user com.amazon.device.sync.sdk.internal
adb shell pm disable-user com.amazon.hedwig
adb shell pm disable-user com.amazon.application.compatibility.enforcer.sdk.library
}

echo -e "\r"
echo "What is your Name & What is your Quest?"
echo "Also...What is your Fire TV's IP Address?"
read ip1
echo -e "\r"
#Connect over ADB
if [ -z "$ip1" ]; then
  Debloat
else
  adb connect $ip1:5555
  Debloat
fi
