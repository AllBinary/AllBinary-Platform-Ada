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
limited with org.allbinary.business.context.configuration.ContextConfigurationView_Package;
package org.allbinary.business.context.configuration.ContextConfigurationView_Package_References is
   type ContextConfigurationView_Access is access all org.allbinary.business.context.configuration.ContextConfigurationView_Package.ContextConfigurationView'Class;
   type ContextConfigurationView_Access_Array is array (Natural range <>) of ContextConfigurationView_Access;
   type ContextConfigurationView_Access_Array_Access is access all ContextConfigurationView_Access_Array;
   type ContextConfigurationView_Access_Array_Access_Array is array (Natural range <>) of ContextConfigurationView_Access_Array_Access;
   type ContextConfigurationView_Access_Array_Access_Array_Access is access all ContextConfigurationView_Access_Array_Access_Array;
   type ContextConfigurationView_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationView_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationView_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationView_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationView_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationView_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationView_Access_Array_Object'Class then ContextConfigurationView_Access_Array_Object'Class (Value.all).Value else null);
   type ContextConfigurationView_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ContextConfigurationView_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ContextConfigurationView_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ContextConfigurationView_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ContextConfigurationView_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ContextConfigurationView_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ContextConfigurationView_Access_Array_Access_Array_Object'Class then ContextConfigurationView_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.context.configuration.ContextConfigurationView_Package_References;

with org.allbinary.business.context.configuration.ContextConfigurationView_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
limited with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package;
with org.allbinary.business.context.configuration.ContextConfigurationInterface_Package_References;

package org.allbinary.business.context.configuration.ContextConfigurationView_Package is

   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
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


   subtype ContextConfigurationView_Access is org.allbinary.business.context.configuration.ContextConfigurationView_Package_References.ContextConfigurationView_Access;
   function "=" (Left, Right : ContextConfigurationView_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationView_Package_References."=";
   subtype ContextConfigurationView_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationView_Package_References.ContextConfigurationView_Access_Array;
   function "=" (Left, Right : ContextConfigurationView_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationView_Package_References."=";
   subtype ContextConfigurationView_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationView_Package_References.ContextConfigurationView_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationView_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationView_Package_References."=";
   function Java_Box (Value : ContextConfigurationView_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationView_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationView_Access_Array (Value : access Java_Object'Class) return ContextConfigurationView_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationView_Package_References.Java_Unbox_ContextConfigurationView_Access_Array;
   subtype ContextConfigurationView_Access_Array_Access_Array is org.allbinary.business.context.configuration.ContextConfigurationView_Package_References.ContextConfigurationView_Access_Array_Access_Array;
   function "=" (Left, Right : ContextConfigurationView_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationView_Package_References."=";
   subtype ContextConfigurationView_Access_Array_Access_Array_Access is org.allbinary.business.context.configuration.ContextConfigurationView_Package_References.ContextConfigurationView_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ContextConfigurationView_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.configuration.ContextConfigurationView_Package_References."=";
   function Java_Box (Value : ContextConfigurationView_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.context.configuration.ContextConfigurationView_Package_References.Java_Box;
   function Java_Unbox_ContextConfigurationView_Access_Array_Access_Array (Value : access Java_Object'Class) return ContextConfigurationView_Access_Array_Access_Array_Access renames org.allbinary.business.context.configuration.ContextConfigurationView_Package_References.Java_Unbox_ContextConfigurationView_Access_Array_Access_Array;

   type ContextConfigurationView is new Java_Object and DomNodeInterface with record
      contextConfigurationInterface : ContextConfigurationInterface_Access;
   end record;

   procedure Initialize (This : in out ContextConfigurationView'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return ContextConfigurationView_Access;
   procedure Initialize (This : in out ContextConfigurationView'Class; contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class);
   function Create (contextConfigurationInterface_Param : access ContextConfigurationInterface_Package.ContextConfigurationInterface'Class) return ContextConfigurationView_Access;
   function getContextConfigurationInterface (This : in out ContextConfigurationView) return ContextConfigurationInterface_Access;
   function toXmlNode (This : in out ContextConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ContextConfigurationView; document_Param : access Document_Package.Document'Class);

end org.allbinary.business.context.configuration.ContextConfigurationView_Package;


