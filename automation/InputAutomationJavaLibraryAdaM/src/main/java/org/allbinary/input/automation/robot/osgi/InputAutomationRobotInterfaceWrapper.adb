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


package body org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package is

   procedure Initialize_Fields (This : in out InputAutomationRobotInterfaceWrapper'Class) is
   begin
      null;
      This.inputRobotInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationRobotInterfaceWrapper'Class; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) is
      inputRobotInterface : constant InputRobotInterface_Access := InputRobotInterface_Access (inputRobotInterface_Param);
   begin
      Initialize_Fields (This);
        This.setInputRobotInterface (inputRobotInterface);
   end Initialize;

   function Create (inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) return InputAutomationRobotInterfaceWrapper_Access is
      This : constant InputAutomationRobotInterfaceWrapper_Access := new InputAutomationRobotInterfaceWrapper;
   begin
      InputAutomationRobotInterfaceWrapper_Package.Initialize (This.all, inputRobotInterface_Param);
      return This;
   end Create;

   function getInputRobotInterface (This : in out InputAutomationRobotInterfaceWrapper) return InputRobotInterface_Access is
   begin
        return This.inputRobotInterface;
   end getInputRobotInterface;

   procedure setInputRobotInterface (This : in out InputAutomationRobotInterfaceWrapper; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) is
      inputRobotInterface : constant InputRobotInterface_Access := InputRobotInterface_Access (inputRobotInterface_Param);
   begin
        This.inputRobotInterface := inputRobotInterface;
   end setInputRobotInterface;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package;


