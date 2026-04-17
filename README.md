# Nix Docs with Quartz 4

## Porpuse
This documentation has the porpuse on structure all information for myself so I can see in the future what I did a few years ago (or a few weeks because I have a goldfish brain).

Feel free to copy the structure and the idea of this repo. 

## Setup Documentation
If you are on NixOS you can just clone this repo and use the development environment (defined in the flake.nix) for development.
If you're not using NixOS then you can figure out by yourself you to proper start this thing :D One Tip: You need nodejs >= 22 :)

```bash
git clone https://github.com/herrluisi/nix-docs
cd nix-docs
nix develop
npm i
npx quartz build --serve
```

