require("parrot").setup {
    -- Providers must be explicitly added to make them available.
    providers = {
        gemini = {
            api_key = os.getenv "GEMINI_API_KEY",
        },
    },
}
