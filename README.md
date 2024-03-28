# Image preview support for lf (list files) using Überzug
![image](https://raw.githubusercontent.com/cirala/lfimg/master/screenshot.png)

lfimg is a repository that contains scripts that are used for generating image
preview in lf.\
If you want image preview support for vifm, head on over to
[vifmimg](https://github.com/cirala/vifmimg).

## Prerequisites
Besides lf and Überzug you will need to install the following packages:
* ffmpegthumbnailer
* ImageMagick
* glow
* poppler
* epub-thumbnailer
* wkhtmltopdf

The following packages are optional but if installed will provide more functionality to lfimg.
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
* [comicthumb](https://codeberg.org/johndovern/comicthumb) (optional - for .cbz and .cbr files)

## Installation
The preferred way of installing lfimg is running make:
```
make install
```

If you prefer to do it manually you will need to do the following:
1. Extract the following files: **cleaner**, **preview** to **~/.config/lf/**.
2. Extract **lfrun** to a directory that is in your $PATH variable (such as
   /usr/bin or ~/.local/bin).
3. Edit your **lfrc** file and add the following lines:
```
set previewer ~/.config/lf/preview
set cleaner ~/.config/lf/cleaner
```
Make sure to adjust the previewer and cleaner paths to where you put those
scripts in step 2.
4. In order to use lfimg you will need to start lf using the **lfrun** script.

I recommend that you make an alias in your shell that points to lfrun.\
If you are using bash, append the following to your **~/.bashrc**:
```
alias lf=lfrun
```

## Credits
* [lf](https://github.com/gokcehan/lf/)
* [Seebye's Überzug](https://github.com/seebye/ueberzug)
* [Brodie's](https://github.com/BrodieRobertson/) initial preview script which
  I used as a template for handling the miscellaneous filetypes that this
  script also handles.
