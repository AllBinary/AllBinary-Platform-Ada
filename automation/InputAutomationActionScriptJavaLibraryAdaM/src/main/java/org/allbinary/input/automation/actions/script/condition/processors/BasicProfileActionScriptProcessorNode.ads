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

limited with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package;
package org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References is
   type BasicProfileActionScriptProcessorNode_Access is access all org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package.BasicProfileActionScriptProcessorNode'Class;
   type BasicProfileActionScriptProcessorNode_Access_Array is array (Natural range <>) of BasicProfileActionScriptProcessorNode_Access;
   type BasicProfileActionScriptProcessorNode_Access_Array_Access is access all BasicProfileActionScriptProcessorNode_Access_Array;
   type BasicProfileActionScriptProcessorNode_Access_Array_Access_Array is array (Natural range <>) of BasicProfileActionScriptProcessorNode_Access_Array_Access;
   type BasicProfileActionScriptProcessorNode_Access_Array_Access_Array_Access is access all BasicProfileActionScriptProcessorNode_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References;
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

package org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package is

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


   subtype BasicProfileActionScriptProcessorNode_Access is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References.BasicProfileActionScriptProcessorNode_Access;
   function "=" (Left, Right : BasicProfileActionScriptProcessorNode_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References."=";
   subtype BasicProfileActionScriptProcessorNode_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References.BasicProfileActionScriptProcessorNode_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptProcessorNode_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References."=";
   subtype BasicProfileActionScriptProcessorNode_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References.BasicProfileActionScriptProcessorNode_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptProcessorNode_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References."=";
   subtype BasicProfileActionScriptProcessorNode_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References.BasicProfileActionScriptProcessorNode_Access_Array_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptProcessorNode_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References."=";
   subtype BasicProfileActionScriptProcessorNode_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References.BasicProfileActionScriptProcessorNode_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptProcessorNode_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package_References."=";

   type BasicProfileActionScriptProcessorNode is new Java_Object with null record;

   procedure Initialize (This : in out BasicProfileActionScriptProcessorNode'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptProcessorNode_Access;
   procedure Initialize (This : in out BasicProfileActionScriptProcessorNode'Class);
   function Create return BasicProfileActionScriptProcessorNode_Access;
   function toXmlNode (This : in out BasicProfileActionScriptProcessorNode; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptProcessorNode; document_Param : access Document_Package.Document'Class);

end org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessorNode_Package;


