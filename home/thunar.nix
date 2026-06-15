home.activation.thunarSettings =
  lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    XFCONF=${pkgs.xfce.xfconf}/bin/xfconf-query

    # View
    $XFCONF -c thunar -p /last-view -n -t string -s ThunarDetailsView || true

    # Zoom
    $XFCONF -c thunar -p /last-icon-view-zoom-level -n -t string -s THUNAR_ZOOM_LEVEL_50_PERCENT || true
    $XFCONF -c thunar -p /last-details-view-zoom-level -n -t string -s THUNAR_ZOOM_LEVEL_38_PERCENT || true

    # Hidden files
    $XFCONF -c thunar -p /last-show-hidden -n -t bool -s true || true

    # Thumbnails
    $XFCONF -c thunar -p /misc-thumbnail-mode -n -t string -s THUNAR_THUMBNAIL_MODE_ALWAYS || true

    # Date formatting
    $XFCONF -c thunar -p /misc-date-style -n -t string -s THUNAR_DATE_STYLE_LONG || true

    # Single click
    $XFCONF -c thunar -p /misc-single-click -n -t bool -s false || true

    # Folder specific settings
    $XFCONF -c thunar -p /misc-directory-specific-settings -n -t bool -s true || true

    # Image preview
    $XFCONF -c thunar -p /misc-image-preview-mode -n -t string -s THUNAR_IMAGE_PREVIEW_MODE_EMBEDDED || true

    # Sidebar icons
    $XFCONF -c thunar -p /shortcuts-icon-size -n -t string -s THUNAR_ICON_SIZE_24 || true
    $XFCONF -c thunar -p /tree-icon-size -n -t string -s THUNAR_ICON_SIZE_16 || true
    $XFCONF -c thunar -p /shortcuts-icon-emblems -n -t bool -s true || true
    $XFCONF -c thunar -p /misc-symbolic-icons-in-sidepane -n -t bool -s false || true

    # Tabs
    $XFCONF -c thunar -p /misc-middle-click-in-tab -n -t bool -s false || true
    $XFCONF -c thunar -p /misc-open-new-window-as-tab -n -t bool -s false || true

    # Transfers
    $XFCONF -c thunar -p /misc-transfer-use-partial -n -t string -s THUNAR_USE_PARTIAL_MODE_NEVER || true

    # Location bar
    $XFCONF -c thunar -p /last-location-bar -n -t string -s ThunarLocationButtons || true
  '';
