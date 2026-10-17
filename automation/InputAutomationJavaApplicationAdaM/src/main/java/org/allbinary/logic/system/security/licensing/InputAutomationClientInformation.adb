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


package body org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package is

   procedure Initialize_Fields (This : in out InputAutomationClientInformation'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationClientInformation'Class) is
   begin
        AbeClientInformation_Package.Initialize (This, To_Unbounded_String ("InputAutomationTool"), To_Unbounded_String ("0.0.1"), To_Unbounded_String ("InputAutomationTool 0.0.1"), To_Unbounded_String ("IA"));
   end Initialize;

   function Create return InputAutomationClientInformation_Access is
      This : constant InputAutomationClientInformation_Access := new InputAutomationClientInformation;
   begin
      InputAutomationClientInformation_Package.Initialize (This.all);
      return This;
   end Create;

end org.allbinary.logic.system.security.licensing.InputAutomationClientInformation_Package;


