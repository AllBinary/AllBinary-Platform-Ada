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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package; use org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
with org.allbinary.globals.URLGLOBALS_Package; use org.allbinary.globals.URLGLOBALS_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationData_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationData_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationView_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfiguration_Package; use org.allbinary.business.user.modules.configuration.UserConfiguration_Package;

package org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package is

   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package FREEBLISKET_PATH_GLOBALS_Package renames Standard.org.allbinary.globals.FREEBLISKET_PATH_GLOBALS_Package;
   package URLGLOBALS_Package renames Standard.org.allbinary.globals.URLGLOBALS_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type UserConfigurationInterfaceFactory is tagged;
   type UserConfigurationInterfaceFactory_Access is access all UserConfigurationInterfaceFactory'Class;
   type UserConfigurationInterfaceFactory_Access_Array is array (Natural range <>) of UserConfigurationInterfaceFactory_Access;
   type UserConfigurationInterfaceFactory_Access_Array_Access is access all UserConfigurationInterfaceFactory_Access_Array;

   type UserConfigurationInterfaceFactory is new Java_Object with null record;
   configurationName : Unbounded_String;

   procedure Initialize (This : in out UserConfigurationInterfaceFactory'Class);
   function Create return UserConfigurationInterfaceFactory_Access;
   function getInstance (document_Param : access Document'Class) return UserConfigurationInterface_Access;
   procedure getInstance (document_Param : access Document'Class);
   function getInstance (userRole_Param : access UserRole'Class) return UserConfigurationInterface_Access;
   procedure getInstance (userRole_Param : access UserRole'Class);
   function getInstance return UserConfigurationInterface_Access;

end org.allbinary.business.user.modules.configuration.UserConfigurationInterfaceFactory_Package;


