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


package body org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package is

   procedure Initialize_Fields (This : in out InputAutomationRobotUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationRobotUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationRobotUtil_Access is
      This : constant InputAutomationRobotUtil_Access := new InputAutomationRobotUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getChangeEvent (inputRobotInterface : InputRobotInterface_Access) return InputAutomationRobotChangeEvent_Access is
      inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access;
      inputAutomationRobotChangeEvent : InputAutomationRobotChangeEvent_Access;
   begin
        inputAutomationRobotInterfaceWrapper := InputAutomationRobotInterfaceWrapper_Package.Create (inputRobotInterface);
        inputAutomationRobotChangeEvent := InputAutomationRobotChangeEvent_Package.Create (inputAutomationRobotInterfaceWrapper);
        return inputAutomationRobotChangeEvent;
   end getChangeEvent;

   procedure getChangeEvent (inputRobotInterface : InputRobotInterface_Access) is
      Java_Result : constant InputAutomationRobotChangeEvent_Access := getChangeEvent (inputRobotInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChangeEvent;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package;


