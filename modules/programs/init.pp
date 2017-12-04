class programs {
	package { "gedit": }
	package { "libreoffice": }
	package [ "vlc": }

	Package { ensure => "installed",
		allowcdrom => "true",
	}
}
