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


package body org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package is

   procedure Initialize_Fields (This : in out InputAutomationModuleOSGIServiceVisitor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleOSGIServiceVisitor'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationModuleOSGIServiceVisitor_Access is
      This : constant InputAutomationModuleOSGIServiceVisitor_Access := new InputAutomationModuleOSGIServiceVisitor;
   begin
      InputAutomationModuleOSGIServiceVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out InputAutomationModuleOSGIServiceVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return InputAutomationModuleOSGIServiceVisitor'Class (This).visit (OSGIServiceInterface_Access (anyType));
   end visit;

   function visit (This : in out InputAutomationModuleOSGIServiceVisitor; osgiServiceInterface_Param : access OSGIServiceInterface_Package.OSGIServiceInterface'Class) return Boolean is
      osgiServiceInterface : constant OSGIServiceInterface_Access := OSGIServiceInterface_Access (osgiServiceInterface_Param);
      inputAutomationModuleService : InputAutomationModuleService_Access;
      inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access;
      index : Integer;
   begin
        begin
            inputAutomationModuleService := InputAutomationModuleService_Access (osgiServiceInterface);
            inputAutomationModuleInterfaceArray := inputAutomationModuleService.getInputAutomationModuleInterfaceArray;
            for index in 0 .. (inputAutomationModuleInterfaceArray'Length) - 1 loop
                InputAutomationJFrame_Package.getInstance.onAdd (InputAutomationConfigurationUtil_Package.getChangeEvent (inputAutomationModuleInterfaceArray (index)));
            end loop;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationModuleOSGIServiceVisitor_Access'(This'Unchecked_Access), To_Unbounded_String ("visit"), e);
            return False;
                end;
        end;
   end visit;

   procedure visit (This : in out InputAutomationModuleOSGIServiceVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := InputAutomationModuleOSGIServiceVisitor'Class (This).visit (anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out InputAutomationModuleOSGIServiceVisitor; osgiServiceInterface_Param : access OSGIServiceInterface_Package.OSGIServiceInterface'Class) is
      Java_Result : constant Boolean := InputAutomationModuleOSGIServiceVisitor'Class (This).visit (osgiServiceInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package;


