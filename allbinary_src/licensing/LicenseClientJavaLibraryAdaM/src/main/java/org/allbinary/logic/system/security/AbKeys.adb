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


with org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package; use org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;

package body org.allbinary.logic.system.security.AbKeys_Package is

   package AbeLicenseInterfaceFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;
   procedure Initialize_Fields (This : in out AbKeys'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return AbKeys_Access is
   begin
        return AbKeys_Package.instance;
   end getInstance;

   procedure Initialize (This : in out AbKeys'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbKeys_Access is
      This : constant AbKeys_Access := new AbKeys;
   begin
      AbKeys_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws LicensingException
   function getKey (This : in out AbKeys; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; keyName : Unbounded_String) return Unbounded_String is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        begin
            This.logUtil.putF (To_Unbounded_String ("Getting Key: ") & keyName, AbKeys_Access'(This'Unchecked_Access), To_Unbounded_String ("getKey"));
            if ((((Java_Compare_To (keyName, To_Unbounded_String ("DirectX 8"))) = (0)) or else ((Java_Compare_To (keyName, To_Unbounded_String ("DirectX"))) = (0))) or else ((Java_Compare_To (keyName, To_Unbounded_String ("Low Level"))) = (0))) or else ((Java_Compare_To (keyName, To_Unbounded_String ("System Drivers"))) = (0)) then
                return To_Unbounded_String ("Temp For Input Library");
            end if;
            return AbeLicenseInterfaceFactory_Package.getInstance.getLicenseInstance (abeClientInformation).getKey (keyName);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
   end getKey;

   procedure getKey (This : in out AbKeys; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; keyName : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbKeys'Class (This).getKey (abeClientInformation_Param, keyName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

begin
   null;
   instance := AbKeys_Package.Create;

end org.allbinary.logic.system.security.AbKeys_Package;


