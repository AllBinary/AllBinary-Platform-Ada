--  Generated Code Do Not Modify


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.game.input.AndroidAPI1KeyFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out AndroidAPI1KeyFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return AndroidAPI1KeyFactory_Access is
   begin
        if (AndroidAPI1KeyFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AndroidAPI1KeyFactory_Package.instance := AndroidAPI1KeyFactory_Package.Create;
        end if;
        return AndroidAPI1KeyFactory_Access (AndroidAPI1KeyFactory_Package.instance);
   end getInstance;

   procedure Initialize (This : in out AndroidAPI1KeyFactory'Class) is
   begin
      AndroidKeyFactory_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AndroidAPI1KeyFactory_Access is
      This : constant AndroidAPI1KeyFactory_Access := new AndroidAPI1KeyFactory;
   begin
      AndroidAPI1KeyFactory_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.game.input.AndroidAPI1KeyFactory_Package;


