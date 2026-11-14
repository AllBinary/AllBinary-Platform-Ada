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


with bundle.input.automation.module.InputAutomationModuleService_Package; use bundle.input.automation.module.InputAutomationModuleService_Package;
with org.allbinary.input.automation.InputAutomationJFrame_Package; use org.allbinary.input.automation.InputAutomationJFrame_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package; use org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.osgi.OSGIServiceInterface_Package; use org.allbinary.osgi.OSGIServiceInterface_Package;
with org.allbinary.osgi.OSGIServiceInterface_Package_References;
with org.allbinary.osgi.OSGIServiceVisitorInterface_Package; use org.allbinary.osgi.OSGIServiceVisitorInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with bundle.input.automation.InputAutomationBundleActivatorListenerInterface_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.thread.RunnableInterface_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package is

   package InputAutomationModuleService_Package renames Standard.bundle.input.automation.module.InputAutomationModuleService_Package;
   package InputAutomationJFrame_Package renames Standard.org.allbinary.input.automation.InputAutomationJFrame_Package;
   package InputAutomationConfigurationUtil_Package renames Standard.org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package;
   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype OSGIServiceInterface_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access;
   function "=" (Left, Right : OSGIServiceInterface_Access) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   subtype OSGIServiceInterface_Access_Array is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array;
   function "=" (Left, Right : OSGIServiceInterface_Access_Array) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   subtype OSGIServiceInterface_Access_Array_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceInterface_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   subtype OSGIServiceInterface_Access_Array_Access_Array is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OSGIServiceInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   subtype OSGIServiceInterface_Access_Array_Access_Array_Access is org.allbinary.osgi.OSGIServiceInterface_Package_References.OSGIServiceInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OSGIServiceInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.osgi.OSGIServiceInterface_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
      Java_Result : constant Java_Object_Access := InputAutomationModuleOSGIServiceVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure visit (This : in out InputAutomationModuleOSGIServiceVisitor; osgiServiceInterface_Param : access OSGIServiceInterface_Package.OSGIServiceInterface'Class) is
      Java_Result : constant Boolean := InputAutomationModuleOSGIServiceVisitor'Class (This).visit (osgiServiceInterface_Param => osgiServiceInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out InputAutomationModuleOSGIServiceVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return InputAutomationModuleOSGIServiceVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out InputAutomationModuleOSGIServiceVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := InputAutomationModuleOSGIServiceVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.input.automation.module.osgi.InputAutomationModuleOSGIServiceVisitor_Package;


