# Customizing User Management

This section describes management of users and their
permissions on JupyterHub.

(culling-user-pods)=

## Culling user pods

When users work with a JupyterHub deployment, will they reliably shut down their
servers manually when finished? Probably not. Due to this, it can be good to
have a system to shut down servers that are inactive after a configurable
duration of inactivity or a maximum amount of time. JupyterHub uses the
[jupyterhub-idle-culler](https://github.com/jupyterhub/jupyterhub-idle-culler)
to do this.

When a user server has been shut down, the user will have to start their server
again on next visit. The in-memory state of their previous session will have
been lost, but opened notebooks are saved regularly into a `.ipynb_checkpoints`
folder and will typically not cause work to be lost.

```{note}
For more details on how the `jupyterhub-idle-culler` works and additional
configurations you may want to set on the user servers, see the [How it works
documentation](https://github.com/jupyterhub/jupyterhub-idle-culler#how-it-works).

If you want to configure the culling of kernels that can help stop long running
code on the user servers, it can be useful to use
[`singleuser.extraFiles`](schema_singleuser.extraFiles).
```

To disable `jupyterhub-idle-culler`, put the following into `config.yaml`:

```yaml
cull:
  enabled: false
```

The default Helm chart configuration of `jupyterhub-idle-culler` can be
inspected in the Helm chart's [values.yaml (Helm chart version
1.0.0)](https://github.com/jupyterhub/zero-to-jupyterhub-k8s/blob/1.0.0/jupyterhub/values.yaml#L529-L536)
file. The Helm chart's configuration corresponds to flags in the
[jupyterhub-idle-culler](https://github.com/jupyterhub/jupyterhub-idle-culler)
package. Full documentation of these and additional flags can be found in
[jupyterhub-idle-culler's
documentation](https://github.com/jupyterhub/jupyterhub-idle-culler#as-a-standalone-script).

```{note}
While JupyterHub automatically runs the culling process, it is not a
replacement for keeping an eye on your cluster to make sure resources
are being used as expected.
```

## Admin Users

JupyterHub has the concept of
[admin users](https://jupyterhub.readthedocs.io/en/latest/getting-started/authenticators-users-basics.html#configure-admins-admin-users)
who have special rights. They can start / stop other user's servers, and
optionally access user's notebooks. They will see a new **Admin** button in
their Control Panel which will take them to an **Admin Panel** where they can
perform all these actions.

You can specify a list of admin users in your `config.yaml`:

```yaml
auth:
  admin:
    users:
      - adminuser1
      - adminuser2
```

By default, admins can access user's notebooks. If you wish to disable this, use
this in your `config.yaml`:

```yaml
auth:
  admin:
    access: false
```

## Authenticating Users

For information on authenticating users in JupyterHub, see
[the Authentication guide](../../administrator/authentication).
