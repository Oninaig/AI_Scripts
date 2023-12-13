# AI Startup Scripts
#### I use these on my local Ubuntu server to host multiple AI services (Stable Diffusion, textgen, SillyTavern) as well as monitoring tools for Grafana (Influx, Telegraf).

The main script is `start.sh` which defines some helper functions and then starts all of the services that I use inside of a linux `screen` so that they are neatly organized and I can open them for monitoring separately whenever I need to.

The last line in `start.sh` references the script files that actually start the services themselves. I have used various parameters for the services within each script file that you may or may not need so feel free to modify them.