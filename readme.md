# Minecraft Jello

This mod brings value to slime balls that we constantly find in caves by slaying slimes.

# New items

## Jellos

By combining slime balls and sugar + an optional fruit, you get to craft jello blocks. These blocks are edible and can be eaten pretty fast while running compared to other types of food which will slow you down. Here's a table of the different jellos you can make and their nutrition and saturation boosts.

| Flavour | Colour | Nutrition | Saturation |
|---------------|--------|-----------|------------|
| Unflavoured | White | 0.5 | 0.5 |
| Apple | Yellow | 1 | 1 |
| Cactus | Green | 2 | 2 |
| Chorus | Purple | 3 | 3 |
| Melon | Pink | 1 | 1 |
| Pumpkin | Orange | 2 | 2 |
| Sweet berries | Red | 2 | 2 |

## Juices

Juices are concentrated, liquified and honey added jellos that provide even more effects. Juices are stored in glass bottles which are recovered after drinking them.

Just like jellos, juices can be consumed on the run but take more time to consume because their are bigger. Also, you can only stack 16 at a time but if you are able to make 16 of them it will be very worthy.

While they are much harder to craft, the results are very rewarding:

| Flavour | Colour | Nutrition | Saturation |
|---------------|--------|-----------|------------|
| Apple | Yellow | 4 | 6 |
| Cactus | Green | 4 | 6 |
| Chorus | Purple | 5 | 7 |
| Melon | Pink | 4 | 6 |
| Pumpkin | Orange | 4 | 6 |
| Sweet berries | Red | 4 | 6 |

# Installing the mod

Download the source code by going to the releases page: https://github.com/crazycodr/minecraft-jello/releases.

From there, expand the **assets**  of the version you want to download and click on the **Source code (zip)** version.

Open your file explorer and locate the Minecraft installation folder. This is usually something like `C:\Users\thecr\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe` under Windows. Under this folder, navigate to `LocalState\games\com.mojang` and then in there, you can copy the folders in the zip file:

- `tcc-jello-bp` goes into `behavior_packs`
- `tcc-jello-rp` goes into `resource_packs`

Once these folders are copied, you can start Minecraft and load the mods into your world or realm.

# Working with this repo

This repository contains the two folders for a Minecraft extension along with the mcaddon file commited directly in it.

## Development

To change this addon, clone the repository to your Minecraft install folder under the `LocalState\games\com.mojang` as `minecraft-jello`. 

Run the powershell script `devops/install-dev-links.ps1`, it will create the symbolic links into the `development_behavior_packs` and `development_resource_packs` so you can easily refresh them. 

Open VSCode and load the `minecraft-jello` folder and code away. Because there are no scripts, you don't need to run any npm install for the behavior pack.

Once done, you can cleanup the symbolic links by running the powershell script `devops/remove-dev-links.ps1`.

## Making/proposing changes

If you are a direct collaborator, simply create a branch, commit and push the branch then open a pull request against master.

If you are not a collaborator, fork the repository into your own GitHub account, create a branch, commit it and push your branch then open a pull request against our repository for integration.

If approved, we'll merge your code into our master.

## Testing a release

Just like in [Development](#development), you can run two scripts that copy or clean up the official directories. (The `behavior_packs` and `resource_packs`)

These two scripts are:

- `devops/install-dist-copies.ps1`
- `devops/remove-dist-copies.ps1`

These effectively copy the `minecraft-jello/tcc-jello-bp` and `minecraft-jello/tcc-jello-rp` to the non dev folders or removes them from it.

Once copied in, load the game, add the packages to your world and start playing to test the changes.

## Crafting a release

To craft a release, 2 things must be done:

### Update the versions

In `tcc-jello-bp`, open the `manifest.json` and change the versions for the uuids:

- `3828e6b2-1416-4e94-a23b-6ec1734c3707`
- `3181bc2e-2048-4c04-881e-6c2aaf745469`
- `af8220e3-33d6-4683-995d-43e350eee85f`

And in `tcc-jello-rp`, open the `manifest.json` and change the versions for the uuids:

- `3828e6b2-1416-4e94-a23b-6ec1734c3707`
- `469fc328-6975-49a7-a63f-208264236fad`

Depending on your changes you should increment the patch (last number, for bug fixes) or the minor version (second number, for feature changes) and make all of them the same. If you change the minor version, make the patch version 0. For example:

- 1.2.2 -> 1.2.3 (Bug fix)
- 1.2.2 -> 1.3.0 (Feature change)

### Repack the mcaddon

One last script exists, it deletes the mcaddon zip file and generates a new one for you. It is important to do this last after version updates to make sure you have the right manifests in the zip.

Run `devops/update-mcaddon.ps1` to repack the zip file.