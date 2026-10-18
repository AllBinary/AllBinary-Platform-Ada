--  Generated Code Do Not Modify



package body org.allbinary.graphics.form.item.ABImageStringItem_Package is

   procedure Initialize_Fields (This : in out ABImageStringItem'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ABImageStringItem'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ABImageStringItem_Access is
      This : constant ABImageStringItem_Access := new ABImageStringItem;
   begin
      ABImageStringItem_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.graphics.form.item.ABImageStringItem_Package;


