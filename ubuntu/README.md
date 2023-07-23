# Linux with docker

## Run everything in a container

There are some issues with running Sonic Pi in a container.

The first is the gui, but this was solved.

The second is that supercollider is started inside the container
and needs to access the hardware on the host.

Currently this is solved by running the container with the
`--privileged` flag, it is used to give the container almost 
the same privileges to the host. And the device /dev/snd
is mounted in the container: `-v /dev/snd:/dev/snd` - see also 
the `docker-compose.yml` file.


## Previous Attempts to Run Sonic Pi and Supercollider Separately

There was a previous attempt to run Sonic Pi on linux with docker.
The idea was to run supercollider on the host and all the rest
in a docker container.

But Sonic Pi and SuperCollider are tightly coupled in that Sonic
Pi seems designed to directly communicate with and control an 
instance of the SuperCollider server. Sonic Pi essentially 
sends OSC (Open Sound Control) messages to the SuperCollider 
server in order to generate and manipulate audio.

In the Sonic Pi application, the SuperCollider server 
(scsynth) is started as a subprocess of the main Sonic Pi 
process. It runs locally on the same machine as Sonic Pi, 
and communication between Sonic Pi and the SuperCollider 
server happens over local network ports.

Sonic Pi also controls the SuperCollider server's lifecycle, 
i.e., it starts and stops the server when the Sonic Pi 
application itself starts and stops. It is also responsible 
for initializing the server, setting it up with the 
necessary synth definitions and server settings.

See `/app/server/ruby/lib/sonicpi/`, most probably the file
`scsynthexternal.rb`.

This tight coupling and direct control over the SuperCollider 
server by Sonic Pi simplifies the user experience - users 
don't have to worry about starting and stopping the server 
separately, or loading synth definitions.

But it also means that running the SuperCollider server on
a separate machine from Sonic Pi would likely require deep
modifications to the Sonic Pi application itself.
