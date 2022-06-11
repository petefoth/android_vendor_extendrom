########### extendrom section ###########
#export ENABLE_EXTENDROM=false
#export RELEASE_TYPE='4microg-PLUS-E-UNOFFICIAL'


########### l4m plus e custom build ###########
#export EXTENDROM_PACKAGES="MicrogGmsCore F-Droid F-DroidPrivilegedExtension_pb  AuroraStore AuroraServices NominatimBackend MozillaNlpBackend GsfProxy FakeStore DroidGuard BlissLauncher ICSx5 DAVx5 NextCloud  NextCloudNotes OpenTasks K9-Mail-latest Fennec QKSMS OpenCamera noLOSSnap noLOSEmail noLOSMessaging noLOSJelly Bromite bromite_additional_repos.xml"

$PWD/vendor/extendrom/get_prebuilts.sh

if grep -q 'inherit-product-if-exists, vendor/extendrom/config/common.mk' $PWD/vendor/lineage/config/common.mk ; then
  echo "already there"
else
  echo "adding"
  echo "\$(call inherit-product-if-exists, vendor/extendrom/config/common.mk)" >> $PWD/vendor/lineage/config/common.mk
fi

