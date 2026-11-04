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


with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package_References;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package; use org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package;
with org.allbinary.input.automation.robot.osgi.InputAutomationRobotInterfaceWrapper_Package;

package body org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package is

   subtype InputRobotInterface_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access;
   function "=" (Left, Right : InputRobotInterface_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array;
   function "=" (Left, Right : InputRobotInterface_Access_Array) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access;
   function "=" (Left, Right : InputRobotInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputRobotInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputRobotInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputAutomationRobotChangeEvent_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
   subtype InputAutomationRobotChangeEvent_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
   subtype InputAutomationRobotChangeEvent_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
   subtype InputAutomationRobotChangeEvent_Access_Array_Access_Array is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
   subtype InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References.InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationRobotChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.osgi.InputAutomationRobotChangeEvent_Package_References."=";
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
      InputAutomationRobotUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getChangeEvent (inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) return InputAutomationRobotChangeEvent_Access is
      inputRobotInterface : constant InputRobotInterface_Access := InputRobotInterface_Access (inputRobotInterface_Param);
      inputAutomationRobotInterfaceWrapper : InputAutomationRobotInterfaceWrapper_Access;
      inputAutomationRobotChangeEvent : InputAutomationRobotChangeEvent_Access;
   begin
        inputAutomationRobotInterfaceWrapper := InputAutomationRobotInterfaceWrapper_Package.Create (inputRobotInterface);
        inputAutomationRobotChangeEvent := InputAutomationRobotChangeEvent_Package.Create (inputAutomationRobotInterfaceWrapper);
        return inputAutomationRobotChangeEvent;
   end getChangeEvent;

   procedure getChangeEvent (inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) is
      Java_Result : constant InputAutomationRobotChangeEvent_Access := getChangeEvent (inputRobotInterface_Param => inputRobotInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChangeEvent;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotUtil_Package;


