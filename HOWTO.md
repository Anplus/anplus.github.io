# 网站维护指南 (HOWTO)

这个网站是一个极简 Jekyll 站点:**你只需要编辑 Markdown 和 YAML 文件,push 之后 GitHub Pages 自动生成 HTML**,本地不需要安装任何东西。

## 文件结构

```
├── _config.yml          # 站点配置:社交链接、CV 路径、邮箱(改一处,全站生效)
├── index.md             # About 页(自我介绍 + Research Highlights + News)
├── research.md          # Research 页(纯 Markdown,直接改文字)
├── publications.md      # Publications 页(模板,一般不用动)
├── awards.md / service.md / teaching.md   # 同上,模板,一般不用动
├── _data/               # ★ 日常维护 95% 只改这个目录
│   ├── publications.yml # 论文列表
│   ├── news.yml         # News
│   ├── highlights.yml   # About 页的章节 + venue 标签
│   ├── awards.yml       # 奖项(按年)
│   ├── service.yml      # 服务(会议按年 + 期刊审稿)
│   └── teaching.yml     # 教学(按学校)+ 报告
├── _layouts/default.html  # 页面框架(导航栏在这里)
└── assets/css/main.css    # 样式(改主题色:顶部 --accent 变量)
```

## 日常操作

### 加一篇论文
编辑 `_data/publications.yml`,在对应年份注释下加 5–8 行(模板见文件顶部):

```yaml
- title: "EarCardio: ..."
  authors: "Student Name, Zhenlin An, Longfei Shangguan"
  venue: "MobiCom"
  where: "Proceedings of ACM MobiCom"
  year: 2026
  award: "Best Paper Award"      # 可选
  link: "https://..."            # 可选
```

规则:你的名字会自动加粗 + 下划线;co-first 在名字后直接写 `*`(如 `"Xiaopeng Zhao*, Zhenlin An*, ..."`);年份分组和排序是自动的。

### 加一条 News
编辑 `_data/news.yml`,在最上面加:

```yaml
- date: "Jun 2026"
  text: "One paper accepted to **MobiCom 2027**! [Project page](https://...)"
```

### 改 About 页的研究章节(venue 标签)
编辑 `_data/highlights.yml`,每个 work 三行(`name` / `venue` / 可选 `url`)。

### 加奖项 / 服务 / 教学
分别编辑 `_data/awards.yml`、`service.yml`、`teaching.yml`,格式照抄已有条目即可。

### 改自我介绍或 Research vision
直接编辑 `index.md` / `research.md` 的 Markdown 正文。

### 换主题色
`assets/css/main.css` 顶部把 `--accent: #1d4f8f;` 改成任何颜色(如 UGA 红 `#BA0C2F`),整站联动。

## 发布(push 即上线)

```bash
git add -A && git commit -m "add paper" && git push
```

约 1 分钟后生效。本地不需要 Ruby/Jekyll;如想本地预览,可安装 Jekyll 后 `jekyll serve`。

## ⚠️ 首次上线步骤(只做一次)

新站目前在 `redesign` 分支。确认满意后:

1. 合并到 master:
   ```bash
   git checkout master && git merge redesign && git push
   ```
2. 旧的 al-folio 是通过 GitHub Actions 部署到 `gh-pages` 分支的。新站不需要 Actions:
   到 GitHub 仓库 **Settings → Pages → Build and deployment**,把 Source 设为
   **Deploy from a branch**,选 **master / (root)**。
3. (可选)删除遗留的 `gh-pages` 分支。

## 备注

- 截图里提到的新论文(UWB-Prac、EarCardio、KDC、MagicPatch 等)还没有进
  `_data/publications.yml` 和 `highlights.yml`,请按上面的格式补充。
- NeRF2 我按惯例标了 co-first(`*`),请确认。
- CV 文件在 `assets/pdf/`,更新 CV 时替换文件并改 `_config.yml` 里的 `cv_path`。
