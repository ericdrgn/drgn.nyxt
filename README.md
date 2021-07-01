# drgn.nyxt
Base configuration for nyxt browser (https://github.com/atlas-engineer/nyxt) with opinionated theme(s) and organization.

This is also my attempt at creating a good jumping off point for new users. This will be updated regularly alongside my personal configuration and while this is nearly identical there will always be differences. This will be as close to my personal configs as I will give out publicly.

## Configuration: ~/.config/nyxt/ (Linux)  
- Contains the base configuration files needed.

##### init.lisp
- Contains the initial configurations of Nyxt.
- Loads other config files.

##### auto-config.lisp
- Contains configurations made by Nyxt when using the built in "configure" button.
- Currently empty.

#### /base directory
<details><summary>files</summary>

- **commands.lisp**: Contains all custom commands light enough to be in this file.
- **glyphs.lisp**: Configures glyph symbols for various modes along with small configs for certain modes. Ex. "web-mode" becomes "ω".
- **keybindings.lisp**: Contains overrides (and creation) of keybindings.
- **urlprompt.lisp**: Contains my list search engines and url manipulations. 
</details>

#### /scripts
- Contains script files referenced in commands.lisp 

## Themes
- Contains different theme options created by myself (and others if applicable). Update init.lisp with chosen theme.
- Themes that require other files will be consolidated or have dependencies removed.
- Default theme set in init.lisp is standard-dark to make it easier to settle in.
- Both light and dark themes are provided for my personal choice of a simpler status buffer and standard. They both have a minimal look to them and attempt to be seamless.
- These are definetly not comprehensive and in the case of the light versions I don't use them so probably miss things. If there is an issue that clashes with or makes something unreadable with the themes please open an issue and I will do my best to fix it.
- If you customize a theme or make your own entirely and want it added open an issue for it. 

##### Naming Scheme: 
- _themename_-_light/dark style_

#### /themes directory
<details><summary>files</summary>

- **drgn-dark.lisp**: Opinionated minimal styling, white on black with only tabs and modes in status buffer.
- **drgn-light.lisp**: Opinionated minimal styling, black on white with only tabs and modes in status buffer.
- **standard-dark.lisp**: Opinionated minimal styling, white on black.
- **standard-light.lisp**: Opinionated minimal styling, black on white.
</details>

## Extending
- Contains files used to add on additional capabilities that are considered standalone (in my mind).

#### /ex directory
<details><summary>files</summary>

- **specificurl.lisp**: Create commands for each search engine to jump right into them immediately. Assign keybindings if desired.
</details>
