**Application**

[Minecraft](https://minecraft.net/)

**Description**

Minecraft is a sandbox video game originally created by Swedish game designer Markus "Notch" Persson, and later fully developed and published by Mojang. The creative and building aspects of Minecraft enable players to build constructions out of textured cubes in a 3D procedurally generated world. Other activities in the game include exploration, resource gathering, crafting, and combat. Multiple gameplay modes are available, including a survival mode where the player must acquire resources to build the world and maintain health, a creative mode where players have unlimited resources to build with and the ability to fly, an adventure mode where players can play custom maps created by other players, and a spectator mode where players can fly around and clip through blocks, but cannot place or destroy any. The PC version of the game is noted for its modding scene, where a dedicated community creates new gameplay mechanics, items, and assets for the game.

**Build notes**

Version of minecraft is not part of the build, supports any version.

**Usage**
```
docker run -d \
    --name=<container name> \
    -v <path for minecraft files>:/minecraft \
    -v /etc/localtime:/etc/localtime:ro \
    rossallan/minecraftserver
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

`<host ip>:25565`

**Example**
```
docker run -d \
    --name=mc \
    -v /mnt/appdata/minecraft:/minecraft \
    -v /etc/localtime:/etc/localtime:ro \
    rossallan/minecraftserver
```

