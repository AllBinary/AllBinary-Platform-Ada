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


package body org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package is

   procedure Initialize_Fields (This : in out InputAutomationModuleServiceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.inputAutomationModuleInterfaceArray := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleServiceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationModuleServiceFactory_Access is
      This : constant InputAutomationModuleServiceFactory_Access := new InputAutomationModuleServiceFactory;
   begin
      InputAutomationModuleServiceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getService (This : in out InputAutomationModuleServiceFactory; bundle : Bundle_Access; registration : ServiceRegistration_Access) return Java_Object_Access is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getService"));
        return InputAutomationModuleService_Package.Create (This.getInputAutomationModuleInterfaceArray);
   end getService;

   procedure ungetService (This : in out InputAutomationModuleServiceFactory; bundle : Bundle_Access; registration : ServiceRegistration_Access; service : Java_Object_Access) is
   begin
        null;
   end ungetService;

   function getInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleServiceFactory) return InputAutomationModuleFactoryInterface_Access_Array_Access is
   begin
        return This.inputAutomationModuleInterfaceArray;
   end getInputAutomationModuleInterfaceArray;

   procedure setInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleServiceFactory; inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access) is
   begin
        This.inputAutomationModuleInterfaceArray := inputAutomationModuleInterfaceArray;
   end setInputAutomationModuleInterfaceArray;

   procedure getService (This : in out InputAutomationModuleServiceFactory; bundle : Bundle_Access; registration : ServiceRegistration_Access) is
      Java_Result : constant Java_Object_Access := InputAutomationModuleServiceFactory'Class (This).getService (bundle, registration);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getService;

end org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package;


