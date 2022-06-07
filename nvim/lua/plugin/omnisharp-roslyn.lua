local omnisharp_roslyn = {}
local util = require('packer.util')

function omnisharp_roslyn.install()
    local arch
    local ext = 'tar.gz'
    local package = 'omnisharp'
    local server = 'https://github.com/OmniSharp/omnisharp-roslyn/releases/latest/download/'

    if vim.fn.has('win32') == 1 then
        arch = 'win-x64'
    elseif vim.fn.has('macunix') == 1 then
        arch = 'osx'
    elseif vim.fn.has('unix') == 1 then
        arch = 'linux-x64'
    else
        return
    end

    local asset = package .. '-' .. arch .. '.' .. ext
    local uri = server .. asset
    local install_path = util.join_paths(vim.fn.stdpath('data'), 'site/omnisharp/')
    local cmd_download = 'curl -sL ' .. uri .. ' 2>&1 | tar -xzC ' .. install_path
    os.execute('rm -r ' .. install_path)
    os.execute('mkdir -p ' .. install_path)
    os.execute(cmd_download)
end

return omnisharp_roslyn
