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


with bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package; use bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;

package body org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package is

   package InputAutomationRobotServiceInterface_Package renames Standard.bundle.input.automation.robot.InputAutomationRobotServiceInterface_Package;
   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   procedure Initialize_Fields (This : in out InputAutomationRobotOSGIServiceVisitor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationRobotOSGIServiceVisitor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationRobotOSGIServiceVisitor_Access is
      This : constant InputAutomationRobotOSGIServiceVisitor_Access := new InputAutomationRobotOSGIServiceVisitor;
   begin
      InputAutomationRobotOSGIServiceVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out InputAutomationRobotOSGIServiceVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return InputAutomationRobotOSGIServiceVisitor'Class (This).visit (OSGIServiceInterface_Access (anyType));
   end visit;

   function visit (This : in out InputAutomationRobotOSGIServiceVisitor; osgiServiceInterface_Param : access OSGIServiceInterface_Package.OSGIServiceInterface'Class) return Boolean is
      osgiServiceInterface : constant OSGIServiceInterface_Access := OSGIServiceInterface_Access (osgiServiceInterface_Param);
      inputAutomationRobotServiceInterface : InputAutomationRobotServiceInterface_Access;
      inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, InputAutomationRobotOSGIServiceVisitor_Access'(This'Unchecked_Access), To_Unbounded_String ("visit"));
            inputAutomationRobotServiceInterface := InputAutomationRobotServiceInterface_Access (osgiServiceInterface);
            inputRobotInterfaceArray := inputAutomationRobotServiceInterface.getInputRobotInterfaceArray;
            for index in 0 .. (inputRobotInterfaceArray'Length) - 1 loop
                This.logUtil.putF (To_Unbounded_String ("Adding: ") & inputRobotInterfaceArray (index).getName, InputAutomationRobotOSGIServiceVisitor_Access'(This'Unchecked_Access), To_Unbounded_String ("visit"));
                InputRobotFactory_Package.getInstance.add (inputRobotInterfaceArray (index));
            end loop;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationRobotOSGIServiceVisitor_Access'(This'Unchecked_Access), To_Unbounded_String ("visit"), e);
            return False;
                end;
        end;
   end visit;

   procedure visit (This : in out InputAutomationRobotOSGIServiceVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := InputAutomationRobotOSGIServiceVisitor'Class (This).visit (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out InputAutomationRobotOSGIServiceVisitor; osgiServiceInterface_Param : access OSGIServiceInterface_Package.OSGIServiceInterface'Class) is
      Java_Result : constant Boolean := InputAutomationRobotOSGIServiceVisitor'Class (This).visit (osgiServiceInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out InputAutomationRobotOSGIServiceVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return InputAutomationRobotOSGIServiceVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out InputAutomationRobotOSGIServiceVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := InputAutomationRobotOSGIServiceVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package;


