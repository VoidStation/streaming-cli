# streaming-cli

Streaming from IP cameras to RTMP services like YouTube or Facebook via FFmpeg and the Command-Line Interface.

# Facebook Public Group

[https://www.facebook.com/groups/LiveStreamingServices/](https://www.facebook.com/groups/159465471270727/).
Please join this group if you are into streaming services for your clients.

# How to use

1. Make sure you have a copy of FFmpeg.
	* You can download a copy here, [FFmpeg download](https://www.ffmpeg.org/download.html).
2. Copy the file "stream2youtube.sh" to a directory.
3. Open "Terminal.app" and "cd" to that directory.
4. Run 'sudo chmod +x *.sh' to make the script executable.
5. Change the YouTube "PRIVATEKEY" to your own in "stream2youtube.sh".
6. Now setup your Sony PXW-FS5 or other UDP streaming camera to the local IP of this computer on port 1234.
	* "ifconfig" in "terminal.app" will find you the IP.
7. Start the stream on the camera.
8. Run "stream2youtube.sh".
9. Check [YouTube Live Dashboard](https://www.youtube.com/live_dashboard) and go-live!

## Built With

* [FFmpeg](https://www.ffmpeg.org/) - Converting video and audio has never been so easy

## Links

* [https://www.facebook.com/groups/LiveStreamingServices/](https://www.facebook.com/groups/159465471270727/) - Facebook Live Streaming Services (Group)
* [YouTube Sony PXW-FS5 UDP setup video](https://www.youtube.com/watch?v=) - The IP setup howto video for a Sony PXW-FS5 video camera
* [My First live stream via this method](https://www.youtube.com/watch?v=mQxLyIcXifY) - My First YouTube Live Stream via FFmpeg with the Sony PXW-FS5

## License

This project is licensed under The Unlicense - see the [LICENSE.md](LICENSE.md) file for details.

## Acknowledgments

* Hat tip to anyone in the [Sony FS5 Facebook Group](https://www.facebook.com/groups/Sony.FS5/)
* [Fabrice Bellard](https://en.wikipedia.org/wiki/Fabrice_Bellard) for being awesome!