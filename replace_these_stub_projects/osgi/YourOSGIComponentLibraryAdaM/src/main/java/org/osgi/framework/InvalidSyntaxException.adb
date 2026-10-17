--  Generated Code Do Not Modify


package body org.osgi.framework.InvalidSyntaxException_Package is

   procedure Initialize_Fields (This : in out InvalidSyntaxException'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out InvalidSyntaxException'Class) is
   begin
      Exception_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return InvalidSyntaxException_Access is
      This : constant InvalidSyntaxException_Access := new InvalidSyntaxException;
   begin
      Initialize (This.all);
      return This;
   end Create;


end org.osgi.framework.InvalidSyntaxException_Package;


