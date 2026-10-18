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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.system.os.NoOperatingSystem_Package; use org.allbinary.logic.system.os.NoOperatingSystem_Package;

package body org.allbinary.logic.system.os.OperatingSystemFactory_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out OperatingSystemFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.genericOperatingSystem := NoOperatingSystem_Package.NO_OPERATING_SYSTEM;
   end Initialize_Fields;


   function getInstance return OperatingSystemFactory_Access is
   begin
        return OperatingSystemFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out OperatingSystemFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return OperatingSystemFactory_Access is
      This : constant OperatingSystemFactory_Access := new OperatingSystemFactory;
   begin
      OperatingSystemFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getOperatingSystemInstance (This : in out OperatingSystemFactory) return GenericOperatingSystem_Access is
      commonStrings : CommonStrings_Access;
      osString : Unbounded_String;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            osString := StringMaker_Package.Create.append (To_Unbounded_String ("OperatingSystem Info: ")).append (This.genericOperatingSystem.toString).toString;
            Ada.Text_IO.Put_Line (Java_Image (osString));
            This.logUtil.putF (osString, OperatingSystemFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (commonStrings.EXCEPTION_Id, OperatingSystemFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
                end;
        end;
        return This.genericOperatingSystem;
   end getOperatingSystemInstance;

begin
   null;
   instance := OperatingSystemFactory_Package.Create;

end org.allbinary.logic.system.os.OperatingSystemFactory_Package;


