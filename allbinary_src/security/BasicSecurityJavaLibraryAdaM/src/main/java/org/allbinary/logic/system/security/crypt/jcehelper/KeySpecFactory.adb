--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out KeySpecFactory'Class) is
   begin
      null;
      This.DES := To_Unbounded_String ("DES");
      This.DESEDE := To_Unbounded_String ("DESede");
      This.BLOWFISH := To_Unbounded_String ("Blowfish");
   end Initialize_Fields;


   function getInstance return KeySpecFactory_Access is
   begin
        return KeySpecFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out KeySpecFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return KeySpecFactory_Access is
      This : constant KeySpecFactory_Access := new KeySpecFactory;
   begin
      KeySpecFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance (This : in out KeySpecFactory; algorithm : Unbounded_String; keyData : Short_Short_Integer_Array_Access) return KeySpec_Access is
      tsUtil : TsUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            tsUtil := TsUtil_Package.getInstance;
            if (tsUtil.compareTo (algorithm, This.DES)) = (0) then
                return KeySpec_Access (DESKeySpec_Package.Create (keyData));
            elsif (tsUtil.compareTo (algorithm, This.DESEDE)) = (0) then
                return KeySpec_Access (DESedeKeySpec_Package.Create (keyData));
            else
                Java_Throw (Java_New_Exception ("RuntimeException"));
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, KeySpecFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            Java_Throw (Java_New_Exception ("RuntimeException"));
                end;
        end;
   end getInstance;

   procedure getInstance (This : in out KeySpecFactory; algorithm : Unbounded_String; keyData : Short_Short_Integer_Array_Access) is
      Java_Result : constant KeySpec_Access := KeySpecFactory'Class (This).getInstance (algorithm, keyData);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := KeySpecFactory_Package.Create;

end org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory_Package;


