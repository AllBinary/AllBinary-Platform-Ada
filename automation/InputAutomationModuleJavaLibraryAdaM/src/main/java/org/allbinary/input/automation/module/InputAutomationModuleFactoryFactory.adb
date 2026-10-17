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


package body org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package is

   procedure Initialize_Fields (This : in out InputAutomationModuleFactoryFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleFactoryFactory'Class; inputAutomationModuleConfigurations : InputAutomationModuleConfigurations_Access; helpSetListenerInterface : HelpSetListener_Access) is
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
            This.add (inputAutomationModuleConfiguration);
        end loop;
        This.defaultListModelHelper.initDefaultModelList;
        This.logUtil.putF (To_Unbounded_String ("Loaded ") & Java_Image (This.hashMap.size) & To_Unbounded_String ("/") & Java_Image (This.defaultListModelHelper.getListModel.getSize) & To_Unbounded_String (" Input Automation Modules"), This'Unchecked_Access, To_Unbounded_String ("Contructor"));
   end Initialize;

   function Create (inputAutomationModuleConfigurations : InputAutomationModuleConfigurations_Access; helpSetListenerInterface : HelpSetListener_Access) return InputAutomationModuleFactoryFactory_Access is
      This : constant InputAutomationModuleFactoryFactory_Access := new InputAutomationModuleFactoryFactory;
   begin
      InputAutomationModuleFactoryFactory_Package.Initialize (This.all, inputAutomationModuleConfigurations, helpSetListenerInterface);
      return This;
   end Create;

   procedure add (This : in out InputAutomationModuleFactoryFactory; inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access) is
      inputAutomationModuleInterface : InputAutomationModuleFactoryInterface_Access;
      helpSet : HelpSet_Access;
      helpSetEvent : HelpSetEvent_Access;
   begin
        inputAutomationModuleInterface := inputAutomationModuleConfiguration.getInputAutomationModuleInterface;
        This.hashMap.put (inputAutomationModuleConfiguration.getName, inputAutomationModuleInterface);
        This.defaultListModelHelper.add (inputAutomationModuleConfiguration.getName);
        helpSet := inputAutomationModuleInterface.getHelpSet;
        if not (JavaHelpSetNotifier_Package.isNotified (helpSet)) then
            helpSetEvent := HelpSetEvent_Package.Create (This'Unchecked_Access, helpSet, HelpSetEvent_Package.HELPSET_ADDED);
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
        This.logUtil.putF (To_Unbounded_String ("Getting Module: ") & moduleName, This'Unchecked_Access, commonStrings.GET_INSTANCE);
        inputAutomationModuleFactoryInterface := InputAutomationModuleFactoryInterface_Access (This.hashMap.get (moduleName));
        if (inputAutomationModuleFactoryInterface) = (null) then
            This.logUtil.putF (To_Unbounded_String ("Module: ") & moduleName & To_Unbounded_String (" was null"), This'Unchecked_Access, commonStrings.GET_INSTANCE);
        end if;
        return inputAutomationModuleFactoryInterface;
   end getInstance;

   procedure getInstance (This : in out InputAutomationModuleFactoryFactory; moduleName : Unbounded_String) is
      Java_Result : constant InputAutomationModuleFactoryInterface_Access := InputAutomationModuleFactoryFactory'Class (This).getInstance (moduleName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.automation.module.InputAutomationModuleFactoryFactory_Package;


