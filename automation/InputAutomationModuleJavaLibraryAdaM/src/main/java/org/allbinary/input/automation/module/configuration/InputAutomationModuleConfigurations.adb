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


with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.input.automation.module.InputAutomationModuleData_Package; use org.allbinary.input.automation.module.InputAutomationModuleData_Package;
with org.allbinary.input.automation.module.NewInputAutomationModulesData_Package; use org.allbinary.input.automation.module.NewInputAutomationModulesData_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;

package body org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package is

   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package InputAutomationModuleData_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleData_Package;
   package NewInputAutomationModulesData_Package renames Standard.org.allbinary.input.automation.module.NewInputAutomationModulesData_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out InputAutomationModuleConfigurations'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.hashMap := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; file_Param : access File_Package.File'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      file : constant File_Access := File_Access (file_Param);
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
        InputAutomationModuleConfigurations'Class (This).setHashMap (HashMap_Package.Create);
        bytes := new Short_Short_Integer_Array'(0 .. (100000) - 1 => 0);
        idFile := FileInputStream_Package.Create (file);
        length := idFile.read (bytes);
        data := Java_New_String (bytes);
        endIndex := Java_Last_Index_Of (data, Java_Image ('>'));
        document := DomDocumentHelper_Package.create (Unbounded_Slice (data, (0) + 1, (endIndex) + (1)));
        nodeList := document.getElementsByTagName (NewInputAutomationModulesData_Package.NAME);
        if (nodeList.getLength) > (0) then
            nameNodeList := document.getElementsByTagName (InputAutomationModuleData_Package.NAME);
            This.logUtil.putF (To_Unbounded_String ("Number Of Module(s) Specified: ") & Java_Image (nameNodeList.getLength), InputAutomationModuleConfigurations_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
            for index in 0 .. (nameNodeList.getLength) - 1 loop
                node := nameNodeList.item (index);
                InputAutomationModuleConfigurations'Class (This).add (InputAutomationModuleConfiguration_Package.Create (abeClientInformation, node));
            end loop;
        end if;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; file_Param : access File_Package.File'Class) return InputAutomationModuleConfigurations_Access is
      This : constant InputAutomationModuleConfigurations_Access := new InputAutomationModuleConfigurations;
   begin
      InputAutomationModuleConfigurations_Package.Initialize (This.all, abeClientInformation_Param, file_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; document_Param : access Document_Package.Document'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      document : constant Document_Access := Document_Access (document_Param);
      nameNodeList : NodeList_Access;
      node : Node_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        InputAutomationModuleConfigurations'Class (This).setHashMap (HashMap_Package.Create);
        nameNodeList := document.getElementsByTagName (InputAutomationModuleData_Package.NAME);
        This.logUtil.putF (To_Unbounded_String ("Number Of Module(s) Specified: ") & Java_Image (nameNodeList.getLength), InputAutomationModuleConfigurations_Access'(This'Unchecked_Access), To_Unbounded_String ("Contructor"));
        for index in 0 .. (nameNodeList.getLength) - 1 loop
            node := nameNodeList.item (index);
            InputAutomationModuleConfigurations'Class (This).add (InputAutomationModuleConfiguration_Package.Create (abeClientInformation, node));
        end loop;
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; document_Param : access Document_Package.Document'Class) return InputAutomationModuleConfigurations_Access is
      This : constant InputAutomationModuleConfigurations_Access := new InputAutomationModuleConfigurations;
   begin
      InputAutomationModuleConfigurations_Package.Initialize (This.all, abeClientInformation_Param, document_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class; inputAutomationModuleConfigurationList_Param : access List_Package.List'Class) is
      inputAutomationModuleConfigurationList : constant List_Access := List_Access (inputAutomationModuleConfigurationList_Param);
      size : Integer;
      inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access;
      index : Integer;
   begin
      Initialize_Fields (This);
        InputAutomationModuleConfigurations'Class (This).setHashMap (HashMap_Package.Create);
        size := inputAutomationModuleConfigurationList.size;
        inputAutomationModuleConfiguration := null;
        for index in 0 .. (size) - 1 loop
            inputAutomationModuleConfiguration := inputAutomationModuleConfigurationList.get (index);
            InputAutomationModuleConfigurations'Class (This).add (inputAutomationModuleConfiguration);
        end loop;
   end Initialize;

   function Create (inputAutomationModuleConfigurationList_Param : access List_Package.List'Class) return InputAutomationModuleConfigurations_Access is
      This : constant InputAutomationModuleConfigurations_Access := new InputAutomationModuleConfigurations;
   begin
      InputAutomationModuleConfigurations_Package.Initialize (This.all, inputAutomationModuleConfigurationList_Param);
      return This;
   end Create;

   procedure Initialize (This : in out InputAutomationModuleConfigurations'Class) is
   begin
      Initialize_Fields (This);
        InputAutomationModuleConfigurations'Class (This).setHashMap (HashMap_Package.Create);
   end Initialize;

   function Create return InputAutomationModuleConfigurations_Access is
      This : constant InputAutomationModuleConfigurations_Access := new InputAutomationModuleConfigurations;
   begin
      InputAutomationModuleConfigurations_Package.Initialize (This.all);
      return This;
   end Create;

   procedure add (This : in out InputAutomationModuleConfigurations; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class) is
      inputAutomationModuleConfiguration : constant InputAutomationModuleConfiguration_Access := InputAutomationModuleConfiguration_Access (inputAutomationModuleConfiguration_Param);
   begin
        InputAutomationModuleConfigurations'Class (This).getHashMap.put (inputAutomationModuleConfiguration.getClassName, inputAutomationModuleConfiguration);
   end add;

   procedure remove (This : in out InputAutomationModuleConfigurations; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class) is
      inputAutomationModuleConfiguration : constant InputAutomationModuleConfiguration_Access := InputAutomationModuleConfiguration_Access (inputAutomationModuleConfiguration_Param);
   begin
        InputAutomationModuleConfigurations'Class (This).getHashMap.remove (inputAutomationModuleConfiguration.getClassName);
   end remove;

   function getHashMap (This : in out InputAutomationModuleConfigurations) return HashMap_Access is
   begin
        return This.hashMap;
   end getHashMap;

   procedure setHashMap (This : in out InputAutomationModuleConfigurations; hashMap_Param : access HashMap_Package.HashMap'Class) is
      hashMap : constant HashMap_Access := HashMap_Access (hashMap_Param);
   begin
        This.hashMap := hashMap;
   end setHashMap;

end org.allbinary.input.automation.module.configuration.InputAutomationModuleConfigurations_Package;


