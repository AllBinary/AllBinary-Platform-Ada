--  Generated Code Do Not Modify



package body org.allbinary.graphics.form.CustomScreen_Package is

   procedure Initialize_Fields (This : in out CustomScreen'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out CustomScreen'Class) is
   begin
      CustomDisplayable_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return CustomScreen_Access is
      This : constant CustomScreen_Access := new CustomScreen;
   begin
      CustomScreen_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.graphics.form.CustomScreen_Package;


