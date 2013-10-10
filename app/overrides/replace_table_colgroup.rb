Deface::Override.new(:virtual_path => "spree/admin/pages/index", 
                     :name => "new_colgroup_width", 
                     :replace => "colgroup", 
                     :text => '<colgroup>
    <col style="width: 35%" />
    <col style="width: 40%" />
    <col style="width: 10%" />
    <col style="width: 15%" />
  </colgroup>')