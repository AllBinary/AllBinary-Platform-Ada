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


with org.allbinary.input.automation.module.InputAutomationActionInterface_Package; use org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
with org.allbinary.input.automation.module.InputAutomationModuleData_Package; use org.allbinary.input.automation.module.InputAutomationModuleData_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package; use org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package; use org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package; use org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package;
with org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package; use org.allbinary.input.automation.module.generic_Id.GenericInputAutomationAction_Package;
with org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package; use org.allbinary.input.automation.module.generic_Id.GenericInputAutomationWorker_Package;

package body org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package is

   package InputAutomationActionInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationActionInterface_Package;
   package InputAutomationModuleData_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleData_Package;
   package GenericModuleConfigurationJPanel_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.GenericModuleConfigurationJPanel_Package;
   package GenericProfile_Package renames Standard.org.allbinary.input.automation.module.generic_Id.configuration.profile.GenericProfile_Package;
   package NoImageComparatorConstraints_Package renames Standard.org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package;
   package NoMotionRectangleConstraints_Package renames Standard.org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package;
   procedure Initialize_Fields (This : in out GenericModuleFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericModuleFactory'Class) is
   begin
        AbstractInputAutomationFactory_Package.Initialize (This, NAME, GenericModuleConfigurationJPanel_Package.Create);
   end Initialize;

   function Create return GenericModuleFactory_Access is
      This : constant GenericModuleFactory_Access := new GenericModuleFactory;
   begin
      GenericModuleFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out GenericModuleFactory) return RunnableInterface_Access is
      genericProfile : GenericProfile_Access;
      inputAutomationActionInterface : InputAutomationActionInterface_Access;
   begin
        genericProfile := (GenericModuleConfigurationJPanel_Access (GenericModuleFactory'Class (This).getConfigurationJPanel)).getSelectedGenericProfile;
        inputAutomationActionInterface := InputAutomationActionInterface_Access (GenericInputAutomationAction_Package.Create);
        return RunnableInterface_Access (GenericInputAutomationWorker_Package.Create (inputAutomationActionInterface, genericProfile, NoMotionRectangleConstraints_Package.Create, NoImageComparatorConstraints_Package.Create));
   end getInstance;

begin
   null;
   NAME := To_Unbounded_String ("Generic") & Java_Image (InputAutomationModuleData_Package.MODULE_NAME_END);

end org.allbinary.input.automation.module.generic_Id.GenericModuleFactory_Package;


