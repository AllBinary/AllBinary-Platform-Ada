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

limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package;
package org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References is
   type BasicProfileActionScriptOutput_Access is access all org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package.BasicProfileActionScriptOutput'Class;
   type BasicProfileActionScriptOutput_Access_Array is array (Natural range <>) of BasicProfileActionScriptOutput_Access;
   type BasicProfileActionScriptOutput_Access_Array_Access is access all BasicProfileActionScriptOutput_Access_Array;
   type BasicProfileActionScriptOutput_Access_Array_Access_Array is array (Natural range <>) of BasicProfileActionScriptOutput_Access_Array_Access;
   type BasicProfileActionScriptOutput_Access_Array_Access_Array_Access is access all BasicProfileActionScriptOutput_Access_Array_Access_Array;
end org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References;

with org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package; use org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package is

   package BasicProfileActionScriptProcessor_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
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


   subtype BasicProfileActionScriptOutput_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References.BasicProfileActionScriptOutput_Access;
   function "=" (Left, Right : BasicProfileActionScriptOutput_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References."=";
   subtype BasicProfileActionScriptOutput_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References.BasicProfileActionScriptOutput_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptOutput_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References."=";
   subtype BasicProfileActionScriptOutput_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References.BasicProfileActionScriptOutput_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptOutput_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References."=";
   subtype BasicProfileActionScriptOutput_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References.BasicProfileActionScriptOutput_Access_Array_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptOutput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References."=";
   subtype BasicProfileActionScriptOutput_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References.BasicProfileActionScriptOutput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptOutput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package_References."=";

   type BasicProfileActionScriptOutput is new BasicProfileActionScriptProcessor and ProfileActionScriptOutputInterface with null record;

   procedure Initialize (This : in out BasicProfileActionScriptOutput'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class);
   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptOutput_Access;
   procedure Initialize (This : in out BasicProfileActionScriptOutput'Class; label : Unbounded_String);
   function Create (label : Unbounded_String) return BasicProfileActionScriptOutput_Access;
   function toXmlNode (This : in out BasicProfileActionScriptOutput; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptOutput; document_Param : access Document_Package.Document'Class);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package;


