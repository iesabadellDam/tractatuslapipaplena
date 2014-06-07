---
layout: post
title: "getenforce"
date: 2014-06-07 07:10
comments: true
categories: 
---
Comprobar el estado de selinux.

>\# getenforce

Estados posibles

enforcing [impositivo] (Política de seguridad activa)

permissive [permisivo] (Registra los eventos pero no impone la política)

disabled [inhabilitado] (Desactivado)

>\# nano /etc/selinux/config

	# This file controls the state of SELinux on the system.

	# SELINUX= can take one of these three values:

	# enforcing - SELinux security policy is enforced.

	# permissive - SELinux prints warnings instead of enforcing.

	# disabled - No SELinux policy is loaded.

	SELINUX=permissive

	# SELINUXTYPE= can take one of these two values:

	# default - equivalent to the old strict and targeted policies

	# mls     - Multi-Level Security (for military and educational use)

	# src     - Custom policy built from source

	SELINUXTYPE=default

	# SETLOCALDEFS= Check local definition changes

	SETLOCALDEFS=0

