--  Generated Code Do Not Modify



package body java.lang.Deprecated_Package is

   procedure Initialize_Fields (This : in out Deprecated'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Deprecated'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Deprecated_Access is
      This : constant Deprecated_Access := new Deprecated;
   begin
      Deprecated_Package.Initialize (This.all);
      return This;
   end Create;


end java.lang.Deprecated_Package;


