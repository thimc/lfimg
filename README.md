# Image preview support for lf (list files) using Überzug

![image](https://raw.githubusercontent.com/cirala/lfimg/master/screenshot.png)

This set of scripts is used along lf to generate image previews and much like [vifmimg](https://github.com/cirala/vifmimg) it is able to handle image, video and ebook previews.


# Known issues
1. If an image has already been previewed once the preview pane won't display the image temporarily. In order to solve this the UI needs to be reloaded. (using the 'reload' command).
2. The image preview will not disappear when changing the current working directory. This is due to the preview script only being run when hovering over files and not directories.


## Prerequisites
This script assumes that the preview pane is using one third of the window which should be the default behaviour for lf, but f you've changed this you will need to add the following line in your **~/.config/lf/lfrc** file:
```
set ratios 1:2:3
```

Besides lf and Überzug you will need to install the following packages:

* ffmpegthumbnailer
* ImageMagick
* poppler
* epub-thumbnailer
* bc

## Installation

In the project directory you can run the following command:

```
make install
```

To install this to your system, or you can do it manually by following the guide below:

1. Extract the following files: **image**, **preview** to **~/.config/lf/**.
2. Extract **lfrun** to a directory that is in your $PATH variable (such as /usr/bin).
3. Edit your **~/.config/lf/lfrc** file and add the following line:
```
set previewer ~/.config/lf/preview
```
4. In order to launch lf with image preview support from now on, you will need to use the supplied **lfrun** script.

I recommend that you make an alias in your shell that points to lfrun.


## Credits
* [lf](https://github.com/gokcehan/lf/)
* [Seebye's Überzug](https://github.com/seebye/ueberzug)
* [Brodie's](https://github.com/BrodieRobertson/) initial preview script which I used as a template for handling the miscellaneous filetypes that this script also handles.
