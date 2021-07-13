# Changelog

Here you can find upgrade changes in between releases and upgrade instructions.

## UNRELEASED

### Breaking change

- In the rare case that you have configured `hub.services.<some-key>.name=<some-other-name>`, so that the key is different form the name, you should be aware of the rename of the k8s Secret's key containing an api token for the service is now accessible at `hub.services.<some-key>.apiToken` instead of `hub.services.<some-other-name>.apiToken`. This was a change introduced in [#2312](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2312).

## [1.0]

### [1.0.1] - 2021-06-25

#### Bugs fixed

- Relax extraEnv schema to allow for array values [#2289](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2289) ([@consideRatio](https://github.com/consideRatio))
- Relax hub.db.type schema to accept unknown database types [#2285](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2285) ([@consideRatio](https://github.com/consideRatio))
- templates: quote namespace in case they are only contain numbers [#2284](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2284) ([@consideRatio](https://github.com/consideRatio))
- Corrected scheduler rbac custom naming [#2276](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2276) ([@v1r7u](https://github.com/v1r7u))
- Fix fullnameOverride for Ingress & PriorityClass resources [#2251](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2251) ([@v1r7u](https://github.com/v1r7u))

#### Maintenance and upkeep improvements

- Bump traefik from 2.4.8 to 2.4.9 [#2288](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2288) ([@consideRatio](https://github.com/consideRatio))
- singleuser-sample image: bump base image to reduce known vulns [#2286](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2286) ([@consideRatio](https://github.com/consideRatio))
- schema: force labels and annotations to be strings [#2283](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2283) ([@consideRatio](https://github.com/consideRatio))
- build(deps): bump nbgitpuller from 0.10.0 to 0.10.1 in /images/singleuser-sample [#2279](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2279) ([@dependabot](https://github.com/dependabot))
- hub image: add sqlalchemy-cocroachdb dependency [#2262](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2262) ([@weisdd](https://github.com/weisdd))
- build(deps): bump psycopg2-binary from 2.8.6 to 2.9.1 in /images/hub [#2259](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2259) ([@dependabot](https://github.com/dependabot))
- build(deps): bump nbgitpuller from 0.9.0 to 0.10.0 in /images/singleuser-sample [#2247](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2247) ([@dependabot](https://github.com/dependabot))

#### Documentation improvements

- docs: de-hardcode mentioned minimum helm version [#2272](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2272) ([@consideRatio](https://github.com/consideRatio))
- added AWS EKS cluster scaling/auto-scaling documentation for z2jh [#2268](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2268) ([@cdibble](https://github.com/cdibble))
- Update installation.md [#2249](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2249) ([@enolfc](https://github.com/enolfc))
- Add participation in study notice to readme [#2248](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2248) ([@sgibson91](https://github.com/sgibson91))
- Update 1.0.0-beta.1 changelog entry to 1.0.0 [#2245](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2245) ([@consideRatio](https://github.com/consideRatio))

#### Continuous integration improvements

- Transition to use pre-commit hook in jupyterhub/chartpress [#2278](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2278) ([@consideRatio](https://github.com/consideRatio))
- Remove pre-commit from GHA [#2273](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2273) ([@minrk](https://github.com/minrk))

#### Contributors to this release

([GitHub contributors page for this release](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/graphs/contributors?from=2021-06-09&to=2021-06-24&type=c))

[@cdibble](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acdibble+updated%3A2021-06-09..2021-06-24&type=Issues) | [@consideRatio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AconsideRatio+updated%3A2021-06-09..2021-06-24&type=Issues) | [@dependabot](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adependabot+updated%3A2021-06-09..2021-06-24&type=Issues) | [@enolfc](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aenolfc+updated%3A2021-06-09..2021-06-24&type=Issues) | [@manics](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amanics+updated%3A2021-06-09..2021-06-24&type=Issues) | [@minrk](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aminrk+updated%3A2021-06-09..2021-06-24&type=Issues) | [@sgibson91](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asgibson91+updated%3A2021-06-09..2021-06-24&type=Issues) | [@v1r7u](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Av1r7u+updated%3A2021-06-09..2021-06-24&type=Issues) | [@weisdd](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aweisdd+updated%3A2021-06-09..2021-06-24&type=Issues)

### [1.0.0] - 2021-06-09

This release includes a security announcement, breaking changes, several new
features, and more. Please read through this to be able to help yourself and
others upgrade successfully.

As of the 1.0.0 version of this Helm chart, we aim to follow [SemVer 2
versioning scheme](https://semver.org/) where breaking changes, new features,
and small bugfixes will increment the three version numbers.

#### Highlights

- **arm64 compatible images**

  All images except the user image (`singleuser.image`) now support the arm64
  architecture. This allows this Helm chart to be installable on a RaspberryPi
  based k8s cluster.

- **`hub.extraFiles` and `singleuser.extraFiles`**

  Have you wanted to mount various files to the hub pod or the user pods, such
  as a configuration file or similar? While this could be done by creating a
  dedicated ConfigMap that was mounted etc before, you don't need to go through
  that trouble.

  Read more in [the configuration reference](https://zero-to-jupyterhub.readthedocs.io/en/latest/resources/reference.html#hub-extrafiles).

- **Automatic secret generation**

  Are you explicitly passing `proxy.secretToken`, `hub.config.CryptKeeper.keys`,
  `hub.config.JupyterHub.cookie_secret`? Do it one more time when upgrading to
  1.0.0! After that, they will be stored away in a k8s Secret and reused.

  If you install 1.0.0 from scratch, those will be automatically generated for
  you if you don't specify them.

- **Smoother helm upgrades**

  - `prePuller.hook.pullOnlyOnChanges` is now available and enabled by default,
    which only intercepts a `helm upgrade` by pulling images if they have
    changed since the last upgrade.

  - The `proxy` pod were sometimes restarted when it wasn't needed and that
    could cause needless disruptions for users. This is now fixed.

- **`fullnameOverride` and `nameOverride`**

  These options let you control the naming of the k8s resources created by the
  Helm chart, but should _not be used_ unless you install from scratch.

  Read more in [the configuration
  reference](https://zero-to-jupyterhub.readthedocs.io/en/latest/resources/reference.html#fullnameOverride).

- **Referencing resources from a parent Helm chart's templates**

  Are you a developer of a Helm chart that depends on this Helm chart, and you
  want to reference a k8s resource by name from one of your Helm templates?

  Learn how to do it the recommended way by reading [this
  documentation](https://zero-to-jupyterhub.readthedocs.io/en/latest/administrator/advanced.html#referencing-resources-from-a-parent-helm-chart-s-templates).

#### Security announcement

The documentation for how to setup a Amazon EKS cluster included an insecure
step that would give anyone access to the Kubernetes cluster. If you have
followed these instructions between `0.7.0-beta.1` and `0.11.1`, please see the
[this post in the Jupyter forum](https://discourse.jupyter.org/t/-/9372).

#### Breaking changes

- **Kubernetes 1.17+ and Helm 3.5+ are now required**

  Helm 3 (3.5+) is now required. Helm 2 reached end of life last year and we
  have started relying on Helm 3.5 specific features.

  Kubernetes 1.17+ is now required. It helped us avoid maintaining two separate
  sets of implementations for the the user-scheduler.

- **Schema validation of chart config** ([#2033](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2033), [#2200](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2200))

  The Helm chart now bundles with a `values.schema.json` file that will validate
  all use of the Helm chart during template rendering. If the Helm chart's
  passed values doesn't comply with the schema, then `helm` will error before
  the k8s api-server has become involved and anything has changed in the k8s
  cluster.

  The most common validation errors are:

  - _Unrecognized config values_

    For example if you have misspelled something.

    Note that if you want to pass your custom values for inspection by custom
    logic in the hub pod, then you should pass these values via the `custom`
    config section where anything will be accepted.

  - _Recognized config values with the wrong type_

    For example if you have passed a numerical value to a configuration that
    expected a string.

- **Breaking changes to config** ([#2211](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2211))

  As the Helm chart has evolved over time, configuration options have been
  renamed and changed in various ways. With the release of 1.0.0, we enforce a
  transition from various old configuration options to new that have previously
  been ignored or accepted.

  If you are using outdated configuration options you will be informed about it
  before any changes have been made to your deployment of the Helm chart.

- **Default resource requests are no longer set** ([#2034](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2034), [#2226](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2226))

  The helm chart now follows a common Helm chart practice by not setting default
  resource requests or limits.

  To help in this transition, there is documentation with some guidance on
  setting explicit resource requests available
  [here](https://z2jh.jupyter.org/en/latest/administrator/optimization.html#explicit-memory-and-cpu-allocated-to-core-pods-containers).

  If you want to restore the previous behavior, you can explicitly set the
  resource requests like below.

  ```yaml
  hub:
    resources:
      requests:
        cpu: 200m
        memory: 512Mi

  proxy:
    chp:
      resources:
        requests:
          cpu: 200m
          memory: 512Mi

  scheduling:
    userScheduler:
      resources:
        requests:
          cpu: 50m
          memory: 256Mi

  prePuller:
    resources:
      requests:
        cpu: 0
        memory: 0
    hook:
      resources:
        requests:
          cpu: 0
          memory: 0
  ```

- **KubeSpawner and deletion of PVCs** ([jupyterhub#3337](https://github.com/jupyterhub/jupyterhub/pull/3337), [kubespawner#475](https://github.com/jupyterhub/kubespawner/pull/475))

  Deleting a user in JupyterHub's admin interface (/hub/admin) or removing a
  named server will now lead to the deletion of the user's or named server's
  dynamically created PVC resource if there was one.

  To opt out of this behavior and retain the current behavior where dynamically
  created PVC resources will remain, set `KubeSpawner.delete_pvc` to `false`.

  ```yaml
  hub:
    config:
      KubeSpawner:
        delete_pvc: false
  ```

  Note that this feature relies on both KubeSpawner 1.0.0+ and JupyterHub 1.4.1+
  which are included in this release.

- **hub.existingSecret is reworked** ([#2042](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2042))

  See [the
  documentation](http://z2jh.jupyter.org/en/latest/resources/reference.html#hub-existingsecret)
  and [pull request
  #2042](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2042) for
  more details.

- **configurable-http-proxy statsd metrics removed** ([#2231](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2231))

  [statsd metrics have been
  removed](https://github.com/jupyterhub/configurable-http-proxy/pull/314) in
  configurable-http-proxy. This will only affect administrators who have
  overridden the CHP command line arguments as statsd is not supported in the
  Helm chart. Support for Prometheus metrics will be added in a future release.

#### Notable dependencies updated

| Dependency                                                                       | Version in 0.11.0 | Version in 1.0.0 | Changelog link                                                                              | Note                               |
| -------------------------------------------------------------------------------- | ----------------- | ---------------- | ------------------------------------------------------------------------------------------- | ---------------------------------- |
| [jupyterhub](https://github.com/jupyterhub/jupyterhub)                           | 1.3.0             | 1.4.1            | [Changelog](https://jupyterhub.readthedocs.io/en/stable/changelog.html)                     | Run in the `hub` pod               |
| [kubespawner](https://github.com/jupyterhub/kubespawner)                         | 0.15.0            | 1.0.0            | [Changelog](https://jupyterhub-kubespawner.readthedocs.io/en/latest/changelog.html)         | Run in the `hub` pod               |
| [oauthenticator](https://github.com/jupyterhub/oauthenticator)                   | 0.12.3            | 14.0.0           | [Changelog](https://oauthenticator.readthedocs.io/en/latest/changelog.html)                 | Run in the `hub` pod               |
| [ldapauthenticator](https://github.com/jupyterhub/ldapauthenticator)             | 1.3.2             | 1.3.2            | [Changelog](https://github.com/jupyterhub/ldapauthenticator/blob/master/CHANGELOG.md)       | Run in the `hub` pod               |
| [ltiauthenticator](https://github.com/jupyterhub/ltiauthenticator)               | 1.0.0             | 1.0.0            | [Changelog](https://github.com/jupyterhub/ltiauthenticator/blob/master/CHANGELOG.md)        | Run in the `hub` pod               |
| [nativeauthenticator](https://github.com/jupyterhub/nativeauthenticator)         | 0.0.6             | 0.0.7            | [Changelog](https://github.com/jupyterhub/nativeauthenticator/blob/master/CHANGELOG.md)     | Run in the `hub` pod               |
| [jupyterhub-idle-culler](https://github.com/jupyterhub/jupyterhub-idle-culler)   | 1.0               | 1.1              | -                                                                                           | Run in the `hub` pod               |
| [configurable-http-proxy](https://github.com/jupyterhub/configurable-http-proxy) | 4.2.2             | 4.4.0            | [Changelog](https://github.com/jupyterhub/configurable-http-proxy/blob/master/CHANGELOG.md) | Run in the `proxy` pod             |
| [traefik](https://github.com/traefik/traefik)                                    | v2.3.7            | v2.4.8           | [Changelog](https://github.com/traefik/traefik/blob/master/CHANGELOG.md)                    | Run in the `autohttps` pod         |
| [kube-scheduler](https://github.com/kubernetes/kube-scheduler)                   | v1.19.7           | v1.19.11         | -                                                                                           | Run in the `user-scheduler` pod(s) |

For a detailed list of how Python dependencies have change in the `hub` Pod's Docker image, inspect the [images/hub/requirements.txt](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/blob/master/images/hub/requirements.txt) file.

#### New features added

- hub.service.extraPorts config option [#2148](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2148) ([@kafonek](https://github.com/kafonek))
- Publish Arm64 compatible images [#2125](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2125) ([@manics](https://github.com/manics))
- Enable opt-out of hub.jupyter.org/dedicated tolerations [#2101](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2101) ([@kafonek](https://github.com/kafonek))
- Add prePuller.hook.pullOnlyOnChanges flag [#2066](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2066) ([@consideRatio](https://github.com/consideRatio))
- values.schema.json ships with chart and configuration reference now covers all options [#2033](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2033) ([@consideRatio](https://github.com/consideRatio))
- Allow extraFiles to be injected to hub / singleuser pods and automatically load config in /usr/local/etc/jupyterhub_config.d [#2006](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2006) ([@consideRatio](https://github.com/consideRatio))
- Seed secrets (proxy.secretToken, etc) so they don't have to be manually generated [#1993](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1993) ([@consideRatio](https://github.com/consideRatio))
- Support fullnameOverride / nameOverride and reference resources by named templates [#1923](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1923) ([@consideRatio](https://github.com/consideRatio))

#### Enhancements made

- Add ...serviceAccount.annotations config for our k8s ServiceAccounts [#2236](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2236) ([@AndreaGiardini](https://github.com/AndreaGiardini))
- upload chart as github artifact [#2086](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2086) ([@minrk](https://github.com/minrk))
- allow override of CHP defaultTarget, errorTarget [#2079](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2079) ([@minrk](https://github.com/minrk))
- Don't restart the proxy pod with each deploy [#2077](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2077) ([@yuvipanda](https://github.com/yuvipanda))
- Add option to disable http port on LoadBalancer service [#2061](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2061) ([@tkislan](https://github.com/tkislan))
- Add artificathub.io annotations to Chart.yaml before publishing [#2045](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2045) ([@consideRatio](https://github.com/consideRatio))
- Make use of hub.existingSecret sustainable [#2042](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2042) ([@consideRatio](https://github.com/consideRatio))
- Allow ingress.hosts to be omitted for a more generic rule [#2027](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2027) ([@consideRatio](https://github.com/consideRatio))
- Also pull singleuser.initContainers with pre-puller [#1992](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1992) ([@consideRatio](https://github.com/consideRatio))

#### Bugs fixed

- fix: prePuller.hook.pullOnlyOnChanges didn't work, now it does [#2174](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2174) ([@consideRatio](https://github.com/consideRatio))
- Fix mixup of hook/continuous-image-puller following recent PR [#2100](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2100) ([@consideRatio](https://github.com/consideRatio))
- Fix schema validation for Spawner.cpu/memory limits/guarantees [#2070](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2070) ([@consideRatio](https://github.com/consideRatio))
- Support setting resources to null to omit them [#2055](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2055) ([@consideRatio](https://github.com/consideRatio))
- pdb: default to maxUnavailable=1 instead of minAvailable=1 [#2039](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2039) ([@consideRatio](https://github.com/consideRatio))
- fix: imagePullSecret.enabled to work alongside imagePullSecret.create [#2038](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2038) ([@consideRatio](https://github.com/consideRatio))
- hub image build: fix use of PIP_OVERRIDES arg [#2036](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2036) ([@remche](https://github.com/remche))
- fix: load only .py files in jupyterhub_config.d folder [#2023](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2023) ([@consideRatio](https://github.com/consideRatio))
- Followup fixes to seed secrets PR (#1993) [#2016](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2016) ([@consideRatio](https://github.com/consideRatio))
- fix: set tolerations to predefined labels on core pods [#2007](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2007) ([@consideRatio](https://github.com/consideRatio))

#### Maintenance and upkeep improvements

- Test against k8s 1.21 and avoid deprecation warning for old k8s api policy/v1beta1 [#2243](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2243) ([@consideRatio](https://github.com/consideRatio))
- Rename master branch to main [#2217](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2217) ([@manics](https://github.com/manics))
- singleuser-sample: update base image [#2213](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2213) ([@consideRatio](https://github.com/consideRatio))
- Remove deprecated logic and emit clear messages [#2211](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2211) ([@consideRatio](https://github.com/consideRatio))
- refactor: stop manual hex-to-bytes conversion [#2209](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2209) ([@consideRatio](https://github.com/consideRatio))
- schema: added details to hub|singleuser.extraFiles [#2198](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2198) ([@consideRatio](https://github.com/consideRatio))
- Remove extraneous command from secret-sync image [#2182](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2182) ([@manics](https://github.com/manics))
- maint: revert a workaround to make our priorityclass resources helm hooks [#2180](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2180) ([@consideRatio](https://github.com/consideRatio))
- enable prePuller.hook.pullOnlyOnChanges by default [#2179](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2179) ([@consideRatio](https://github.com/consideRatio))
- inline comment: info about the state used by prePuller.hook.pullOnlyOnChanges [#2173](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2173) ([@consideRatio](https://github.com/consideRatio))
- images/hub - a regular run of script: hub/images/dependencies freeze --upgrade [#2168](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2168) ([@consideRatio](https://github.com/consideRatio))
- build(deps): bump rsa from 4.6 to 4.7.2 in /images/hub [#2167](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2167) ([@dependabot](https://github.com/dependabot))
- Update NOTES.txt, including removing "alpha" designation [#2165](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2165) ([@manics](https://github.com/manics))
- docs: fix docs build for breaking change in sphinx redirection extension [#2156](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2156) ([@consideRatio](https://github.com/consideRatio))
- Allow hub pod to manage k8s Secrets/Services for KubeSpawner.internal_ssl [#2065](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2065) ([@thomasv314](https://github.com/thomasv314))
- Don't set default resource requests [#2034](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2034) ([@yuvipanda](https://github.com/yuvipanda))
- cleanup: remove mistakenly added artifactshub.io config file [#2010](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2010) ([@consideRatio](https://github.com/consideRatio))
- refactor: consistently use toYaml with annotations/labels [#2008](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2008) ([@consideRatio](https://github.com/consideRatio))
- Require k8s 1.17+ to reduce complexity [#2005](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2005) ([@consideRatio](https://github.com/consideRatio))
- refactor: systematically prefer use of with in templates [#2003](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2003) ([@consideRatio](https://github.com/consideRatio))
- Specify prometheus.io/port for hub service [#2000](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2000) ([@yuvipanda](https://github.com/yuvipanda))
- Autoformat bash scripts, yaml files, and markdown files with pre-commit [#1996](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1996) ([@manics](https://github.com/manics))
- Remove deprecated user-scheduler config [#1995](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1995) ([@consideRatio](https://github.com/consideRatio))
- Require Helm 3 to allow for enhancements [#1994](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1994) ([@consideRatio](https://github.com/consideRatio))
- Remove unused nameField helper in \_helpers.tpl [#1991](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1991) ([@consideRatio](https://github.com/consideRatio))

#### Documentation improvements

- docs: fix broken link [#2230](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2230) ([@consideRatio](https://github.com/consideRatio))
- docs: add documentation about resource requests [#2226](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2226) ([@consideRatio](https://github.com/consideRatio))
- docs: fix syntax error in markdown table [#2225](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2225) ([@consideRatio](https://github.com/consideRatio))
- Remove setup-helm2.md [#2216](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2216) ([@manics](https://github.com/manics))
- Add debug.enabled to admin debugging doc [#2215](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2215) ([@manics](https://github.com/manics))
- Minor documentation fixes [#2206](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2206) ([@consideRatio](https://github.com/consideRatio))
- Add changelog for 1.0.0-beta.1 [#2175](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2175) ([@consideRatio](https://github.com/consideRatio))
- docs: we require helm3 not helm2 [#2159](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2159) ([@consideRatio](https://github.com/consideRatio))
- fix cluster name for DO installation instructions [#2134](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2134) ([@RyanQuey](https://github.com/RyanQuey))
- update k8 version for DO to currently available version [#2133](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2133) ([@RyanQuey](https://github.com/RyanQuey))
- Include customisation under "Administrator Guide" [#2123](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2123) ([@manics](https://github.com/manics))
- Update index.md [#2122](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2122) ([@rommeld](https://github.com/rommeld))
- Correct the AKS GPU Link in documentation [#2109](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2109) ([@jabbera](https://github.com/jabbera))
- Update postgres db url dialect in schema docs [#2105](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2105) ([@mriedem](https://github.com/mriedem))
- Don't hard-code an old tag in customizing/user-environment.md [#2090](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2090) ([@manics](https://github.com/manics))
- [DOC] Satisfy linkcheck [#2080](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2080) ([@minrk](https://github.com/minrk))
- Fix spawner env injection example. [#2062](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2062) ([@danielballan](https://github.com/danielballan))
- update a markdown syntax error [#2058](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2058) ([@yobome](https://github.com/yobome))
- docs: helm3 compliance, avoid specification of chart versions [#2054](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2054) ([@consideRatio](https://github.com/consideRatio))
- doc: Update installation docs to refer to current latest version [#2040](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2040) ([@spenczar](https://github.com/spenczar))
- docs: package chart specific README.md with the chart [#2035](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2035) ([@consideRatio](https://github.com/consideRatio))
- values.schema.json ships with chart and configuration reference now covers all options [#2033](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2033) ([@consideRatio](https://github.com/consideRatio))
- Fix schema.yaml jsonschema syntax errors [#2031](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2031) ([@consideRatio](https://github.com/consideRatio))

#### Continuous integration improvements

- ci: update publish/test-chart workflow triggers [#2212](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2212) ([@consideRatio](https://github.com/consideRatio))
- ci: print pip packages versions for debugging [#2210](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2210) ([@consideRatio](https://github.com/consideRatio))
- ci: vuln-scan update, less dedicated actions + warning instead of error [#2188](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2188) ([@consideRatio](https://github.com/consideRatio))
- ci: fix permissions of PR creating action [#2186](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2186) ([@consideRatio](https://github.com/consideRatio))
- docs/ci: run template tests against least known supported helm version and document that version [#2181](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2181) ([@consideRatio](https://github.com/consideRatio))
- ci: accept 1 pod restart but not 2, test against k8s 1.21 [#2169](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2169) ([@consideRatio](https://github.com/consideRatio))
- ci: precautions for security, update github_token permissions, pin actions [#2163](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2163) ([@consideRatio](https://github.com/consideRatio))
- ci: update network tests as jupyter.org IPs changed [#2162](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2162) ([@consideRatio](https://github.com/consideRatio))
- ci: Set author and pin SHA in vuln-scan workflow PR [#2153](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2153) ([@manics](https://github.com/manics))
- publish workflow: build amd64 and arm64 prerequisites added [#2144](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2144) ([@consideRatio](https://github.com/consideRatio))
- docs/ci: revert docutils pin, myst-parser fixed issue [#2141](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2141) ([@consideRatio](https://github.com/consideRatio))
- docs: fix rtd build by pinning docutils [#2140](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2140) ([@consideRatio](https://github.com/consideRatio))
- ci: increase test timeout for test reliability [#2083](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2083) ([@consideRatio](https://github.com/consideRatio))
- ci: stop accepting test failures in k8s 1.20 [#2060](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2060) ([@consideRatio](https://github.com/consideRatio))
- vuln-scan: fix all fixable vulns, and bugfix automation, and bump singleuser-sample [#2052](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2052) ([@consideRatio](https://github.com/consideRatio))
- ci: fix Chart.yaml annotations for artifacthub.io image scanning [#2049](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2049) ([@consideRatio](https://github.com/consideRatio))
- ci: install pyyaml before publishing to generate json schema [#2037](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2037) ([@consideRatio](https://github.com/consideRatio))
- ci: use jupyterhub/action-k8s-await-workloads [#2021](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2021) ([@consideRatio](https://github.com/consideRatio))
- ci: stop using --long as chartpress 1.0.0 makes it not needed [#2018](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2018) ([@consideRatio](https://github.com/consideRatio))
- ci: use yq to parse version from Chart.yaml and save ~30 seconds [#2017](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2017) ([@consideRatio](https://github.com/consideRatio))
- ci: accept k8s 1.20 failures until 1.20.3 is out [#2004](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/2004) ([@consideRatio](https://github.com/consideRatio))

#### Contributors to this release

([GitHub contributors page for this release](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/graphs/contributors?from=2021-01-15&to=2021-05-28&type=c))

[@agnewp](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aagnewp+updated%3A2021-01-15..2021-05-28&type=Issues) | [@bbockelm](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Abbockelm+updated%3A2021-01-15..2021-05-28&type=Issues) | [@betatim](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Abetatim+updated%3A2021-01-15..2021-05-28&type=Issues) | [@choldgraf](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acholdgraf+updated%3A2021-01-15..2021-05-28&type=Issues) | [@consideRatio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AconsideRatio+updated%3A2021-01-15..2021-05-28&type=Issues) | [@damianavila](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adamianavila+updated%3A2021-01-15..2021-05-28&type=Issues) | [@danielballan](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adanielballan+updated%3A2021-01-15..2021-05-28&type=Issues) | [@dependabot](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adependabot+updated%3A2021-01-15..2021-05-28&type=Issues) | [@dhirschfeld](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adhirschfeld+updated%3A2021-01-15..2021-05-28&type=Issues) | [@github-actions](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Agithub-actions+updated%3A2021-01-15..2021-05-28&type=Issues) | [@jabbera](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajabbera+updated%3A2021-01-15..2021-05-28&type=Issues) | [@jgwerner](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajgwerner+updated%3A2021-01-15..2021-05-28&type=Issues) | [@kafonek](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Akafonek+updated%3A2021-01-15..2021-05-28&type=Issues) | [@manics](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amanics+updated%3A2021-01-15..2021-05-28&type=Issues) | [@meeseeksmachine](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ameeseeksmachine+updated%3A2021-01-15..2021-05-28&type=Issues) | [@mhwasil](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amhwasil+updated%3A2021-01-15..2021-05-28&type=Issues) | [@michzimny](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amichzimny+updated%3A2021-01-15..2021-05-28&type=Issues) | [@MickeyShnaiderman-RecoLabs](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AMickeyShnaiderman-RecoLabs+updated%3A2021-01-15..2021-05-28&type=Issues) | [@minrk](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aminrk+updated%3A2021-01-15..2021-05-28&type=Issues) | [@mriedem](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amriedem+updated%3A2021-01-15..2021-05-28&type=Issues) | [@NerdSec](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ANerdSec+updated%3A2021-01-15..2021-05-28&type=Issues) | [@pcfens](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Apcfens+updated%3A2021-01-15..2021-05-28&type=Issues) | [@pvanliefland](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Apvanliefland+updated%3A2021-01-15..2021-05-28&type=Issues) | [@remche](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aremche+updated%3A2021-01-15..2021-05-28&type=Issues) | [@roelbaz](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aroelbaz+updated%3A2021-01-15..2021-05-28&type=Issues) | [@rommeld](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Arommeld+updated%3A2021-01-15..2021-05-28&type=Issues) | [@RyanQuey](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ARyanQuey+updated%3A2021-01-15..2021-05-28&type=Issues) | [@spenczar](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aspenczar+updated%3A2021-01-15..2021-05-28&type=Issues) | [@support](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asupport+updated%3A2021-01-15..2021-05-28&type=Issues) | [@thomasv314](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Athomasv314+updated%3A2021-01-15..2021-05-28&type=Issues) | [@tkislan](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Atkislan+updated%3A2021-01-15..2021-05-28&type=Issues) | [@willingc](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Awillingc+updated%3A2021-01-15..2021-05-28&type=Issues) | [@yobome](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ayobome+updated%3A2021-01-15..2021-05-28&type=Issues) | [@yuvipanda](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ayuvipanda+updated%3A2021-01-15..2021-05-28&type=Issues)

## [0.11]

### [0.11.1] - 2021-01-15

This release fixes a regression in the Ingress resource and a bump of
jupyterhub-nativeauthenticator from 0.0.6 to 0.0.7.

#### Bugs fixed

- fix: fix of ingress regression and improved testing ([@consideRatio](https://github.com/consideRatio))

#### Maintenance and upkeep improvements

- build(deps): bump jupyterhub-nativeauthenticator from 0.0.6 to 0.0.7 in /images/hub [#1988](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1988) ([@dependabot](https://github.com/dependabot))

### [0.11.0] - 2021-01-14

Please read the _security announcement_ and the _breaking changes_ below, and
also note that this is the last release supporting Helm 2 and k8s versions lower
than 1.16.

#### Security announcement

This release contains the patched version of jupyterhub/oauthenticator which
contained a security issue that influenced version 0.10.0 - 0.10.5 (but not
0.10.6) of this Helm chart.

Please don't use versions 0.10.0 - 0.10.5 and upgrade to 0.10.6 or later. If you
are using OAuthenticator, please check your list of users and [delete any
unauthorized users who may have logged in during usage of version 0.10.0 -
10.10.5](https://jupyterhub.readthedocs.io/en/1.2.2/getting-started/authenticators-users-basics.html#add-or-remove-users-from-the-hub).

See [the published security
advisory](https://github.com/jupyterhub/oauthenticator/security/advisories/GHSA-384w-5v3f-q499)
for more information, and refer to [this forum
post](https://discourse.jupyter.org/t/collaboration-to-mitigate-issues-of-security-advisory-in-oauthenticator/7520)
to share insights that can be useful to others.

#### Breaking changes

- **`auth` configuration moves to `hub.config` - [#1943](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1943)**

  Helm chart configuration under `auth` is now no longer supported. If you make
  a `helm upgrade` using `auth` configuration, the upgrade will abort before any
  changes are made to the k8s cluster and you will be provided with the
  equivalent configuration using the new system under `hub.config`.

  By default, the printed equivalent configuration is censored as it can contain
  secrets that shouldn't be exposed. By passing `--global.safeToShowValues=true`
  you can get an uncensored version.

- **Pod Disruption Budget's now disabled by default - [#1938](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1938)**

  A Pod Disruption Budget (PDB) for the hub and proxy pods were created by
  default before, but will by default not be created from now on. The
  consequence of this is that the pods now can get _evicted_.

  Eviction will happen as part of `kubectl drain` on a node, or by a cluster
  autoscaler removing a underused node.

#### Notable dependencies updated

| Dependency                                                                       | Version in 0.10.6 | Version in 0.11.0 | Changelog link                                                                            | Note                               |
| -------------------------------------------------------------------------------- | ----------------- | ----------------- | ----------------------------------------------------------------------------------------- | ---------------------------------- |
| [jupyterhub](https://github.com/jupyterhub/jupyterhub)                           | 1.2.2             | 1.3.0             | [Changelog](https://jupyterhub.readthedocs.io/en/stable/changelog.html)                   | Run in the `hub` pod               |
| [kubespawner](https://github.com/jupyterhub/kubespawner)                         | 0.14.1            | 0.15.0            | [Changelog](https://jupyterhub-kubespawner.readthedocs.io/en/latest/changelog.html)       | Run in the `hub` pod               |
| [oauthenticator](https://github.com/jupyterhub/oauthenticator)                   | 0.12.1            | 0.12.3            | [Changelog](https://oauthenticator.readthedocs.io/en/latest/changelog.html)               | Run in the `hub` pod               |
| [ldapauthenticator](https://github.com/jupyterhub/ldapauthenticator)             | 1.3.2             | 1.3.2             | [Changelog](https://github.com/jupyterhub/ldapauthenticator/blob/HEAD/CHANGELOG.md)       | Run in the `hub` pod               |
| [ltiauthenticator](https://github.com/jupyterhub/ltiauthenticator)               | 0.4.0             | 1.0.0             | [Changelog](https://github.com/jupyterhub/ltiauthenticator/blob/HEAD/CHANGELOG.md)        | Run in the `hub` pod               |
| [nativeauthenticator](https://github.com/jupyterhub/nativeauthenticator)         | 0.0.6             | 0.0.6             | [Changelog](https://github.com/jupyterhub/nativeauthenticator/blob/HEAD/CHANGELOG.md)     | Run in the `hub` pod               |
| [jupyterhub-idle-culler](https://github.com/jupyterhub/jupyterhub-idle-culler)   | 1.0               | 1.0               | -                                                                                         | Run in the `hub` pod               |
| [configurable-http-proxy](https://github.com/jupyterhub/configurable-http-proxy) | 4.2.2             | 4.2.2             | [Changelog](https://github.com/jupyterhub/configurable-http-proxy/blob/HEAD/CHANGELOG.md) | Run in the `proxy` pod             |
| [traefik](https://github.com/traefik/traefik)                                    | v2.3.2            | v2.3.7            | [Changelog](https://github.com/traefik/traefik/blob/HEAD/CHANGELOG.md)                    | Run in the `autohttps` pod         |
| [kube-scheduler](https://github.com/kubernetes/kube-scheduler)                   | v1.19.2           | v1.19.7           | -                                                                                         | Run in the `user-scheduler` pod(s) |

For a detailed list of how Python dependencies have change in the `hub` Pod's Docker image, inspect the [images/hub/requirements.txt](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/blob/HEAD/images/hub/requirements.txt) file.

#### Enhancements made

- ci: automatically scan and patch our images for known vulnerabilities [#1942](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1942) ([@consideRatio](https://github.com/consideRatio))

#### Bugs fixed

- Fix failure to block insecure metadata server IP [#1950](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1950) ([@consideRatio](https://github.com/consideRatio))
- Enable hub livenessProbe by default and relax hub/proxy probes [#1941](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1941) ([@consideRatio](https://github.com/consideRatio))
- Disable PDBs for hub/proxy, add PDB for autohttps, and relocate config proxy.pdb to proxy.chp.pdb [#1938](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1938) ([@consideRatio](https://github.com/consideRatio))

#### Maintenance and upkeep improvements

- dep: bump traefik (autohttps pod) from v2.3.2 to v2.3.7 [#1986](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1986) ([@consideRatio](https://github.com/consideRatio))
- k8s: update Ingress / PriorityClass apiVersions [#1983](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1983) ([@consideRatio](https://github.com/consideRatio))
- dep: bump kube-scheduler from 1.19.2 to 1.19.7 [#1981](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1981) ([@consideRatio](https://github.com/consideRatio))
- singleuser-sample image: bump jupyerhub to 1.3.0 [#1961](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1961) ([@consideRatio](https://github.com/consideRatio))
- build(deps): bump jupyterhub from 1.2.2 to 1.3.0 in /images/hub [#1959](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1959) ([@dependabot](https://github.com/dependabot))
- Vulnerability patch in network-tools [#1947](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1947) ([@github-actions](https://github.com/github-actions))
- hub image: bump jupyterhub-kubespawner from 0.14.1 to 0.15.0 in /images/hub [#1946](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1946) ([@dependabot](https://github.com/dependabot))
- Helm template linting - remove extra space [#1945](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1945) ([@DArtagan](https://github.com/DArtagan))
- hub image: bump jupyterhub-hmacauthenticator from 0.1 to 1.0 in /images/hub [#1944](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1944) ([@dependabot](https://github.com/dependabot))
- add hub.config passthrough and use it for all auth config [#1943](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1943) ([@consideRatio](https://github.com/consideRatio))
- hub image: bump ltiauthenticator to 1.0.0 and oauthenticator to 0.12.3 [#1932](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1932) ([@consideRatio](https://github.com/consideRatio))
- bump oauthenticator to 0.12.2 [#1925](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1925) ([@minrk](https://github.com/minrk))

#### Documentation improvements

- docs: 100% MyST Markdown [#1974](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1974) ([@consideRatio](https://github.com/consideRatio))
- docs: remove unused config of esoteric sphinx builders [#1969](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1969) ([@consideRatio](https://github.com/consideRatio))
- docs: fix the dynamically set version of chart/jupyterhub [#1968](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1968) ([@consideRatio](https://github.com/consideRatio))
- Adds a linebreak [#1957](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1957) ([@arokem](https://github.com/arokem))
- Fixes link to authentication guide from user-management.md [#1955](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1955) ([@arokem](https://github.com/arokem))
- Adds cli command for finding the k8s version on Azure. [#1954](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1954) ([@arokem](https://github.com/arokem))

#### Continuous integration improvements

- ci: accept helm lint --strict failure, but ensure GitHub UI warns [#1985](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1985) ([@consideRatio](https://github.com/consideRatio))
- ci: replace kubeval with helm template --validate [#1984](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1984) ([@consideRatio](https://github.com/consideRatio))
- ci: use extracted github action for namespace report [#1980](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1980) ([@consideRatio](https://github.com/consideRatio))
- ci: add another upgrade test and provide a template rendering diff [#1978](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1978) ([@consideRatio](https://github.com/consideRatio))
- ci: linkcheck rework: avoid duplicated build, add colors, make it fail loud [#1976](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1976) ([@consideRatio](https://github.com/consideRatio))
- ci: run tests conditionally on changed paths [#1975](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1975) ([@consideRatio](https://github.com/consideRatio))
- ci: use k3s-channel instead of k3s-version [#1973](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1973) ([@consideRatio](https://github.com/consideRatio))
- ci: full_namespace_report improvements for restartCount > 0 [#1971](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1971) ([@consideRatio](https://github.com/consideRatio))
- pre-commit: chartpress --reset on Chart.yaml/values.yaml changes [#1970](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1970) ([@consideRatio](https://github.com/consideRatio))
- ci: full_namespace_report function improved [#1967](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1967) ([@consideRatio](https://github.com/consideRatio))
- ci: dependabot, add notes to config, fix singleuser-sample config [#1966](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1966) ([@consideRatio](https://github.com/consideRatio))
- ci: let pytest keep running even if one test has failed [#1965](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1965) ([@consideRatio](https://github.com/consideRatio))
- ci: help dependabot only trigger one set of tests [#1964](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1964) ([@consideRatio](https://github.com/consideRatio))
- ci: remove yaml anchors from dependabot config [#1963](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1963) ([@consideRatio](https://github.com/consideRatio))
- ci: Test against k8s 1.20 [#1956](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1956) ([@consideRatio](https://github.com/consideRatio))
- ci: vuln scan fix [#1953](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1953) ([@consideRatio](https://github.com/consideRatio))
- ci: let dependabot update used GitHub action's versions [#1949](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1949) ([@consideRatio](https://github.com/consideRatio))
- ci: let dependabot update jupyterhub, replace JUPYTERHUB_VERSION with PIP_OVERRIDES [#1948](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1948) ([@consideRatio](https://github.com/consideRatio))
- ci: automatically scan and patch our images for known vulnerabilities [#1942](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1942) ([@consideRatio](https://github.com/consideRatio))
- ci: action-k3s-helm was moved to jupyterhub [#1939](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1939) ([@manics](https://github.com/manics))
- ci: fix of intermittent netpol test failure [#1933](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1933) ([@consideRatio](https://github.com/consideRatio))

#### Contributors to this release

([GitHub contributors page for this release](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/graphs/contributors?from=2020-11-27&to=2021-01-13&type=c))

[@arokem](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aarokem+updated%3A2020-11-27..2021-01-13&type=Issues) | [@betatim](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Abetatim+updated%3A2020-11-27..2021-01-13&type=Issues) | [@chicocvenancio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Achicocvenancio+updated%3A2020-11-27..2021-01-13&type=Issues) | [@choldgraf](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acholdgraf+updated%3A2020-11-27..2021-01-13&type=Issues) | [@consideRatio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AconsideRatio+updated%3A2020-11-27..2021-01-13&type=Issues) | [@DArtagan](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ADArtagan+updated%3A2020-11-27..2021-01-13&type=Issues) | [@dependabot](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adependabot+updated%3A2020-11-27..2021-01-13&type=Issues) | [@github-actions](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Agithub-actions+updated%3A2020-11-27..2021-01-13&type=Issues) | [@manics](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amanics+updated%3A2020-11-27..2021-01-13&type=Issues) | [@minrk](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aminrk+updated%3A2020-11-27..2021-01-13&type=Issues) | [@naterush](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Anaterush+updated%3A2020-11-27..2021-01-13&type=Issues) | [@rokroskar](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Arokroskar+updated%3A2020-11-27..2021-01-13&type=Issues) | [@yuvipanda](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ayuvipanda+updated%3A2020-11-27..2021-01-13&type=Issues)

## [0.10]

### [0.10.6] - 2020-11-27

This release is a security workaround for jupyterhub/oauthenticator described in https://github.com/jupyterhub/oauthenticator/security/advisories/GHSA-384w-5v3f-q499.

Please don't use versions 0.10.0 - 0.10.5 and upgrade to 0.10.6 or later. If any users have been authorized during usage of 0.10.0 - 0.10.5 who should not have been, they must be deleted via the API or admin interface, [per the documentation](https://jupyterhub.readthedocs.io/en/1.2.2/getting-started/authenticators-users-basics.html#add-or-remove-users-from-the-hub).

### [0.10.5] - 2020-11-27

This release bumps the JupyterHub version from 1.2.1 to 1.2.2. See [JupyterHub's
changelog](https://jupyterhub.readthedocs.io/en/stable/changelog.html?highlight=changelog)
for more information.

## Bugs fixed

- image: bump JupyterHub to 1.2.2 from 1.2.1 for bugfixes [#1924](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1924) ([@consideRatio](https://github.com/consideRatio))

#### Maintenance and upkeep improvements

- pre-commit autoformat: black and beautysh [#1920](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1920) ([@manics](https://github.com/manics))

#### Contributors to this release

([GitHub contributors page for this release](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/graphs/contributors?from=2020-11-21&to=2020-11-27&type=c))

[@consideRatio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AconsideRatio+updated%3A2020-11-21..2020-11-27&type=Issues) | [@manics](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amanics+updated%3A2020-11-21..2020-11-27&type=Issues)

### [0.10.4] - 2020-11-21

A patch release to patch a bug in the dependency oauthenticator that made users
have their servers spawn before they had the chance to choose a server
configuration if c.KubeSpawner.profile_list was configured.

#### Bugs fixed

- hub image: bump oauthenticator and prometheus-client [#1918](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1918) ([@consideRatio](https://github.com/consideRatio))

#### Contributors to this release

([GitHub contributors page for this release](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/graphs/contributors?from=2020-11-16&to=2020-11-21&type=c))

[@consideRatio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AconsideRatio+updated%3A2020-11-16..2020-11-21&type=Issues) | [@manics](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amanics+updated%3A2020-11-16..2020-11-21&type=Issues)

### [0.10.3] - 2020-11-16

This release contain minor enhancements and bugfix in a dependency that could
have resulted in unwanted hub pod restarts. Helm 2.16+ has been explicitly
required, which it should had been already in 0.10.0.

Please be aware that Helm 2 has reached its end of life and won't get any
security patches any more. We aim to drop support of Helm 2 soon to be able to
rely on Helm 3 features.

#### Enhancements made

- Configurable resource requests for hook-image-awaiter [#1906](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1906) ([@consideRatio](https://github.com/consideRatio))
- Add use_lookup_dn_username parameter for LDAP [#1903](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1903) ([@JarnoRFB](https://github.com/JarnoRFB))
- Allow exposing extra ports in autohttps/traefik deployment [#1901](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1901) ([@yuvipanda](https://github.com/yuvipanda))
- prePuller.extraTolerations added for the image-puller daemonsets [#1883](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1883) ([@jerkern](https://github.com/jerkern))

## Bugs fixed

- hub image: kubernetes 12.0.1, nativeauth 0.0.6, tornado 6.1 [#1912](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1912) ([@consideRatio](https://github.com/consideRatio))

#### Maintenance and upkeep improvements

- hub image: kubernetes 12.0.1, nativeauth 0.0.6, tornado 6.1 [#1912](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1912) ([@consideRatio](https://github.com/consideRatio))
- Require helm v2.16.0 explicitly and minor CI updates [#1911](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1911) ([@consideRatio](https://github.com/consideRatio))
- CI: make upgrades more robust and skip 1m precautionary sleep [#1904](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1904) ([@consideRatio](https://github.com/consideRatio))
- CI: publish with helpful commit message [#1898](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1898) ([@consideRatio](https://github.com/consideRatio))
- Replace Travis with GitHub workflow [#1896](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1896) ([@manics](https://github.com/manics))
- Avoid harmless error in user-scheduler [#1895](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1895) ([@consideRatio](https://github.com/consideRatio))
- removal: contributors script [#1669](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1669) ([@consideRatio](https://github.com/consideRatio))

#### Documentation improvements

- Update jupyterhub extension documentation to specify namespace [#1909](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1909) ([@plant99](https://github.com/plant99))
- DOCS: Adding note on limit to guarantee ratio [#1897](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1897) ([@choldgraf](https://github.com/choldgraf))
- Changelog for 0.10.2 [#1893](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1893) ([@consideRatio](https://github.com/consideRatio))

#### Contributors to this release

([GitHub contributors page for this release](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/graphs/contributors?from=2020-10-30&to=2020-11-15&type=c))

[@betatim](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Abetatim+updated%3A2020-10-30..2020-11-15&type=Issues) | [@choldgraf](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acholdgraf+updated%3A2020-10-30..2020-11-15&type=Issues) | [@consideRatio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AconsideRatio+updated%3A2020-10-30..2020-11-15&type=Issues) | [@JarnoRFB](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AJarnoRFB+updated%3A2020-10-30..2020-11-15&type=Issues) | [@jerkern](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajerkern+updated%3A2020-10-30..2020-11-15&type=Issues) | [@manics](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amanics+updated%3A2020-10-30..2020-11-15&type=Issues) | [@minrk](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aminrk+updated%3A2020-10-30..2020-11-15&type=Issues) | [@plant99](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aplant99+updated%3A2020-10-30..2020-11-15&type=Issues) | [@tirumerla](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Atirumerla+updated%3A2020-10-30..2020-11-15&type=Issues) | [@yuvipanda](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ayuvipanda+updated%3A2020-10-30..2020-11-15&type=Issues)

### [0.10.2] - 2020-10-30

A bugfix release to add securityContext configuration on _all_ the containers in the image-puller pods, which can be needed when a k8s PodSecurityPolicy is forcing pods to startup as non-root users.

Note that whoever need to comply with a strict PodSecurityPolicy will also need to `--set singleuser.cloudMetadata.blockWithIptables=false`, but should read [this documentation](https://zero-to-jupyterhub.readthedocs.io/en/latest/administrator/security.html#audit-cloud-metadata-server-access) before doing so.

#### Bugs fixed

- Add securityContext to all image-puller pods' containers [#1892](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1892) ([@consideRatio](https://github.com/consideRatio))

#### Documentation improvements

- Changelog for 0.10.1 [#1890](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1890) ([@consideRatio](https://github.com/consideRatio))

#### Contributors to this release

([GitHub contributors page for this release](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/graphs/contributors?from=2020-10-30&to=2020-10-30&type=c))

[@consideRatio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AconsideRatio+updated%3A2020-10-30..2020-10-30&type=Issues) | [@jatinder91](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajatinder91+updated%3A2020-10-30..2020-10-30&type=Issues)

### [0.10.1] - 2020-10-30

A bugfix release simply updating JupyterHub to 1.2.1. JupyterHub 1.2.1 fixes a regression related to registered JupyterHub services using the `oauth_no_confirm` configuration.

#### Bugs fixed

- Use JupyterHub 1.2.1 - fixes regression for external JH services' oauth_no_confirm config [#1889](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1889) ([@minrk](https://github.com/minrk))

#### Maintenance and upkeep improvements

- Fix CI that broke as assumptions changed about latest published version [#1887](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1887) ([@consideRatio](https://github.com/consideRatio))

#### Documentation improvements

- Update changelog for 0.10.0 release [#1886](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1886) ([@consideRatio](https://github.com/consideRatio))

#### Contributors to this release

([GitHub contributors page for this release](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/graphs/contributors?from=2020-10-29&to=2020-10-30&type=c))

[@consideRatio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AconsideRatio+updated%3A2020-10-29..2020-10-30&type=Issues) | [@minrk](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aminrk+updated%3A2020-10-29..2020-10-30&type=Issues)

### [0.10.0] - 2020-10-29

This release makes the deployment more robust, and enhances users ability to
configure the Helm chart in general. Some defaults have been changed allowing
the Helm chart to easier comply with PodSecurityPolicies by default.

#### Breaking changes:

- Anyone relying on configuration in the `proxy.https` section are now
  explicitly required to set `proxy.https.enabled` to `true`.

- Anyone using `hub.imagePullSecret` or `singleuser.imagePullSecret` should now
  instead use the chart wide `imagePullSecret` with the same syntax which will
  be helping all the JupyterHub pod's get images from a private image registry.
  For more information, see [the configuration
  reference](https://zero-to-jupyterhub.readthedocs.io/en/latest/resources/reference.html#imagepullsecret).

- Predefined Kubernetes
  [NetworkPolicies](https://kubernetes.io/docs/concepts/services-networking/network-policies/)
  are now created by default, explicitly describing allowed incoming (_ingress_)
  and outgoing (_egress_) network communication for the hub, proxy, and user
  pods. These `NetworkPolicy` resources are very permissive on the outgoing
  traffic (egress), but is limiting the incoming traffic to what is known to be
  needed.

  Note that these NetworkPolicies only influence network communication in a
  Kubernetes cluster if a NetworkPolicy controller enforce them, such as Calico.

  Also note that if network policies are enforced, you can safely stop actively
  blocking access to so called cloud metadata servers for the user pods by
  setting `singleuser.cloudMetadata.blockWithIptables=false`.

  See the [security
  documentation](https://zero-to-jupyterhub.readthedocs.io/en/latest/administrator/security.html#kubernetes-network-policies)
  and the [configuration
  reference](https://zero-to-jupyterhub.readthedocs.io/en/latest/resources/reference.html#proxy-chp-networkpolicy)
  for more details.

- The Helm chart configuration `proxy.networkPolicy` has been removed,
  `proxy.chp.networkPolicy` (proxy pod) and `proxy.traefik.networkPolicy`
  (autohttps pod) must be used instead.

- The Helm chart configuration `proxy.containerSecurityContext` is renamed to
  `proxy.chp.containerSecurityContext`.

- The k8s ConfigMap `hub-config` k8s Secret `hub-secret` are now merged into
  `hub-secret`, which will affect anyone who use the `hub.existingSecret`
  option.

#### Release highlights

- **Environment variables in pods with K8S config**. An ability to configure environment variables in pods with a k8s native syntax
  has been added. This allows you to reference and mount a field in a k8s Secret
  as an environment variable for example. For more information, read [about
  extraEnv](https://zero-to-jupyterhub.readthedocs.io/en/latest/resources/reference.html#singleuser-extraenv)
  in the configuration reference.
- **Configure secrets for all pods via the helm chart**. imagePullSecrets for all the pods in the Helm chart can now be configured
  chart wide. See the configuration reference about
  [imagePullSecret](https://zero-to-jupyterhub.readthedocs.io/en/latest/resources/reference.html#imagepullsecret)
  and
  [imagePullSecrets](https://zero-to-jupyterhub.readthedocs.io/en/latest/resources/reference.html#imagepullsecrets)
  for more details.
- **Pod security is easier to use and configure**. Deploying the Helm chart in a cluster with a PodSecurityPolicy active is now
  easier, because the pods' containers now have `securityContext` set on them to
  run with relatively low permissions which are also configurable if needed.
- **More reliable TLS certificates**. The `autohttps` pod that is running to acquire TLS certificates if
  `proxy.https.type=letsencrypt` is now more reliably acquiring certificates. If
  you currently have such issue, do `kubectl delete deploy/autohttps` and
  `kubectl delete secret proxy-public-tls-acme` and then deploy the Helm chart
  again with `helm upgrade`.

#### Notable dependencies updated

| Dependency                                                                       | Version in previous release | Version in this release | Changelog link                                                                            | Note                               |
| -------------------------------------------------------------------------------- | --------------------------- | ----------------------- | ----------------------------------------------------------------------------------------- | ---------------------------------- |
| [jupyterhub](https://github.com/jupyterhub/jupyterhub)                           | 1.1.0                       | 1.2.0                   | [Changelog](https://jupyterhub.readthedocs.io/en/stable/changelog.html)                   | Run in the `hub` pod               |
| [kubespawner](https://github.com/jupyterhub/kubespawner)                         | 0.11.1                      | 0.14.1                  | [Changelog](https://jupyterhub-kubespawner.readthedocs.io/en/latest/changelog.html)       | Run in the `hub` pod               |
| [oauthenticator](https://github.com/jupyterhub/oauthenticator)                   | 0.11.0                      | 0.12.0                  | [Changelog](https://oauthenticator.readthedocs.io/en/latest/changelog.html)               | Run in the `hub` pod               |
| [ldapauthenticator](https://github.com/jupyterhub/ldapauthenticator)             | 1.3.0                       | 1.3.2                   | [Changelog](https://github.com/jupyterhub/ldapauthenticator/blob/HEAD/CHANGELOG.md)       | Run in the `hub` pod               |
| [ltiauthenticator](https://github.com/jupyterhub/ltiauthenticator)               | 0.4.0                       | 0.4.0                   | [Changelog](https://github.com/jupyterhub/ltiauthenticator/blob/HEAD/CHANGELOG.md)        | Run in the `hub` pod               |
| [nativeauthenticator](https://github.com/jupyterhub/nativeauthenticator)         | 0.0.5                       | 0.0.5                   | [Changelog](https://github.com/jupyterhub/nativeauthenticator/blob/HEAD/CHANGELOG.md)     | Run in the `hub` pod               |
| [jupyterhub-idle-culler](https://github.com/jupyterhub/jupyterhub-idle-culler)   | -                           | v1.0                    | -                                                                                         | Run in the `hub` pod               |
| [configurable-http-proxy](https://github.com/jupyterhub/configurable-http-proxy) | 4.2.1                       | 4.2.2                   | [Changelog](https://github.com/jupyterhub/configurable-http-proxy/blob/HEAD/CHANGELOG.md) | Run in the `proxy` pod             |
| [traefik](https://github.com/traefik/traefik)                                    | v2.1                        | v2.3.2                  | [Changelog](https://github.com/traefik/traefik/blob/HEAD/CHANGELOG.md)                    | Run in the `autohttps` pod         |
| [kube-scheduler](https://github.com/kubernetes/kube-scheduler)                   | v1.13.12                    | v1.19.2                 | -                                                                                         | Run in the `user-scheduler` pod(s) |

For a detailed list of how Python dependencies have change in the `hub` Pod's
Docker image, inspect the [images/hub/requirements.txt](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/blob/HEAD/images/hub/requirements.txt) file.

#### Enhancements made

- Allow adding extra labels to the traefik pod [#1862](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1862) ([@yuvipanda](https://github.com/yuvipanda))
- Add proxy.service.extraPorts to add ports to the k8s Service proxy-public [#1852](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1852) ([@yuvipanda](https://github.com/yuvipanda))
- netpol: allowedIngressPorts and interNamespaceAccessLabels config added with defaults retaining 0.9.1 current behavior [#1842](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1842) ([@consideRatio](https://github.com/consideRatio))
- hub.command and hub.args configuration added [#1840](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1840) ([@cbanek](https://github.com/cbanek))
- Add nodeSelector and tolerations config for all pods of Helm chart [#1827](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1827) ([@stevenstetzler](https://github.com/stevenstetzler))
- Added config prePuller.pullProfileListImages [#1818](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1818) ([@consideRatio](https://github.com/consideRatio))
- Added config option: proxy.chp.extraCommandLineFlags [#1813](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1813) ([@consideRatio](https://github.com/consideRatio))
- Set container securityContext by default [#1798](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1798) ([@consideRatio](https://github.com/consideRatio))
- Support chart wide and pod specific config of imagePullSecrets [#1794](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1794) ([@consideRatio](https://github.com/consideRatio))
- Added proxy.chp.extraEnv and proxy.traefik.extraEnv configuration [#1784](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1784) ([@agrahamlincoln](https://github.com/agrahamlincoln))
- Remove memory / cpu limits for pre-puller [#1780](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1780) ([@yuvipanda](https://github.com/yuvipanda))
- Add additional liveness and readiness probe properties [#1767](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1767) ([@rmoe](https://github.com/rmoe))
- Minimal and explicit resource requests for image-puller pods [#1764](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1764) ([@consideRatio](https://github.com/consideRatio))
- hook-image-puller: -pod-scheduling-wait-duration flag added for reliability during helm upgrades [#1763](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1763) ([@consideRatio](https://github.com/consideRatio))
- Make continuous image puller pods evictable [#1762](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1762) ([@consideRatio](https://github.com/consideRatio))
- hub.extraEnv / singleuser.extraEnv in dict format to support k8s EnvVar spec [#1757](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1757) ([@consideRatio](https://github.com/consideRatio))
- Add config for hub/proxy/autohttps container's securityContext [#1708](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1708) ([@mriedem](https://github.com/mriedem))
- Add annotations to image puller pods [#1702](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1702) ([@duongnt](https://github.com/duongnt))
- fix: intentionally error on missing Let's Encrypt contact email configuration [#1701](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1701) ([@consideRatio](https://github.com/consideRatio))
- Add services API tokens in hub-secret [#1689](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1689) ([@betatim](https://github.com/betatim))
- Tweaking readiness/liveness probe: faster startup [#1671](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1671) ([@consideRatio](https://github.com/consideRatio))
- Tighten and flesh out networkpolicies [#1670](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1670) ([@consideRatio](https://github.com/consideRatio))
- DX: k3s/k3d instead of kind & CI: autohttps testing [#1664](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1664) ([@consideRatio](https://github.com/consideRatio))
- autohttps: instant secret-sync shutdown [#1659](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1659) ([@consideRatio](https://github.com/consideRatio))
- Use DNS names instead of IPv4 addresses to be IPv6 friendly [#1643](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1643) ([@stv0g](https://github.com/stv0g))
- autohttps: traefik's config now configurable and in YAML [#1636](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1636) ([@consideRatio](https://github.com/consideRatio))
- Feat: autohttps readinessProbe for quicker validated startup and shutdown [#1633](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1633) ([@consideRatio](https://github.com/consideRatio))
- switching to myst markdown in docs [#1628](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1628) ([@choldgraf](https://github.com/choldgraf))
- Bind proxy on IPv4 and IPv6 for dual stack support [#1624](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1624) ([@stv0g](https://github.com/stv0g))
- Do not hardcode IPv4 localhost address for IPv6 compatibility [#1623](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1623) ([@stv0g](https://github.com/stv0g))
- enable network policy by default [#1271](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1271) ([@minrk](https://github.com/minrk))
- Allow configuration of Kuberspawner's pod_name_template [#1144](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1144) ([@tmshn](https://github.com/tmshn))

#### Bugs fixed

- Bump KubeSpawner to 0.14.1 to fix a bug in 0.14.0 about image_pull_secrets [#1868](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1868) ([@consideRatio](https://github.com/consideRatio))
- netpol: allowedIngressPorts and interNamespaceAccessLabels config added with defaults retaining 0.9.1 current behavior [#1842](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1842) ([@consideRatio](https://github.com/consideRatio))
- user-scheduler: let image locality etc matter again [#1837](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1837) ([@consideRatio](https://github.com/consideRatio))
- Add retryable HTTP client to image-awaiter [#1830](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1830) ([@bleggett](https://github.com/bleggett))
- prePuller: fix recently introduced regression [#1817](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1817) ([@consideRatio](https://github.com/consideRatio))
- userScheduler: only render associated PDB resource if userScheduler itself is enabled [#1812](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1812) ([@consideRatio](https://github.com/consideRatio))
- Fix same functionality for proxy.traefik.extraEnv as other extraEnv [#1808](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1808) ([@consideRatio](https://github.com/consideRatio))
- Set container securityContext by default [#1798](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1798) ([@consideRatio](https://github.com/consideRatio))
- Relax hook-image-puller to make upgrades more reliable [#1787](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1787) ([@consideRatio](https://github.com/consideRatio))
- Updates to user-scheduler's coupling to the kube-scheduler binary [#1778](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1778) ([@consideRatio](https://github.com/consideRatio))
- https: Only expose port 443 if we really have HTTPS on [#1758](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1758) ([@yuvipanda](https://github.com/yuvipanda))
- jupyterhub existing image pull secret configuration load bug fixed [#1727](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1727) ([@mpolatcan](https://github.com/mpolatcan))
- fix: jupyterhub services without apiToken was ignored [#1721](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1721) ([@consideRatio](https://github.com/consideRatio))
- fix: autohttps cert acquisition stability fixed [#1719](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1719) ([@consideRatio](https://github.com/consideRatio))
- Enable the user scheduler to pay attention to CSI volume count [#1699](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1699) ([@rschroll](https://github.com/rschroll))
- secret-sync: selective write to secret / functional logs [#1678](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1678) ([@consideRatio](https://github.com/consideRatio))
- Tighten and flesh out networkpolicies [#1670](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1670) ([@consideRatio](https://github.com/consideRatio))

#### Maintenance and upkeep improvements

- use jupyterhub 1.2.0 [#1884](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1884) ([@minrk](https://github.com/minrk))
- Update Travis CI badge following .org -> com migration [#1882](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1882) ([@consideRatio](https://github.com/consideRatio))
- Remove globus_sdk and update various Docker images [#1881](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1881) ([@consideRatio](https://github.com/consideRatio))
- Complementary fix to recent aesthetics PR [#1878](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1878) ([@consideRatio](https://github.com/consideRatio))
- Helm template aesthetics fixes [#1877](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1877) ([@consideRatio](https://github.com/consideRatio))
- Added rediraffe redirecgtion [#1876](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1876) ([@NerdSec](https://github.com/NerdSec))
- Bump OAuthenticator to 0.12.0 from 0.11.0 [#1874](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1874) ([@consideRatio](https://github.com/consideRatio))
- Dependency: bump proxy pods image of CHP to 4.2.2 for bugfixes and docker image dependency updates [#1873](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1873) ([@consideRatio](https://github.com/consideRatio))
- Pin Traefik to v2.3.2 for cert acquisition stability [#1859](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1859) ([@consideRatio](https://github.com/consideRatio))
- CI: Add logs for autohttps pod on failure to debug intermittent issue [#1855](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1855) ([@consideRatio](https://github.com/consideRatio))
- CI: Try to improve test stability and autohttps cert aquisition reliability [#1854](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1854) ([@consideRatio](https://github.com/consideRatio))
- CI: bump k3s and helm versions [#1848](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1848) ([@consideRatio](https://github.com/consideRatio))
- Add dependabot config to update dependencies automatically [#1844](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1844) ([@jgwerner](https://github.com/jgwerner))
- try out jupyterhub 1.2.0b1 [#1841](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1841) ([@minrk](https://github.com/minrk))
- Remove unnecessary Dockerfile build step [#1833](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1833) ([@bleggett](https://github.com/bleggett))
- Add schema.yaml and validate.py to .helmignore [#1832](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1832) ([@consideRatio](https://github.com/consideRatio))
- CI: reorder ci jobs to provide relevant feedback quickly [#1828](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1828) ([@consideRatio](https://github.com/consideRatio))
- Revert recent removal of image-pulling related to cloudMetadata blocker [#1826](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1826) ([@consideRatio](https://github.com/consideRatio))
- Add maintainers / owners to register with Artifact Hub [#1820](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1820) ([@consideRatio](https://github.com/consideRatio))
- CI: fix RTD builds on push to master [#1816](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1816) ([@consideRatio](https://github.com/consideRatio))
- deprecation: warn when proxy.https is modified and proxy.https.enabled=true [#1807](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1807) ([@consideRatio](https://github.com/consideRatio))
- Soft deprecate singleuser.cloudMetadata.enabled in favor of blockWithIptables [#1805](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1805) ([@consideRatio](https://github.com/consideRatio))
- hub livenessProbe: bump from 1m to 3m delay before probes are sent [#1804](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1804) ([@consideRatio](https://github.com/consideRatio))
- hub image: bump kubespawner to 0.14.0 [#1802](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1802) ([@consideRatio](https://github.com/consideRatio))
- ci: bump helm to 3.3.2 and test with k8s 1.19 also [#1783](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1783) ([@consideRatio](https://github.com/consideRatio))
- user-scheduler: tweak modern configuration [#1782](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1782) ([@consideRatio](https://github.com/consideRatio))
- Update to newer version of 'pause' container [#1781](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1781) ([@yuvipanda](https://github.com/yuvipanda))
- Remove memory / cpu limits for pre-puller [#1780](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1780) ([@yuvipanda](https://github.com/yuvipanda))
- Updates to user-scheduler's coupling to the kube-scheduler binary [#1778](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1778) ([@consideRatio](https://github.com/consideRatio))
- hub: Switch base image to latest LTS [#1772](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1772) ([@yuvipanda](https://github.com/yuvipanda))
- CI: Add test for singleuser.extraEnv [#1769](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1769) ([@consideRatio](https://github.com/consideRatio))
- Bump KubeSpawner to 0.13.0 [#1768](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1768) ([@consideRatio](https://github.com/consideRatio))
- CI: always publish helm chart on push to master [#1765](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1765) ([@consideRatio](https://github.com/consideRatio))
- Bump traefik (autohttps pod) to v2.3 [#1756](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1756) ([@consideRatio](https://github.com/consideRatio))
- Update JupyterHub's python package dependencies [#1752](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1752) ([@jgwerner](https://github.com/jgwerner))
- Fix travis by pinning docker python package version [#1743](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1743) ([@chancez](https://github.com/chancez))
- update kubespawner to 0.12 [#1722](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1722) ([@minrk](https://github.com/minrk))
- k8s api compatibility: add conditional to ingress apiVersion [#1718](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1718) ([@davidsmf](https://github.com/davidsmf))
- Upgrade libc to patch vulnerability in hub img [#1715](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1715) ([@meneal](https://github.com/meneal))
- Autohttps reliability fix: bump traefik version [#1714](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1714) ([@consideRatio](https://github.com/consideRatio))
- k8s-hub img rebuild -> dependencies refrozen [#1713](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1713) ([@consideRatio](https://github.com/consideRatio))
- removing circleci [#1711](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1711) ([@choldgraf](https://github.com/choldgraf))
- Complexity reduction - combine passthrough values.yaml data in hub-config (k8s configmap) to hub-secret (k8s secret) [#1682](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1682) ([@consideRatio](https://github.com/consideRatio))
- secret-sync: selective write to secret / functional logs [#1678](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1678) ([@consideRatio](https://github.com/consideRatio))
- DX: k3s/k3d instead of kind & CI: autohttps testing [#1664](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1664) ([@consideRatio](https://github.com/consideRatio))
- cleanup: remove old deploy secret [#1661](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1661) ([@consideRatio](https://github.com/consideRatio))
- RTD build fix: get correct version of sphinx [#1658](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1658) ([@consideRatio](https://github.com/consideRatio))
- Force sphinx>=2,<3 for myst_parser [#1657](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1657) ([@consideRatio](https://github.com/consideRatio))
- Use idle culler from jupyterhub-idle-culler package [#1648](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1648) ([@yuvipanda](https://github.com/yuvipanda))
- Refactor: reference ports by name instead of repeating the number [#1645](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1645) ([@consideRatio](https://github.com/consideRatio))
- DX: refactor helm template [#1635](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1635) ([@consideRatio](https://github.com/consideRatio))
- CI: fix sphinx warnings turned into errors [#1634](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1634) ([@consideRatio](https://github.com/consideRatio))
- Dep: Bump deploy/autohttps's traefik to v2.2 [#1632](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1632) ([@consideRatio](https://github.com/consideRatio))
- DX: more recognizable port numbers [#1631](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1631) ([@consideRatio](https://github.com/consideRatio))

#### Documentation improvements

- Add back Helm chart badge for latest pre-release (alpha, beta) [#1879](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1879) ([@consideRatio](https://github.com/consideRatio))
- Added rediraffe redirecgtion [#1876](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1876) ([@NerdSec](https://github.com/NerdSec))
- docs: fix edit button, so it doesn't go to a 404 page [#1864](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1864) ([@consideRatio](https://github.com/consideRatio))
- Fix link to Hub23 docs [#1860](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1860) ([@sgibson91](https://github.com/sgibson91))
- Provide links to Hub23 deployment guide [#1850](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1850) ([@sgibson91](https://github.com/sgibson91))
- docs: clarify user-placeholder resource requests [#1835](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1835) ([@consideRatio](https://github.com/consideRatio))
- Change doc structure [#1825](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1825) ([@NerdSec](https://github.com/NerdSec))
- Remove mistakenly introduced artifact [#1824](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1824) ([@consideRatio](https://github.com/consideRatio))
- fixing broken links [#1823](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1823) ([@choldgraf](https://github.com/choldgraf))
- README.md: badges for the helm chart repo to go directly to the relevant view [#1815](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1815) ([@consideRatio](https://github.com/consideRatio))
- Docs: fix some sphinx warnings [#1796](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1796) ([@consideRatio](https://github.com/consideRatio))
- Fix legacy version in DigitalOcean Kubernetes setup doc [#1788](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1788) ([@subwaymatch](https://github.com/subwaymatch))
- Add terraform resources to the community resources section [#1776](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1776) ([@salvis2](https://github.com/salvis2))
- Docs: fixes to outdated links found by the linkchecker [#1770](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1770) ([@consideRatio](https://github.com/consideRatio))
- Leave a comment about where HUB*SERVICE*\* values come from [#1766](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1766) ([@mriedem](https://github.com/mriedem))
- Unindent lines to fix the bug in "Specify certificate through Secret resource" [#1755](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1755) ([@salvis2](https://github.com/salvis2))
- [Documentation] Authenticating with Auth0 [#1736](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1736) ([@asubb](https://github.com/asubb))
- Docs/schema.yaml patches [#1735](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1735) ([@rubdos](https://github.com/rubdos))
- Fix broken link to Jupyter contributor guide [#1729](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1729) ([@sgibson91](https://github.com/sgibson91))
- Fix link [#1728](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1728) ([@JarnoRFB](https://github.com/JarnoRFB))
- docs: myst-parser deprecation adjustment [#1723](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1723) ([@consideRatio](https://github.com/consideRatio))
- docs: fix linkcheck warning [#1720](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1720) ([@consideRatio](https://github.com/consideRatio))
- Docs: fix squeezed logo, broken links, and strip unused CSS and templates [#1710](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1710) ([@consideRatio](https://github.com/consideRatio))
- Add documentation to create a Kubernetes cluster on OVH [#1704](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1704) ([@jtpio](https://github.com/jtpio))
- DX: final touches on CONTRIBUTING.md [#1696](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1696) ([@consideRatio](https://github.com/consideRatio))
- Update Google auth to use a list for hosted_domain [#1695](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1695) ([@petebachant](https://github.com/petebachant))
- Simplify setting up JupyterLab as default [#1690](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1690) ([@yuvipanda](https://github.com/yuvipanda))
- Use --num-nodes instead of --size to resize gcloud cluster [#1688](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1688) ([@aculich](https://github.com/aculich))
- docs: fix broken links [#1687](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1687) ([@consideRatio](https://github.com/consideRatio))
- Change helm chart version in setup documentation [#1685](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1685) ([@ivanpokupec](https://github.com/ivanpokupec))
- Docs: assume usage of helm3 over deprecated helm2 [#1684](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1684) ([@GeorgianaElena](https://github.com/GeorgianaElena))
- removal: Vagrant for local dev [#1668](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1668) ([@consideRatio](https://github.com/consideRatio))
- docs: fixed links [#1666](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1666) ([@consideRatio](https://github.com/consideRatio))
- DX: k3s/k3d instead of kind & CI: autohttps testing [#1664](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1664) ([@consideRatio](https://github.com/consideRatio))
- Reference static ip docs [#1663](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1663) ([@GeorgianaElena](https://github.com/GeorgianaElena))
- Docs: remove too outdated cost-calculator [#1660](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1660) ([@consideRatio](https://github.com/consideRatio))
- Update create service principle command. [#1654](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1654) ([@superyaniv](https://github.com/superyaniv))
- proxy.service.type: Default is different from hub.service.type [#1647](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1647) ([@manics](https://github.com/manics))
- Fix user storage customization variable [#1640](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1640) ([@bibz](https://github.com/bibz))
- Fix broken links in the Reference documentation [#1639](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1639) ([@bibz](https://github.com/bibz))
- Update index.rst [#1629](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1629) ([@deinal](https://github.com/deinal))
- AWS documentation fixes [#1564](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1564) ([@metonymic-smokey](https://github.com/metonymic-smokey))
- add Auth0 configuration documentation [#1436](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1436) ([@philvarner](https://github.com/philvarner))

#### Contributors to this release

A huge warm thank you for the collaborative effort in this release! Below we
celebrate this specific GitHub repositories contributors, but we have reason to
be thankful to soo many other contributors in the projects we depend on! Thank
you everyone!

([GitHub contributors page for this release](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/graphs/contributors?from=2020-04-15&to=2020-10-29&type=c))

[@01100010011001010110010101110000](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3A01100010011001010110010101110000+updated%3A2020-04-15..2020-10-29&type=Issues) | [@ablekh](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aablekh+updated%3A2020-04-15..2020-10-29&type=Issues) | [@aculich](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aaculich+updated%3A2020-04-15..2020-10-29&type=Issues) | [@adi413](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aadi413+updated%3A2020-04-15..2020-10-29&type=Issues) | [@agrahamlincoln](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aagrahamlincoln+updated%3A2020-04-15..2020-10-29&type=Issues) | [@aguinaldoabbj](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aaguinaldoabbj+updated%3A2020-04-15..2020-10-29&type=Issues) | [@Aisuko](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AAisuko+updated%3A2020-04-15..2020-10-29&type=Issues) | [@akaszynski](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aakaszynski+updated%3A2020-04-15..2020-10-29&type=Issues) | [@albertmichaelj](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aalbertmichaelj+updated%3A2020-04-15..2020-10-29&type=Issues) | [@alexmorley](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aalexmorley+updated%3A2020-04-15..2020-10-29&type=Issues) | [@amanda-tan](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aamanda-tan+updated%3A2020-04-15..2020-10-29&type=Issues) | [@arpitsri3](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aarpitsri3+updated%3A2020-04-15..2020-10-29&type=Issues) | [@asubb](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aasubb+updated%3A2020-04-15..2020-10-29&type=Issues) | [@aydintd](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aaydintd+updated%3A2020-04-15..2020-10-29&type=Issues) | [@bebosudo](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Abebosudo+updated%3A2020-04-15..2020-10-29&type=Issues) | [@BertR](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ABertR+updated%3A2020-04-15..2020-10-29&type=Issues) | [@betatim](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Abetatim+updated%3A2020-04-15..2020-10-29&type=Issues) | [@betolink](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Abetolink+updated%3A2020-04-15..2020-10-29&type=Issues) | [@bibz](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Abibz+updated%3A2020-04-15..2020-10-29&type=Issues) | [@bleggett](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ableggett+updated%3A2020-04-15..2020-10-29&type=Issues) | [@cam72cam](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acam72cam+updated%3A2020-04-15..2020-10-29&type=Issues) | [@carat64](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acarat64+updated%3A2020-04-15..2020-10-29&type=Issues) | [@cbanek](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acbanek+updated%3A2020-04-15..2020-10-29&type=Issues) | [@cboettig](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acboettig+updated%3A2020-04-15..2020-10-29&type=Issues) | [@chancez](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Achancez+updated%3A2020-04-15..2020-10-29&type=Issues) | [@chicocvenancio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Achicocvenancio+updated%3A2020-04-15..2020-10-29&type=Issues) | [@choldgraf](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acholdgraf+updated%3A2020-04-15..2020-10-29&type=Issues) | [@chrisroat](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Achrisroat+updated%3A2020-04-15..2020-10-29&type=Issues) | [@clkao](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aclkao+updated%3A2020-04-15..2020-10-29&type=Issues) | [@conet](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aconet+updated%3A2020-04-15..2020-10-29&type=Issues) | [@consideRatio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AconsideRatio+updated%3A2020-04-15..2020-10-29&type=Issues) | [@craig-willis](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acraig-willis+updated%3A2020-04-15..2020-10-29&type=Issues) | [@cslovell](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Acslovell+updated%3A2020-04-15..2020-10-29&type=Issues) | [@dalonlobo](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adalonlobo+updated%3A2020-04-15..2020-10-29&type=Issues) | [@dalssaso](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adalssaso+updated%3A2020-04-15..2020-10-29&type=Issues) | [@danroliver](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adanroliver+updated%3A2020-04-15..2020-10-29&type=Issues) | [@DarkBlaez](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ADarkBlaez+updated%3A2020-04-15..2020-10-29&type=Issues) | [@davidsmf](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adavidsmf+updated%3A2020-04-15..2020-10-29&type=Issues) | [@deinal](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adeinal+updated%3A2020-04-15..2020-10-29&type=Issues) | [@dimm0](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adimm0+updated%3A2020-04-15..2020-10-29&type=Issues) | [@dkipping](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adkipping+updated%3A2020-04-15..2020-10-29&type=Issues) | [@dmpe](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Admpe+updated%3A2020-04-15..2020-10-29&type=Issues) | [@donotpush](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Adonotpush+updated%3A2020-04-15..2020-10-29&type=Issues) | [@duongnt](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aduongnt+updated%3A2020-04-15..2020-10-29&type=Issues) | [@easel](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aeasel+updated%3A2020-04-15..2020-10-29&type=Issues) | [@echarles](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aecharles+updated%3A2020-04-15..2020-10-29&type=Issues) | [@Edward-liang](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AEdward-liang+updated%3A2020-04-15..2020-10-29&type=Issues) | [@eric-leblouch](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aeric-leblouch+updated%3A2020-04-15..2020-10-29&type=Issues) | [@erinfry6](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aerinfry6+updated%3A2020-04-15..2020-10-29&type=Issues) | [@etheleon](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aetheleon+updated%3A2020-04-15..2020-10-29&type=Issues) | [@farzadz](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Afarzadz+updated%3A2020-04-15..2020-10-29&type=Issues) | [@filippo82](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Afilippo82+updated%3A2020-04-15..2020-10-29&type=Issues) | [@frankgu968](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Afrankgu968+updated%3A2020-04-15..2020-10-29&type=Issues) | [@frouzbeh](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Afrouzbeh+updated%3A2020-04-15..2020-10-29&type=Issues) | [@GeorgianaElena](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AGeorgianaElena+updated%3A2020-04-15..2020-10-29&type=Issues) | [@GergelyKalmar](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AGergelyKalmar+updated%3A2020-04-15..2020-10-29&type=Issues) | [@gsemet](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Agsemet+updated%3A2020-04-15..2020-10-29&type=Issues) | [@Guanzhou-Ke](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AGuanzhou-Ke+updated%3A2020-04-15..2020-10-29&type=Issues) | [@Gungo](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AGungo+updated%3A2020-04-15..2020-10-29&type=Issues) | [@h4gen](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ah4gen+updated%3A2020-04-15..2020-10-29&type=Issues) | [@harsimranmaan](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aharsimranmaan+updated%3A2020-04-15..2020-10-29&type=Issues) | [@hdimitriou](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ahdimitriou+updated%3A2020-04-15..2020-10-29&type=Issues) | [@hickst](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ahickst+updated%3A2020-04-15..2020-10-29&type=Issues) | [@hnykda](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ahnykda+updated%3A2020-04-15..2020-10-29&type=Issues) | [@hqwl159](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ahqwl159+updated%3A2020-04-15..2020-10-29&type=Issues) | [@IamViditAgarwal](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AIamViditAgarwal+updated%3A2020-04-15..2020-10-29&type=Issues) | [@ilhaan](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ailhaan+updated%3A2020-04-15..2020-10-29&type=Issues) | [@ivanpokupec](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aivanpokupec+updated%3A2020-04-15..2020-10-29&type=Issues) | [@jacobtomlinson](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajacobtomlinson+updated%3A2020-04-15..2020-10-29&type=Issues) | [@jahstreet](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajahstreet+updated%3A2020-04-15..2020-10-29&type=Issues) | [@JarnoRFB](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AJarnoRFB+updated%3A2020-04-15..2020-10-29&type=Issues) | [@jeremievallee](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajeremievallee+updated%3A2020-04-15..2020-10-29&type=Issues) | [@jgerardsimcock](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajgerardsimcock+updated%3A2020-04-15..2020-10-29&type=Issues) | [@jgwerner](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajgwerner+updated%3A2020-04-15..2020-10-29&type=Issues) | [@josibake](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajosibake+updated%3A2020-04-15..2020-10-29&type=Issues) | [@JPMoresmau](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AJPMoresmau+updated%3A2020-04-15..2020-10-29&type=Issues) | [@jreadey](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajreadey+updated%3A2020-04-15..2020-10-29&type=Issues) | [@jtlz2](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajtlz2+updated%3A2020-04-15..2020-10-29&type=Issues) | [@jtpio](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajtpio+updated%3A2020-04-15..2020-10-29&type=Issues) | [@julienchastang](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajulienchastang+updated%3A2020-04-15..2020-10-29&type=Issues) | [@jzf2101](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ajzf2101+updated%3A2020-04-15..2020-10-29&type=Issues) | [@kinow](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Akinow+updated%3A2020-04-15..2020-10-29&type=Issues) | [@kristofmartens](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Akristofmartens+updated%3A2020-04-15..2020-10-29&type=Issues) | [@kyprifog](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Akyprifog+updated%3A2020-04-15..2020-10-29&type=Issues) | [@leolb-aphp](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aleolb-aphp+updated%3A2020-04-15..2020-10-29&type=Issues) | [@loki1978](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aloki1978+updated%3A2020-04-15..2020-10-29&type=Issues) | [@ltupin](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Altupin+updated%3A2020-04-15..2020-10-29&type=Issues) | [@lxylxy123456](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Alxylxy123456+updated%3A2020-04-15..2020-10-29&type=Issues) | [@manics](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amanics+updated%3A2020-04-15..2020-10-29&type=Issues) | [@mathematicalmichael](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amathematicalmichael+updated%3A2020-04-15..2020-10-29&type=Issues) | [@meeseeksmachine](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ameeseeksmachine+updated%3A2020-04-15..2020-10-29&type=Issues) | [@meneal](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ameneal+updated%3A2020-04-15..2020-10-29&type=Issues) | [@metonymic-smokey](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ametonymic-smokey+updated%3A2020-04-15..2020-10-29&type=Issues) | [@mhwasil](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amhwasil+updated%3A2020-04-15..2020-10-29&type=Issues) | [@minrk](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aminrk+updated%3A2020-04-15..2020-10-29&type=Issues) | [@mjuric](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amjuric+updated%3A2020-04-15..2020-10-29&type=Issues) | [@moorepants](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amoorepants+updated%3A2020-04-15..2020-10-29&type=Issues) | [@mpolatcan](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ampolatcan+updated%3A2020-04-15..2020-10-29&type=Issues) | [@mriedem](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amriedem+updated%3A2020-04-15..2020-10-29&type=Issues) | [@mrocklin](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Amrocklin+updated%3A2020-04-15..2020-10-29&type=Issues) | [@NerdSec](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ANerdSec+updated%3A2020-04-15..2020-10-29&type=Issues) | [@nscozzaro](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Anscozzaro+updated%3A2020-04-15..2020-10-29&type=Issues) | [@openthings](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aopenthings+updated%3A2020-04-15..2020-10-29&type=Issues) | [@pcfens](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Apcfens+updated%3A2020-04-15..2020-10-29&type=Issues) | [@perllaghu](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aperllaghu+updated%3A2020-04-15..2020-10-29&type=Issues) | [@petebachant](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Apetebachant+updated%3A2020-04-15..2020-10-29&type=Issues) | [@peterrmah](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Apeterrmah+updated%3A2020-04-15..2020-10-29&type=Issues) | [@philvarner](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aphilvarner+updated%3A2020-04-15..2020-10-29&type=Issues) | [@prateekkhera](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aprateekkhera+updated%3A2020-04-15..2020-10-29&type=Issues) | [@rabernat](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Arabernat+updated%3A2020-04-15..2020-10-29&type=Issues) | [@RAbraham](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ARAbraham+updated%3A2020-04-15..2020-10-29&type=Issues) | [@remche](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aremche+updated%3A2020-04-15..2020-10-29&type=Issues) | [@rkdarst](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Arkdarst+updated%3A2020-04-15..2020-10-29&type=Issues) | [@rkevin-arch](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Arkevin-arch+updated%3A2020-04-15..2020-10-29&type=Issues) | [@rmoe](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Armoe+updated%3A2020-04-15..2020-10-29&type=Issues) | [@rnestler](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Arnestler+updated%3A2020-04-15..2020-10-29&type=Issues) | [@rschroll](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Arschroll+updated%3A2020-04-15..2020-10-29&type=Issues) | [@rubdos](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Arubdos+updated%3A2020-04-15..2020-10-29&type=Issues) | [@ryanlovett](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Aryanlovett+updated%3A2020-04-15..2020-10-29&type=Issues) | [@salvis2](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asalvis2+updated%3A2020-04-15..2020-10-29&type=Issues) | [@sampathkethineedi](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asampathkethineedi+updated%3A2020-04-15..2020-10-29&type=Issues) | [@scivm](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ascivm+updated%3A2020-04-15..2020-10-29&type=Issues) | [@Sefriol](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ASefriol+updated%3A2020-04-15..2020-10-29&type=Issues) | [@sgibson91](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asgibson91+updated%3A2020-04-15..2020-10-29&type=Issues) | [@sgloutnikov](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asgloutnikov+updated%3A2020-04-15..2020-10-29&type=Issues) | [@shenghu](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ashenghu+updated%3A2020-04-15..2020-10-29&type=Issues) | [@snickell](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asnickell+updated%3A2020-04-15..2020-10-29&type=Issues) | [@sstarcher](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asstarcher+updated%3A2020-04-15..2020-10-29&type=Issues) | [@stefansedich](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Astefansedich+updated%3A2020-04-15..2020-10-29&type=Issues) | [@stevenstetzler](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Astevenstetzler+updated%3A2020-04-15..2020-10-29&type=Issues) | [@stv0g](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Astv0g+updated%3A2020-04-15..2020-10-29&type=Issues) | [@subwaymatch](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asubwaymatch+updated%3A2020-04-15..2020-10-29&type=Issues) | [@summerswallow-whi](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asummerswallow-whi+updated%3A2020-04-15..2020-10-29&type=Issues) | [@superyaniv](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asuperyaniv+updated%3A2020-04-15..2020-10-29&type=Issues) | [@support](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asupport+updated%3A2020-04-15..2020-10-29&type=Issues) | [@suryag10](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Asuryag10+updated%3A2020-04-15..2020-10-29&type=Issues) | [@TiemenSch](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ATiemenSch+updated%3A2020-04-15..2020-10-29&type=Issues) | [@tirumerla](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Atirumerla+updated%3A2020-04-15..2020-10-29&type=Issues) | [@tjcrone](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Atjcrone+updated%3A2020-04-15..2020-10-29&type=Issues) | [@tmshn](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Atmshn+updated%3A2020-04-15..2020-10-29&type=Issues) | [@TomasBeuzen](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3ATomasBeuzen+updated%3A2020-04-15..2020-10-29&type=Issues) | [@tracek](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Atracek+updated%3A2020-04-15..2020-10-29&type=Issues) | [@verdurin](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Averdurin+updated%3A2020-04-15..2020-10-29&type=Issues) | [@vindvaki](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Avindvaki+updated%3A2020-04-15..2020-10-29&type=Issues) | [@vishwesh5](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Avishwesh5+updated%3A2020-04-15..2020-10-29&type=Issues) | [@welcome](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Awelcome+updated%3A2020-04-15..2020-10-29&type=Issues) | [@willingc](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Awillingc+updated%3A2020-04-15..2020-10-29&type=Issues) | [@yuvipanda](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3Ayuvipanda+updated%3A2020-04-15..2020-10-29&type=Issues) | [@zxcGrace](https://github.com/search?q=repo%3Ajupyterhub%2Fzero-to-jupyterhub-k8s+involves%3AzxcGrace+updated%3A2020-04-15..2020-10-29&type=Issues)

## [0.9]

### [0.9.0] - 2020-04-15

#### Release summary

This Helm chart release is mainly a maintenance release featuring the latest
JupyterHub (1.1.0) and authenticators along with bug fixes and some additional
helpful configuration options.

Noteworthy:

- An issue with automatic acquisition of HTTPS certificates has been resolved
  since 0.9.0-beta.3.
- Fixed a compatibility issue with Kubernetes 1.16+
- The `images/hub/requirements.txt` file in this repo can now be used to track
  what specific version has been used at any point in time.
- [jupyterhub-nativeauthenticator](https://native-authenticator.readthedocs.io/en/latest/) added to the JupyterHub Docker image.

Bumped dependencies:

- jupyterhub version 1.1.0
- jupyterhub-ldapauthenticator version 1.3.0
- jupyterhub-kubespawner version 0.11.1
- oauthenticator version 0.11.0
- kubernetes version 10.0.1

#### Upgrade instructions (IMPORTANT)

1. If you are using Helm 2, upgrade to the latest Helm 2 version. And if you are
   using Helm 3, upgrade to the latest Helm 3 version.

   Upgrading to Helm 3 from Helm 2 requires additional steps not covered here,
   so for now please stay with your current major version of helm (2 or 3).

   ```
   # Figure out what version you currently have locally, you should use
   # release of the same major version you have used before.
   helm version
   ```

   Install either the latest [Helm
   2](https://v2.helm.sh/docs/using_helm/#installing-helm) or [Helm
   3](https://helm.sh/docs/intro/install/) depending on what major version you
   currently had worked with.

   ```
   # verify you successfully upgraded helm
   helm version

   # if you just upgraded helm 2, also upgrade tiller
   helm init --upgrade --service-account=tiller
   ```

2. Use `--cleanup-on-fail` when using `helm upgrade`.

   Helm can enter a problematic state by a `helm` install or upgrade process
   which started creating Kubernetes resources, but then didn't finish at all or
   didn't finish successfully. It can cause resources created that helm will
   later come in conflict with.

   To mitigate this, we suggest always using `--cleanup-on-fail` with this Helm
   chart, it is a solid behavior that reduce a lot of head ache.

3. If you use `--wait`, or `--atomic` which implies `--wait`: do not manually
   cancel the upgrade!

   If you would abort the upgrade when using `--wait` and Kubernetes resources
   has been created, resources will have been created that can cause conflict
   with future upgrades and require you to manually clean them up.

4. Delete resources that could cause issues before upgrading.

   ```shell
   # replace <NAMESPACE> below with where jupyterhub is installed
   kubectl delete -n <NAMESPACE> clusterrole,clusterrolebinding,role,rolebinding,serviceaccount,deployment,configmap,service -l component=autohttps
   ```

#### Troubleshooting upgrade

If you get an error similar to the one below, it is a symptom of having
attempted a `helm upgrade` that failed where helm lost track of some newly
created resources. A good solution is to delete all of these resources and try
again.

```shell
# replace <NAMESPACE> below with where jupyterhub is installed
kubectl delete -n <NAMESPACE> clusterrole,clusterrolebinding,role,rolebinding,serviceaccount,deployment,configmap,service -l component=autohttps
```

To avoid this in the future, use `--cleanup-on-fail` with the `helm upgrade`
command. It is not a fool proof way to avoid it, but . And note that even if that flag is used, an interupption for example during `--wait` or `--atomic` which implies `--wait`, be
aware of an interruption while waiting can very likely cause this to arise on
the following upgrade attempt.

> ```
> error: kind ConfigMap with the name "traefik-proxy-config" already exists in
> the cluster and wasn't defined in the previous release. Before upgrading,
> please either delete the resource from the cluster or remove it from the chart
> ```

#### Dependency updates

- Bump configurable-http-proxy image [#1598](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1598) ([@consideRatio](https://github.com/consideRatio))
- fix: Bump to base-notebook with JH 1.1.0 etc [#1588](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1588) ([@bitnik](https://github.com/bitnik))

#### Maintenance

- Docs: refactor/docs for local development of docs [#1617](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1617) ([@consideRatio](https://github.com/consideRatio))
- [MRG] sphinx: linkcheck in travis (allowed to fail) [#1611](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1611) ([@manics](https://github.com/manics))
- [MRG] Sphinx: warnings are errors [#1610](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1610) ([@manics](https://github.com/manics))
- pydata theme [#1608](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1608) ([@choldgraf](https://github.com/choldgraf))
- Small typo fix in doc [#1591](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1591) ([@sebastianpfischer](https://github.com/sebastianpfischer))
- [MRG] Pin sphinx theme [#1589](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1589) ([@manics](https://github.com/manics))
- init helm and tiller with history-max settings [#1587](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1587) ([@bitnik](https://github.com/bitnik))
- Changelog for 0.9.0-beta.4 [#1585](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1585) ([@manics](https://github.com/manics))
- freeze environment in hub image [#1562](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1562) ([@minrk](https://github.com/minrk))

### [0.9.0-beta.4] - 2020-02-26

#### Added

- Add nativeauthenticator to hub image [#1583](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1583) ([@consideRatio](https://github.com/consideRatio))
- Add option to remove named server when culling [#1558](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1558) ([@betatim](https://github.com/betatim))

#### Dependency updates

- jupyterhub-ldapauthenticator==1.3 [#1576](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1576) ([@manics](https://github.com/manics))
- First-class azuread support, oauth 0.11 [#1563](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1563) ([@minrk](https://github.com/minrk))
- simplify hub-requirements [#1560](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1560) ([@minrk](https://github.com/minrk))
- Bump to base-notebook with JH 1.1.0 etc [#1549](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1549) ([@consideRatio](https://github.com/consideRatio))

#### Fixed

- Fix removing of named servers when culled [#1567](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1567) ([@consideRatio](https://github.com/consideRatio))

#### Maintenance

- Added gitlab URL [#1577](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1577) ([@metonymic-smokey](https://github.com/metonymic-smokey))
- Fix reference doc link [#1570](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1570) ([@clkao](https://github.com/clkao))
- Add contributor badge [#1559](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1559) ([@GeorgianaElena](https://github.com/GeorgianaElena))
- Trying to clean up formatting [#1555](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1555) ([@jeremycadams](https://github.com/jeremycadams))
- Remove unneeded directive in traefik config [#1554](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1554) ([@yuvipanda](https://github.com/yuvipanda))
- Added documentation of secret https mode [#1553](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1553) ([@RossRKK](https://github.com/RossRKK))
- Helm 3 preview [#1543](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1543) ([@manics](https://github.com/manics))

### [0.9.0-beta.3] - 2020-01-17

#### Dependency updates

- Deploy jupyterhub 1.1.0 stable [#1548](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1548) ([@minrk](https://github.com/minrk))
- Bump chartpress for Helm 3 compatible dev releases [#1542](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1542) ([@consideRatio](https://github.com/consideRatio))

#### Fixed

- Replace kube-lego + nginx ingress with traefik [#1539](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1539) ([@yuvipanda](https://github.com/yuvipanda))

#### Maintenance

- Update step zero for Azure docs with commands to setup an VNet and network policy [#1527](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1527) ([@sgibson91](https://github.com/sgibson91))
- Fix duplicate docs label [#1544](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1544) ([@manics](https://github.com/manics))
- Made GCP docs of compute zone names generic [#1431](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1431) ([@metonymic-smokey](https://github.com/metonymic-smokey))

### [0.9.0-beta.2] - 2019-12-26

#### Fixed

- Fix major breaking change if all HTTPS options was disabled introduced just before beta.1 [#1534](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1534) ([@dirkcgrunwald](https://github.com/dirkcgrunwald))

### [0.9.0-beta.1] - 2019-12-26

Some highlights of relevance for this release are:

- The default configuration is now catering to autoscaling clusters where nodes
  can be added and removed, as compared to fixed clusters where there is only a
  fixed amount of nodes. Set `scheduling.userScheduler.enabled` to false if you
  are on a fixed size cluster.
- Kubernetes 1.16 compatibility achieved
- Updated dependencies
  - jupyterhub==1.1.0b1
  - kubernetes==0.10.1
  - kubespawner==0.11.1
  - oauthenticator==0.10.0

#### Added

- Added ability to configure liveness/readiness probes on the hub/proxy [#1480](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1480) ([@mrow4a](https://github.com/mrow4a))
- Added ability to use an existing/shared image pull secret for hub and image pullers [#1426](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1426) ([@LaurentGoderre](https://github.com/LaurentGoderre))
- Added ability to configure the proxy's load balancer service's access restrictions (`loadBalancerSourceRanges`) [#1418](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1418) ([@GergelyKalmar](https://github.com/GergelyKalmar))
- Added `user-scheduler` pod->node scheduling policy configuration [#1409](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1409) ([@yuvipanda](https://github.com/yuvipanda))
- Added ability to add additional ingress rules to k8s NetworkPolicy resources [#1380](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1380) ([@yuvipanda](https://github.com/yuvipanda))
- Enabled the continuous image puller by default [#1276](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1276) ([@consideRatio](https://github.com/consideRatio))
- Added ability to configure initContainers of the hub pod [#1274](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1274) ([@scottyhq](https://github.com/scottyhq))
- Enabled the user-scheduler by default [#1272](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1272) ([@minrk](https://github.com/minrk))
- Added ability to use an existing jupyterhub configuration k8s secret for hub (not recommended) [#1142](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1142) ([@koen92](https://github.com/koen92))
- Added use of liveness/readinessProbe by default [#1004](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1004) ([@tmshn](https://github.com/tmshn))

#### Dependency updates

- Bump JupyterHub to 1.1.0b1 [#1533](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1533) ([@consideRatio](https://github.com/consideRatio))
- Update JupyterHub version [#1524](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1524) ([@bitnik](https://github.com/bitnik))
- Re-add ltiauthenticator 0.4.0 to hub image [#1519](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1519) ([@consideRatio](https://github.com/consideRatio))
- Fix hub image dependency versions, disable ltiauthenticator, use chartpress==0.5.0 [#1518](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1518) ([@consideRatio](https://github.com/consideRatio))
- Update hub image dependencies and RELEASE.md regarding dependencies [#1484](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1484) ([@consideRatio](https://github.com/consideRatio))
- Bump kubespawner to 0.11.1 for spawner progress bugfix [#1502](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1502) ([@consideRatio](https://github.com/consideRatio))
- Updated hub image dependencies [#1484](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1484) ([@consideRatio](https://github.com/consideRatio))
- Updated kube-scheduler binary used by user-scheduler, kubespawner, kubernetes python client, and oauthenticator [#1483](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1483) ([@consideRatio](https://github.com/consideRatio))
- Bump CHP to 4.2.0 - we get quicker chart upgrades now [#1481](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1481) ([@consideRatio](https://github.com/consideRatio))
- Bump singleuser-sample [#1473](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1473) ([@consideRatio](https://github.com/consideRatio))
- Bump python-kubernetes to 9.0._ (later also to 10.0._) [#1454](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1454) ([@clkao](https://github.com/clkao))
- Bump tmpauthenticator to 0.6 (needed for jupyterhub 1.0) [#1299](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1299) ([@manics](https://github.com/manics))
- Include jupyter-firstuseauthenticator. [#1288](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1288) ([@danielballan](https://github.com/danielballan))
- Bump jupyterhub to 1.0.0 (later also to a post 1.0.0 commit) [#1263](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1263) ([@minrk](https://github.com/minrk))
- Bump CHP image to 4.1.0 from 3.0.0 (later to 4.2.0) [#1246](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1246) ([@consideRatio](https://github.com/consideRatio))
- Bump oauthenticator 0.8.2 (later to 0.10.0) [#1239](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1239) ([@minrk](https://github.com/minrk))
- Bump jupyterhub to 1.0b2 (later to an post 1.0.0 commit) [#1224](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1224) ([@minrk](https://github.com/minrk))

#### Fixed

- Workaround upstream kubernetes issue regarding https health check [#1531](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1531) ([@sstarcher](https://github.com/sstarcher))
- User-scheduler RBAC permissions for local-path-provisioner + increase robustness of hub.baseUrl interaction with the hub deployments health endpoint [#1530](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1530) ([@cutiechi](https://github.com/cutiechi))
- Fixing #1300 User-scheduler doesn't work with rancher/local-path-provisioner [#1516](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1516) ([@cgiraldo](https://github.com/cgiraldo))
- Move z2jh.py to a python and linux distribution agnostic path [#1478](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1478) ([@mrow4a](https://github.com/mrow4a))
- Bugfix for proxy upgrade strategy in PR #1401 [#1404](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1404) ([@consideRatio](https://github.com/consideRatio))
- Use recreate CHP proxy pod's deployment strategy [#1401](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1401) ([@consideRatio](https://github.com/consideRatio))
- Proxy deployment: Change probes to https port [#1378](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1378) ([@chicocvenancio](https://github.com/chicocvenancio))
- Readiness and liveness probes re-added [#1361](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1361) ([@consideRatio](https://github.com/consideRatio))
- Use 443 as https port or redirection. FIX #806 [#1341](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1341) ([@chicocvenancio](https://github.com/chicocvenancio))
- Revert "Configure liveness/readinessProbe" [#1356](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1356) ([@consideRatio](https://github.com/consideRatio))
- Ensure helm chart configuration is passed to JupyterHub where needed [#1338](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1338) ([@bitnik](https://github.com/bitnik))
- Make proxy redirect to the service port 443 instead of the container port 8443 [#1337](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1337) ([@LucidNeko](https://github.com/LucidNeko))
- Disable becoming root inside hub and proxy containers [#1280](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1280) ([@yuvipanda](https://github.com/yuvipanda))
- Configure KubeSpawner with the `singleuser.image.pullPolicy` properly [#1248](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1248) ([@vmarkovtsev](https://github.com/vmarkovtsev))
- Supply `hub.runAsUser` for the hub at the container level instead of the pod level [#1240](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1240) ([@tmc](https://github.com/tmc))
- Relax HSTS requirement on subdomains [#1219](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1219) ([@yuvipanda](https://github.com/yuvipanda))

#### Maintenance

- typo [#1529](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1529) ([@raybellwaves](https://github.com/raybellwaves))
- fix link to Helm chart best practices [#1523](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1523) ([@rpwagner](https://github.com/rpwagner))
- Adding Globus to the list of users [#1522](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1522) ([@rpwagner](https://github.com/rpwagner))
- Missing page link for our RBAC documentation #1508 [#1514](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1514) ([@n3o-Bhushan](https://github.com/n3o-Bhushan))
- Correction of warnings from: make html [#1513](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1513) ([@consideRatio](https://github.com/consideRatio))
- Fixing URL for user-management documentation #1511 [#1512](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1512) ([@n3o-Bhushan](https://github.com/n3o-Bhushan))
- DOC: fixing authentication link in user customization guide [#1510](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1510) ([@n3o-Bhushan](https://github.com/n3o-Bhushan))
- DOC: fix kubernetes setup link [#1505](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1505) ([@raybellwaves](https://github.com/raybellwaves))
- Update changelog for 0.9.0-beta.1 [#1503](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1503) ([@consideRatio](https://github.com/consideRatio))
- Fix broken link in architecture.rst [#1488](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1488) ([@amcnicho](https://github.com/amcnicho))
- Bump kind to 0.6.0 and kindest/node versions [#1487](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1487) ([@clkao](https://github.com/clkao))
- Avoid rate limiting for k8s resource validation [#1485](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1485) ([@consideRatio](https://github.com/consideRatio))
- Switching to the Pandas Sphinx theme [#1472](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1472) ([@choldgraf](https://github.com/choldgraf))
- Add vi / less to hub image [#1471](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1471) ([@yuvipanda](https://github.com/yuvipanda))
- Added existing pull secrets changes from PR #1426 to schema [#1461](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1461) ([@sgloutnikov](https://github.com/sgloutnikov))
- Chart upgrade tests [#1459](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1459) ([@consideRatio](https://github.com/consideRatio))
- Replaced broken links in authentication document #1449 [#1457](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1457) ([@n3o-Bhushan](https://github.com/n3o-Bhushan))
- Fix typo in home page of docs [#1456](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1456) ([@celine168](https://github.com/celine168))
- Use helm 2.15.1 [#1453](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1453) ([@consideRatio](https://github.com/consideRatio))
- Support CD with git tags [#1450](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1450) ([@consideRatio](https://github.com/consideRatio))
- Added Laurent Goderre as contributor [#1443](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1443) ([@LaurentGoderre](https://github.com/LaurentGoderre))
- Note about future hard deprecation [#1441](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1441) ([@consideRatio](https://github.com/consideRatio))
- Fix link formatting for ingress.enabled [#1438](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1438) ([@jtpio](https://github.com/jtpio))
- CI rework - use kind, validate->test->publish, contrib and release rework [#1422](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1422) ([@consideRatio](https://github.com/consideRatio))
- Mounting jupyterhub_config.py etc. [#1407](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1407) ([@consideRatio](https://github.com/consideRatio))
- Ignore venv files [#1388](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1388) ([@GeorgianaElena](https://github.com/GeorgianaElena))
- Added example for populating notebook user home directory [#1382](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1382) ([@gareth-j](https://github.com/gareth-j))
- Fix typo in jupyterhub_config.py comment [#1376](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1376) ([@loganlinn](https://github.com/loganlinn))
- Fixed formatting error in links [#1363](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1363) ([@tlkh](https://github.com/tlkh))
- Instructions for adding GPUs and increasing shared memory [#1358](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1358) ([@tlkh](https://github.com/tlkh))
- delete redundant prepuller documentation [#1348](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1348) ([@bitnik](https://github.com/bitnik))
- Add py-spy to hub image [#1327](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1327) ([@yuvipanda](https://github.com/yuvipanda))
- Changing Azure Container Service to Azure Kubernetes Service [#1322](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1322) ([@seanmck](https://github.com/seanmck))
- add explanation for lifecycle_hooks in kubespawner_override [#1309](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1309) ([@clancychilds](https://github.com/clancychilds))
- Update chart version to 0.8.2 in the docs [#1304](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1304) ([@jtpio](https://github.com/jtpio))
- Fix azure cli VMSSPreview feature register command [#1298](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1298) ([@dazzag24](https://github.com/dazzag24))
- Unbreak git build [#1294](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1294) ([@joshbode](https://github.com/joshbode))
- Update Dockerfile to JH 1.0 [#1291](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1291) ([@vilhelmen](https://github.com/vilhelmen))
- Fix a couple of mistakes in Google Kubernetes instructions [#1290](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1290) ([@astrofrog](https://github.com/astrofrog))
- Suggest quotes around tag. [#1289](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1289) ([@danielballan](https://github.com/danielballan))
- hub: Add useful debugging tools to hub image [#1279](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1279) ([@yuvipanda](https://github.com/yuvipanda))
- Clean up a line in the CI logs [#1278](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1278) ([@consideRatio](https://github.com/consideRatio))
- Fix prePuller.extraImages linting etc [#1275](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1275) ([@consideRatio](https://github.com/consideRatio))
- Fixed minor bug in google pricing calculator [#1264](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1264) ([@noahbjohnson](https://github.com/noahbjohnson))
- [MRG] Update to Docs: Deploying an Autoscaling Kubernetes cluster on Azure [#1258](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1258) ([@sgibson91](https://github.com/sgibson91))
- Update to Docs: Add Azure scale command to Expanding/Contracting Cluster section [#1256](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1256) ([@sgibson91](https://github.com/sgibson91))
- removing extra buttons [#1254](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1254) ([@choldgraf](https://github.com/choldgraf))
- test appVersion in Chart.yaml [#1238](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1238) ([@minrk](https://github.com/minrk))
- Adjusts whitespace for a code block in AWS instructions. [#1237](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1237) ([@arokem](https://github.com/arokem))
- Change heading of multiple-profiles section [#1236](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1236) ([@moschlar](https://github.com/moschlar))
- Suggest Discourse in issue template [#1234](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1234) ([@manics](https://github.com/manics))
- Added OAuth callback URL to keycloak OIDC example [#1232](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1232) ([@sgloutnikov](https://github.com/sgloutnikov))
- Updated notes, pod status to Running [#1231](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1231) ([@sgloutnikov](https://github.com/sgloutnikov))
- Updated AWS EKS region-availability statement. [#1223](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1223) ([@javabrett](https://github.com/javabrett))
- Fix the default value of lifecycleHooks [#1218](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1218) ([@consideRatio](https://github.com/consideRatio))
- Update user-environment.rst [#1217](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1217) ([@manycoding](https://github.com/manycoding))
- Add Digital Ocean Cloud Instructions for Kubernetes [#1192](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/pull/1192) ([@alexmorley](https://github.com/alexmorley))

## [0.8]

### [0.8.2] - 2019-04-01

Bumped the underlying JupyterHub to 0.9.6.

### [0.8.1] - 2019-03-28

Bumped the underlying JupyterHub to 0.9.5.

### [0.8.0] - [Richie Benaud](https://en.wikipedia.org/wiki/Richie_Benaud) - 2019-01-24

This release contains JupyterHub version 0.9.4. It requires Kubernetes >= 1.11 and Helm >= 2.11.0.
See [the Helm Chart repository](https://github.com/jupyterhub/helm-chart#release-notes) for
a list of relevant dependencies for all Helm Chart versions.

It contains new features, additional configuration options, and bug fixes.

#### Upgrading from 0.7

To upgrade your cluster:

1. backup your hub-db-dir persistent volume and previous configuration files, to be safe
2. read changes here and make any needed updates to your configuration
3. upgrade the chart:

   helm repo update
   helm upgrade $RELEASE --force --version 0.8.0 --values config.yaml

The `--force` flag allows deletion and recreation of objects
that have certain changes, such as different labels,
which are forbidden otherwise.

#### Breaking changes

- Github organisation OAuth: `auth.github.org_whitelist` has been renamed to `auth.github.orgWhitelist` to be consistent with helm's camelCase style

#### Troubleshooting

If you encounter issues with upgrades, check for changed configuration in this document, and make sure your config is up to date.

If you aren't able to get the upgrade to work,
you can [rollback](https://docs.helm.sh/helm/#helm-rollback)
to a previous version with:

    helm rollback $RELEASE

Feel free to [ping us on gitter](https://gitter.im/jupyterhub/jupyterhub)
if you have problems or questions.

#### New Features

##### Easier user-selectable profiles upon login

Profile information is now passed through to KubeSpawner. This means you can
[specify multiple user profiles that users can select from](https://zero-to-jupyterhub.readthedocs.io/en/latest/user-environment.html?highlight=profile#allow-users-to-create-their-own-conda-environments)
when they log in. ([#402](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/issues/402))

##### Configurable image pull secrets

Improvements to the Helm Chart to let users specify private information that lets
the Hub pull from private Docker registries. New information includes
Kubernetes Secrets, an email field, large JSON blobs in the password field (required
in order to pull from a private gcr.io registry from an external cluster).

It also ensures that the image puller DaemonSets have the same credentials to pull the images.

(thanks to @AlexMorreale) #851

##### Improved user scheduling and resource management

#891

Want to make your autoscheduler work efficiently? Then you should schedule pods to pack tight instead of spread out. The user scheduler accomplishes this.

- **Pod priority and User placeholders** - #929

Want to scale up before users arrive so they don't end up waiting for the node to pull an image of several gigabytes in size? By adding a configurable fixed amount of user placeholder pods with a lower [pod priority](https://kubernetes.io/docs/concepts/configuration/pod-priority-preemption/) than real user pods, we can accomplish this. It requires k8s v1.11 though.

- **preferScheduleNextToRealUsers - improves autoscaling** - #930
  This setting slightly improves the ability for a cluster autoscaler to scale down by increasing the likelihood of user placeholders being left alone on a node rather than real users. Real users can't be moved around while user placeholder pods can

#### Minor upgrades and development improvements

- **Update jupyterhub to 0.9.4**
- **Update kubespawner to 0.10.1**
- **Allow setting of storage labels** - #924
- **Tolerations for node taints** - #925
- **Making the core and user pods affinity have configurable presets** - #927
- **Improved linting and validation + CI integration** - #844
- **Improved CI tests** - #846
- **Cleanup of orphaned files** - #842
  Two files were left unused in the repo.
- **cull.maxAge bugfix** - #853
  `cull.maxAge` previously didn't influence the culler service, as the value was never consumed. This is fixed by a single one line commit in a PR.
- **No more duplicates of puller pods** - #854
  Nobody wants pods running that does nothing. By using the new `before-hook-creation` value for the `deletion-policy` Helm hook together with a single name for our Helm hook resources, we can ensure never having orphaned image pullers.
- **Remove pod-culler image** - #890 #919
  Before JupyterHub 0.9 the pod-culler was a standalone pod with a custom image. But now it is a internal service of the JupyterHub pod, so in this PR we slim the remnant code.
- **Upgrade to k8s 1.9 APIs** - #920
  Migrate to more stable K8s resource APIs from `beta`.
- **Update of the singleuser-sample image** - #888
  `git` and `nbgitpuller` are now available by default
- **Switch to using a StatefulSet for the Hub** **\***
  The Hub should perhaps be a StatefulSet rather than a Deployment as it tends to be tied to a PV that can only be mounted by one single Hub. See this issue: https://github.com/helm/charts/issues/1863
- Show users deprecation and error messages when they use certain deprecated
  configuration (e.g. `hub.extraConfig` as a single string)
  or incompatible combinations.
- **Updates to the guide** - #850
- **Updates to inline documentation** - #939

#### [Richie Benaud](https://www.cricket.com.au/players/richie-benaud/gvp5xSjUp0q6Qd7IM5TbCg)

_(excerpt from https://www.cricket.com.au/players/richie-benaud/gvp5xSjUp0q6Qd7IM5TbCg)_

Possibly the most iconic man in Australian cricket, Richie Benaud enjoyed a career spanning nearly
70 years in the game. On the field, he scored 767 runs at 19.66 in his 27 matches against England,
while he also picked up 83 wickets. Off the field,
he has been just as important. His commentary has been second to none since making his radio debut in 1960.

While playing for Australia, fans flocked to the cricket to watch Benaud led sides
dominate whoever they played. The late 1950’s to early 1960’s was a golden period in
Australian cricket, with players such as Simpson, Lawry and Harvey
scoring runs, while Benaud and Davidson did the damage with the ball.

Richie Benaud was responsible for resurrecting cricket in this country. The world was
changing at that time, and so was cricket. It was being shown on television for the
first time, while radio coverage was becoming more advanced. Benaud
felt he had a duty to the Australian public to make the game more entertaining. Sure,
you could argue that the 1961 series was dull, but at least Australia
retained the Ashes. Nobody will forget the tied Test against the West Indies, or Benaud’s
audacious move to bowl around the wicket in Manchester.

Benaud is credited with popularising the tactics we see today. Huddles after a wicket
were born in the Benaud era. Declaring just before stumps in a bid to steal a late wicket
was something he thrived upon. Bowling into the rough is now seen
as common practice.

Benaud was also prepared to try new things with the ball. He worked very hard on
perfecting his wrong’un, the flipper and the top-spinner. His leg-spinner even had variety
to it, making him one of the most complete tweakers at the time.

His leadership earned him respect immediately. Players loved being guided the
likeable larrikin from Penrith. He looked after everyone both as a team, but also on an
individual basis. His teammates trusted his innovative ideas, while
he trusted them to execute them to the fullest.

For most Australians, summer means cricket. And cricket means hearing the dulcet
tones of their favourite commentator, Richie Benaud. From the cream coloured suit, to the
witty repartee with his colleagues, Benaud is the complete package

#### Contributors

This release wouldn't have been possible without the wonderful contributors
to the [zero-to-jupyterhub](https://github.com/jupyterhub/zero-to-jupyterhub-k8s),
and [KubeSpawner](https://github.com/jupyterhub/kubespawner) repos.
We'd like to thank everyone who contributed in any form - Issues, commenting
on issues, PRs and reviews since the last Zero to JupyterHub release.

[(Frank) Yu Cheng Gu](https://github.com/frankgu968)
[1160300422-RenQJ](https://github.com/1160300422)
[1kastner](https://github.com/1kastner)
[2efper](https://github.com/2efPer)
[A. Tan ](https://github.com/amanda-tan)
[Aadi Deshpande](https://github.com/cilquirm)
[abremirata28](https://github.com/abremirata28)
[AcademicAdmin](https://github.com/AcademicAdmin)
[Adam Huffman](https://github.com/verdurin)
[Adrian Wilke](https://github.com/adibaba)
[Akanksha Bhardwaj](https://github.com/sashafierce)
[Akhil Lawrence](https://github.com/akhilputhiry)
[Al Johri](https://github.com/AlJohri)
[AlbanWende](https://github.com/AlbanWende)
[Alejandro del Castillo](https://github.com/adelcast)
[Aleksandr Blekh](https://github.com/ablekh)
[Alex Morreale](https://github.com/AlexMorreale)
[Alex Newman](https://github.com/posix4e)
[Alexander Comerford](https://github.com/cmrfrd)
[Alexander Sadleir](https://github.com/maxious)
[amangarg96](https://github.com/amangarg96)
[Amirahmad Khordadi](https://github.com/khordadi)
[Andreas Hilboll](https://github.com/andreas-h)
[andregouveiasantana](https://github.com/andregouveiasantana)
[Andrew](https://github.com/feriat)
[Andrew Catellier](https://github.com/whlteXbread)
[angelikamukhina](https://github.com/angelikamukhina)
[Anton Khodak](https://github.com/anton-khodak)
[arcady-genkin](https://github.com/arcady-genkin)
[Ariel Rokem](https://github.com/arokem)
[Arne Küderle](https://github.com/AKuederle)
[atne2008](https://github.com/atne2008)
[awalther](https://github.com/awalther)
[Ben Zipperer](https://github.com/benzipperer)
[Beneath](https://github.com/beneathcrypto)
[Benjamin Egelund-Müller](https://github.com/bem7)
[BertR](https://github.com/BertR)
[bharathwgl](https://github.com/bharathwgl)
[bing-he](https://github.com/bing-he)
[bjyxmas](https://github.com/bjyxmas)
[bpoettinger](https://github.com/bpoettinger)
[Brad Skaggs](https://github.com/bskaggs)
[Braden](https://github.com/brasie)
[Brian E. Granger](https://github.com/ellisonbg)
[Bruno P. Kinoshita](https://github.com/kinow)
[brynjsmith](https://github.com/brynjsmith)
[Calvin Canh Tran](https://github.com/canhtran)
[camer314](https://github.com/camer314)
[Carol Willing](https://github.com/willingc)
[Caspian](https://github.com/Cas-pian)
[cfoisy-osisoft](https://github.com/cfoisy-osisoft)
[ChanakyaBandara](https://github.com/ChanakyaBandara)
[chang-zhijie](https://github.com/chang-zhijie)
[Chao Wang](https://github.com/wangxiaoxiao88)
[Chen Zhiwei](https://github.com/chenzhiwei)
[Chester Li](https://github.com/chaoleili)
[Chia-liang Kao](https://github.com/clkao)
[Chris Holdgraf](https://github.com/choldgraf)
[Chris Seal](https://github.com/cmseal)
[Christian Alis](https://github.com/ianalis)
[Christian Mesh](https://github.com/cam72cam)
[chrlunden](https://github.com/chrlunden)
[Clancy Childs](https://github.com/clancychilds)
[Clemens Tolboom](https://github.com/clemens-tolboom)
[cmw2196](https://github.com/cmw2196)
[Cody Scott](https://github.com/Siecje)
[Craig Willis](https://github.com/craig-willis)
[cristofercri](https://github.com/cristofercri)
[Curtis Maves](https://github.com/cmaves)
[cybertony](https://github.com/cybertony)
[Daisuke Taniwaki](https://github.com/dtaniwaki)
[Dalon Lobo](https://github.com/dalonlobo)
[danamer](https://github.com/danamer)
[Daniel Bachler](https://github.com/danyx23)
[Daniel Chalef](https://github.com/danielchalef)
[Daniel Hnyk](https://github.com/hnykda)
[danielpcs](https://github.com/danielpcs)
[Danny H](https://github.com/toblender)
[DataVictorEngineer](https://github.com/DataVictorEngineer)
[Dave Hirschfeld](https://github.com/dhirschfeld)
[Dave Porter](https://github.com/porterde)
[David Andersen](https://github.com/dtandersen)
[David John Gagne](https://github.com/djgagne)
[Davide](https://github.com/davidedelvento)
[Deleted user](https://github.com/ghost)
[Denis Shestakov](https://github.com/denshe)
[Dennis Kipping](https://github.com/dkipping)
[Derek Ludwig](https://github.com/dsludwig)
[DerekHeldtWerle](https://github.com/DerekHeldtWerle)
[DewinGoh](https://github.com/DewinGoh)
[Diogo](https://github.com/dmvieira)
[djknight1](https://github.com/djknight1)
[DmitrII Gerasimenko](https://github.com/kidig)
[Doug Blank](https://github.com/dsblank)
[Dr. Di Prodi](https://github.com/robomotic)
[Dr. Zoltán Katona](https://github.com/zkatona)
[Dylan Nelson](https://github.com/dnelson86)
[ebebpl](https://github.com/ebebpl)
[Eliran Bivas](https://github.com/bivas)
[eode](https://github.com/eode)
[Eran Pinhas](https://github.com/eran-pinhas)
[eric-leblouch](https://github.com/eric-leblouch)
[ericblau](https://github.com/ericblau)
[Erik LaBianca](https://github.com/easel)
[Erik Sundell](https://github.com/consideRatio)
[Ermakov Petr](https://github.com/ermakovpetr)
[erolosty](https://github.com/erolosty)
[Evan Savage](https://github.com/candu)
[Evert Rol](https://github.com/evertrol)
[Ezequiel Gioia](https://github.com/eze1981)
[fahadabbas91](https://github.com/fahadabbas91)
[farzadz](https://github.com/farzadz)
[foxlisimulation](https://github.com/foxlisimulation)
[frouzbeh](https://github.com/frouzbeh)
[Félix-Antoine Fortin](https://github.com/cmd-ntrf)
[Gabriel Abdalla Cavalcante](https://github.com/gcavalcante8808)
[Gabriel Fair](https://github.com/gabefair)
[Gaetan Semet](https://github.com/gsemet)
[Gang Chen](https://github.com/ssword)
[Gary Lucas](https://github.com/luck02)
[Georgiana Elena](https://github.com/GeorgianaElena)
[gerroon](https://github.com/gerroon)
[Giuseppe Attardi](https://github.com/attardi)
[Glen A Knight](https://github.com/glenak1911)
[Gonzalo Fernandez ordas](https://github.com/rainmanh)
[Guilherme Oenning](https://github.com/goenning)
[Guo Zhang](https://github.com/Guo-Zhang)
[gweis](https://github.com/gweis)
[Gábor Lipták](https://github.com/gliptak)
[Hagen Hoferichter](https://github.com/h4gen)
[hani1814](https://github.com/hani1814)
[Hans Permana](https://github.com/hans-permana)
[hhuuggoo](https://github.com/hhuuggoo)
[hichemken](https://github.com/hichemken)
[HT-Moh](https://github.com/HT-Moh)
[HuangHenghua](https://github.com/HuangHenghua)
[HuiWang](https://github.com/scially)
[Ian Carroll](https://github.com/itcarroll)
[Ian Stuart](https://github.com/perllaghu)
[Ivan Brezina](https://github.com/ibre5041)
[J Forde](https://github.com/jzf2101)
[J Gerard](https://github.com/jgerardsimcock)
[j08rebelo](https://github.com/j08rebelo)
[Jacob Matuskey](https://github.com/jmatuskey)
[Jacob Tomlinson](https://github.com/jacobtomlinson)
[Jaime Ferrando Huertas](https://github.com/jiwidi)
[James Swineson](https://github.com/Jamesits)
[jameshgrn](https://github.com/jameshgrn)
[Jan Niederau](https://github.com/Japhiolite)
[Jason Belsky](https://github.com/jbelsky)
[Jason Hu](https://github.com/Jameshzc)
[Jason Rigby](https://github.com/jasonrig)
[jason4zhu](https://github.com/jason4zhu)
[Jeff Whitworth](https://github.com/jwhitwo)
[Jeffrey Bush](https://github.com/coderforlife)
[jeffwji](https://github.com/jeffwji)
[Jessica B. Hamrick](https://github.com/jhamrick)
[jfleury-eidos](https://github.com/jfleury-eidos)
[Ji Ma](https://github.com/ma-ji)
[Jiren Jin](https://github.com/jinjiren)
[jiyer2016](https://github.com/jiyer2016)
[jlc175](https://github.com/jlc175)
[jmabry](https://github.com/jmabry)
[jmchandonia](https://github.com/jmchandonia)
[jmf](https://github.com/jmfcodes)
[Joe Hamman](https://github.com/jhamman)
[Joerg Klein](https://github.com/joergklein)
[John Chase](https://github.com/johnchase)
[John Readey](https://github.com/jreadey)
[John Shojaei](https://github.com/titan550)
[Jonathan Terhorst](https://github.com/terhorst)
[Jordan Miller](https://github.com/LegitStack)
[Josh Bode](https://github.com/joshbode)
[Joshua Milas](https://github.com/DeepHorizons)
[JP Moresmau](https://github.com/JPMoresmau)
[jpays](https://github.com/jpays)
[Juan Cruz-Benito](https://github.com/cbjuan)
[Julian Rüth](https://github.com/saraedum)
[Julien Chastang](https://github.com/julienchastang)
[Justin Ray Vrooman](https://github.com/vroomanj)
[Jürgen Hermann](https://github.com/jhermann)
[Kah Mun](https://github.com/kavemun)
[kangzebin](https://github.com/kangzebin)
[Kelly L. Rowland](https://github.com/kellyrowland)
[Kenan Erdogan](https://github.com/bitnik)
[Kerwin Sun](https://github.com/00Kai0)
[kevbutler](https://github.com/kevbutler)
[Kevin Bates](https://github.com/kevin-bates)
[khawarhere](https://github.com/khawarhere)
[kide007](https://github.com/kide007)
[Kim-Seonghyeon](https://github.com/Kim-Seonghyeon)
[kishitaku0630](https://github.com/kishitaku0630)
[Koshmaar](https://github.com/Koshmaar)
[Koustuv Sinha](https://github.com/koustuvsinha)
[krinsman](https://github.com/krinsman)
[Kristian Gregorius Hustad](https://github.com/KGHustad)
[Kristiyan](https://github.com/katsar0v)
[KSHITIJA SAHARAN](https://github.com/kshitija08)
[Kuriakin Zeng](https://github.com/kuriakinzeng)
[Kyla Harper](https://github.com/kyla-harper)
[Lachlan Musicman](https://github.com/datakid)
[Laurent Abbal](https://github.com/laurentabbal)
[Leo Gallucci](https://github.com/elgalu)
[Leopold Talirz](https://github.com/ltalirz)
[Li-Xian Chen](https://github.com/twbrandon7)
[Lisa Stillwell](https://github.com/lstillwe)
[ljb445300387](https://github.com/ljb445300387)
[Loïc Antoine Gombeaud](https://github.com/LoicAG)
[Loïc Estève](https://github.com/lesteve)
[Lucas Durand](https://github.com/lucasdurand)
[Lukasz Tracewski](https://github.com/tracek)
[m.fab](https://github.com/go-bears)
[Ma](https://github.com/ma010)
[mangecoeur](https://github.com/mangecoeur)
[Manish Kushwaha](https://github.com/manish0749)
[Marc Illien](https://github.com/jackblackCH)
[marinalopez2110](https://github.com/marinalopez2110)
[Mark Mirmelstein](https://github.com/markm42)
[Marlene Silva Marchena](https://github.com/msmarchena)
[Martin Gergov](https://github.com/marto1)
[Martin Zugnoni](https://github.com/martinzugnoni)
[Marvin Solano](https://github.com/marvin-solano)
[Marwan Baghdad](https://github.com/MrwanBaghdad)
[Matthias Bussonnier](https://github.com/Carreau)
[Matthias Klan](https://github.com/mklan)
[Matthias Lee](https://github.com/matthiaslee)
[Matthieu Boileau](https://github.com/boileaum)
[Max Mensing](https://github.com/madmax2012)
[mdivk](https://github.com/mdivk)
[Meesam Shah](https://github.com/meesam15)
[Michael Carroll](https://github.com/neffo)
[Michael Huttner](https://github.com/mhuttner)
[Michael Lovci](https://github.com/mlovci)
[Michael McCarthy](https://github.com/RonanMcCarthy)
[Michael Milligan](https://github.com/mbmilligan)
[Michael Pilosov](https://github.com/mathematicalmichael)
[michec81](https://github.com/michec81)
[Mike Croucher](https://github.com/mikecroucher)
[MikeSpark](https://github.com/MikeSpark)
[Min RK](https://github.com/minrk)
[MisterZ](https://github.com/Misteur-Z)
[Moritz Kirschner](https://github.com/cellador)
[Moritz Schlarb](https://github.com/moschlar)
[moskiGithub](https://github.com/moskiGithub)
[mpolidori](https://github.com/mpolidori)
[mrclttnz](https://github.com/mrclttnz)
[MubashirullahD](https://github.com/MubashirullahD)
[Muhammad-Imtiaz](https://github.com/Muhammad-Imtiaz)
[mxcheng2011](https://github.com/mxcheng2011)
[myidealab](https://github.com/myidealab)
[Naineel Shah](https://github.com/naineel)
[narala558](https://github.com/narala558)
[newturok](https://github.com/newturok)
[Ney Torres](https://github.com/Neyt)
[Nic Wayand](https://github.com/NicWayand)
[Nico Bellack](https://github.com/bellackn)
[nifuki](https://github.com/nifuki)
[Nils Werner](https://github.com/nils-werner)
[not4everybody](https://github.com/not4everybody)
[NotSharath](https://github.com/NotSharath)
[nschiraldi](https://github.com/nschiraldi)
[Nujjy](https://github.com/Nujjy)
[oscar6echo](https://github.com/oscar6echo)
[Paperone80](https://github.com/Paperone80)
[Patafix](https://github.com/Patafix)
[Paul Mazzuca](https://github.com/PaulMazzuca)
[Paul Shealy](https://github.com/paulshealy1)
[Paulo Roberto de Oliveira Castro](https://github.com/prcastro)
[Pav K](https://github.com/kalaytan)
[payalbhatia](https://github.com/payalbhatia)
[Peter Parente](https://github.com/parente)
[Peter Reid](https://github.com/ReidWeb)
[Phil Elson](https://github.com/pelson)
[Phil Fenstermacher](https://github.com/pcfens)
[Philipp Kats](https://github.com/Casyfill)
[phpdistiller](https://github.com/phpdistiller)
[phxedmond](https://github.com/phxedmond)
[Piotr](https://github.com/karpikpl)
[Pouria Hadjibagheri](https://github.com/xenatisch)
[powerLeePlus](https://github.com/powerLeePlus)
[Pratik Lal](https://github.com/pratik-lal)
[pydeepak](https://github.com/Deepakdubey90)
[Qcy](https://github.com/chaoyue729)
[R. C. Thomas](https://github.com/rcthomas)
[raghav130593](https://github.com/raghav130593)
[Rahul Sharma](https://github.com/rahulswimmer)
[Rama Krishna Jinka](https://github.com/rjinka)
[RBALAJI5](https://github.com/RBALAJI5)
[rbq](https://github.com/rbq)
[Richard C Gerkin](https://github.com/rgerkin)
[Richard Darst](https://github.com/rkdarst)
[Richard Huntrods](https://github.com/huntrods)
[richyanicky](https://github.com/richyanicky)
[Rob Nagler](https://github.com/robnagler)
[robin](https://github.com/rollbackchen)
[robotsp](https://github.com/robotsp)
[rothwewi](https://github.com/rothwewi)
[rushikeshraut777](https://github.com/rushikeshraut777)
[Ryan](https://github.com/ev1lm0nk3y)
[Ryan Abernathey](https://github.com/rabernat)
[Ryan Lovett](https://github.com/ryanlovett)
[Ryan McGuire](https://github.com/EnigmaCurry)
[rzuidhof](https://github.com/rzuidhof)
[Saiprasad Balasubramanian](https://github.com/backtrackbaba)
[Sam Manzer](https://github.com/samuelmanzer)
[samRddhimat](https://github.com/samRddhimat)
[Santosh](https://github.com/sdandey)
[Saranya411](https://github.com/Saranya411)
[Scott Crooks](https://github.com/sc250024)
[sdementen](https://github.com/sdementen)
[SeaDude](https://github.com/SeaDude)
[SergeyK1](https://github.com/SergeyK1)
[Shannon](https://github.com/jingsong-liu)
[Shi Pengcheng](https://github.com/shipengcheng1230)
[shibbas](https://github.com/shibbas)
[Shinichi TAMURA](https://github.com/tmshn)
[Shiva1789](https://github.com/Shiva1789)
[sidebo](https://github.com/sidebo)
[Sigurður Baldursson](https://github.com/sigurdurb)
[Simon Li](https://github.com/manics)
[Sindre Gulseth](https://github.com/sgulseth)
[SivaMaplelabs](https://github.com/SivaMaplelabs)
[sjillidimudi](https://github.com/sjillidimudi)
[skruse](https://github.com/skruse)
[smoulderme](https://github.com/smoulderme)
[Solaris](https://github.com/SolarisYan)
[Spencer Ogden](https://github.com/spencerogden)
[sreekanthmg](https://github.com/sreekanthmg)
[Steven B](https://github.com/sblack4)
[Steven Silvester](https://github.com/blink1073)
[StudyQuant](https://github.com/studyquant)
[Subhash](https://github.com/signinred)
[Suchit](https://github.com/asuchit)
[summerswallow](https://github.com/summerswallow)
[summerswallow-whi](https://github.com/summerswallow-whi)
[Søren Fuglede Jørgensen](https://github.com/fuglede)
[Taewon](https://github.com/tkang007)
[Tania Allard](https://github.com/trallard)
[Taposh Dutta Roy](https://github.com/taposh)
[techie879](https://github.com/techie879)
[ThibTrip](https://github.com/ThibTrip)
[Thomas Mendoza](https://github.com/tgmachina)
[thomas-rabiller-azimut](https://github.com/thomas-rabiller-azimut)
[Thong Kuah](https://github.com/kuahyeow)
[thongnnguyen](https://github.com/thongnnguyen)
[Tim Crone](https://github.com/tjcrone)
[Tim Head](https://github.com/betatim)
[Timothy Griffiths](https://github.com/timgriffiths)
[Timothy Liu](https://github.com/tlkh)
[Todd Gamblin](https://github.com/tgamblin)
[Tom](https://github.com/T0mWz)
[Tomer Leibovich](https://github.com/tomerleib)
[tregin](https://github.com/tregin)
[Tren Huang](https://github.com/spiketren)
[Tuhina Chatterjee](https://github.com/tuhina2020)
[Tyler Gregory](https://github.com/01100010011001010110010101110000)
[Uday](https://github.com/udaynaik)
[Udit Arora](https://github.com/uditarora)
[Vasu Gaur](https://github.com/gaurcs)
[Victor Lopez](https://github.com/victorcete)
[Vidit Agarwal](https://github.com/IamViditAgarwal)
[VidJa](https://github.com/VidJa)
[Vincent Feng](https://github.com/iVincentFeng)
[vishal49naik49](https://github.com/vishal49naik49)
[Vivek](https://github.com/II-VSB-II)
[Vivek Rai](https://github.com/raivivek)
[vivekbiet](https://github.com/vivekbiet)
[Vlad-Mihai Sima](https://github.com/vladmihaisima)
[Volker Braun](https://github.com/vbraun)
[wangcong](https://github.com/congfairy)
[Wangsoo Kim](https://github.com/wangsookim)
[whositwhatnow](https://github.com/whositwhatnow)
[Will](https://github.com/xuwaters)
[Will Starms](https://github.com/vilhelmen)
[Willem Pienaar](https://github.com/woop)
[Xavier Lange](https://github.com/xrl)
[YborBorn](https://github.com/YborBorn)
[YizTian](https://github.com/tony-tian)
[Yoav Tzelnick](https://github.com/yoavtzelnick)
[YoongHM](https://github.com/yoonghm)
[yugushihuang](https://github.com/yugushihuang)
[Yuvi Panda](https://github.com/yuvipanda)
[Yuze Ma](https://github.com/bobmayuze)
[Zac Flamig](https://github.com/zflamig)
[Zach Day](https://github.com/zacharied)
[Zachary Sailer](https://github.com/Zsailer)
[Zafer Cesur](https://github.com/zcesur)
[zmkhazi](https://github.com/zmkhazi)
[zneudl](https://github.com/zneudl)
[田进](https://github.com/EndlessTJ)
[邱雨波](https://github.com/CraftHeart)
[高彦涛](https://github.com/gytlinux)

## [0.7.0](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/compare/v0.6...0.7.0) - [Alex Blackwell](https://en.wikipedia.org/wiki/Alex_Blackwell) - 2018-09-03

This release contains JupyterHub version 0.9.2, additional configuration options
and various bug fixes.

**IMPORTANT:** This upgrade will require your users to stop their work at some
point and have their pod restarted. You may want to give them a heads up ahead
of time or do it during nighttime if none are active then.

### Upgrading from v0.6

If you are running `v0.5` of the chart, you should upgrade to `v0.6` first
before upgrading to `0.7.0`. You can find out what version you are using by
running `helm list`.

Follow the steps below to upgrade from `v0.6` to `0.7.0`.

#### 1. (Optional) Ensure the hub's and users' data isn't lost

This step is optional, but a recommended safeguard when the hub's and users'
data is considered important. The changes makes the PersistentVolumes (PVs),
which represent storage (user data and hub database) remain even if the
PersistentVolumeClaims (PVCs) are deleted. The downside of this is that it
requires you to perform manual cleanup of PVs when you want to stop spending
money for the storage.

```sh
# The script is a saftey measure and patches your PersistentVolumes (PV) to
# not be garbage collected if the PersistentVolumeClaim (PVC) are deleted.
NAMESPACE=<YOUR-NAMESPACE>

# Ensure the hub's and users' data isn't lost
hub_and_user_pvs=($(kubectl get persistentvolumeclaim --no-headers --namespace $NAMESPACE | awk '{print $3}'))
for pv in ${hub_and_user_pvs[@]};
do
    kubectl patch persistentvolume $pv --patch '{"spec":{"persistentVolumeReclaimPolicy":"Retain"}}'
done
```

#### 2. Update Helm (v2.9.1+ required)

```sh
# Update helm
curl https://raw.githubusercontent.com/kubernetes/helm/HEAD/scripts/get | bash

# Update tiller (on the cluster)
helm init --upgrade --service-account=tiller

# Verify the update
# NOTE: you may need to cancel and re-run the command, it should work within 30
#       seconds.
helm version
# VERIFY: Did it return both the client and server version?
# Client: &version.Version{SemVer:"v2.10.0", GitCommit:"9ad53aac42165a5fadc6c87be0dea6b115f93090", GitTreeState:"clean"}
# Server: &version.Version{SemVer:"v2.10.0", GitCommit:"9ad53aac42165a5fadc6c87be0dea6b115f93090", GitTreeState:"clean"}
```

#### 3. (Optional) Clean up pre-puller resources

The pre-puller component of v0.6 could leave leftover resources after it finished,
instead of cleaning up after itself.
This script removes the pre-puller resources created by v0.6.

```sh
# This script will delete resources that were meant to be temporary
# The bug that caused this is fixed in version 0.7.0 of the Helm chart
NAMESPACE=<YOUR-NAMESPACE>

resource_types="daemonset,serviceaccount,clusterrole,clusterrolebinding,job"
for bad_resource in $(kubectl get $resource_types --namespace $NAMESPACE | grep '/pre-pull' | awk '{print $1}');
do
    kubectl delete $bad_resource --namespace $NAMESPACE --now
done

kubectl delete $resource_types --selector hub.jupyter.org/deletable=true --namespace $NAMESPACE --now
```

#### 4. (Recommended) Clean up problematic revisions in your Helm release

This step is recommended due to bugs in Helm that could cause your JupyterHub
Helm chart installation (release) to get stuck in an invalid state.
The symptoms are often that `helm upgrade` commands fail with the reason that some resource does or doesn't exist.

```sh
# Look up the name of your Helm release (installation of a Helm chart)
helm list

# Store the name of the Helm release
RELEASE_NAME=<YOUR-RELEASE-NAME>

# Give yourself an overview of this release's revisions
helm history $RELEASE_NAME

# Check if you have multiple revisions in a DEPLOYED status (a bug), or if you
# have old PENDING_UPGRADES or FAILED revisions (may be problematic).
helm history $RELEASE_NAME | grep --extended-regexp "DEPLOYED|FAILED|PENDING_UPGRADE"

# If you have multiple revisions in DEPLOYED status, this script will clean up
# all configmaps except the latest with DEPLOYED status.
deployed_revisions=($(helm history $RELEASE_NAME | grep DEPLOYED | awk '{print $1}'))
for revision in ${deployed_revisions[@]::${#deployed_revisions[@]}-1};
do
    kubectl delete configmap $RELEASE_NAME.v$revision --namespace kube-system
done

# It seems plausible that upgrade failures could have to do with revisions
# having a PENDING_UPGRADE or FAILED status in the revision history. To delete
# them run the following command.
kubectl delete configmap --selector "NAME=$RELEASE_NAME,STATUS in (FAILED,PENDING_UPGRADE)" --namespace kube-system
```

#### 5. Perform the upgrade

**IMPORTANT:** Do not miss out on the `--force` flag!
`--force` is required due to changes in labelling of jupyterhub resources
in 0.7.
Helm cannot upgrade from the labelling scheme in 0.6 to that in 0.7 without `--force`, which deletes and recreates the deployments.

```sh
RELEASE_NAME=<YOUR-RELEASE-NAME>
NAMESPACE=<YOUR-NAMESPACE>

helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
helm repo update

# NOTE: We need the --force flag to allow recreation of resources that can't be
#       upgraded to the new state by a patch.
helm upgrade $RELEASE_NAME jupyterhub/jupyterhub --install \
    --force \
    --version=0.7.0 \
    --namespace=$NAMESPACE \
    --values config.yaml \
    --timeout 1800
```

#### 6. Manage active users

Active users with running pods must restart their pods. If they don't the next
time they attempt to access their server they may end up with `{“error”: “invalid_redirect_uri”, “error_description”: “Invalid redirect URI”}`.

You have the power to force this to happen, but it will abort what they are
doing right now. If you want them to be able to do it in their own pace, you
could use the `/hub/admin` path and shut them down manually when they are done.

```
NAMESPACE=<YOUR-NAMESPACE>

# Inspect what users are currently running
kubectl get pod --selector component=singleuser-server --namespace $NAMESPACE

# Force all of them to shutdown their servers, and ensure the hub gets to
# realize that happened through a restart.
kubectl delete pod --selector component=singleuser-server --namespace $NAMESPACE
kubectl delete pod --selector component=hub --namespace $NAMESPACE
```

#### Troubleshooting - Cleanup of cluster

If things fail, you can try the following before installing the chart. If you
decide to take these steps, we recommend step 1 is taken first in order to not
loose data and that you ensure the old data is made available by the
troubleshooting step below.

```sh
RELEASE_NAME=<YOUR-RELEASE-NAME>

# WARNING: Deletes everything installed by the Helm chart!
# WARNING: If you have not changed the reclaim policy of the hub in step 1, the
#          hub never be able to remember anything about past users. Also note
#          that even if you have taken step 1, you must also make the PVs become
#          `Available` again before the hub starts up again.
# NOTE: This does not include user pods or user storage PVCs as they have been
#       indirectly created by KubeSpawner
helm delete $RELEASE_NAME --purge

# WARNING: Deletes everything within the namespace!
# WARNING: If you have not changed the reclaim policy of the hub and users in
#          step 1, the hub's stored information about the users and the user's
#          storage will be lost forever. Also note that even if you have taken
#          step 1, you must also make the hub and users PVs become `Available`
#          before the hub and users startup again.
kubectl delete namespace <YOUR-NAMESPACE>
```

If you took these steps and step 1, you should probably right now continue with
the next troubleshooting section about making `Released` PVs `Available` for
reuse.

#### Troubleshooting - Make `Released` PVs `Available` for reuse

If you followed step 1 and 2, you can after cleanup of a cluster reuse the old
hub's and users' storage if you do this step before you installs the Helm chart
again.

In more technical words: if you have deleted PVCs such as `hub-db-dir` or
`claim-anyusername`, their PVs will end in a `Released` state assuming they had
a `reclaimPolicy` set to `Retain`. To make use of these PVs again, we must make
them `Available` for the to future PVCs that needs a PV to bind to.

```sh
NAMESPACE=<YOUR-NAMESPACE>

# Ensure the hub's and users' PVs are made `Available` again
hub_and_user_pvs=($(kubectl get persistentvolume | grep -E "Released.+$NAMESPACE/(hub-db-dir|claim-)" | awk '{print $1}'))
for pv in ${hub_and_user_pvs[@]};
do
    kubectl patch persistentvolume $pv --patch '{"spec":{"claimRef":{"uid":null}}}}'
done

# Ensure you don't have any PVCs in the lost state
lost_pvcs=($(kubectl get persistentvolumeclaim --namespace $NAMESPACE | grep -E "(hub-db-dir|claim-).+Lost" | awk '{print $1}'))
for pvc in ${lost_pvcs[@]};
do
    echo kubectl delete persistentvolumeclaim $pvc --namespace $NAMESPACE
done
```

### Contributors

[A. Tan ](https://github.com/amanda-tan)
[Aaron Culich](https://github.com/aculich)
[abhismvit](https://github.com/abhismvit)
[AC](https://github.com/miramar-labs)
[AcademicAdmin](https://github.com/AcademicAdmin)
[Adam Grant](https://github.com/harmon)
[Adam Huffman](https://github.com/verdurin)
[Adam Thornton](https://github.com/athornton)
[Adam Tilghman](https://github.com/agt-ucsd)
[Adam-Origamiiris](https://github.com/Adam-Origamiiris)
[Afreen Rahman](https://github.com/Afreen04)
[agustaf](https://github.com/agustaf)
[agustiin](https://github.com/agustiin)
[aisensiy](https://github.com/aisensiy)
[Ajay Changulani](https://github.com/Ajay-Changulani)
[Akhil Lawrence](https://github.com/akhilputhiry)
[akkibatra](https://github.com/akkibatra)
[Alan King](https://github.com/kingaj12)
[Albert J. de Vera](https://github.com/ajdevera)
[Alejandro del Castillo](https://github.com/adelcast)
[Alejandro Gastón Alvarez](https://github.com/alealv)
[Aleksandr Blekh](https://github.com/ablekh)
[Alex Leith](https://github.com/alexgleith)
[Alex Marandon](https://github.com/amarandon)
[Alex Mellnik](https://github.com/amellnik)
[Alex Moore](https://github.com/Akmoore7)
[Alex Morreale](https://github.com/AlexMorreale)
[Alex Tasioulis](https://github.com/alex1x)
[Alexander](https://github.com/bzz)
[Alexander Hendorf](https://github.com/alanderex)
[Alexander Kruzhkov](https://github.com/YOxan)
[Alexander Morley](https://github.com/alexmorley)
[Alexander Schwartzberg](https://github.com/aeksco)
[Allen Downey](https://github.com/AllenDowney)
[AlphaSRE](https://github.com/AlphaSRE)
[Alramzey](https://github.com/Alramzey)
[amangarg96](https://github.com/amangarg96)
[Amirahmad Khordadi](https://github.com/khordadi)
[Amit Rathi](https://github.com/amit1rrr)
[Analect](https://github.com/Analect)
[anasos](https://github.com/anasos)
[Andre Celere](https://github.com/acelere)
[Andrea Abelli](https://github.com/abelliae)
[Andrea Turrini](https://github.com/andreat)
[Andrea Zonca](https://github.com/zonca)
[Andreas Heider](https://github.com/ah-)
[Andrew Berger](https://github.com/rueberger)
[Andrew Melo](https://github.com/PerilousApricot)
[andrewcheny](https://github.com/andrewcheny)
[András Tóth](https://github.com/tothandras)
[André Luiz Diniz](https://github.com/andrelu)
[Andy Berner](https://github.com/andybrnr)
[Andy Doddington](https://github.com/Andy-Doddington)
[angus evans](https://github.com/joingithubkor)
[Anirudh Vyas](https://github.com/AnirudhVyas)
[Ankit ](https://github.com/ankitml)
[Ankit Sharma](https://github.com/ankitksharma)
[ankit2894](https://github.com/ankit2894)
[Anthony Suen](https://github.com/anthonysuen)
[Anton Akhmerov](https://github.com/akhmerov)
[Antonino Ingargiola](https://github.com/tritemio)
[Antonio Serrano](https://github.com/AntonioSerrano)
[AranVinkItility](https://github.com/AranVinkItility)
[Arda Aytekin](https://github.com/aytekinar)
[Ariel Balter](https://github.com/abalter)
[Ariel Rokem](https://github.com/arokem)
[arkroop](https://github.com/arkroop)
[Arthur](https://github.com/konfiot)
[arthur](https://github.com/ppLorins)
[Arthur Koziel](https://github.com/arthurk)
[ArvinSiChuan](https://github.com/ArvinSiChuan)
[aseishas](https://github.com/aseishas)
[at-cchaloux](https://github.com/at-cchaloux)
[atullo2](https://github.com/atullo2)
[Bastian Greshake Tzovaras](https://github.com/gedankenstuecke)
[bbarney213](https://github.com/bbarney213)
[bbrauns](https://github.com/bbrauns)
[Ben Chuanlong Du](https://github.com/dclong)
[Benjamin Paz](https://github.com/bendavidpaz)
[Benoit Rospars](https://github.com/brospars)
[BerserkerTroll](https://github.com/BerserkerTroll)
[BhagyasriYella](https://github.com/BhagyasriYella)
[bhavybarca](https://github.com/bhavybarca)
[Birgetit](https://github.com/Birgetit)
[bitnik](https://github.com/bitnik)
[Borislav Aymaliev](https://github.com/aymaliev)
[Botty Dimanov](https://github.com/bottydim)
[Brad Skaggs](https://github.com/bskaggs)
[Brandon Sharitt](https://github.com/bsharitt)
[Brent](https://github.com/xuande)
[Brian E. Granger](https://github.com/ellisonbg)
[Brian Ray](https://github.com/brianray)
[Bruce Beauchamp](https://github.com/Prettyfield)
[Bruce Chiarelli](https://github.com/bccomm)
[Byă](https://github.com/hungbya)
[Camilla](https://github.com/Winterflower)
[Camilo Núñez Fernández](https://github.com/camilo-nunez)
[Cara](https://github.com/cara-a-k)
[carluri](https://github.com/carluri)
[Carol Willing](https://github.com/willingc)
[Caspian](https://github.com/Cas-pian)
[chack05](https://github.com/chack05)
[chang-zhijie](https://github.com/chang-zhijie)
[chaomaer](https://github.com/chaomaer)
[chaoyue729](https://github.com/chaoyue729)
[Charles Forelle](https://github.com/cforelle)
[chenyg0911](https://github.com/chenyg0911)
[Chester Li](https://github.com/chaoleili)
[Chia-liang Kao](https://github.com/clkao)
[Chico Venancio](https://github.com/chicocvenancio)
[Chris Fournier](https://github.com/cfournie)
[Chris Holdgraf](https://github.com/choldgraf)
[Chris Seal](https://github.com/cmseal)
[Chris Van Pelt](https://github.com/vanpelt)
[Christiaan Swanepoel](https://github.com/christiaanjs)
[Christian Alis](https://github.com/ianalis)
[Christian Hotz-Behofsits](https://github.com/inkrement)
[Christian Mesh](https://github.com/cam72cam)
[Christian Moscardi](https://github.com/cmoscardi)
[Christine Banek](https://github.com/cbanek)
[Christopher Hench](https://github.com/henchc)
[ckbhatt](https://github.com/ckbhatt)
[Claudius Mbemba](https://github.com/User1m)
[cloud-science](https://github.com/cloud-science)
[Cody Scott](https://github.com/Siecje)
[Cord](https://github.com/CordThomas)
[Cory Johns](https://github.com/johnsca)
[cqzlxl](https://github.com/cqzlxl)
[Craig Willis](https://github.com/craig-willis)
[Curtis Maves](https://github.com/cmaves)
[cyberquasar](https://github.com/cyberquasar)
[cybertony](https://github.com/cybertony)
[cyberyor](https://github.com/cyberyor)
[Daisuke Taniwaki](https://github.com/dtaniwaki)
[daleshsd](https://github.com/daleshsd)
[Dan Allan](https://github.com/danielballan)
[Dan Hoerst](https://github.com/DanHoerst)
[Dan Lidral-Porter](https://github.com/aperiodic)
[Daniel](https://github.com/daniel-ciocirlan)
[Daniel Morrison](https://github.com/draker42)
[danielmaitre](https://github.com/danielmaitre)
[danielrychel](https://github.com/danielrychel)
[Dario Romero](https://github.com/darioromero)
[darky2004](https://github.com/darky2004)
[DataVictorEngineer](https://github.com/DataVictorEngineer)
[Dave Aitken](https://github.com/actionshrimp)
[Dave Hirschfeld](https://github.com/dhirschfeld)
[David Bath](https://github.com/davidbath)
[David Doherty](https://github.com/dado0583)
[David Kügler](https://github.com/dkuegler)
[David Maxson](https://github.com/scnerd)
[David Napier](https://github.com/dnapier)
[David Pérez Comendador](https://github.com/perez1987)
[David Pérez-Suárez](https://github.com/dpshelio)
[David Sanftenberg](https://github.com/dbsanfte)
[Davide](https://github.com/davidedelvento)
[deep-42-thought](https://github.com/deep-42-thought)
[Deleted user](https://github.com/ghost)
[DerekHeldtWerle](https://github.com/DerekHeldtWerle)
[Dhawal Patel](https://github.com/dhawal55)
[disimone](https://github.com/disimone)
[DmitrII Gerasimenko](https://github.com/kidig)
[Dmitry Mishin](https://github.com/dimm0)
[Dominic Suciu](https://github.com/domsooch)
[Don Kelly](https://github.com/karfai)
[Doug Holt](https://github.com/dholt)
[Dragos Cojocari](https://github.com/dragos-cojocari)
[dturaev](https://github.com/dturaev)
[Dwight Townsend](https://github.com/townsenddw)
[Dylan Lentini](https://github.com/dyltini)
[Eamon Keane](https://github.com/EamonKeane)
[Eddy Elbrink](https://github.com/elbrinke)
[Emmanuel Gomez](https://github.com/emmanuel)
[Enol Fernández](https://github.com/enolfc)
[epoch1970](https://github.com/epoch1970)
[Eric Charles](https://github.com/echarles)
[Erik Sundell](https://github.com/consideRatio)
[Ermakov Petr](https://github.com/ermakovpetr)
[ernestmartinez](https://github.com/ernestmartinez)
[EtienneDesticourt](https://github.com/EtienneDesticourt)
[Evan](https://github.com/eexe1)
[Evan Van Dam](https://github.com/evandam)
[Evert Rol](https://github.com/evertrol)
[eylenth](https://github.com/eylenth)
[Ezequiel Gioia](https://github.com/eze1981)
[fahadabbas91](https://github.com/fahadabbas91)
[Faras Sadek](https://github.com/farassadek)
[forbxy](https://github.com/forbxy)
[Francisco Zamora-Martinez](https://github.com/pakozm)
[FU Zhipeng](https://github.com/gavin971)
[Fyodor](https://github.com/lgg)
[Félix-Antoine Fortin](https://github.com/cmd-ntrf)
[G YASHASVI](https://github.com/iamyashasvi)
[Gaetan Semet](https://github.com/gsemet)
[Gaëtan Lehmann](https://github.com/glehmann)
[gbrahmi](https://github.com/gbrahmi)
[George Jose](https://github.com/G2Jose)
[Gerben Welter](https://github.com/GerbenWelter)
[Gerhard Burger](https://github.com/burgerga)
[GladysNalvarte](https://github.com/GladysNalvarte)
[Glen A Knight](https://github.com/glenak1911)
[Graham Dumpleton](https://github.com/GrahamDumpleton)
[grant-guo](https://github.com/grant-guo)
[GRC](https://github.com/gaorongchao)
[Guillaume EB](https://github.com/guillaumeeb)
[guimou](https://github.com/guimou)
[Guo Zhang](https://github.com/Guo-Zhang)
[gweis](https://github.com/gweis)
[Hagen Hoferichter](https://github.com/h4gen)
[hanbeibei](https://github.com/hanbeibei)
[hani1814](https://github.com/hani1814)
[Hans Petter Bieker](https://github.com/hpbieker)
[happytest143](https://github.com/happytest143)
[Hassan Mudassir](https://github.com/hassanmudassir-rzt)
[Helder Rodrigues](https://github.com/HelderGualberto)
[hemantasingh](https://github.com/hemantasingh)
[Henddher Pedroza](https://github.com/wjehenddher)
[hjclub123](https://github.com/hjclub123)
[huhuhang](https://github.com/huhuhang)
[Hunter Jackson](https://github.com/hunterjackson)
[Ian](https://github.com/yfc845)
[Indrajeet Singh](https://github.com/itsindra)
[ironv](https://github.com/ironv)
[IssacPan](https://github.com/IssacPan)
[Ivan Grbavac](https://github.com/grbinho)
[J Forde](https://github.com/jzf2101)
[J Gerard](https://github.com/jgerardsimcock)
[Jacob Tomlinson](https://github.com/jacobtomlinson)
[James Curtin](https://github.com/jamescurtin)
[James Davidheiser](https://github.com/jdavidheiser)
[James Londal](https://github.com/jlondal)
[James Veitch](https://github.com/darth-veitcher)
[Jan Kalo](https://github.com/JanKalo)
[Jason Kuruzovich](https://github.com/jkuruzovich)
[Jason Williams](https://github.com/JasonJWilliamsNY)
[jason4zhu](https://github.com/jason4zhu)
[javin-gn](https://github.com/javin-gn)
[Jeremie Vallee](https://github.com/jeremievallee)
[Jeremy Lewi](https://github.com/jlewi)
[Jeremy Tuloup](https://github.com/jtpio)
[Jerry Schuman](https://github.com/pingthings)
[Jesse Cai](https://github.com/jcaip)
[Jesse Kinkead](https://github.com/jkinkead)
[Jesse Zhang](https://github.com/EmptyCrown)
[Jessica Wong](https://github.com/jessawong)
[Jim Basney](https://github.com/jbasney)
[Jim Hendricks](https://github.com/jhendric98)
[Jiri Kuncar](https://github.com/jirikuncar)
[jlsimms](https://github.com/jlsimms)
[jm2004](https://github.com/jm2004)
[Joakim](https://github.com/Sefriol)
[JocelynDelalande](https://github.com/JocelynDelalande)
[Joe Hamman](https://github.com/jhamman)
[Joel Pfaff](https://github.com/joelpfaff)
[John Kaltenbach](https://github.com/jkbach)
[John Readey](https://github.com/jreadey)
[johnbotsis](https://github.com/johnbotsis)
[johnkpark](https://github.com/johnkpark)
[johnpaulantony](https://github.com/johnpaulantony)
[Jonas Adler](https://github.com/adler-j)
[Jonathan](https://github.com/yocode)
[Jonathan Brant](https://github.com/jbrant)
[Jonathan Wheeler](https://github.com/jondoesntgit)
[jonny86](https://github.com/jonny86)
[Joost W. Döbken](https://github.com/JWDobken)
[Jose Manuel Monsalve Diaz](https://github.com/josemonsalve2)
[Josh Barnes](https://github.com/jcb91)
[Josh Temple](https://github.com/joshtemple)
[João Barreto](https://github.com/JoaoBarreto)
[jpolchlo](https://github.com/jpolchlo)
[JPUnD](https://github.com/JPUnD)
[Juan Cabanela](https://github.com/JuanCab)
[Julien Chastang](https://github.com/julienchastang)
[Jurian Kuyvenhoven](https://github.com/JurianK)
[Justin Holmes](https://github.com/sherl0cks)
[Justin Moen](https://github.com/superquest)
[justkar4u](https://github.com/justkar4u)
[JYang25](https://github.com/JYang25)
[Jürgen Hermann](https://github.com/jhermann)
[kakzhetak](https://github.com/kakzhetak)
[kaliko](https://github.com/mxjeff)
[Kam Kasravi](https://github.com/kkasravi)
[Kannan Kumar](https://github.com/kannankumar)
[karthikpitchaimani](https://github.com/karthikpitchaimani)
[Kenneth Lyons](https://github.com/ixjlyons)
[Kevin P. Fleming](https://github.com/kpfleming)
[kevkid](https://github.com/kevkid)
[Kirill Dubovikov](https://github.com/kdubovikov)
[Knarfux](https://github.com/fbessou)
[Ko Ohashi](https://github.com/kouohhashi)
[krinsman](https://github.com/krinsman)
[KrisL](https://github.com/gixita)
[Kristiyan](https://github.com/katsar0v)
[lambertjosh](https://github.com/lambertjosh)
[Lars Biemans](https://github.com/lbiemans)
[Leo Gallucci](https://github.com/elgalu)
[leolurunhe](https://github.com/leolurunhe)
[Leopold Talirz](https://github.com/ltalirz)
[LeoPsidom](https://github.com/leopsidom)
[lfzyx](https://github.com/lfzyx)
[lgc019](https://github.com/lgc019)
[Lifubang](https://github.com/lifubang)
[liusztc09](https://github.com/liusztc09)
[liuzhliang](https://github.com/liuzhliang)
[llancellotti](https://github.com/llancellotti)
[lmerli84](https://github.com/lmerli84)
[loginoff](https://github.com/loginoff)
[Louis Garman](https://github.com/leg100)
[Luca De Feo](https://github.com/defeo)
[Luca Grazioli](https://github.com/Luke035)
[Lucas Durand](https://github.com/lucasdurand)
[Lucas Kushner](https://github.com/lphk92)
[Lukasz Lempart](https://github.com/wookasz)
[Lukasz Tracewski](https://github.com/tracek)
[Lutz Behnke](https://github.com/cypherfox)
[M Pacer](https://github.com/mpacer)
[Maciej Sawicki](https://github.com/viroos)
[madsi1m](https://github.com/madsi1m)
[mak-aravind](https://github.com/mak-aravind)
[Malin Aandahl](https://github.com/MalinAan)
[Manjukb](https://github.com/Manjukb)
[Marc BUFFAT](https://github.com/mbuffat)
[marciocourense](https://github.com/marciocourense)
[Marco Pleines](https://github.com/MarcoMeter)
[Marcus Hunger](https://github.com/fnordian)
[Marcus Levine](https://github.com/marcusianlevine)
[Mario Campos](https://github.com/mario-campos)
[Marius van Niekerk](https://github.com/mariusvniekerk)
[Mark Mirmelstein](https://github.com/markm42)
[marmaduke woodman](https://github.com/maedoc)
[Martin Forde](https://github.com/mforde84)
[Martín Anzorena](https://github.com/martjanz)
[maryamdev](https://github.com/maryamdev)
[Mas](https://github.com/airtime166)
[mascarom](https://github.com/mascarom)
[Mathew Blonc](https://github.com/blonc)
[Matt Hansen](https://github.com/hansen-m)
[Matteo Ipri](https://github.com/matteoipri)
[matthdan](https://github.com/matthdan)
[Matthew Bray](https://github.com/mattjbray)
[Matthew Rocklin](https://github.com/mrocklin)
[Matthias Bussonnier](https://github.com/Carreau)
[Matthias Klan](https://github.com/mklan)
[mattvw](https://github.com/mattvw)
[Max Joseph](https://github.com/mbjoseph)
[Maxim Moinat](https://github.com/MaximMoinat)
[mdivk](https://github.com/mdivk)
[Mereep](https://github.com/Mereep)
[merlin1608](https://github.com/merlin1608)
[Micah](https://github.com/micahscopes)
[Micah Smith](https://github.com/micahjsmith)
[Michael Huttner](https://github.com/mhuttner)
[Michael Milligan](https://github.com/mbmilligan)
[Michael Ransley](https://github.com/mransley)
[michec81](https://github.com/michec81)
[Michele Bertasi](https://github.com/mbrt)
[Miguel Caballer](https://github.com/micafer)
[Mike Hamer](https://github.com/mikehamer)
[Min RK](https://github.com/minrk)
[MincingWords](https://github.com/MincingWords)
[MisterZ](https://github.com/david-dumas)
[mohanamurali7](https://github.com/mohanamurali7)
[Mohit](https://github.com/Mohitsharma44)
[Monica Dessole](https://github.com/mdessole)
[moskiGithub](https://github.com/moskiGithub)
[mrkjones1979](https://github.com/mrkjones1979)
[mzilinski](https://github.com/mzilinski)
[n3f](https://github.com/n3f)
[Naeem Rashid](https://github.com/naeemkhan12)
[Naineel Shah](https://github.com/naineel)
[NaizEra](https://github.com/NaizEra)
[nauhpc](https://github.com/nauhpc)
[ndiy](https://github.com/ndiy)
[Neelanshu92](https://github.com/Neelanshu92)
[Nehemiah I. Dacres](https://github.com/dacresni)
[Neth Six](https://github.com/nethsix)
[ngokhoa96](https://github.com/ngokhoa96)
[Nick Brown](https://github.com/uptownnickbrown)
[Nickolaus D. Saint](https://github.com/NickolausDS)
[nickray](https://github.com/nickray)
[Nico Bellack](https://github.com/bellackn)
[Nicolas M. Thiéry](https://github.com/nthiery)
[Nikolay Dandanov](https://github.com/ndandanov)
[Nikolay Voronchikhin](https://github.com/nikolayvoronchikhin)
[niveau0](https://github.com/niveau0)
[Norman Gray](https://github.com/nxg)
[ogre0403](https://github.com/ogre0403)
[Ola Tarkowska](https://github.com/ola-t)
[oneklc](https://github.com/oneklc)
[OpenThings](https://github.com/openthings)
[ormskirk77](https://github.com/ormskirk77)
[P.J. Little](https://github.com/pjlittle)
[Pat W](https://github.com/patwoowong)
[Patafix](https://github.com/Patafix)
[Paul Adams](https://github.com/p5a0u9l)
[Paul Laskowski](https://github.com/paul-laskowski)
[Paul Mazzuca](https://github.com/PaulMazzuca)
[Paulo Roberto de Oliveira Castro](https://github.com/prcastro)
[Pav K](https://github.com/kalaytan)
[pedrovgp](https://github.com/pedrovgp)
[pekosro](https://github.com/pekosro)
[Peter Majchrak](https://github.com/petoknm)
[pgarapon](https://github.com/pgarapon)
[Phil Fenstermacher](https://github.com/pcfens)
[philippschw](https://github.com/philippschw)
[Phuong Cao](https://github.com/pmcao)
[picca](https://github.com/picca)
[Pierre Accorsi](https://github.com/paccorsi)
[Pinakibiswasdevops](https://github.com/Pinakibiswasdevops)
[Pius Nyakoojo](https://github.com/PiusNyakoojo)
[pjamason](https://github.com/pjamason)
[Pouria Hadjibagheri](https://github.com/xenatisch)
[Prabhu Kasinathan](https://github.com/prabhu1984)
[Pramod Rizal](https://github.com/prkriz)
[Pranay Hasan Yerra](https://github.com/pranayhasan)
[Prateek](https://github.com/prateekpg2455)
[prateek2408](https://github.com/prateek2408)
[Prerak Mody](https://github.com/prerakmody)
[Przybyszo](https://github.com/Przybyszo)
[psnx](https://github.com/psnx)
[pydo](https://github.com/yonghuming)
[pyjones1](https://github.com/pyjones1)
[R. C. Thomas](https://github.com/rcthomas)
[Rachidramadan1990](https://github.com/Rachidramadan1990)
[radudragusin](https://github.com/radudragusin)
[Rafael Ladislau](https://github.com/rafael-ladislau)
[Rafael Mejia](https://github.com/rafmesal)
[raghu20ram](https://github.com/raghu20ram)
[raja](https://github.com/raksja)
[Ramin](https://github.com/transfluxus)
[Ranjit](https://github.com/ranjitiyer)
[Raphael Nestler](https://github.com/rnestler)
[RaRam](https://github.com/RaRam)
[Raviraju Vysyaraju](https://github.com/ravirajuv)
[reddyvenu](https://github.com/reddyvenu)
[Ricardo Rocha](https://github.com/rochaporto)
[Rich Signell](https://github.com/rsignell-usgs)
[Richard Caunt](https://github.com/psyvision)
[Richard Darst](https://github.com/rkdarst)
[Richard England](https://github.com/renglandatsmu)
[Richard Ting](https://github.com/richardtin)
[Rizwan Saeed](https://github.com/rizwansaeed)
[Rob](https://github.com/rtruxal)
[Robert Casey](https://github.com/rcasey-iris)
[Robert Drysdale](https://github.com/robdrysdale)
[Robert Jiang ](https://github.com/robert-juang)
[Robert Schroll](https://github.com/rschroll)
[robin](https://github.com/rollbackchen)
[Robin](https://github.com/robmarkcole)
[Robin Scheibler](https://github.com/fakufaku)
[roemer2201](https://github.com/roemer2201)
[Rok Roškar](https://github.com/rokroskar)
[Roman Gorodeckij](https://github.com/holms)
[roversne](https://github.com/roversne)
[Roy Wedge](https://github.com/rwedge)
[Royi](https://github.com/RoyiAvital)
[Rui Zhang](https://github.com/zhangruiskyline)
[Ruslan Usifov](https://github.com/tantra35)
[Ryan Abernathey](https://github.com/rabernat)
[Ryan Lovett](https://github.com/ryanlovett)
[rydeng](https://github.com/rydeng)
[sabarnwa](https://github.com/sabarnwa)
[sabyasm](https://github.com/sabyasm)
[sadanand25](https://github.com/sadanand25)
[Sam Manzer](https://github.com/samuelmanzer)
[Sambaiah Kilaru](https://github.com/ksambaiah)
[samy](https://github.com/goforthanddie)
[Sangram Gaikwad](https://github.com/sangramga)
[sanjaydatasciencedojo](https://github.com/sanjaydatasciencedojo)
[Sanmati Jain](https://github.com/jainsanmati)
[saransha](https://github.com/saransha)
[Saranya411](https://github.com/Saranya411)
[sarath145p](https://github.com/sarath145p)
[Satendra Kumar](https://github.com/satendrakumar)
[saurav maharjan](https://github.com/saurssauravjs)
[saurs saurav](https://github.com/isaurssaurav)
[SB](https://github.com/SofianeB)
[sbailey-auro](https://github.com/sbailey-auro)
[Scott Crooks](https://github.com/sc250024)
[Scott Sanderson](https://github.com/ssanderson)
[SeaDude](https://github.com/SeaDude)
[semanticyongjia](https://github.com/semanticyongjia)
[serlina](https://github.com/serlina)
[Seshadri Ramaswami](https://github.com/sesh1989)
[shalan7](https://github.com/shalan7)
[Shana Matthews](https://github.com/shanamatthews)
[Shannon](https://github.com/jingsong-liu)
[Shantanu Singh](https://github.com/shantanusingh16)
[Shengxin Huang](https://github.com/FukoH)
[shilpam11](https://github.com/shilpam11)
[Shiva Prasanth](https://github.com/cedric05)
[shreddd](https://github.com/shreddd)
[Shuo YU](https://github.com/collinwo)
[Sigurður Baldursson](https://github.com/sigurdurb)
[Simon Li](https://github.com/manics)
[Sirawit Pongnakintr](https://github.com/s6007589)
[SivaMaplelabs](https://github.com/SivaMaplelabs)
[smiller5678](https://github.com/smiller5678)
[srican](https://github.com/srican)
[srini_b](https://github.com/Srinivasb0)
[Stanislav Nazmutdinov](https://github.com/PrintScr)
[stczwd](https://github.com/stczwd)
[Stefano Nicotri](https://github.com/stefanonicotri)
[Stefano Taschini](https://github.com/taschini)
[Stephanie Gott](https://github.com/gottsme)
[Stephen Lecrenski](https://github.com/slecrenski)
[Stephen Pascoe](https://github.com/stephenpascoe)
[Stephen Sackett](https://github.com/ssackett)
[Steven Silvester](https://github.com/blink1073)
[Stéphane Pouyllau](https://github.com/spouyllau)
[sudheer0553](https://github.com/sudheer0553)
[Sugu Sougoumarane](https://github.com/sougou)
[Suman Addanki](https://github.com/suman724)
[summerswallow](https://github.com/summerswallow)
[summerswallow-whi](https://github.com/summerswallow-whi)
[sundeepChandhoke](https://github.com/sundeepChandhoke)
[Sunip Mukherjee](https://github.com/sunipkmukherjee)
[svzdvdoptum](https://github.com/svzdvdoptum)
[swgong](https://github.com/sw-gong)
[Sylvain Desroziers](https://github.com/sdesrozis)
[syutbai](https://github.com/syutbai)
[T. George](https://github.com/tgeorgeux)
[tankeryang](https://github.com/tankeryang)
[TapasSpark](https://github.com/TapasSpark)
[Tassos Sarbanes](https://github.com/sarbanes)
[teddy Kossoko](https://github.com/KOSSOKO)
[tgamal](https://github.com/tgamal)
[Thomas Ashish Cherian](https://github.com/PandaWhoCodes)
[Thomas Kluyver](https://github.com/takluyver)
[Thomas Mendoza](https://github.com/tgmachina)
[thongnnguyen](https://github.com/thongnnguyen)
[Thoralf Gutierrez](https://github.com/thoralf-gutierrez)
[Tim Crone](https://github.com/tjcrone)
[Tim Freund](https://github.com/timfreund)
[Tim Head](https://github.com/betatim)
[Tim Kennell Jr.](https://github.com/tikenn)
[Tim Klever](https://github.com/tklever)
[Tim Shi](https://github.com/strin)
[TimKreuzer](https://github.com/TimKreuzer)
[Tirthankar Chakravarty](https://github.com/tchakravarty)
[titansmc](https://github.com/titansmc)
[Tobias Morville](https://github.com/TMorville)
[tobiaskaestner](https://github.com/tobiaskaestner)
[Tom Davidson](https://github.com/tjd2002)
[Tom Kwong](https://github.com/tk3369)
[Tom O'Connor](https://github.com/ichasepucks)
[Tomas Barton](https://github.com/deric)
[Tommaso Fabbri](https://github.com/tfabbri)
[Tyler Erickson](https://github.com/tylere)
[tzujan](https://github.com/tzujan)
[uday2002](https://github.com/uday2002)
[Umar Sikander](https://github.com/umar-sik)
[UsDAnDreS](https://github.com/UsDAnDreS)
[Vaclav Pavlin](https://github.com/vpavlin)
[Varun M S](https://github.com/meranamvarun)
[Victor Paraschiv](https://github.com/vicpara)
[vishwesh5](https://github.com/vishwesh5)
[Vladimir Kozhukalov](https://github.com/kozhukalov)
[vpvijay87](https://github.com/vpvijay87)
[W.](https://github.com/ManifoldFR)
[wangaiwudi](https://github.com/wangaiwudi)
[Wei Hao](https://github.com/whao)
[weih1121](https://github.com/weih1121)
[weimindong2016](https://github.com/weimindong2016)
[whitebluecloud](https://github.com/whitebluecloud)
[whositwhatnow](https://github.com/whositwhatnow)
[will](https://github.com/zsluedem)
[Will Starms](https://github.com/vilhelmen)
[William H](https://github.com/sylus)
[William Hosford](https://github.com/whosford)
[wtsyang](https://github.com/wtsyang)
[XIAHUALOU](https://github.com/XIAHUALOU)
[xuhuijun](https://github.com/xuhuijun)
[Y-L-18](https://github.com/Y-L-18)
[yee379](https://github.com/yee379)
[yeisonseverinopucv](https://github.com/yeisonseverinopucv)
[Yiding](https://github.com/wydwww)
[Yifan Li](https://github.com/Eagles2F)
[yougha54](https://github.com/yougha54)
[Youri Noel Nelson](https://github.com/ynnelson)
[yuandongfang](https://github.com/yuandongfang)
[Yueqi Wang](https://github.com/yueqiw)
[yugushihuang](https://github.com/yugushihuang)
[Yuhi Ishikura](https://github.com/uphy)
[Yuval Kalugny](https://github.com/kalugny)
[Yuvi Panda](https://github.com/yuvipanda)
[Zac Flamig](https://github.com/zflamig)
[Zachary Sailer](https://github.com/Zsailer)
[Zachary Zhao](https://github.com/zacharyzhao)
[ZachGlassman](https://github.com/ZachGlassman)
[zaf](https://github.com/zafeirakopoulos)
[Zafer Cesur](https://github.com/zcesur)
[zearaujo07](https://github.com/zearaujo07)
[Zeb Nicholls](https://github.com/znicholls)
[Zelphir Kaltstahl](https://github.com/ZelphirKaltstahl)
[ZenRay](https://github.com/ZenRay)
[zero](https://github.com/zero-88)
[zeusal](https://github.com/zeusal)
[Zhongyi](https://github.com/zhongyiio)
[Zhou (Joe) Yuan](https://github.com/yuanzhou)
[ziedbouf](https://github.com/ziedbouf)
[zlshi](https://github.com/zlshi)
[zmkhazi](https://github.com/zmkhazi)
[Zoltan Fedor](https://github.com/zoltan-fedor)
[zyc](https://github.com/499244188)
[Øystein Efterdal](https://github.com/oefterdal)
[孙永乐](https://github.com/cattei)
[张旭](https://github.com/zhangxu999)
[武晨光](https://github.com/mission-young)
[陈镇秋](https://github.com/ChenZhenQiu)

## [0.6] - [Ellyse Perry](https://en.wikipedia.org/wiki/Ellyse_Perry) - 2017-01-29

This release is primarily focused on better support
for Autoscaling, Microsoft Azure support & better
default security. There are also a number of bug fixes
and configurability improvements!

### Breaking changes

#### Pre-puller configuration

In prior versions (v0.5), if you wanted to disable the pre-puller,
you would use:

```yaml
prePuller:
  enabled: false
```

Now, to disable the pre-puller, you need to use:

```yaml
prePuller:
  hook:
    enabled: false
```

See the [pre-puller docs](http://zero-to-jupyterhub.readthedocs.io/en/latest/advanced.html#pre-pulling-images-for-faster-startup) for more info!

### Upgrading from 0.5

This release does not require any special steps to upgrade from v0.5. See the [upgrade documentation](https://zero-to-jupyterhub.readthedocs.io/en/latest/upgrading.html)
for general upgrading steps.

If you are running v0.4 of the chart, you should upgrade to v0.5 first
before upgrading to v0.6. You can find out what version you are using
by running `helm list`.

#### Troubleshooting

If your helm upgrade fails due to the error `no Ingress with the name "jupyterhub-internal" found`,
you may be experiencing a [helm bug](https://github.com/kubernetes/helm/issues/3275). To work
around this, run `kubectl --namespace=<YOUR-NAMESPACE> delete ingress jupyterhub-internal` and
re-run the `helm upgrade` command. Note that this will cause a short unavailability of your hub
over HTTPS, which will resume normal availability once the deployment upgrade completes.

### New Features

#### More secure by default

z2jh is more secure by default with 0.6. We now
block access to cloud security metadata endpoints by
default.

See the [security documentation](http://zero-to-jupyterhub.readthedocs.io/en/latest/security.html) for more details. It has seen a number of improvements, and we recommend
you read through it!

#### Autoscaling improvements

Some cloud providers support the [kubernetes node autoscaler](https://github.com/kubernetes/autoscaler/tree/HEAD/cluster-autoscaler),
which can add / remove nodes depending on how much your
cluster is being used. In this release, we made a few
changes to let z2jh interact better with the autoscaler!

- Configure z2jh to ['pack' your users](http://zero-to-jupyterhub.readthedocs.io/en/latest/advanced.html#picking-a-scheduler-strategy)
  onto nodes, rather than 'spread' them across nodes.
- A ['continuous' pre-puller](http://zero-to-jupyterhub.readthedocs.io/en/latest/advanced.html?highlight=prepull#pre-pulling-images-for-faster-startup)
  that allows user images to
  be pulled on new nodes easily, leading to faster startup
  times for users on new nodes. ([link])
- Hub and Proxy pod will not be disrupted by autoscaler,
  by using [PodDisruptionBudget](https://kubernetes.io/docs/tasks/run-application/configure-pdb/)s. The Hub & Proxy will also stick
  together if possible, thus minimizing the number of nodes
  that can not be downsized by the autoscaler.

There is more work to be done for good autoscaling support,
but this is a good start!

#### Better Azure support

Azure's new managed Kubernetes service ([AKS](https://docs.microsoft.com/en-us/azure/aks/)) is much
better supported by this version!

- We have much better documentation on using z2jh with Azure!
- We rewrote our pre-puller so it works on Azure (previously it did not)

Azure AKS is still in preview mode, so be aware of that
before using it in any production workloads!

See the [setting up Kubernetes on Microsoft AKS](http://zero-to-jupyterhub.readthedocs.io/en/latest/create-k8s-cluster.html#setting-up-kubernetes-on-microsoft-azure-container-service-aks) section for more information.

#### Better configurability

We now have better documentation and bug fixes for configurability!

- `extraConfig` can be a dictionary instead of just a
  string. This helps when you have to split your `config.yaml`
  into multiple files for complex deployments
- How user storage works by default is [better documented](http://zero-to-jupyterhub.readthedocs.io/en/latest/user-storage.html)
- Reading config in `extraConfig` from `extraConfigMap` now actually works!
- You can configure the URL that users are directed to after they log in.
  This allows [defaulting users to JupyterLab](http://zero-to-jupyterhub.readthedocs.io/en/latest/user-environment.html#use-jupyterlab-by-default)
- You can pre-pull multiple images now, for custom configuration that needs multiple images
- [Better instructions](http://zero-to-jupyterhub.readthedocs.io/en/latest/user-environment.html#pre-populating-user-s-home-directory-with-files)
  on pre-populating your user's filesystem using [nbgitpuller](https://github.com/data-8/nbgitpuller)

### [Ellyse Perry](https://en.wikipedia.org/wiki/Ellyse_Perry)

_(excerpt from https://www.cricket.com.au/players/ellyse-perry/1aMxKNyEOUiJqhq7N5Tlwg)_

Arguably the best athlete in Australia, Ellyse Perry’s profile continues to rise
with the dual cricket and soccer international having played World Cups for both sports.

Perry became the youngest Australian ever to play senior international cricket when
she made her debut in the second ODI of the Rose Bowl Series in Darwin in July 2007
before her 17th birthday.

She went on to make her domestic debut in the 2007-08 Women’s National Cricket League
season, taking 2-29 from 10 overs in her first match.

Since her national debut, Perry has become a regular fixture for the Southern Stars,
playing in the 2009 ICC Women’s World Cup and the ICC Women’s World Twenty20 in the same year.

Leading Australia’s bowling attack, Perry played a crucial role in the ICC Women’s
World Twenty20 Final in the West Indies in 2010.

The match came down to the wire, with New Zealand requiring five runs off the last
ball to claim the title. Under immense pressure, Perry bowled the final ball of the
tournament, which New Zealand’s Sophie Devine struck straight off the bat.

The talented footballer stuck out her boot to deflect the ball to Lisa Sthalekar at
mid-on, securing the trophy for Australia. Perry’s figures of 3-18 in the final saw
her take home the Player of the Match award.

Perry featured prominently in Australia's three-peat of World T20 victories,
selected for the Team of the Tournament in 2012 and 2014.

She was named [ICC Female Cricketer of the Year](http://www.abc.net.au/news/2017-12-22/ellyse-perry-named-iccs-womens-cricketer-of-the-year/9280538) in 2017.

### Contributors

This release wouldn't have been possible without the wonderful contributors
to the [zero-to-jupyterhub](https://github.com/jupyterhub/zero-to-jupyterhub-k8s),
and [KubeSpawner](https://github.com/jupyterhub/kubespawner) repos.
We'd like to thank everyone who contributed in any form - Issues, commenting
on issues, PRs and reviews since the last Zero to JupyterHub release.

In alphabetical order,

- [Aaron Culich](https://github.com/aculich)
- [Anirudh Ramanathan](https://github.com/foxish)
- [Antoine Dao](https://github.com/twanito)
- [BerserkerTroll](https://github.com/BerserkerTroll)
- [Carol Willing](https://github.com/willingc)
- [Chris Holdgraf](https://github.com/choldgraf)
- [Christian Mesh](https://github.com/cam72cam)
- [Erik Sundell](https://github.com/consideRatio)
- [forbxy](https://github.com/forbxy)
- [Graham Dumpleton](https://github.com/GrahamDumpleton)
- [gweis](https://github.com/gweis)
- [Ian Allison](https://github.com/ianabc)
- [Jason Kuruzovich](https://github.com/jkuruzovich)
- [Jesse Kinkead](https://github.com/jkinkead)
- [madanam1](https://github.com/madanam1)
- [Matthew Rocklin](https://github.com/mrocklin)
- [Matthias Bussonnier](https://github.com/Carreau)
- [Min RK](https://github.com/minrk)
- [Ryan Lovett](https://github.com/ryanlovett)
- [Simon Li](https://github.com/manics)
- [Steve Buckingham](https://github.com/stevebuckingham)
- [Steven Normore](https://github.com/snormore)
- [Tim Head](https://github.com/betatim)
- [Yuvi Panda](https://github.com/yuvipanda)
- [ZachGlassman](https://github.com/ZachGlassman)

## [0.5] - [Hamid Hassan](http://www.espncricinfo.com/afghanistan/content/player/311427.html) - 2017-12-05

JupyterHub 0.8, HTTPS & scalability.

### Upgrading from 0.4

See the [upgrade documentation](https://zero-to-jupyterhub.readthedocs.io/en/latest/upgrading.html) for upgrade steps.

### New Features

#### JupyterHub 0.8

JupyterHub 0.8 is full of new features - see [CHANGELOG](https://jupyterhub.readthedocs.io/en/0.8.1/changelog.html#id1)
for more details. Specific features made to benefit this chart are:

1. No more 'too many redirects' errors at scale.
2. Lots of performance improvements, we now know we can handle up to 4k active users
3. Concurrent spawn limits (set via `hub.concurrentSpawnLimit`) can be used to limit the concurrent
   number of users who can try to launch on the hub at any given time. This can be
   tuned to avoid crashes when hundreds of users try to launch at the same time. It gives
   them a friendly error message + asks them to try later, rather than spinning forever.
4. Active Server limit (set via `hub.activeServerLimit`) can be used to limit the
   total number of active users that can be using the hub at any given time. This allows
   admins to control the size of their clusters.
5. Memory limits & guarantees (set via `singleuser.memory`) can now contain fractional
   units. So you can say `0.5G` instead of having to use `512M`.

And lots more!

#### Much easier HTTPS

It is our responsibility as software authors to make it very easy for admins to set up
HTTPS for their users. v0.5 makes this much easier than v0.4. You can find the new
instructions [here](http://zero-to-jupyterhub.readthedocs.io/en/latest/extending-jupyterhub.html#setting-up-https) and
they are much simpler!

You can also now use your own HTTPS certificates & keys rather than using Let's Encrypt.

#### More authenticators supported

The following new authentication providers have been added:

1. GitLab
2. CILogon
3. Globus

You can also set up a whitelist of users by adding to the list in `auth.whitelist.users`.

#### Easier customization of `jupyterhub_config.py`

You can always put extra snippets of `jupyterhub_config.py` configuration in
`hub.extraConfig`. Now you can also add extra environment variables to the hub
in `hub.extraEnv` and extra configmap items via `hub.extraConfigMap`. ConfigMap
items can be arbitrary YAML, and you can read them via the `get_config` function in
your `hub.extraConfig`. This makes it cleaner to customize the hub's config in
ways that's not yet possible with config.yaml.

#### Hub Services support

You can also add [external JupyterHub Services](http://jupyterhub.readthedocs.io/en/latest/reference/services.html)
by adding them to `hub.services`. Note that you are still responsible for actually
running the service somewhere (perhaps as a deployment object).

#### More customization options for user server environments

More options have been added under `singleuser` to help you customize the environment
that the user is spawned in. You can change the uid / gid of the user with `singleuser.uid`
and `singleuser.fsGid`, mount extra volumes with `singleuser.storage.extraVolumes` &
`singleuser.storage.extraVolumeMounts` and provide extra environment variables with
`singleuser.extraEnv`.

### Hamid Hassan

Hamid Hassan is a fast bowler who currently plays for the Afghanistan National
Cricket Team. With nicknames ranging from
["Afghanistan's David Beckham"](https://www.rferl.org/a/interview-afghan-cricketer-living-the-dream/24752618.html) to
["Rambo"](http://www.nzherald.co.nz/nz/news/article.cfm?c_id=1&objectid=11413633),
he is considered by many to be Afghanistan's first Cricket Superhero. Currently
known for fast (145km/h+) deliveries, cartwheeling celebrations, war painted
face and having had to flee Afghanistan as a child to escape from war. He [says](http://www.nzherald.co.nz/nz/news/article.cfm?c_id=1&objectid=11413633)
he plays because "We are ambassadors for our country and we want to show the
world that Afghanistan is not like people recognise it by terrorists and these
things. We want them to know that we have a lot of talent as well"

### Contributors

This release wouldn't have been possible without the wonderful contributors
to the [zero-to-jupyterhub](https://github.com/jupyterhub/zero-to-jupyterhub-k8s),
[JupyterHub](https://github.com/jupyterhub/jupyterhub), [KubeSpawner](https://github.com/jupyterhub/kubespawner)
and [OAuthenticator](http://github.com/jupyterhub/oauthenticator) repos.
We'd like to thank everyone who contributed in any form - Issues, commenting
on issues, PRs and reviews since the last Zero to JupyterHub release.

In alphabetical order,

- [Aaron Culich](https://github.com/aculich)
- [abeche](https://github.com/alexxxxx)
- [Abhinandan Dubey](https://github.com/alivcor)
- [Adam Thornton](https://github.com/athornton)
- [Adrin Jalali](https://github.com/adrinjalali)
- [Aidis Stukas](https://github.com/aidiss)
- [Aleksandr Blekh](https://github.com/ablekh)
- [Alessandro Vozza](https://github.com/ams0)
- [Alex Hilson](https://github.com/alexhilson)
- [Analect](https://github.com/Analect)
- [Andrea Zonca](https://github.com/zonca)
- [Andreas](https://github.com/Jibbow)
- [Andrew Berger](https://github.com/rueberger)
- [András Tóth](https://github.com/tothandras)
- [angrylandmammal](https://github.com/angrylandmammal)
- [Anirudh Ramanathan](https://github.com/foxish)
- [Antonino Ingargiola](https://github.com/tritemio)
- [apachipa](https://github.com/apachipa)
- [Ariel Rokem](https://github.com/arokem)
- [astrodb](https://github.com/astrodb)
- [Ayushi Agarwal](https://github.com/ayushiagarwal)
- [batchku](https://github.com/batchku)
- [bbhopesh](https://github.com/bbhopesh)
- [Bill Major](https://github.com/rwmajor2)
- [Brad Svee](https://github.com/sveesible)
- [Brian E. Granger](https://github.com/ellisonbg)
- [BrianVanEtten](https://github.com/BrianVanEtten)
- [calz1](https://github.com/calz1)
- [Camilo Núñez Fernández](https://github.com/camilo-nunez)
- [Carol Willing](https://github.com/willingc)
- [Chris Holdgraf](https://github.com/choldgraf)
- [Christian Barra](https://github.com/barrachri)
- [Christian Moscardi](https://github.com/cmoscardi)
- [Christophe Lecointe](https://github.com/christophelec)
- [Christopher Hench](https://github.com/henchc)
- [Christopher Ostrouchov](https://github.com/costrouc)
- [ckbhatt](https://github.com/ckbhatt)
- [Cody Scott](https://github.com/Siecje)
- [Colin Goldberg](https://github.com/colingoldberg)
- [daleshsd](https://github.com/daleshsd)
- [danroliver](https://github.com/danroliver)
- [Dave Hirschfeld](https://github.com/dhirschfeld)
- [David](https://github.com/davidXire)
- [Davide](https://github.com/davidedelvento)
- [deisi](https://github.com/deisi)
- [Dennis Pfisterer](https://github.com/pfisterer)
- [Dennis Verspuij](https://github.com/dennisverspuij)
- [Diogo](https://github.com/dmvieira)
- [dmceballosg](https://github.com/dmceballosg)
- [Dominic Follett-Smith](https://github.com/dominicfollett)
- [Doug Blank](https://github.com/dsblank)
- [Enol Fernández](https://github.com/enolfc)
- [Erik Sundell](https://github.com/consideRatio)
- [erolosty](https://github.com/erolosty)
- [FalseProtagonist](https://github.com/FalseProtagonist)
- [fmilano1975](https://github.com/fmilano1975)
- [Forrest Collman](https://github.com/fcollman)
- [Fred Mitchell](https://github.com/fm75)
- [Gil Forsyth](https://github.com/gforsyth)
- [Goutham Balaraman](https://github.com/gouthambs)
- [gryslik](https://github.com/gryslik)
- [gweis](https://github.com/gweis)
- [haasad](https://github.com/haasad)
- [hani1814](https://github.com/hani1814)
- [Hanno Rein](https://github.com/hannorein)
- [harschware](https://github.com/harschware)
- [Ian Allison](https://github.com/ianabc)
- [Isaiah Leonard](https://github.com/ihleonard-c3)
- [J Forde](https://github.com/jzf2101)
- [Jacob Tomlinson](https://github.com/jacobtomlinson)
- [jai11](https://github.com/jai11)
- [jbmarcille](https://github.com/jbmarcille)
- [Jeet Shah](https://github.com/iamjeet)
- [Jeroen Vuurens](https://github.com/jeroenvuurens)
- [Jessica B. Hamrick](https://github.com/jhamrick)
- [jiamicu](https://github.com/jiamicu)
- [jiancai1992](https://github.com/jiancai1992)
- [jm2004](https://github.com/jm2004)
- [joefromct](https://github.com/joefromct)
- [John Haley](https://github.com/johnhaley81)
- [jonny86](https://github.com/jonny86)
- [Joshua Milas](https://github.com/DeepHorizons)
- [JoshuaC3](https://github.com/JoshuaC3)
- [João Vítor Amaro](https://github.com/joaoamaro70)
- [Justin Ray Vrooman](https://github.com/vroomanj)
- [Keith Callenberg](https://github.com/keithcallenberg)
- [KenB](https://github.com/y2kbowen)
- [Kenneth Lyons](https://github.com/ixjlyons)
- [krak3nnn](https://github.com/krak3nnn)
- [Kristiyan](https://github.com/katsar0v)
- [Kuisong Tong](https://github.com/ktong)
- [kuldeepyadav](https://github.com/kuldeepyadav)
- [Kyle Kelley](https://github.com/rgbkrk)
- [lcfcefyn](https://github.com/lcfcefyn)
- [Leo Gallucci](https://github.com/elgalu)
- [lesiano](https://github.com/lesiano)
- [Lorena A. Barba](https://github.com/labarba)
- [lrob](https://github.com/lrob)
- [Lukasz Tracewski](https://github.com/tracek)
- [Mahesh Vangala](https://github.com/vangalamaheshh)
- [Marco Sirabella](https://github.com/mjsir911)
- [marcostrullato](https://github.com/marcostrullato)
- [Marius van Niekerk](https://github.com/mariusvniekerk)
- [MarkusTeufelberger](https://github.com/MarkusTeufelberger)
- [Matt Koken](https://github.com/patback66)
- [Matteo Cerutti](https://github.com/m4ce)
- [Matthias Bussonnier](https://github.com/Carreau)
- [Michael Li](https://github.com/tianhuil)
- [Mike](https://github.com/s-t-e-a-l-t-h)
- [MikeM](https://github.com/mmacny)
- [Min RK](https://github.com/minrk)
- [misolietavec](https://github.com/misolietavec)
- [Moiz Sajid](https://github.com/moizsajid)
- [Morgan Jones](https://github.com/mogthesprog)
- [mraky](https://github.com/mraky)
- [mrinmoyprasad](https://github.com/mrinmoyprasad)
- [nabriis](https://github.com/nabriis)
- [Nickolaus D. Saint](https://github.com/NickolausDS)
- [Nocturnal316](https://github.com/Nocturnal316)
- [Olivier Cloarec](https://github.com/ocloarec)
- [Pedro Henriques dos Santos Teixeira](https://github.com/pedroteixeira)
- [Pranay Hasan Yerra](https://github.com/pranayhasan)
- [prof-schacht](https://github.com/prof-schacht)
- [Puneet Jindal](https://github.com/puneetjindal)
- [R. C. Thomas](https://github.com/rcthomas)
- [ramonberger](https://github.com/ramonberger)
- [Randy Guthrie](https://github.com/randguth)
- [Richard Caunt](https://github.com/psyvision)
- [richmoore1962](https://github.com/richmoore1962)
- [Rishika Sinha](https://github.com/rsinha25)
- [Robert Wlodarczyk](https://github.com/SimplicityGuy)
- [Ruben Orduz](https://github.com/rdodev)
- [Ryan Lovett](https://github.com/ryanlovett)
- [Ryan Wang](https://github.com/rwangr)
- [rydeng](https://github.com/rydeng)
- [SarunasG](https://github.com/SarunasG)
- [Saul Shanabrook](https://github.com/saulshanabrook)
- [Scott Calabrese Barton](https://github.com/scbarton)
- [Scott Sanderson](https://github.com/ssanderson)
- [Simon Li](https://github.com/manics)
- [Stefano Nicotri](https://github.com/stefanonicotri)
- [surma-lodur](https://github.com/surma-lodur)
- [Sven Mayer](https://github.com/SamyStyle)
- [swigicat](https://github.com/swigicat)
- [SY_Wang](https://github.com/kiwi0217)
- [Thomas Kluyver](https://github.com/takluyver)
- [Thomas Mendoza](https://github.com/tgmachina)
- [Tim Head](https://github.com/betatim)
- [toddpfaff](https://github.com/toddpfaff)
- [Tom O'Connor](https://github.com/ichasepucks)
- [toncek87](https://github.com/toncek87)
- [Tony ](https://github.com/Montereytony)
- [Travis Sturzl](https://github.com/tsturzl)
- [Tyler Cloutier](https://github.com/cloutiertyler)
- [uday2002](https://github.com/uday2002)
- [Udita Bose](https://github.com/uditabose)
- [uttamkumar123](https://github.com/uttamkumar123)
- [will](https://github.com/zsluedem)
- [Wilmer Ramirez](https://github.com/will17cr)
- [xgdgsc](https://github.com/xgdgsc)
- [Yan Zhao](https://github.com/yan130)
- [Yinan Li](https://github.com/liyinan926)
- [yoryicopo](https://github.com/yoryicopo)
- [Yu-Hang "Maxin" Tang](https://github.com/yhtang)
- [Yuvi Panda](https://github.com/yuvipanda)
- [Zachary Ogren](https://github.com/zogren)
- [Zhenwen Zhang](https://github.com/zhangzhenwen)
- [Zoltan Fedor](https://github.com/zoltan-fedor)

## [0.4] - [Akram](#akram) - 2017-06-23

Stability, HTTPS & breaking changes.

### Installation and upgrades

We **recommend** that you delete prior versions of the package and install the
latest version. If you are very familiar with Kubernetes, you can upgrade from
an older version, but we still suggest deleting and recreating your
installation.

### Breaking changes

- The **name of a user pod** and a **dynamically created home directory [PVC (PersistentVolumeClaim)](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#persistentvolumeclaims)** no longer include
  the `userid` in them by default. If you are using dynamic PVCs for `home`
  directories (which is the default), you will need to _manually rename_ these
  directories before upgrading.
  Otherwise, new PVCs will be created, and users might freak out when viewing the newly created directory and think that their home directory appears empty.

  See [PR #56](https://github.com/jupyterhub/kubespawner/pull/56) on
  what needs to change.

- A **[StorageClass](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#storageclasses)**
  is no longer created by default. This shouldn't affect most new installs,
  since most cloud provider installations have a default (as of Kubernetes 1.6).
  If you are using an older version of Kubernetes, the easiest thing to do is to
  upgrade to a newer version. If not, you can create a StorageClass manually
  and everything should continue to work.

- `token.proxy` is removed. Use **`proxy.secretToken`** instead.
  If your `config.yaml` contains something that looks like the following:

  ```yaml
  token:
    proxy: <some-secret>
  ```

  you should change that to:

  ```yaml
  proxy:
    secretToken: <some-secret>
  ```

### Added

- Added **GitHub Authentication support**, thanks to [Jason Kuruzovich](https://github.com/jkuruzovich).
- Added **[Ingress](https://kubernetes.io/docs/concepts/services-networking/ingress/) support**!
  If your cluster already has Ingress support (with automatic Let's Encrypt support, perhaps),
  you can easily use that now.
- We now add a **label** to user pods / PVCs with their usernames.
- Support using a **static PVC** for user `home` directories or for the hub database. This makes this release usable
  with clusters where you only have one NFS share that must be used for the whole hub.
- **PostgreSQL** is now a supported hub database backend provider.
- You can set annotations & labels on the **proxy-public service** now.

### Changed

- We now use the official [configurable http proxy](http://github.com/jupyterhub/configurable-http-proxy)
  (CHP) as the proxy, rather than the unofficial
  [nchp](https://github.com/yuvipanda/jupyterhub-nginx-chp). This should be a
  no-op (or require no changes) for the most part. JupyterHub errors might
  display a nicer error page.
- The version of KubeSpawner uses the official Kubernetes
  [python client](https://github.com/kubernetes-incubator/client-python/) rather
  than [pycurl](http://pycurl.io/). This helps with scalability a little.

### Removed

- The deprecated `createNamespace` parameter no longer works, alongside the
  deprecated `name` parameter. You probably weren't using these anyway - they
  were kept only for backwards compatibility with very early versions.

### Contributors

This release made possible by the awesome work of the following contributors
(in alphabetical order):

- [Analect](https://github.com/analect)
- [Carol Willing](https://github.com/willingc)
- [Jason Kuruzovich](https://github.com/jkuruzovich)
- [Min RK](https://github.com/minrk/)
- [Yuvi Panda](https://github.com/yuvipanda/)

<3

### Akram

[Wasim Akram](https://en.wikipedia.org/wiki/Wasim_Akram) (وسیم اکرم) is considered by many to be
the greatest pace bowler of all time and a founder of the fine art of
[reverse swing bowling](https://en.wikipedia.org/wiki/Swing_bowling#Reverse_swing).

## 0.3

### [0.3.1] - 2017-05-19

KubeSpawner updates. [Release note](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/releases/tag/v0.3.1)

### [0.3] - 2017-05-15

Deployer UX fixes. [Release note](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/releases/tag/v0.3)

## [0.2] - 2017-05-01

Minor cleanups and features. [Release note](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/releases/tag/v0.2)

## [0.1] - 2017-04-10

Initial Public Release. [Release note](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/releases/tag/v0.1)
