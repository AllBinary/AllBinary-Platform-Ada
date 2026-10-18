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



package body org.allbinary.input.automation.InputAutomationData_Package is

   procedure Initialize_Fields (This : in out InputAutomationData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationData_Access is
      This : constant InputAutomationData_Access := new InputAutomationData;
   begin
      InputAutomationData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("INPUT_AUTOMATION");
   INSTALLATION := To_Unbounded_String ("INPUT_AUTOMATION_INSTALLATION");

end org.allbinary.input.automation.InputAutomationData_Package;


