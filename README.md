## Available Scripts

In the project directory, you can run:

### `npm start`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br />
You will also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.<br />

### `npm run build`

Builds the app for production to the `build` folder.<br />
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br />
Your app is ready to be deployed!

# How to use -v option for docker run

As we all know if we want to proxy or map a local port from our local system to a container
we use `-p` option like

```
docker run -p <LocalPORT>:<ContainerPORT>
```

Example

```
docker run -p 3001:3000 rohityadav007/client
```

Similarly we can use `-v` option for referencing local volume to container volume

**Syntax**

```
docker run -v <LocalVolume>:<ContainerVolume>
```

Example

```
docker run -p 3001:3000 -v $(pwd):/app rohityadav007/client
```

In case you want to exclude any of the dir or file to be mapped then we can just pass container volume path

Example

```
docker run -p 3001:3000 -v /app/node_modules/ -v $(pwd):/app rohityadav007/client
```

in this case `-v /app/node_modules/` will exclude from the mapping

## override startup command from the docker-compose

We can make use of `command` option
