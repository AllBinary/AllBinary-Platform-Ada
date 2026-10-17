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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (document : Document_Access) return UserConfigurationInterface_Access is
      configurationNode : Node_Access;
   begin
        configurationNode := DomSearchHelper_Package.getNode (UserConfigurationData_Package.NAME, document.getChildNodes);
        return UserConfigurationInterface_Access (UserConfigurationView_Package.Create (configurationNode).getUserConfigurationInterface);
   end getInstance;

   --  throws Exception
   function getInstance (userRole : UserRole_Access) return UserConfigurationInterface_Access is
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

   procedure getInstance (document : Document_Access) is
      Java_Result : constant UserConfigurationInterface_Access := getInstance (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (userRole : UserRole_Access) is
      Java_Result : constant UserConfigurationInterface_Access := getInstance (userRole);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance is
      Java_Result : constant UserConfigurationInterface_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   configurationName := To_Unbounded_String ("DefaultUserConfiguration");

end org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;


