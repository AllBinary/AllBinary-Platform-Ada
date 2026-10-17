--  Generated Code Do Not Modify


package body org.allbinary.graphics.form.item.ImageItem_Package is

   procedure Initialize_Fields (This : in out ImageItem'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ImageItem'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageItem_Access is
      This : constant ImageItem_Access := new ImageItem;
   begin
      Initialize (This.all);
      return This;
   end Create;


end org.allbinary.graphics.form.item.ImageItem_Package;


