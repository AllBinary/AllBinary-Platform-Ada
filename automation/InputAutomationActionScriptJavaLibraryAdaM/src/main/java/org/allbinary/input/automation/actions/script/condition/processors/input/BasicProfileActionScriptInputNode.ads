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
limited with org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References is
   type BasicProfileActionScriptInputNode_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package.BasicProfileActionScriptInputNode'Class;
   type BasicProfileActionScriptInputNode_Access_Array is array (Natural range <>) of BasicProfileActionScriptInputNode_Access;
   type BasicProfileActionScriptInputNode_Access_Array_Access is access all BasicProfileActionScriptInputNode_Access_Array;
   type BasicProfileActionScriptInputNode_Access_Array_Access_Array is array (Natural range <>) of BasicProfileActionScriptInputNode_Access_Array_Access;
   type BasicProfileActionScriptInputNode_Access_Array_Access_Array_Access is access all BasicProfileActionScriptInputNode_Access_Array_Access_Array;
   type BasicProfileActionScriptInputNode_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicProfileActionScriptInputNode_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicProfileActionScriptInputNode_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicProfileActionScriptInputNode_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicProfileActionScriptInputNode_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicProfileActionScriptInputNode_Access_Array_Access is (if Value /= null and then Value.all in BasicProfileActionScriptInputNode_Access_Array_Object'Class then BasicProfileActionScriptInputNode_Access_Array_Object'Class (Value.all).Value else null);
   type BasicProfileActionScriptInputNode_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicProfileActionScriptInputNode_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicProfileActionScriptInputNode_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicProfileActionScriptInputNode_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicProfileActionScriptInputNode_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicProfileActionScriptInputNode_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicProfileActionScriptInputNode_Access_Array_Access_Array_Object'Class then BasicProfileActionScriptInputNode_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package is

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
   end Reference_Types;
   use Reference_Types;


   subtype BasicProfileActionScriptInputNode_Access is org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References.BasicProfileActionScriptInputNode_Access;
   function "=" (Left, Right : BasicProfileActionScriptInputNode_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References."=";
   subtype BasicProfileActionScriptInputNode_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References.BasicProfileActionScriptInputNode_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptInputNode_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References."=";
   subtype BasicProfileActionScriptInputNode_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References.BasicProfileActionScriptInputNode_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptInputNode_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References."=";
   function Java_Box (Value : BasicProfileActionScriptInputNode_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References.Java_Box;
   function Java_Unbox_BasicProfileActionScriptInputNode_Access_Array (Value : access Java_Object'Class) return BasicProfileActionScriptInputNode_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References.Java_Unbox_BasicProfileActionScriptInputNode_Access_Array;
   subtype BasicProfileActionScriptInputNode_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References.BasicProfileActionScriptInputNode_Access_Array_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptInputNode_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References."=";
   subtype BasicProfileActionScriptInputNode_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References.BasicProfileActionScriptInputNode_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptInputNode_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References."=";
   function Java_Box (Value : BasicProfileActionScriptInputNode_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References.Java_Box;
   function Java_Unbox_BasicProfileActionScriptInputNode_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicProfileActionScriptInputNode_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package_References.Java_Unbox_BasicProfileActionScriptInputNode_Access_Array_Access_Array;

   type BasicProfileActionScriptInputNode is new Java_Object with null record;

   procedure Initialize (This : in out BasicProfileActionScriptInputNode'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptInputNode_Access;
   procedure Initialize (This : in out BasicProfileActionScriptInputNode'Class);
   function Create return BasicProfileActionScriptInputNode_Access;
   function toXmlNode (This : in out BasicProfileActionScriptInputNode; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptInputNode; document_Param : access Document_Package.Document'Class);

end org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package;


