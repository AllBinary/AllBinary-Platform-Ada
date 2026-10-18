--  Generated Code Do Not Modify



package body org.allbinary.graphics.form.item.TextFieldItemHelper_Package is

   procedure Initialize_Fields (This : in out TextFieldItemHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TextFieldItemHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TextFieldItemHelper_Access is
      This : constant TextFieldItemHelper_Access := new TextFieldItemHelper;
   begin
      TextFieldItemHelper_Package.Initialize (This.all);
      return This;
   end Create;


end org.allbinary.graphics.form.item.TextFieldItemHelper_Package;


