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


with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRole_Package_References;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationData_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationData_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationView_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References;
with org.allbinary.business.user.modules.configuration.UserConfiguration_Package; use org.allbinary.business.user.modules.configuration.UserConfiguration_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.business.time.Time_Package;
with org.allbinary.business.time.created.TimeCreated_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.business.user.modules.configuration.UserConfiguration_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package body org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   subtype UserRole_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access;
   function "=" (Left, Right : UserRole_Access) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array;
   function "=" (Left, Right : UserRole_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access;
   function "=" (Left, Right : UserRole_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array;
   function "=" (Left, Right : UserRole_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserRole_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype UserConfigurationInterface_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access;
   function "=" (Left, Right : UserConfigurationInterface_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
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
   function getInstance (document_Param : access Document_Package.Document'Class) return UserConfigurationInterface_Access is
      document : constant Document_Access := Document_Access (document_Param);
      configurationNode : Node_Access;
   begin
        configurationNode := DomSearchHelper_Package.getNode (UserConfigurationData_Package.NAME, document.getChildNodes);
        return UserConfigurationInterface_Access (UserConfigurationView_Package.Create (configurationNode).getUserConfigurationInterface);
   end getInstance;

   --  throws Exception
   function getInstance (userRole_Param : access UserRole_Package.UserRole'Class) return UserConfigurationInterface_Access is
      userRole : constant UserRole_Access := UserRole_Access (userRole_Param);
      abPath : AbPath_Access;
      documentString : Unbounded_String;
      document : Document_Access;
   begin
        abPath := AbPath_Package.Create ((URLGLOBALS_Package.getMainPath) + (FREEBLISKET_PATH_GLOBALS_Package.getInstance.USERCONFIGURATIONPATH), UserConfigurationInterfaceFactory_Package.configurationName & userRole.toString & Java_Image (AbPathData_Package.getInstance.EXTENSION_SEP) & Java_Image (UserConfigurationData_Package.UNCRYPTED_EXTENSION));
        documentString := CryptFileReader_Package.Create (UserConfigurationData_Package.UNCRYPTED_EXTENSION, UserConfigurationData_Package.ENCRYPTED_EXTENSION).get (abPath);
        document := DomDocumentHelper_Package.create (documentString);
        return UserConfigurationInterface_Access (UserConfigurationInterfaceFactory_Package.getInstance (document));
   end getInstance;

   --  throws Exception
   function getInstance return UserConfigurationInterface_Access is
   begin
        return UserConfigurationInterface_Access (UserConfiguration_Package.Create);
   end getInstance;

   procedure getInstance (document_Param : access Document_Package.Document'Class) is
      Java_Result : constant UserConfigurationInterface_Access := getInstance (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (userRole_Param : access UserRole_Package.UserRole'Class) is
      Java_Result : constant UserConfigurationInterface_Access := getInstance (userRole_Param => userRole_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   configurationName := To_Unbounded_String ("DefaultUserConfiguration");

end org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;


