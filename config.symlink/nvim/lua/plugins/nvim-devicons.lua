require'nvim-web-devicons'.setup {
 -- your personnal icons can go here (to override)
 -- DevIcon will be appended to `name`
 override = {
  ["Gemfile$"] = {
    icon = "",
    color = "#cc342d",
    name = "Gemfile"
  };
  ["config.ru"] = {
    icon = "",
    color = "#cc342d",
    name = "ConfigRu"
  };
  ["gemspec"] = {
    icon = "",
    color = "#cc342d",
    name = "Gemspec",
  };
  ["rake"] = {
    icon = "",
    color = "#cc342d",
    name = "Rake"
  };
  ["rakefile"] = {
    icon = "",
    color = "#cc342d",
    name = "Rakefile"
  };
  rb = {
    icon = "",
    color = "#cc342d",
    name = "rb"
  };

 };
 -- globally enable default icons (default to false)
 -- will get overriden by `get_icons` option
 default = true;
}
