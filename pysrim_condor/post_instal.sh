#/bin/bash
cd /var/lib/condor
#rm -r /var/lib/condor/.wine; exit 0
#export WINEARCH=''win32''
#export WINEPREFIX=~/.wine

wine config
xvfb-run -a winetricks -q comdlg32ocx msflxgrd richtx32 vb5run comctl32ocx tabctl32
