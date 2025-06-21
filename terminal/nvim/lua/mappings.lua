require "nvchad.mappings"

-- .config/nvim/lua/mappings.lua
-- add yours here

local map = vim.keymap.set

-- Mapeos en modo visual
map("v", "<C-c>", "y", { desc = "Copiar selección" })
map("v", "<C-x>", "d", { desc = "Cortar selección" })
map("v", "<C-S-c>", '"+y', { desc = "Copiar selección al clipboard del sistema" })

-- Exterder selection
-- Seleccionar palabra hacia la derecha
map('n', '<C-S-Right>', 'vE', { noremap = true, silent = true })
map('v', '<C-S-Right>', 'E', { noremap = true, silent = true })

-- Seleccionar palabra hacia la izquierda
map('n', '<C-S-Left>', 'vB', { noremap = true, silent = true })
map('v', '<C-S-Left>', 'B', { noremap = true, silent = true })

-- Mapeos en modo inserción
map("i", "<C-v>", "<C-r>+", { desc = "Pegar desde clipboard" })
map("i", "<C-z>", "<C-o>u", { desc = "Deshacer" })

-- Mapeos generales
map("n", "<C-S-c>", '"+yy', { desc = "Copiar al clipboard del sistema" })
map("n", "<C-S-v>", '"+p', { desc = "Pegar desde clipboard del sistema" })
map("n", "<C-z>", "<C-o>u", { desc = "Deshacer" })
map('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true, desc = "Toggle arbol de archivos" })

-- Deshabilitar Ctrl+C por defecto en modo normal para evitar conflictos
map("n", "<C-c>", "<Nop>", { silent = true })
-- Luego habilitamos nuestra funcionalidad
map("n", "<C-c>", "yy", { desc = "Copiar línea actual" })
--Eliminar una linea
map('n', '<C-d>', 'dd', { noremap = true, silent = true })
map('i', '<C-d>', '<Esc>ddi', { noremap = true, silent = true })

-- Guardar en modo normal con Ctrl-s
map('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

-- Guardar en modo insert con Ctrl-s (sale a normal, guarda, vuelve a insert)
map('i', '<C-s>', '<Esc>:w<CR>i', { noremap = true, silent = true })

-- Salir del archivo actual (guardar y cerrar :wq)
--map('n', '<C-q>', ':wq<CR>', { noremap = true, silent = true })

-- Salir CON CONFIRMACION DE GUARDAR(:q!)
--map('n', '<C-q>', ':q!<CR>', { noremap = true, silent = true })
map('n', '<C-q>', ':confirm q<CR>', { noremap = true, silent = true, desc = "salir con confirmacion" })

-- En modo insert (usa <Esc> primero para salir del modo insert)
map('i', '<C-q>', '<Esc>:confirm q<CR>', { noremap = true, silent = true, desc = "Salir con confirmación desde insert" })


-- Modo normal: cerrar ventana actual con confirmación
--map('n', '<C-q>', ':confirm close<CR>', { noremap = true, silent = true, desc = "Cerrar split con confirmación" })

-- Modo insert: salir al modo normal y cerrar ventana
--map('i', '<C-q>', '<Esc>:confirm close<CR>', { noremap = true, silent = true, desc = "Cerrar split con confirmación desde insert" })
-- Salir de todos los archivos y cerrar Neovim completamente
--map('n', '<Leader>Q', ':qa<CR>', { noremap = true, silent = true })

--Salir sin guardar(con Esc Esc)
--map('n', '<Esc><Esc>', ':q!<CR>', { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>") 
