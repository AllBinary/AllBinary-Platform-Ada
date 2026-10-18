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


with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package; use org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package;

package body org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package is

   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   procedure Initialize_Fields (This : in out InputAutomationGenericModuleServiceFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationGenericModuleServiceFactory'Class) is
      inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access;
   begin
      InputAutomationModuleServiceFactory_Package.Initialize (This);
      Initialize_Fields (This);
        begin
            inputAutomationModuleInterfaceArray := new InputAutomationModuleFactoryInterface_Access_Array'(0 .. (1) - 1 => null);
            inputAutomationModuleInterfaceArray (0) := GenericModuleFactory_Package.Create;
            InputAutomationGenericModuleServiceFactory'Class (This).setInputAutomationModuleInterfaceArray (inputAutomationModuleInterfaceArray);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, InputAutomationGenericModuleServiceFactory_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, e);
                end;
        end;
   end Initialize;

   function Create return InputAutomationGenericModuleServiceFactory_Access is
      This : constant InputAutomationGenericModuleServiceFactory_Access := new InputAutomationGenericModuleServiceFactory;
   begin
      InputAutomationGenericModuleServiceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return InputAutomationGenericModuleServiceFactory_Access is
   begin
        return InputAutomationGenericModuleServiceFactory_Package.inputAutomationGenericModuleServiceFactory_Var;
   end getInstance;

begin
   null;
   inputAutomationGenericModuleServiceFactory_Var := InputAutomationGenericModuleServiceFactory_Package.Create;

end org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package;


