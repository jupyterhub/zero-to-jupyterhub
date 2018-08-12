.. _glossary:

Glossary
========

A partial glossary of terms used in this guide. For more complete descriptions
of the components in JupyterHub, see :ref:`tools`. Here we try to keep the
definition as succinct and relevant as possible, and provide links to learn more
details.

.. Additions to the glossary are welcomed. Please add in alphabetical order.

.. glossary::

   `admin user <https://jupyterhub.readthedocs.io/en/stable/getting-started/authenticators-users-basics.html?highlight=admin>`_
      A user who can access the JupyterHub admin panel. They can start/stop user
      pods, and potentially access their notebooks.

   `authenticator <http://jupyterhub.readthedocs.io/en/latest/reference/authenticators.html>`_
      The way in which users are authenticated to log into JupyterHub. There
      are many authenticators available, like GitHub, Google, MediaWiki,
      Dummy (anyone can log in), etc.
   
   `Helm chart <https://docs.helm.sh/developing_charts/#charts>`_
      A Helm chart is a group of :term:`Helm templates <Helm template>` that
      can, given its default values and overrides in provided ``yaml`` files,
      make sure your Kubernetes cluster installs all the rendered
      :term:`Kubernetes resources <kubernetes resource>`. In other words a Helm
      chart is like a configurable installation file for software to run on a
      cloud.

   `Helm template <https://docs.helm.sh/chart_template_guide/#the-chart-template-developer-s-guide>`_
      A Helm template (``.yaml`` files), can given values, render to a
      :term:`Kubernetes resource`.

   `Helm values <https://docs.helm.sh/chart_template_guide/#values-files>`_
      :term:`Helm charts <helm chart>` has a set of predefined values
      (`values.yaml`) typically overridden by other values in `config.yaml`. The
      final values are used to generate :term:`Kubernetes resources <kubernetes
      resource>` from :term:`Helm templates <helm template>` within a
      :term:`Helm chart`.

   container
      A container is a isolated working space which for us gives users the
      tools, libraries, and capabilities to be productive.

   culler
      A separate process in the JupyterHub that stops the user pods of users who
      have not been active in a configured interval.

   Dockerfile
      A Dockerfile declares how to build a :term:`Docker image`.

   Docker image
      A Docker image, built from a :term:`Dockerfile`, allows tools like
      ``docker`` to create any number of :term:`containers <container>`.

   `environment variables <https://en.wikipedia.org/wiki/Environment_variable>`_
      A set of named values that can affect the way running processes will
      behave on a computer. Some common examples are ``PATH``, ``HOME``, and
      ``EDITOR``.

   Kubernetes API server
      The `Kubernetes API
      <https://kubernetes.io/docs/concepts/overview/kubernetes-api/>`_ server,
      also referred to as the master, will answer questions and update the
      desired state of the cluster for you. When you use ``kubectl`` you
      communicate with the API server.
   
   Kubernetes resource
      A Kubernetes resource can for example be a `Deployment
      <https://kubernetes.io/docs/concepts/workloads/controllers/deployment/>`_,
      `Service
      <https://kubernetes.io/docs/concepts/services-networking/service/>`_ or a
      `Secret <https://kubernetes.io/docs/concepts/configuration/secret/>`_. It
      is something you can request by the :term:`Kubernetes API server` to be
      present in the cluster.

   persistent storage
      A filesystem attached to a user pod that allows the user to store
      notebooks and files that persist across multiple logins.

   `repo2docker <https://github.com/jupyter/repo2docker>`_
      A tool which lets you quickly convert a Git repository into a
      :term:`Docker image`.

   `spawner <https://jupyterhub.readthedocs.io/en/stable/getting-started/spawners-basics.html>`_
      A spawner is a separate process created for each active user by
      JupyterHub. They are each responsible for one user. This Helm chart relies
      on `KubeSpawner
      <https://jupyterhub-kubespawner.readthedocs.io/en/latest/overview.html>`_.
