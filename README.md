# ThreeFold Connect Wizard

Wizard used in [ThreeFold Connect's](https://github.com/threefoldtech/threefold_connect) mobile app for a quick guide about ThreeFold.


## Environments

### Production

```shell
https://wizard.jimber.org
```


### Staging

```shell
https://wizard-staging.jimbertesting.be
```



### Development

This codebase is currently Vue2 with Vuetify (will be changed in the future to Vue3 + TailwindCSS)

#### Start UI
```shell
yarn && yarn serve
```

### HELM

```  
helm upgrade --install dev-wizard helm_charts -f helm_charts/values/values-dev.yaml 
--set global.WIZARD_IMAGE="threefoldjimber/threefold-connect-wizard:staging-latest" -n jimber
```
