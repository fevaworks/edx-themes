# starter-theme-openedx

![Starter theme screenshot](screenshot.png)

Starter theme for developing comprehensive theme on Open edX

## How to use

1. Change to `edxapp` user

		$ sudo -u edxapp bash

2. Move to the folder

		$ cd /edx/app/edxapp/edx-themes

3. Clone this repository

		$ git clone https://github.com/fevaworks/edx-themes.git

4. If want to update the repository

		$ git pull
		
5. Make some changes in `lms.env.json` located in `/edx/app/edxapp/`. Then change some variables to this:

		ENABLE_COMPREHENSIVE_THEMING: true,
		COMPREHENSIVE_THEME_DIRS: ["/edx/app/edxapp/edx-themes"],
		DEFAULT_SITE_THEME: "feva-theme",

6. Back to ubuntu sudo users, and restart the edxapp to load new configuration.

		$ exit
		$ sudo /edx/bin/supervisorctl restart edxapp:

7. Run the `update.sh` script. To apply the themes.

		$ cd /edx/app/edxapp/edx-themes/feva-theme/
		$ sh update.sh



