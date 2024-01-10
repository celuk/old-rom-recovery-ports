echo # ================================================== 
>> /system/build.prop
echo # SOUND MOD
>> /system/build.prop
echo # =================================================
echo "ro.somc.dseehx.supported=true" >> /system/build.prop
echo "ro.qc.sdk.audio.fluencetype=fluencepro" >> /system/build.prop
echo "sony.support.effect=0x1FF" >> /system/build.prop
echo "AUDIODRIVER=alsa" >> /system/build.prop
echo "ro.sound.driver=alsa" >> /system/build.prop 
echo "audio.offload.buffer.size.kb=128" >> /system/build.prop
echo "audio.offload.pcm.24bit.enable=true" >> /system/build.prop
echo "audio.converter.samplerate.preferred=libsamplerate" >> /system/build.prop
echo "audio.converter.samplerate.libsamplerate.quality=best" >> /system/build.prop
echo "defaults.pcm.rate_converter=samplerate_best" >> /system/build.prop
echo "ro.sound.driver=alsa" >> /system/build.prop
echo "ro.audio.pcm.samplerate=6144000" >> /system/build.prop
echo "ro.audio.samplerate=6144000" >> /system/build.prop
echo "htc.audio.swalt.enable=1" >> /system/build.prop
echo "htc.audio.swalt.mingain=2072" >> /system/build.prop
echo "htc.audio.lpa.globaleffect=0" >> /system/build.prop
echo "htc.audio.pcm.dump.enable=1" >> /system/build.prop
echo "persist.htc.audio.pcm.samplerate=192000" >> /system/build.prop
echo "persist.htc.audio.pcm.channels=2" >> /system/build.prop
echo "htc.audio.global.state=0" >> /system/build.prop
echo "htc.audio.global.profile=0" >> /system/build.prop
echo "htc.audio.q6.topology=0" >> /system/build.prop
echo "htc.audio.global.speaker=1" >> /system/build.prop
echo "htc.audio.srs.defaultbundleHS=MAX300" >> /system/build.prop
echo "dolby.monospeaker=true" >> /system/build.prop
echo "audio.dolby.ds2.enabled=true" >> /system/build.prop
echo "audio.dolby.ds2.hardbypass=true" >> /system/build.prop
echo "audio.offload.passthrough=false" >> /system/build.prop
echo "audio.offload.multiple.enabled=true" >> /system/build.prop
echo "ro.sound.alsa=snd_pcm" >> /system/build.prop
echo "alsa.mixer.playback.master=Speaker" >> /system/build.prop
echo "alsa.mixer.capture.master=Mic" >> /system/build.prop
echo "alsa.mixer.playback.earpiece=Earpiece" >> /system/build.prop
echo "alsa.mixer.capture.earpiece=Mic" >> /system/build.prop
echo "alsa.mixer.playback.headset=Headset" >> /system/build.prop
echo "alsa.mixer.capture.headset=Mic" >> /system/build.prop
echo "alsa.mixer.playback.speaker=Speaker" >> /system/build.prop
echo "alsa.mixer.capture.speaker=Mic" >> /system/build.prop
echo "alsa.mixer.playback.bt.sco=BTHeadset" >> /system/build.prop
echo "alsa.mixer.capture.bt.sco=BTHeadset" >> /system/build.prop
echo "support_harman=true" >> /system/build.prop
echo "support_boomsound_effect=true" >> /system/build.prop
>> /system/build.prop
echo ro.config.hw_dolby=true >> /system/build.prop
echo ro.semc.sound_effects_enabled=true >> /system/build.prop
echo ro.semc.xloud.supported=true >> /system/build.prop
echo persist.service.xloud.enable=1 >> /system/build.prop
echo ro.semc.enhance.supported=true >> /system/build.prop
echo persist.service.enhance.enable=1 >> /system/build.prop
echo ro.semc.clearaudio.supported=true >> /system/build.prop
echo persist.service.clearaudio.enable=1 >> /system/build.prop
echo ro.semc.clearphase.supported=true >> /system/build.prop
echo persist.service.clearphase.enable=1 >> /system/build.prop
echo htc.audio.global.state=0 >> /system/build.prop
echo htc.audio.lpa.a2dp=0 >> /system/build.prop
echo htc.audio.global.profile=0 >> /system/build.prop
echo htc.audio.q6.topology=0 >> /system/build.prop
echo htc.audio.enable_dmic=1 >> /system/build.prop
echo persist.htc.audio.pcm.samplerate=44100 >> /system/build.prop
echo persist.htc.audio.pcm.channels=2 >> /system/build.prop
echo persist.audio.fluence.mode=endfire >> /system/build.prop
echo persist.audio.vr.enable=false >> /system/build.prop
echo persist.audio.handset.mic=analog >> /system/build.prop
echo htc.audio.swalt.mingain=14512 >> /system/build.prop
echo htc.audio.swalt.enable=1 >> /system/build.prop
echo htc.audio.alc.enable=1 >> /system/build.prop
echo # ==================================================
>> /system/build.prop
