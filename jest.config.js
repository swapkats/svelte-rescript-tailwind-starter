module.exports = {
    "transform": {
        "^.+\\.js$": "babel-jest",
        "^.+\\.svelte$": "svelte-jester"
    },
    "moduleFileExtensions": ["js", "svelte"],
    "testMatch": ["**/?(*.)+(spec|test)(.bs).[tj]s?(x)"],
    "setupFilesAfterEnv": ["@testing-library/jest-dom/extend-expect", './setupTests.js'],
    "moduleDirectories": ["node_modules", "src"]
}