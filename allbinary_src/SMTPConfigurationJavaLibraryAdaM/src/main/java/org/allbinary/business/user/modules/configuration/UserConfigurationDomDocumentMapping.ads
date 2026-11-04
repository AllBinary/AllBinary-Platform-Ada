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

limited with org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package;
package org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References is
   type UserConfigurationDomDocumentMapping_Access is access all org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package.UserConfigurationDomDocumentMapping'Class;
   type UserConfigurationDomDocumentMapping_Access_Array is array (Natural range <>) of UserConfigurationDomDocumentMapping_Access;
   type UserConfigurationDomDocumentMapping_Access_Array_Access is access all UserConfigurationDomDocumentMapping_Access_Array;
   type UserConfigurationDomDocumentMapping_Access_Array_Access_Array is array (Natural range <>) of UserConfigurationDomDocumentMapping_Access_Array_Access;
   type UserConfigurationDomDocumentMapping_Access_Array_Access_Array_Access is access all UserConfigurationDomDocumentMapping_Access_Array_Access_Array;
end org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References;

with org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References;

package org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package is

   package DomDocumentMappingInterface_Package renames Standard.org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Reference_Types is
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype UserConfigurationInterface_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access;
   use type UserConfigurationInterface_Access;
   subtype UserConfigurationInterface_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array;
   use type UserConfigurationInterface_Access_Array;
   subtype UserConfigurationInterface_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access;
   use type UserConfigurationInterface_Access_Array_Access;
   subtype UserConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array;
   use type UserConfigurationInterface_Access_Array_Access_Array;
   subtype UserConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array_Access;
   use type UserConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype UserConfigurationDomDocumentMapping_Access is org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References.UserConfigurationDomDocumentMapping_Access;
   function "=" (Left, Right : UserConfigurationDomDocumentMapping_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References."=";
   subtype UserConfigurationDomDocumentMapping_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References.UserConfigurationDomDocumentMapping_Access_Array;
   function "=" (Left, Right : UserConfigurationDomDocumentMapping_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References."=";
   subtype UserConfigurationDomDocumentMapping_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References.UserConfigurationDomDocumentMapping_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationDomDocumentMapping_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References."=";
   subtype UserConfigurationDomDocumentMapping_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References.UserConfigurationDomDocumentMapping_Access_Array_Access_Array;
   function "=" (Left, Right : UserConfigurationDomDocumentMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References."=";
   subtype UserConfigurationDomDocumentMapping_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References.UserConfigurationDomDocumentMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationDomDocumentMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package_References."=";

   type UserConfigurationDomDocumentMapping is new Java_Object and DomDocumentMappingInterface with record
      userConfigurationInterface : UserConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out UserConfigurationDomDocumentMapping'Class; userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class);
   function Create (userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class) return UserConfigurationDomDocumentMapping_Access;
   function toXmlDoc (This : in out UserConfigurationDomDocumentMapping) return Document_Access;
   function toDomDocumentString (This : in out UserConfigurationDomDocumentMapping) return Unbounded_String;

end org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package;


