# Linting

## Desc

Linting tools are used to "clean" code from common mistakes and enforce clean code standards. 

## Naming Conventions
    JSON element names
    Java method and class names
    Database 

## useful links

using eslint in [VSC](https://www.digitalocean.com/community/tutorials/linting-and-formatting-with-eslint-in-vs-code)


Google code style [guides](https://google.github.io/styleguide/)


react eslint [plugin](https://www.npmjs.com/package/eslint-plugin-react)



testing playground chrome plugin can be used to easily create front-end unit tests


Example of eslint JSON config file
```
{
    "root": true,
    "extends": [
        "eslint:recommended"
    ],
    "parser": "@typescript-eslint/parser",
    "parserOptions": { "project": ["./tsconfig.json"] },
    "plugins": [
        "@typescript-eslint"
    ],
    "rules": {
        "@typescript-eslint/strict-boolean-expressions": [
            2,
            {
                "allowString" : false,
                "allowNumber" : false
            }
        ]
    },
    "ignorePatterns": ["src/**/*.test.ts", "src/frontend/generated/*"]
}
```


Example of eslint js config file

```
module.exports = {
  root: true,
  parser: '@typescript-eslint/parser',
  plugins: ['@typescript-eslint'],
  extends: ['eslint:recommended', 'plugin:@typescript-eslint/recommended', 'react-app', 'react-app/jest', 'airbnb', 'airbnb/hooks', 'prettier'],
  rules: {
    // note you must disable the base rule as it can report incorrect errors
    'no-use-before-define': 'off',
    'no-undef': 'off',
    'no-underscore-dangle': 'off',
    'class-methods-use-this': 'off',
    '@typescript-eslint/no-use-before-define': 'error',
    'import/extensions': 'off',
    camelcase: 'off',
    curly: ['error', 'multi-line'],
    'import/no-extraneous-dependencies': ['error', { devDependencies: true }],
    'no-param-reassign': ['error', { props: true, ignorePropertyModificationsFor: ['state'] }],
    'object-curly-newline': ['error', { ImportDeclaration: 'never', ExportDeclaration: { multiline: false, minProperties: 3 } }],
    'react/jsx-filename-extension': [1, { extensions: ['.js', '.jsx', '.ts', '.tsx'] }],
    'max-len': [
      'error',
      {
        code: 160,
        ignoreComments: true,
        ignoreUrls: true,
        ignoreStrings: true,
        ignoreTemplateLiterals: true,
        ignoreRegExpLiterals: true,
      },
    ],
  },
  settings: {
    'import/resolver': {
      node: {
        extensions: ['.js', '.jsx', '.ts', '.tsx'],
      },
    },
  },
};
```