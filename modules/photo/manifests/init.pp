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

	user { 'valokuvaaja':
		ensure  => present,
		password => '$1$FlMm24T4$HKL4sYTyQ03QzXvzsnsqf0',
		home => '/home/valokuvaaja',
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
