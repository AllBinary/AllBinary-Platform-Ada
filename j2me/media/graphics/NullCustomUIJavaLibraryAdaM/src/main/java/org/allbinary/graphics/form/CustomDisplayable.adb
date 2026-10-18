--  Generated Code Do Not Modify



package body org.allbinary.graphics.form.CustomDisplayable_Package is

   procedure Initialize_Fields (This : in out CustomDisplayable'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CustomDisplayable'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CustomDisplayable_Access is
      This : constant CustomDisplayable_Access := new CustomDisplayable;
   begin
      CustomDisplayable_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setTitle (This : in out CustomDisplayable; title : Unbounded_String) is
   begin
        null;
   end setTitle;

end org.allbinary.graphics.form.CustomDisplayable_Package;


