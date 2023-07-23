The deb file was downloaded via http://tinyurl.com/35t3yvpf

See this thread for the origin of the deb file:

https://in-thread.sonic-pi.net/t/sonic-pi-4-3-installer-for-ubuntu-22-04/7260/5


Original `readme` for the deb file:
-----------------------------------

Sonic Pi 4.3 on Ubuntu 22.04.1

The deb file in this folder was tested on a VM of Ubuntu 22.04.1 desktop (minimal install option)

Please watch the video BEFORE trying to install.

Text of the notes file in the video is shown below


N: Download is performed unsandboxed as root, as file '/home/rbn/Downloads/sonic-pi_4.3.0_1_ubuntu22.04.amd64.deb' couldn't be accessed by user '_apt'. - pkgAcquire::Run (13: Permission denied)

This error message looks a bit frightening, but in fact the application has installed satisfactorily.

I have googled the error, and see why it happens, but haven't found a solution yet to remove it.

The other issue which you will see shortly is that the sonic pi splash screen does not appear when the application is launched. This is a known issue with the source code when running on linux, but it has not yet been resolved. Sonic Pi works fine without it. There is just a pause before the app screen appears while it launches.

Finally, you may have to adjust the input and output in sound settings to hear sonic pi while it is playing. See later in the video.
