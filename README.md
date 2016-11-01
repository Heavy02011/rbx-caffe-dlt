# rbx-caffe-dlt

1. build container
get Dockerfile
docker build --rm -t="heavy02011/rbx-caffe-dlt:v1" .

2. run container
docker run --name='dlt' -it --rm -v /localfilepath/caffenet-yos:/root/deep-visualization-toolbox/models/caffenet-yos heavy02011/rbx-caffe-dlt:v1

currently not running!!

root@78d4a6239ac1:~/deep-visualization-toolbox# ./run_toolbox.py 
libdc1394 error: Failed to initialize libdc1394

Error importing settings.py. Check the error message below for more information.
If you haven't already, you'll want to copy one of the settings_local.template-*.py files
to settings_local.py and edit it to point to your caffe checkout. E.g. via:

  $ cp models/caffenet-yos/settings_local.template-caffenet-yos.py settings_local.py
  $ < edit settings_local.py >

Traceback (most recent call last):
  File "./run_toolbox.py", line 7, in <module>
    import settings
  File "/root/deep-visualization-toolbox/settings.py", line 16, in <module>
    raise Exception('Could not import settings_local. Did you create it from the template? See README and start with:\n\n  $ cp models/caffenet-yos/settings_local.template-caffenet-yos.py settings_local.py')
Exception: Could not import settings_local. Did you create it from the template? See README and start with:

  $ cp models/caffenet-yos/settings_local.template-caffenet-yos.py settings_local.py
