--  Generated Code Do Not Modify


package body org.eclipse.swt.graphics.Resource_Package is

   procedure Initialize_Fields (This : in out Resource'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Resource'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Resource_Access is
      This : constant Resource_Access := new Resource;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure dispose (This : in out Resource) is
   begin
        null;
   end dispose;

   function isDisposed (This : in out Resource) return Boolean is
   begin
        return False;
   end isDisposed;

   procedure isDisposed (This : in out Resource) is
      Java_Result : constant Boolean := Resource'Class (This).isDisposed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isDisposed;

end org.eclipse.swt.graphics.Resource_Package;


