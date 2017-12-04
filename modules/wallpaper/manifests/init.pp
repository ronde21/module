class wallpaper {
        file {"/usr/share/xfce4/backdrops/wallpaper.jpg":
                source => "puppet:///modules/wallpaper/wallpaper.jpg",
        }
        file {"/usr/share/xfce4/backdrops/xubuntu-wallpaper.png":
                ensure => "link",
                target => "/usr/share/xfce4/backdrops/wallpaper.jpg",
        }
        service {"lightdm":
                ensure => "running",
                enable => "true",
                provider => "systemd",
    }
}
