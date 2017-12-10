class camera {

	package { "gedit": }
	package { "libreoffice": }
	package { "vlc": }

	Package { ensure => "installed",
		allowcdrom => "true",
	}

	user { 'kayttaja':
		ensure  => present,
		password => 'salainen',
		home => '/home/kayttaja',
		shell => '/bin/bash',
		managehome => true,
	}

        file {"/usr/share/xfce4/backdrops/wallpaper.jpg":
                source => "puppet:///modules/camera/wallpaper.jpg",
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
