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


package body bundle.input.automation.robot.InputAutomationRobotService_Package is

   procedure Initialize_Fields (This : in out InputAutomationRobotService'Class) is
   begin
      null;
      This.inputRobotInterfaceArray := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationRobotService'Class; inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        InputAutomationRobotService'Class (This).setInputRobotInterfaceArray (inputRobotInterfaceArray);
   end Initialize;

   function Create (inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access) return InputAutomationRobotService_Access is
      This : constant InputAutomationRobotService_Access := new InputAutomationRobotService;
   begin
      InputAutomationRobotService_Package.Initialize (This.all, inputRobotInterfaceArray);
      return This;
   end Create;

   function getInputRobotInterfaceArray (This : in out InputAutomationRobotService) return InputRobotInterface_Access_Array_Access is
   begin
        return This.inputRobotInterfaceArray;
   end getInputRobotInterfaceArray;

   procedure setInputRobotInterfaceArray (This : in out InputAutomationRobotService; inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access) is
   begin
        This.inputRobotInterfaceArray := inputRobotInterfaceArray;
   end setInputRobotInterfaceArray;

end bundle.input.automation.robot.InputAutomationRobotService_Package;


