#!/bin/bash
if [ $TRAVIS_OS_NAME = 'windows' ]
then
  echo "disabling Windows Defender"
  export PROJECTDIR=$(pwd)
  export TEMPDIR=$LOCALAPPDATA\\Temp
  powershell Add-MpPreference -ExclusionPath ${PROJECTDIR}
  powershell Add-MpPreference -ExclusionPath ${TEMPDIR}
  powershell Add-MpPreference -ExclusionPath ${HOME}
  echo "DisableArchiveScanning..."
  powershell Start-Process -PassThru -Wait PowerShell -ArgumentList "'-Command Set-MpPreference -DisableArchiveScanning \$true'"
  echo "DisableBehaviorMonitoring..."
  powershell Start-Process -PassThru -Wait PowerShell -ArgumentList "'-Command Set-MpPreference -DisableBehaviorMonitoring \$true'"
  echo "DisableRealtimeMonitoring..."
  powershell Start-Process -PassThru -Wait PowerShell -ArgumentList "'-Command Set-MpPreference -DisableRealtimeMonitoring \$true'"
  powershell -ExecutionPolicy Bypass Get-MpPreference
fi
