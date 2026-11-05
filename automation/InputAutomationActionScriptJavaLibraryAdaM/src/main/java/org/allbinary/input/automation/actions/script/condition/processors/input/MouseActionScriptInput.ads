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

limited with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References is
   type MouseActionScriptInput_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package.MouseActionScriptInput'Class;
   type MouseActionScriptInput_Access_Array is array (Natural range <>) of MouseActionScriptInput_Access;
   type MouseActionScriptInput_Access_Array_Access is access all MouseActionScriptInput_Access_Array;
   type MouseActionScriptInput_Access_Array_Access_Array is array (Natural range <>) of MouseActionScriptInput_Access_Array_Access;
   type MouseActionScriptInput_Access_Array_Access_Array_Access is access all MouseActionScriptInput_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.InputEvent_Package; use java.awt.event.InputEvent_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype Point_Access is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access;
   use type Point_Access;
   subtype Point_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access_Array;
   use type Point_Access_Array;
   subtype Point_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access_Array_Access;
   use type Point_Access_Array_Access;
   subtype Point_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access_Array_Access_Array;
   use type Point_Access_Array_Access_Array;
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package_References.Point_Access_Array_Access_Array_Access;
   use type Point_Access_Array_Access_Array_Access;
   subtype MouseActionScriptInputJPanel_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access;
   use type MouseActionScriptInputJPanel_Access;
   subtype MouseActionScriptInputJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array;
   use type MouseActionScriptInputJPanel_Access_Array;
   subtype MouseActionScriptInputJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array_Access;
   use type MouseActionScriptInputJPanel_Access_Array_Access;
   subtype MouseActionScriptInputJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array_Access_Array;
   use type MouseActionScriptInputJPanel_Access_Array_Access_Array;
   subtype MouseActionScriptInputJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package_References.MouseActionScriptInputJPanel_Access_Array_Access_Array_Access;
   use type MouseActionScriptInputJPanel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MouseActionScriptInput_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References.MouseActionScriptInput_Access;
   function "=" (Left, Right : MouseActionScriptInput_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References."=";
   subtype MouseActionScriptInput_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References.MouseActionScriptInput_Access_Array;
   function "=" (Left, Right : MouseActionScriptInput_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References."=";
   subtype MouseActionScriptInput_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References.MouseActionScriptInput_Access_Array_Access;
   function "=" (Left, Right : MouseActionScriptInput_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References."=";
   subtype MouseActionScriptInput_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References.MouseActionScriptInput_Access_Array_Access_Array;
   function "=" (Left, Right : MouseActionScriptInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References."=";
   subtype MouseActionScriptInput_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References.MouseActionScriptInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MouseActionScriptInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package_References."=";

   type MouseActionScriptInput is new BasicProfileActionScriptInput and MouseActionScriptInputInterface with record
      MouseActionScriptInput_Field_logUtil : LogUtil_Access;
      point : Point_Access;
      buttons : Integer;
      mouseActionScriptInputJPanel : MouseActionScriptInputJPanel_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out MouseActionScriptInput'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return MouseActionScriptInput_Access;
   procedure Initialize (This : in out MouseActionScriptInput'Class);
   function Create return MouseActionScriptInput_Access;
   procedure setPoint (This : in out MouseActionScriptInput; point_Param : access Point_Package.Point'Class);
   function getPoint (This : in out MouseActionScriptInput) return Point_Access;
   function getButtonClicks (This : in out MouseActionScriptInput) return Integer;
   procedure setButtonClicks (This : in out MouseActionScriptInput; buttons : Integer);
   procedure showDialog (This : in out MouseActionScriptInput);
   function toHashMap (This : in out MouseActionScriptInput) return HashMap_Access;
   function toXmlNode (This : in out MouseActionScriptInput; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out MouseActionScriptInput; document_Param : access Document_Package.Document'Class);
   procedure process (This : in out MouseActionScriptInput; frame : Long_Long_Integer);
   procedure log (This : in out MouseActionScriptInput);

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package;


