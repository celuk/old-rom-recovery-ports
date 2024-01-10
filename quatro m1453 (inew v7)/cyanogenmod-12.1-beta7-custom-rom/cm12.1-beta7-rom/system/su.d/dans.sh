#! /system/bin/sh
# To allow dolby running in Enforcing and permissive Mode
/system/xbin/supolicy --live "allow mediaserver mediaserver_tmpfs:file { read write execute };"
