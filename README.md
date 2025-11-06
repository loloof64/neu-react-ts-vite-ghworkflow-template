# Neutralinojs + React + TS + Vite + Github Workflow template

A template for [NeutralinoJS](https://neutralino.js.org/), [ReactJS](https://react.dev/), [Typescript](https://www.typescriptlang.org/), and Github Workflow.
So that you can also release you application on Github for Windows and Linux (needs manual trigger).

Inspired by the project [Neutralino App Template](https://github.com/TolinSimpson/neutralinojs-build-automation-template), and using the project [Neutralinojs + React + TS + Vite template](https://github.com/JustPilz/neu-react-ts-vite-template)

## Instructions

### Install

1. `npm i -g @neutralinojs/neu` (skip if `neu` is already installed)
2. `neu update` (to create bin folder and download binaries)
3. `cd react-src && npm install && cd ../`
4. `npm run dev`

### Run

```
npm run dev
```

it's an alias to `neu run -- --window-enable-inspector`

### Build

```
npm run build
```

it's an alias to `neu build`

### Build + zip

```
neu build --release
```

## Update

1. Update the config file:

- option `cli.binaryVersion` with X.X.X
- option `cli.clientVersion` with X.X.X

Enter `neu update` to fetch this version.

2. Update client library into `react-src`:
   `npm install @neutralinojs/lib@latest`

## Update for Github Action

- Don't forget to customize your GH Action settings, changing parameters in the file **neutralino.config.json**

  - applicationId
  - version
  - buildscript section
  - cli.applicationName

- Also update `env` data inside the **release-all-platforms.yml** file
- and in **build automation/template.iss**
