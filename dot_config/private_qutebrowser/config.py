# pyright: reportUndefinedVariable=false
# ruff: noqa: F821


import dracula.draw

config.load_autoconfig()

# 深色主题
dracula.draw.blood(c, {
                              "spacing" : {"vertical": 6, "horizontal": 8}
                   })
c.colors.webpage.darkmode.enabled = True

# 切换模式后关闭输入法
config.bind('<Escape>', 'mode-leave ;; spawn fcitx5-remote -c', mode='insert')
config.bind('o', 'set-cmd-text -s :open ;; spawn fcitx5-remote -c', mode='normal')
config.bind('O', 'set-cmd-text -s :open -t ;; spawn fcitx5-remote -c', mode='normal')
config.bind('/', 'set-cmd-text / ;; spawn fcitx5-remote -c', mode='normal')
config.bind('?', 'set-cmd-text ? ;; spawn fcitx5-remote -c', mode='normal')
config.bind('<Ctrl-Return>', 'command-accept -t ;; spawn fcitx5-remote -c', mode='command')
config.bind('<Return>', 'command-accept ;; spawn fcitx5-remote -c', mode='command')
# 让焦点离开输入框
config.bind('<Escape>', 'mode-leave ;; jseval -q if (document.activeElement) document.activeElement.blur() ;; spawn fcitx5-remote -c', mode='insert')
# 字体大小
c.fonts.default_size = "16pt"
# 默认语言修改为中文
c.content.headers.accept_language = "zh-CN;q=0.9,en-US;en;q=0.8"
# 开始页面和默认页面
c.url.start_pages = ['https://www.bing.com']
c.url.default_page = 'https://www.bing.com'
# 配置搜索引擎
c.url.searchengines = {
    'DEFAULT': 'https://www.bing.com/search?q={}',
    'g': 'https://www.google.com/search?q={}',
    'b': 'https://www.baidu.com/s?wd={}',
    'gh': 'https://github.com/search?q={}',
    'du': 'https://duckduckgo.com/?q={}',
}

# 代理服务
c.content.proxy = 'socks://127.0.0.1:7890'

# 虚拟机下禁用硬件加速，不然会无法显示内容
c.qt.args = ['disable-gpu', 'disable-gpu-compositing']

# Google 登录专用 User-Agent
config.set('content.headers.user_agent', 
           'Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0', 
           pattern='https://accounts.google.com/*')

config.set('content.headers.user_agent', 
           'Mozilla/5.0 (X11; Linux x86_64; rv:128.0) Gecko/20100101 Firefox/128.0', 
           pattern='https://*.google.com/*')
