
Deface::Override.new(:virtual_path  => "spree/layouts/admin",
                     :name          => "blog_tab",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :partial       => "spree/blog",
                     :disabled      => false)

