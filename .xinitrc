#xrdb -I $HOME ~/.Xresourses
exec i3
#exec startxfce4
export _JAVA_OPTIONS="-Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
