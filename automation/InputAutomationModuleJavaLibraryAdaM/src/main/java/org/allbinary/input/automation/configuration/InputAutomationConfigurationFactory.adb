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


package body org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package is

   procedure Initialize_Fields (This : in out InputAutomationConfigurationFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.inputAutomationConfiguration := null;
   end Initialize_Fields;


   function getInstance return InputAutomationConfigurationFactory_Access is
   begin
        return InputAutomationConfigurationFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out InputAutomationConfigurationFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationConfigurationFactory_Access is
      This : constant InputAutomationConfigurationFactory_Access := new InputAutomationConfigurationFactory;
   begin
      InputAutomationConfigurationFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out InputAutomationConfigurationFactory; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      INPUT_AUTOMATION_CONFIGURATION : Unbounded_String;
      file : File_Access;
      jaxbContext : JAXBContext_Access;
      unmarshaller : Unmarshaller_Access;
      root : JAXBElement_Access;
      inputAutomationModuleConfigurationList : List_Access;
      size : Integer;
      inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access;
      index : Integer;
   begin
        logUtil := LogUtil_Package.getInstance;
        commonStrings := CommonStrings_Package.getInstance;
        INPUT_AUTOMATION_CONFIGURATION := To_Unbounded_String ("InputAutomationConfiguration");
        file := InputAutomationConfiguration_Package.getFile;
        if file.isFile then
            logUtil.putF (To_Unbounded_String ("LoadingConfiguration"), INPUT_AUTOMATION_CONFIGURATION, commonStrings.INIT);
            jaxbContext := JAXBContext_Package.newInstance (InputAutomationConfiguration_Package.InputAutomationConfiguration'Tag);
            unmarshaller := jaxbContext.createUnmarshaller;
            root := unmarshaller.unmarshal (StreamSource_Package.Create (FileInputStream_Package.Create (file)), InputAutomationConfiguration_Package.InputAutomationConfiguration'Tag);
            This.inputAutomationConfiguration := InputAutomationConfiguration_Access (root.getValue);
            inputAutomationModuleConfigurationList := This.inputAutomationConfiguration.getInputAutomationModuleConfigurationList;
            logUtil.putF (To_Unbounded_String ("isInstalled: ") & Java_Image (This.inputAutomationConfiguration.isInstalled) & To_Unbounded_String (" inputAutomationModuleConfigurationList: ") & Java_Image (inputAutomationModuleConfigurationList), INPUT_AUTOMATION_CONFIGURATION, commonStrings.INIT);
            if (inputAutomationModuleConfigurationList) /= (null) then
                size := inputAutomationModuleConfigurationList.size;
                inputAutomationModuleConfiguration := null;
                for index in 0 .. (size) - 1 loop
                    inputAutomationModuleConfiguration := inputAutomationModuleConfigurationList.get (index);
                    inputAutomationModuleConfiguration.init (abeClientInformation);
                end loop;
            end if;
            logUtil.putF (To_Unbounded_String ("LoadedConfiguration"), INPUT_AUTOMATION_CONFIGURATION, commonStrings.INIT);
        else
            logUtil.putF (To_Unbounded_String ("New Configuration"), INPUT_AUTOMATION_CONFIGURATION, commonStrings.INIT);
            This.inputAutomationConfiguration := InputAutomationConfiguration_Package.Create;
        end if;
   end init;

begin
   null;
   instance := InputAutomationConfigurationFactory_Package.Create;

end org.allbinary.input.automation.configuration.InputAutomationConfigurationFactory_Package;


