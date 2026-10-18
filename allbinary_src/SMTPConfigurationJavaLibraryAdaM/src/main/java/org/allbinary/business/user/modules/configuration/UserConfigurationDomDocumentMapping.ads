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
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;

package org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package is

   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type UserConfigurationDomDocumentMapping is tagged;
   type UserConfigurationDomDocumentMapping_Access is access all UserConfigurationDomDocumentMapping'Class;
   type UserConfigurationDomDocumentMapping_Access_Array is array (Natural range <>) of UserConfigurationDomDocumentMapping_Access;
   type UserConfigurationDomDocumentMapping_Access_Array_Access is access all UserConfigurationDomDocumentMapping_Access_Array;
   type UserConfigurationDomDocumentMapping_Access_Array_Access_Array is array (Natural range <>) of UserConfigurationDomDocumentMapping_Access_Array_Access;
   type UserConfigurationDomDocumentMapping_Access_Array_Access_Array_Access is access all UserConfigurationDomDocumentMapping_Access_Array_Access_Array;

   type UserConfigurationDomDocumentMapping is new Java_Object and DomDocumentMappingInterface with record
      userConfigurationInterface : UserConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserConfigurationDomDocumentMapping'Class; userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class);
   function Create (userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class) return UserConfigurationDomDocumentMapping_Access;
   function toXmlDoc (This : in out UserConfigurationDomDocumentMapping) return Document_Access;
   function toDomDocumentString (This : in out UserConfigurationDomDocumentMapping) return Unbounded_String;

end org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package;


