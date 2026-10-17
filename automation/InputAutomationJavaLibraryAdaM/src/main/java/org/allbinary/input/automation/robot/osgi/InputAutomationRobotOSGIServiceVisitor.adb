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


package body org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package is

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
      Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out InputAutomationRobotOSGIServiceVisitor; anyType : Java_Object_Access) return Java_Object_Access is
   begin
        return This.visit (OSGIServiceInterface_Access (anyType));
   end visit;

   function visit (This : in out InputAutomationRobotOSGIServiceVisitor; osgiServiceInterface : OSGIServiceInterface_Access) return Boolean is
      inputAutomationRobotServiceInterface : InputAutomationRobotServiceInterface_Access;
      inputRobotInterfaceArray : InputRobotInterface_Access_Array_Access;
      index : Integer;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("visit"));
            inputAutomationRobotServiceInterface := InputAutomationRobotServiceInterface_Access (osgiServiceInterface);
            inputRobotInterfaceArray := inputAutomationRobotServiceInterface.getInputRobotInterfaceArray;
            for index in 0 .. (inputRobotInterfaceArray'Length) - 1 loop
                This.logUtil.putF (To_Unbounded_String ("Adding: ") & inputRobotInterfaceArray (index).getName, This'Unchecked_Access, To_Unbounded_String ("visit"));
                InputRobotFactory_Package.getInstance.add (inputRobotInterfaceArray (index));
            end loop;
            return True;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("visit"), e);
            return False;
        end;
   end visit;

   procedure visit (This : in out InputAutomationRobotOSGIServiceVisitor; anyType : Java_Object_Access) is
      Java_Result : constant Java_Object_Access := InputAutomationRobotOSGIServiceVisitor'Class (This).visit (anyType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out InputAutomationRobotOSGIServiceVisitor; osgiServiceInterface : OSGIServiceInterface_Access) is
      Java_Result : constant Boolean := InputAutomationRobotOSGIServiceVisitor'Class (This).visit (osgiServiceInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.input.automation.robot.osgi.InputAutomationRobotOSGIServiceVisitor_Package;


