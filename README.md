# Angular Base Project

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 18.1.1.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The application will automatically reload if you change any of the source files.

## Code scaffolding

Run `ng generate component component-name` to generate a new component. You can also use `ng generate directive|pipe|service|class|guard|interface|enum|module`.

## Build

Run `ng build` to build the project. The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.dev/tools/cli) page.

## Project Structure

### Dockerfile

The `Dockerfile` is used to create a Docker image for the Angular project. It configures the build and runtime environment for the application. The main steps are:

1. **Base Image**: Uses the `node:20.11.0` image for building the Angular application.
2. **Working Directory**: Sets the working directory inside the container.
3. **Install Dependencies**: Copies the `package.json` file and installs the project dependencies.
4. **Build Application**: Runs the `ng build --prod` command to generate the static files of the application.
5. **Nginx Image**: Uses the `nginx:latest` image to serve the static files of the application.
6. **Port Configuration**: Configures Nginx to listen on port 3000 and exposes this port.

### Directory Structure Scripts

#### `setup-structure.ps1` (for Windows)

This PowerShell script is used to create the project directory structure automatically in a Windows environment. The script performs the following steps:

1. **Create Modules**: Uses the Angular CLI to create core and feature modules such as `core`, `shared`, `clientes`, `pedidos`, and `vendedores`.
2. **Create Directories**: Creates subfolders within each module for components, services, and models.
3. **Create Files**: Generates index files (`index.ts`) and configuration files for each module and component.

To run the script, use the following command in PowerShell:

```powershell
.\setup-structure.ps1
