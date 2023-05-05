local ok, better = pcall(require, "better-comment")
if not ok then 
   return

end

better.Setup({
  tags = {
        {
            name = "!",
            fg = "#FF2D00",
            bg = "",
            bold = true,
            virtual_text = "errores",
        },
        {
            name = "?",
            fg = "#3498DB",
            bg = "",
            bold = true,
            virtual_text = "dudas del codigo",
        },
        {
            name = "todo",
            fg = "#FF8C00",
            bg = "",
            bold = true,
            virtual_text = "PENDIENTES",
        },
        {
            name = "*",
            fg = "#98C379",
            bg = "",
            bold = true,
            virtual_text = "imformacion importante",
        },
        {
            name = "@param",
            fg = "#0a7aca",
            bg = "",
            bold = true,
            virtual_text = "parametros",
        }

    }
})


