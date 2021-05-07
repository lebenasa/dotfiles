require('plugins')

local g = vim.g
local cmd = vim.cmd
local o, wo, bo = vim.o, vim.wo, vim.bo
local utils = require('utils')
local opt = utils.opt
local autocmd = utils.autocmd
local map = utils.map

local buffer = {o, bo}
local window = {o, wo}
opt('textwidth', 120, buffer)
opt('encoding', 'utf-8')
opt('tabstop', 2, buffer)
opt('shiftwidth', 2, buffer)
opt('expandtab', true, buffer)
opt('backspace', 'indent,eol,start')
opt('hlsearch', true)
opt('number', true, window)
opt('relativenumber', true, window)
opt('smartcase', true)
opt('foldmethod', 'syntax')
opt('conceallevel', 0)

opt('termguicolors', true)
opt('background', 'dark')
cmd [[colorscheme spacegray]]

autocmd('nerdtree_tabs',
	[[bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif]],
	true)
map('n', '<F1>', '<cmd>NERDTreeTabsToggle<cr>')
