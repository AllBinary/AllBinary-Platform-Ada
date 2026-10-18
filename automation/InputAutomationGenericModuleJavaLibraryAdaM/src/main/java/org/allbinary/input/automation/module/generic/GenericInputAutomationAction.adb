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



package body org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package is

   procedure Initialize_Fields (This : in out GenericInputAutomationAction'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericInputAutomationAction'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GenericInputAutomationAction_Access is
      This : constant GenericInputAutomationAction_Access := new GenericInputAutomationAction;
   begin
      GenericInputAutomationAction_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure test (This : in out GenericInputAutomationAction) is
   begin
        null;
   end test;

   function getInputRobotInterfaceArray (This : in out GenericInputAutomationAction) return InputRobotInterface_Access_Array_Access is
   begin
        return null;
   end getInputRobotInterfaceArray;

end org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package;


