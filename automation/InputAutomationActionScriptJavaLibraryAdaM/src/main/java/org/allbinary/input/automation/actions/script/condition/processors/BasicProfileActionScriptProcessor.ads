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

limited with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
package org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References is
   type BasicProfileActionScriptProcessor_Access is access all org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package.BasicProfileActionScriptProcessor'Class;
   type BasicProfileActionScriptProcessor_Access_Array is array (Natural range <>) of BasicProfileActionScriptProcessor_Access;
   type BasicProfileActionScriptProcessor_Access_Array_Access is access all BasicProfileActionScriptProcessor_Access_Array;
   type BasicProfileActionScriptProcessor_Access_Array_Access_Array is array (Natural range <>) of BasicProfileActionScriptProcessor_Access_Array_Access;
   type BasicProfileActionScriptProcessor_Access_Array_Access_Array_Access is access all BasicProfileActionScriptProcessor_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

package org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package is

   package ProfileActionScriptItem_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
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


   subtype BasicProfileActionScriptProcessor_Access is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References.BasicProfileActionScriptProcessor_Access;
   function "=" (Left, Right : BasicProfileActionScriptProcessor_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References."=";
   subtype BasicProfileActionScriptProcessor_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References.BasicProfileActionScriptProcessor_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptProcessor_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References."=";
   subtype BasicProfileActionScriptProcessor_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References.BasicProfileActionScriptProcessor_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References."=";
   subtype BasicProfileActionScriptProcessor_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References.BasicProfileActionScriptProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References."=";
   subtype BasicProfileActionScriptProcessor_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References.BasicProfileActionScriptProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package_References."=";

   type BasicProfileActionScriptProcessor is new ProfileActionScriptItem and ProfileActionScriptProcessorInterface with null record;

   procedure Initialize (This : in out BasicProfileActionScriptProcessor'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class);
   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptProcessor_Access;
   procedure Initialize (This : in out BasicProfileActionScriptProcessor'Class; label : Unbounded_String);
   function Create (label : Unbounded_String) return BasicProfileActionScriptProcessor_Access;
   procedure actionPerformed (This : in out BasicProfileActionScriptProcessor; actionEvent_Param : access ActionEvent_Package.ActionEvent'Class);
   function toXmlNode (This : in out BasicProfileActionScriptProcessor; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptProcessor; document_Param : access Document_Package.Document'Class);

end org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;


