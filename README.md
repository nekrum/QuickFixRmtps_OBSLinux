# Quick and Dirty Fix to stream over rmtps on OBS Linux

Al intertar conectar OBS directamente con Facebook Live, el servicio no permite
la conexión por un problema con los certificados CA.

Si bien como lo indican en este 
[link](https://obsproject.com/forum/threads/unable-to-live-stream-to-facebook-live-over-rtmps.102849/)
la versión 25 ya debería tener arreglado el problema mi equipo lo sigue presentando.

No se resuelve con la actualización de certificados `sudo update-ca-certificates`

Tampoco se resolvio compilando OBS con soporte a TLS ni incluyendo
`libmbedtls12` ni `libmbedtls-dev`.

Por lo tanto solo me quedo el uso de un tunel que conecte por `rtmps` un servidor
nginx con `rmtp`.

Este workaround requiere Docker.