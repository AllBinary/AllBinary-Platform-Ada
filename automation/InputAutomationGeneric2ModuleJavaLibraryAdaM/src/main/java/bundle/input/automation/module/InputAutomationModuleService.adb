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
with bundle.input.automation.module.InputAutomationModuleServiceInterface_Package;

package body bundle.input.automation.module.InputAutomationModuleService_Package is

   subtype InputAutomationModuleFactoryInterface_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   procedure Initialize_Fields (This : in out InputAutomationModuleService'Class) is
   begin
      null;
      This.inputAutomationModuleInterfaceArray := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleService'Class; inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access) is
   begin
      Initialize_Fields (This);
        InputAutomationModuleService'Class (This).setInputAutomationModuleInterfaceArray (inputAutomationModuleInterfaceArray);
   end Initialize;

   function Create (inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access) return InputAutomationModuleService_Access is
      This : constant InputAutomationModuleService_Access := new InputAutomationModuleService;
   begin
      InputAutomationModuleService_Package.Initialize (This.all, inputAutomationModuleInterfaceArray);
      return This;
   end Create;

   function getInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleService) return InputAutomationModuleFactoryInterface_Access_Array_Access is
   begin
        return This.inputAutomationModuleInterfaceArray;
   end getInputAutomationModuleInterfaceArray;

   procedure setInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleService; inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access) is
   begin
        This.inputAutomationModuleInterfaceArray := inputAutomationModuleInterfaceArray;
   end setInputAutomationModuleInterfaceArray;

end bundle.input.automation.module.InputAutomationModuleService_Package;


