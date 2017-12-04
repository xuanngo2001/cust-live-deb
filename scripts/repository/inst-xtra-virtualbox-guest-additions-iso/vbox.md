# Debug
 
  # Debug: Should see the following:
  lsmod | grep vbox
    vboxsf                 45056  1
    vboxvideo              53248  2
    vboxguest             262144  6 vboxsf,vboxvideo
    ttm                    94208  1 vboxvideo
    drm_kms_helper        151552  1 vboxvideo
    drm                   348160  5 vboxvideo,ttm,drm_kms_helper