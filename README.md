# MZish

A Fish-Shell Theme

![mzish](./mzish_preview.png)

## Left prompt
abbreviated path, ls -lah, and git branch info & a random chess-piece  ,cuz y not 

## Right prompt
Exit code, uptime

## Extras

runs ls -lah while redrawing the theme
* ls | wc -l <= 40
* Window $COLUMNS > 57
* Window $LINES > 30

Note: $COLUMNS & $LINES variables are set by terminal(kitty user here). if not
then set them as global variable in you fish.config.

saves typing ls everytime you do cd :P

## Session-wide config
* run `set docls 'true'` for running `clear` at each repaint.         
* run `set dols 'false'` to remove `ls-lah` & `uptime`                           

Enjoy!
