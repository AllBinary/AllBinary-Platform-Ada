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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.help.JavaHelpSetNotifier_Package; use org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.automation.module.DefaultListModelHelper_Package; use org.allbinary.input.automation.module.DefaultListModelHelper_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.DefaultListModelHelper_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;

package body org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package is

   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package JavaHelpSetNotifier_Package renames Standard.org.allbinary.logic.java.help.JavaHelpSetNotifier_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype InputAutomationModuleConfiguration_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   subtype InputAutomationModuleConfiguration_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   subtype InputAutomationModuleConfiguration_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   subtype InputAutomationModuleConfiguration_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   subtype InputAutomationModuleConfiguration_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   subtype InputAutomationModuleConfigurations_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";
   subtype InputAutomationModuleConfigurations_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";
   subtype InputAutomationModuleConfigurations_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";
   subtype InputAutomationModuleConfigurations_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";
   subtype InputAutomationModuleConfigurations_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References.InputAutomationModuleConfigurations_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleConfigurations_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package_References."=";
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
   subtype DefaultListModelHelper_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access;
   function "=" (Left, Right : DefaultListModelHelper_Access) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
   subtype DefaultListModelHelper_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array;
   function "=" (Left, Right : DefaultListModelHelper_Access_Array) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
   subtype DefaultListModelHelper_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access;
   function "=" (Left, Right : DefaultListModelHelper_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
   subtype DefaultListModelHelper_Access_Array_Access_Array is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array;
   function "=" (Left, Right : DefaultListModelHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
   subtype DefaultListModelHelper_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.DefaultListModelHelper_Package_References.DefaultListModelHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DefaultListModelHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.DefaultListModelHelper_Package_References."=";
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
   procedure Initialize_Fields (This : in out InputAutomationModuleFactoryFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleFactoryFactory'Class; inputAutomationModuleConfigurations_Param : access InputAutomationModuleConfigurations_Package.InputAutomationModuleConfigurations'Class; helpSetListenerInterface_Param : access HelpSetListener_Package.HelpSetListener'Class) is
      inputAutomationModuleConfigurations : constant InputAutomationModuleConfigurations_Access := InputAutomationModuleConfigurations_Access (inputAutomationModuleConfigurations_Param);
      helpSetListenerInterface : constant HelpSetListener_Access := HelpSetListener_Access (helpSetListenerInterface_Param);
      collection : Collection_Access;
      iterator : Iterator_Access;
      inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access;
   begin
      Initialize_Fields (This);
        This.helpSetListenerInterface := helpSetListenerInterface;
        This.defaultListModelHelper := DefaultListModelHelper_Package.Create;
        This.hashMap := StdUtil_Package.getInstance.createHashMap;
        collection := inputAutomationModuleConfigurations.getHashMap.values;
        iterator := collection.iterator;
        inputAutomationModuleConfiguration := null;
        while iterator.hasNext loop
            inputAutomationModuleConfiguration := InputAutomationModuleConfiguration_Access (iterator.next);
            InputAutomationModuleFactoryFactory'Class (This).add (inputAutomationModuleConfiguration);
        end loop;
        This.defaultListModelHelper.initDefaultModelList;
        This.logUtil.putF (To_Unbounded_String ("Loaded ") & Java_Image (This.hashMap.size) & To_Unbounded_String ("/") & Java_Image (This.defaultListModelHelper.getListModel.getSize) & To_Unbounded_String (" Input Automation Modules"), InputAutomationModuleFactoryFactory_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
   end Initialize;

   function Create (inputAutomationModuleConfigurations_Param : access InputAutomationModuleConfigurations_Package.InputAutomationModuleConfigurations'Class; helpSetListenerInterface_Param : access HelpSetListener_Package.HelpSetListener'Class) return InputAutomationModuleFactoryFactory_Access is
      This : constant InputAutomationModuleFactoryFactory_Access := new InputAutomationModuleFactoryFactory;
   begin
      InputAutomationModuleFactoryFactory_Package.Initialize (This.all, inputAutomationModuleConfigurations_Param, helpSetListenerInterface_Param);
      return This;
   end Create;

   procedure add (This : in out InputAutomationModuleFactoryFactory; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class) is
      inputAutomationModuleConfiguration : constant InputAutomationModuleConfiguration_Access := InputAutomationModuleConfiguration_Access (inputAutomationModuleConfiguration_Param);
      inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access;
      helpSet : HelpSet_Access;
      helpSetEvent : HelpSetEvent_Access;
   begin
        inputAutomationModuleInterface := InputAutomationModuleFactoryInterface_Access (inputAutomationModuleConfiguration.getInputAutomationModuleInterface);
        This.hashMap.put (Java_Box (inputAutomationModuleConfiguration.getName), inputAutomationModuleInterface);
        This.defaultListModelHelper.add (inputAutomationModuleConfiguration.getName);
        helpSet := inputAutomationModuleInterface.getHelpSet;
        if not (JavaHelpSetNotifier_Package.isNotified (helpSet)) then
            helpSetEvent := HelpSetEvent_Package.Create (InputAutomationModuleFactoryFactory_Access'(This'Unchecked_Access), helpSet, HelpSetEvent_Package.HELPSET_ADDED);
            This.helpSetListenerInterface.helpSetAdded (helpSetEvent);
        end if;
   end add;

   function getListModel (This : in out InputAutomationModuleFactoryFactory) return ListModel_Access is
   begin
        return ListModel_Access (This.defaultListModelHelper.getListModel);
   end getListModel;

   function getInstance (This : in out InputAutomationModuleFactoryFactory; moduleName : Unbounded_String) return InputAutomationModuleFactoryInterface_Access is
      commonStrings : CommonStrings_Access;
      inputAutomationModuleFactoryInterface : InputAutomationModuleFactoryInterface_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (To_Unbounded_String ("Getting Module: ") & moduleName, InputAutomationModuleFactoryFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        inputAutomationModuleFactoryInterface := InputAutomationModuleFactoryInterface_Access (This.hashMap.get (Java_Box (moduleName)));
        if (inputAutomationModuleFactoryInterface) = (null) then
            This.logUtil.putF (To_Unbounded_String ("Module: ") & moduleName & To_Unbounded_String (" was null"), InputAutomationModuleFactoryFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        end if;
        return inputAutomationModuleFactoryInterface;
   end getInstance;

   procedure getInstance (This : in out InputAutomationModuleFactoryFactory; moduleName : Unbounded_String) is
      Java_Result : constant InputAutomationModuleFactoryInterface_Access := InputAutomationModuleFactoryFactory'Class (This).getInstance (moduleName => moduleName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package;


