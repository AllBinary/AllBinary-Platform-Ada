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


package body org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package is

   procedure Initialize_Fields (This : in out InputAutomationModuleConfigurations'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.hashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; file_Param : access File'Class) is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      file : File_Access := File_Access (file_Param);
      bytes : Short_Short_Integer_Array_Access;
      idFile : FileInputStream_Access;
      length : Integer;
      data : Unbounded_String;
      endIndex : Integer;
      document : Document_Access;
      nodeList : NodeList_Access;
      nameNodeList : NodeList_Access;
      node : Node_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.setHashMap (HashMap_Package.Create);
        bytes := new Short_Short_Integer_Array'(0 .. (100000) - 1 => 0);
        idFile := FileInputStream_Package.Create (file);
        length := idFile.read (bytes);
        data := Java_New_String (bytes);
        endIndex := data.lastIndexOf ('>');
        document := DomDocumentHelper_Package.create (Unbounded_Slice (data, (0) + 1, (endIndex) + (1)));
        nodeList := document.getElementsByTagName (NewInputAutomationModulesData_Package.NAME);
        if (nodeList.getLength) > (0) then
            nameNodeList := document.getElementsByTagName (InputAutomationModuleData_Package.NAME);
            This.logUtil.putF (To_Unbounded_String ("Number Of Module(s) Specified: ") & Java_Image (nameNodeList.getLength), InputAutomationModuleConfigurations_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
            for index in 0 .. (nameNodeList.getLength) - 1 loop
                node := nameNodeList.item (index);
                This.add (InputAutomationModuleConfiguration_Package.Create (abeClientInformation, node));
            end loop;
        end if;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface'Class; file_Param : access File'Class) return InputAutomationModuleConfigurations_Access is
      This : constant InputAutomationModuleConfigurations_Access := new InputAutomationModuleConfigurations;
   begin
      InputAutomationModuleConfigurations_Package.Initialize (This.all, abeClientInformation_Param, file_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; abeClientInformation_Param : access AbeClientInformationInterface'Class; document_Param : access Document'Class) is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      document : Document_Access := Document_Access (document_Param);
      nameNodeList : NodeList_Access;
      node : Node_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.setHashMap (HashMap_Package.Create);
        nameNodeList := document.getElementsByTagName (InputAutomationModuleData_Package.NAME);
        This.logUtil.putF (To_Unbounded_String ("Number Of Module(s) Specified: ") & Java_Image (nameNodeList.getLength), InputAutomationModuleConfigurations_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
        for index in 0 .. (nameNodeList.getLength) - 1 loop
            node := nameNodeList.item (index);
            This.add (InputAutomationModuleConfiguration_Package.Create (abeClientInformation, node));
        end loop;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface'Class; document_Param : access Document'Class) return InputAutomationModuleConfigurations_Access is
      This : constant InputAutomationModuleConfigurations_Access := new InputAutomationModuleConfigurations;
   begin
      InputAutomationModuleConfigurations_Package.Initialize (This.all, abeClientInformation_Param, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; inputAutomationModuleConfigurationList_Param : access List'Class) is
      inputAutomationModuleConfigurationList : List_Access := List_Access (inputAutomationModuleConfigurationList_Param);
      size : Integer;
      inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        This.setHashMap (HashMap_Package.Create);
        size := inputAutomationModuleConfigurationList.size;
        inputAutomationModuleConfiguration := null;
        for index in 0 .. (size) - 1 loop
            inputAutomationModuleConfiguration := inputAutomationModuleConfigurationList.get (index);
            This.add (inputAutomationModuleConfiguration);
        end loop;
   end Initialize;

   function Create (inputAutomationModuleConfigurationList_Param : access List'Class) return InputAutomationModuleConfigurations_Access is
      This : constant InputAutomationModuleConfigurations_Access := new InputAutomationModuleConfigurations;
   begin
      InputAutomationModuleConfigurations_Package.Initialize (This.all, inputAutomationModuleConfigurationList_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class) is
   begin
      Initialize_Fields (This);
        This.setHashMap (HashMap_Package.Create);
   end Initialize;

   function Create return InputAutomationModuleConfigurations_Access is
      This : constant InputAutomationModuleConfigurations_Access := new InputAutomationModuleConfigurations;
   begin
      InputAutomationModuleConfigurations_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out InputAutomationModuleConfigurations; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration'Class) is
      inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access := InputAutomationModuleConfiguration_Access (inputAutomationModuleConfiguration_Param);
   begin
        This.getHashMap.put (inputAutomationModuleConfiguration.getClassName, inputAutomationModuleConfiguration);
   end add;

   procedure remove (This : in out InputAutomationModuleConfigurations; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration'Class) is
      inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access := InputAutomationModuleConfiguration_Access (inputAutomationModuleConfiguration_Param);
   begin
        This.getHashMap.remove (inputAutomationModuleConfiguration.getClassName);
   end remove;

   function getHashMap (This : in out InputAutomationModuleConfigurations) return HashMap_Access is
   begin
        return This.hashMap;
   end getHashMap;

   procedure setHashMap (This : in out InputAutomationModuleConfigurations; hashMap_Param : access HashMap'Class) is
      hashMap : HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        This.hashMap := hashMap;
   end setHashMap;

end org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;


