# nx-auto-link
> Auto link for next.

## installation
```rb
# from gem
gem 'nx-auto-link'
# from git
gem 'nx-auto-link', git: 'git@github.com:afeiship/nx-auto-link.git'
```

## usage
```rb
Nx::AutoLink::start(html, tags)

html = '<article class="jsw-content">
 <p>
  首先要先下载安装包或者建议：
 </p>
 <p>
  ①win7，win8，win10系统，建议下载python3.7.4版本：
 </p>
</article>';

tags = [
    { name: "下载", url: "http://www.baidu.com/tag/2.html" },
    { name: "建议", url: "http://www.baidu.com/tag/1.html" },
    { name: "python", url: "http://www.baidu.com/tag/5.html" },
];
```

## build/publish
```shell
# build
gem build nx-auto-link.gemspec

# publish
gem push nx-auto-link-0.1.0.gem
```

## rspec
- https://rspec.info/
