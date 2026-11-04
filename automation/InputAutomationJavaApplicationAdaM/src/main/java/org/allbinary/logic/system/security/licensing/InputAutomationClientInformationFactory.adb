-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package; use org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package;
with org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package;

package body org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package is

   subtype InputAutomationClientInformation_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access;
   function "=" (Left, Right : InputAutomationClientInformation_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";
   subtype InputAutomationClientInformation_Access_Array is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array;
   function "=" (Left, Right : InputAutomationClientInformation_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";
   subtype InputAutomationClientInformation_Access_Array_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array_Access;
   function "=" (Left, Right : InputAutomationClientInformation_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";
   subtype InputAutomationClientInformation_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationClientInformation_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";
   subtype InputAutomationClientInformation_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References.InputAutomationClientInformation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationClientInformation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package_References."=";
   procedure Initialize_Fields (This : in out InputAutomationClientInformationFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out InputAutomationClientInformationFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return InputAutomationClientInformationFactory_Access is
      This : constant InputAutomationClientInformationFactory_Access := new InputAutomationClientInformationFactory;
   begin
      InputAutomationClientInformationFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InputAutomationClientInformation_Access is
   begin
        return InputAutomationClientInformation_Access (InputAutomationClientInformationFactory_Package.instance);
   end getInstance;

begin
   null;
   instance := InputAutomationClientInformation_Package.Create;

end org.allbinary.logic.system.security.licensing.InputAutomationClientInformationFactory_Package;


