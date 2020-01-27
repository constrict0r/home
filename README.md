# home

![skeleton](https://gitlab.com/constrict0r/img/raw/master/skeleton.png)

[Skeleton repository](http://www.linfo.org/etc_skel.html) for standard user home directory layout.

![home](https://gitlab.com/constrict0r/img/raw/master/home/home.png)

[Part of:](https://gitlab.com/explore/projects?tag=doombots)

![doombots](https://gitlab.com/constrict0r/img/raw/master/doombots.png)

## License

MIT. See the [LICENSE](https://gitlab.com/constrict0r/home/raw/master/LICENSE) file for more details.

## Usage

```
ansible localhost -m include_role -a name=constrict0r.userconfig -K \
    -e "{user_skeleton: 'https://gitlab.com/constrict0r/home'}"
```

## Layout

This repository provides the following file tree layout:

```
home/
├── .emacs.d
│   ├── config
│   │   ├── base.el
│   │   └── org.el
│   ├── init.el
│   └── themes
│       └── wintermute-theme.el
└── .vimrc
```

## Links

  - [Github repository](https://github.com/constrict0r/home).
  - [Gitlab repository](https://gitlab.com/constrict0r/home).

## Author Information

[![constrict0r](https://gitlab.com/constrict0r/img/raw/master/author.png)](https://gitlab.com/constrict0r)

The travelling vaudeville villain.

Enjoy!!

![enjoy](https://gitlab.com/constrict0r/img/raw/master/enjoy.png)
