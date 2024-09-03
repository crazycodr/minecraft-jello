# Working with this repo

This repo contains the two folders along with the mcaddon file commited directly in it. When you want to use the source code, just copy the `tcc-jello-bp` to your `development_behavior_packs` or `behavior_packs` folder. Do the same with `tcc-jello-rp` but in the corresponding `resource_packs` folder.

Ultimately, you could use `mklink /D tcc-jello ..\\minecraft-jello\\tcc-jello-bp` in the `behavior_packs` folder. Do the same with `resource_packs` and `tcc-jello-rp`. These commands create symbolic link so you don't have to copy back the source to your git repository.

# Creating a release

Just zip the two bp and rp folder together and rename the file to `tcc-jello.mcaddon` (Remove the zip extension) and then commit and create a tag and release on github.