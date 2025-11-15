# listPWD

在切换目录后自动执行 `lsd -l` 显示目录内容的 Zsh 插件。

## 功能

- **智能切换显示**：每次切换目录后自动列出目录内容
- **性能保护**：自动跳过文件数超过 200 个的目录
- **网络挂载检测**：自动跳过网络挂载目录（如 NFS、SMB 等）
- **非交互式兼容**：在非交互式 shell 中自动禁用

## 安装

### 方法一：通过 curl 一行命令安装（推荐）

在终端运行以下命令即可安装：

```bash
echo 'source <(curl -s https://raw.githubusercontent.com/zzh0u/listPWD/main/list_pwd.sh)' >> ~/.zshrc
```

然后重新加载配置：

```bash
source ~/.zshrc
```

### 方法二：手动安装

1. 克隆或下载此项目
2. 在 `~/.zshrc` 中添加以下行：

```bash
source /path/to/listPWD/list_pwd.sh
```

3. 重新加载配置：

```bash
source ~/.zshrc
```

## 使用

安装完成后，每次使用 `cd` 命令切换目录，都会自动执行 `lsd -l` 显示目录详细内容。

## 依赖

- Zsh
- [lsd](https://github.com/Peltoche/lsd)（现代版的 ls 命令）

如果未安装 lsd，可以使用以下命令安装：

**macOS:**
```bash
brew install lsd
```

**Linux:**
```bash
# Debian/Ubuntu
sudo apt install lsd

# Arch Linux
sudo pacman -S lsd
```
