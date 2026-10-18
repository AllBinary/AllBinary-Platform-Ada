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


   procedure Initialize (This : in out InputAutomationRobotChangeEvent'Class; inputAutomationRobotInterfaceWrapper_Param : access InputAutomationRobotInterfaceWrapper_Package.InputAutomationRobotInterfaceWrapper'Class) is
      inputAutomationRobotInterfaceWrapper : constant InputAutomationRobotInterfaceWrapper_Access := InputAutomationRobotInterfaceWrapper_Access (inputAutomationRobotInterfaceWrapper_Param);
   begin
      Initialize_Fields (This);
        InputAutomationRobotChangeEvent'Class (This).setInputAutomationRobotInterfaceWrapper (inputAutomationRobotInterfaceWrapper);
   end Initialize;

   function Create (inputAutomationRobotInterfaceWrapper_Param : access InputAutomationRobotInterfaceWrapper_Package.InputAutomationRobotInterfaceWrapper'Class) return InputAutomationRobotChangeEvent_Access is
      This : constant InputAutomationRobotChangeEvent_Access := new InputAutomationRobotChangeEvent;
   begin
      InputAutomationRobotChangeEvent_Package.Initialize (This.all, inputAutomationRobotInterfaceWrapper_Param);
      return This;
   end Create;

   function getInputAutomationRobotInterfaceWrapper (This : in out InputAutomationRobotChangeEvent) return InputAutomationRobotInterfaceWrapper_Access is
   begin
        return This.inputAutomationRobotInterfaceWrapper;
   end getInputAutomationRobotInterfaceWrapper;

   procedure setInputAutomationRobotInterfaceWrapper (This : in out InputAutomationRobotChangeEvent; inputAutomationRobotInterfaceWrapper_Param : access InputAutomationRobotInterfaceWrapper_Package.InputAutomationRobotInterfaceWrapper'Class) is
      inputAutomationRobotInterfaceWrapper : constant InputAutomationRobotInterfaceWrapper_Access := InputAutomationRobotInterfaceWrapper_Access (inputAutomationRobotInterfaceWrapper_Param);
   begin
        This.inputAutomationRobotInterfaceWrapper := inputAutomationRobotInterfaceWrapper;
   end setInputAutomationRobotInterfaceWrapper;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;


