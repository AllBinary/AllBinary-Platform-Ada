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

with AllBinary_Java;
limited with org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;
package org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References is
   type ContextConfigurationDomDocumentMapping_Access is access all org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package.ContextConfigurationDomDocumentMapping'Class;
   type ContextConfigurationDomDocumentMapping_Access_Array is array (Natural range <>) of ContextConfigurationDomDocumentMapping_Access;
   type ContextConfigurationDomDocumentMapping_Access_Array_Access is access all ContextConfigurationDomDocumentMapping_Access_Array;
   type ContextConfigurationDomDocumentMapping_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationDomDocumentMapping_Access_Array_Access;
   type ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Access is access all ContextConfigurationDomDocumentMapping_Access_Array_Access_Array;
   type ContextConfigurationDomDocumentMapping_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationDomDocumentMapping_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationDomDocumentMapping_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationDomDocumentMapping_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationDomDocumentMapping_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationDomDocumentMapping_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationDomDocumentMapping_Access_Array_Object'Class then ContextConfigurationDomDocumentMapping_Access_Array_Object'Class (Value.all).Value else null);
   type ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationDomDocumentMapping_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Object'Class then ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References;

with org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References;
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
limited with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References;

package org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package is

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
   subtype ContextConfigurationInterface_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access;
   use type ContextConfigurationInterface_Access;
   subtype ContextConfigurationInterface_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array;
   use type ContextConfigurationInterface_Access_Array;
   subtype ContextConfigurationInterface_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access;
   use type ContextConfigurationInterface_Access_Array_Access;
   subtype ContextConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array;
   use type ContextConfigurationInterface_Access_Array_Access_Array;
   subtype ContextConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References.ContextConfigurationInterface_Access_Array_Access_Array_Access;
   use type ContextConfigurationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ContextConfigurationDomDocumentMapping_Access is org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References.ContextConfigurationDomDocumentMapping_Access;
   function "=" (Left, Right : ContextConfigurationDomDocumentMapping_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References."=";
   subtype ContextConfigurationDomDocumentMapping_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References.ContextConfigurationDomDocumentMapping_Access_Array;
   function "=" (Left, Right : ContextConfigurationDomDocumentMapping_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References."=";
   subtype ContextConfigurationDomDocumentMapping_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References.ContextConfigurationDomDocumentMapping_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationDomDocumentMapping_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References."=";
   function Java_Box (Value : ContextConfigurationDomDocumentMapping_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationDomDocumentMapping_Access_Array (Value : access Java_Object'Class) return ContextConfigurationDomDocumentMapping_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References.Java_Unbox_ContextConfigurationDomDocumentMapping_Access_Array;
   subtype ContextConfigurationDomDocumentMapping_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References.ContextConfigurationDomDocumentMapping_Access_Array_Access_Array;
   function "=" (Left, Right : ContextConfigurationDomDocumentMapping_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References."=";
   subtype ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References.ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References."=";
   function Java_Box (Value : ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationDomDocumentMapping_Access_Array_Access_Array (Value : access Java_Object'Class) return ContextConfigurationDomDocumentMapping_Access_Array_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package_References.Java_Unbox_ContextConfigurationDomDocumentMapping_Access_Array_Access_Array;

   type ContextConfigurationDomDocumentMapping is new Java_Object and DomDocumentMappingInterface with record
      contextConfigurationInterface : ContextConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out ContextConfigurationDomDocumentMapping'Class; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class);
   function Create (contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) return ContextConfigurationDomDocumentMapping_Access;
   function toXmlDoc (This : in out ContextConfigurationDomDocumentMapping) return Document_Access;
   function toDomDocumentString (This : in out ContextConfigurationDomDocumentMapping) return Unbounded_String;

end org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;


