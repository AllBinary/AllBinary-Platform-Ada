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


package body org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package is

   procedure Initialize_Fields (This : in out InputAutomationServiceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationServiceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationServiceFactory_Access is
      This : constant InputAutomationServiceFactory_Access := new InputAutomationServiceFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return InputAutomationServiceFactory_Access is
   begin
        return InputAutomationServiceFactory_Package.inputAutomationServiceFactory;
   end getInstance;

   function getService (This : in out InputAutomationServiceFactory; bundle : Bundle_Access; registration : ServiceRegistration_Access) return Java_Object_Access is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getService"));
        return InputAutomationJFrame_Package.getInstance;
   end getService;

   procedure ungetService (This : in out InputAutomationServiceFactory; bundle : Bundle_Access; registration : ServiceRegistration_Access; service : Java_Object_Access) is
   begin
        null;
   end ungetService;

   procedure getInstance is
      Java_Result : constant InputAutomationServiceFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getService (This : in out InputAutomationServiceFactory; bundle : Bundle_Access; registration : ServiceRegistration_Access) is
      Java_Result : constant Java_Object_Access := InputAutomationServiceFactory'Class (This).getService (bundle, registration);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getService;

begin
   null;
   inputAutomationServiceFactory := InputAutomationServiceFactory_Package.Create;

end org.allbinary.input.automation.osgi.InputAutomationServiceFactory_Package;


