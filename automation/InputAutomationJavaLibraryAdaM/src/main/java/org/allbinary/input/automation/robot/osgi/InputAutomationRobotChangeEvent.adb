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


package body org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package is

   procedure Initialize_Fields (This : in out InputAutomationRobotChangeEvent'Class) is
   begin
      null;
      This.inputAutomationRobotInterfaceWrapper := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationRobotChangeEvent'Class; inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access) is
   begin
      Initialize_Fields (This);
        This.setInputAutomationRobotInterfaceWrapper (inputAutomationRobotInterfaceWrapper);
   end Initialize;

   function Create (inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access) return InputAutomationRobotChangeEvent_Access is
      This : constant InputAutomationRobotChangeEvent_Access := new InputAutomationRobotChangeEvent;
   begin
      InputAutomationRobotChangeEvent_Package.Initialize (This.all, inputAutomationRobotInterfaceWrapper);
      return This;
   end Create;

   function getInputAutomationRobotInterfaceWrapper (This : in out InputAutomationRobotChangeEvent) return InputAutomationRobotInterfaceWrapper_Access is
   begin
        return This.inputAutomationRobotInterfaceWrapper;
   end getInputAutomationRobotInterfaceWrapper;

   procedure setInputAutomationRobotInterfaceWrapper (This : in out InputAutomationRobotChangeEvent; inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access) is
   begin
        This.inputAutomationRobotInterfaceWrapper := inputAutomationRobotInterfaceWrapper;
   end setInputAutomationRobotInterfaceWrapper;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;


