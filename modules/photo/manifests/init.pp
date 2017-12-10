class photo {

	package { "gedit": }
	package { "libreoffice": }
	package { "vlc": }
	package { "darktable": }
	package { "rawtherapee": }
	package { "gimp": }
	package { "digikam": }

	Package { ensure => "installed",
		allowcdrom => "true",
	}

	user { 'Valokuvaaja':
		ensure  => present,
		password => 'R6av2a21',
		home => '/home/kayttaja',
		shell => '/bin/bash',
		managehome => true,
	}

        file {"/usr/share/xfce4/backdrops/wallpaper.jpg":
                source => "puppet:///modules/photo/wallpaper.jpg",
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
