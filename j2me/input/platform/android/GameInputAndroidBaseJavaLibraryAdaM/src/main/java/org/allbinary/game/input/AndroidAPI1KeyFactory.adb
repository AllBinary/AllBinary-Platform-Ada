--  Generated Code Do Not Modify


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.input.AndroidGameKey_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.input.AndroidAPI1KeyFactory_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out AndroidAPI1KeyFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return AndroidAPI1KeyFactory_Access is
   begin
        if (AndroidAPI1KeyFactory_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AndroidAPI1KeyFactory_Package.instance := Java_Object_Access (AndroidAPI1KeyFactory_Package.Create);
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


