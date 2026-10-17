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
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.logic.control.crypt.file.CryptFileReader_Package; use org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
with org.allbinary.logic.io.path.AbPath_Package; use org.allbinary.logic.io.path.AbPath_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.context.configuration.ContextConfigurationData_Package; use org.allbinary.business.context.configuration.ContextConfigurationData_Package;
with org.allbinary.business.context.configuration.ContextConfigurationView_Package; use org.allbinary.business.context.configuration.ContextConfigurationView_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package; use org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package; use org.allbinary.business.context.configuration.ContextConfigurationPathUtil_Package;

package org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package CryptFileReader_Package renames Standard.org.allbinary.logic.control.crypt.file.CryptFileReader_Package;
   package AbPath_Package renames Standard.org.allbinary.logic.io.path.AbPath_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ContextConfigurationInterfaceFactory is tagged;
   type ContextConfigurationInterfaceFactory_Access is access all ContextConfigurationInterfaceFactory'Class;
   type ContextConfigurationInterfaceFactory_Access_Array is array (Natural range <>) of ContextConfigurationInterfaceFactory_Access;
   type ContextConfigurationInterfaceFactory_Access_Array_Access is access all ContextConfigurationInterfaceFactory_Access_Array;

   type ContextConfigurationInterfaceFactory is new Java_Object with null record;
   instance : ContextConfigurationInterfaceFactory_Access;

   procedure Initialize (This : in out ContextConfigurationInterfaceFactory'Class);
   function Create return ContextConfigurationInterfaceFactory_Access;
   function getInstance return ContextConfigurationInterfaceFactory_Access;
   function getInstance (This : in out ContextConfigurationInterfaceFactory; document : Document_Access) return ContextConfigurationInterface_Access;
   procedure getInstance (This : in out ContextConfigurationInterfaceFactory; document : Document_Access);
   function getInstance (This : in out ContextConfigurationInterfaceFactory; contextName : Unbounded_String) return ContextConfigurationInterface_Access;
   procedure getInstance (This : in out ContextConfigurationInterfaceFactory; contextName : Unbounded_String);

end org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;


