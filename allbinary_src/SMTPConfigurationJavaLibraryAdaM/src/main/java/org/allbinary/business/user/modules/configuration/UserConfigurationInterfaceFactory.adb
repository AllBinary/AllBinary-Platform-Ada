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


package body org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out UserConfigurationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserConfigurationInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return UserConfigurationInterfaceFactory_Access is
      This : constant UserConfigurationInterfaceFactory_Access := new UserConfigurationInterfaceFactory;
   begin
      UserConfigurationInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (document_Param : access Document'Class) return UserConfigurationInterface_Access is
      document : Document_Access := Document_Access (document_Param);
      configurationNode : Node_Access;
   begin
        configurationNode := DomSearchHelper_Package.getNode (UserConfigurationData_Package.NAME, document.getChildNodes);
        return UserConfigurationInterface_Access (UserConfigurationView_Package.Create (configurationNode).getUserConfigurationInterface);
   end getInstance;

   --  throws Exception
   function getInstance (userRole_Param : access UserRole'Class) return UserConfigurationInterface_Access is
      userRole : UserRole_Access := UserRole_Access (userRole_Param);
      abPath : AbPath_Access;
      documentString : Unbounded_String;
      document : Document_Access;
   begin
        abPath := AbPath_Package.Create ((URLGLOBALS.getMainPath) + (FREEBLISKET_PATH_GLOBALS.getInstance.USERCONFIGURATIONPATH), Java_Image (UserConfigurationInterfaceFactory_Package.configurationName) & userRole.toString & Java_Image (AbPathData_Package.getInstance.EXTENSION_SEP) & Java_Image (UserConfigurationData_Package.UNCRYPTED_EXTENSION));
        documentString := CryptFileReader_Package.Create (UserConfigurationData_Package.UNCRYPTED_EXTENSION, UserConfigurationData_Package.ENCRYPTED_EXTENSION).get (abPath);
        document := DomDocumentHelper_Package.create (documentString);
        return UserConfigurationInterfaceFactory_Package.getInstance (document);
   end getInstance;

   --  throws Exception
   function getInstance return UserConfigurationInterface_Access is
   begin
        return UserConfiguration_Package.Create;
   end getInstance;

   procedure getInstance (document_Param : access Document'Class) is
      Java_Result : constant UserConfigurationInterface_Access := getInstance (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (userRole_Param : access UserRole'Class) is
      Java_Result : constant UserConfigurationInterface_Access := getInstance (userRole_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   configurationName := To_Unbounded_String ("DefaultUserConfiguration");

end org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;


