# Image preview support for lf (list files) using Überzug

![image](https://raw.githubusercontent.com/cirala/lfimg/master/screenshot.png)

This set of scripts is used along lf to generate image previews and much like [vifmimg](https://github.com/cirala/vifmimg) it is able to handle image, video and ebook previews.

When a SSH-connection has been established, [chafa](https://github.com/hpjansson/chafa) will be used instead.


## Prerequisites

Besides lf and Überzug you will need to install the following packages:

* ffmpegthumbnailer
* ImageMagick
* poppler
* epub-thumbnailer
* wkhtmltopdf
* bat (optional - color highlight for text files)
* chafa (optional - for image preview over SSH or inside Wayland session)
* unzip (optional - for .zip and .jar files)
* 7z (optional - for .7z files)
* unrar (optional - for .rar files)
* catdoc (optional - for .doc files)
* docx2txt (optional - for .docx files)
* odt2txt (optional - for .odt and *.ods files)
* gnumeric (optional - for .xls and .xlsx files)
* exiftool (optional - for music files)
* iso-info (optional - for .iso files)
* transmission (optional - for .torrent files)
* mcomix (optional - for .cbz and .cbr files)
## Installation

In the project directory you can run the following command:

```
make install
```

To install this to your system, or you can do it manually by following the guide below:

1. Extract the following files: **cleaner**, **preview** to **~/.config/lf/**.
2. Extract **lfrun** to a directory that is in your $PATH variable (such as /usr/bin).
3. Edit your **~/.config/lf/lfrc** file and add the following lines:
```
set previewer ~/.config/lf/preview
set cleaner ~/.config/lf/cleaner
```
4. In order to launch lf with image preview support from now on, you will need to use the supplied **lfrun** script.

I recommend that you make an alias in your shell that points to lfrun.


## Credits
* [lf](https://github.com/gokcehan/lf/)
* [Seebye's Überzug](https://github.com/seebye/ueberzug)
* [Brodie's](https://github.com/BrodieRobertson/) initial preview script which I used as a template for handling the miscellaneous filetypes that this script also handles.
