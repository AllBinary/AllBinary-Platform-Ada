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

limited with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
package org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References is
   type AlwaysActionScriptCondition_Access is access all org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package.AlwaysActionScriptCondition'Class;
   type AlwaysActionScriptCondition_Access_Array is array (Natural range <>) of AlwaysActionScriptCondition_Access;
   type AlwaysActionScriptCondition_Access_Array_Access is access all AlwaysActionScriptCondition_Access_Array;
   type AlwaysActionScriptCondition_Access_Array_Access_Array is array (Natural range <>) of AlwaysActionScriptCondition_Access_Array_Access;
   type AlwaysActionScriptCondition_Access_Array_Access_Array_Access is access all AlwaysActionScriptCondition_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References;

with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package;
limited with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References;

package org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package is

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
   subtype AlwaysActionScriptConditionJPanel_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access;
   use type AlwaysActionScriptConditionJPanel_Access;
   subtype AlwaysActionScriptConditionJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access_Array;
   use type AlwaysActionScriptConditionJPanel_Access_Array;
   subtype AlwaysActionScriptConditionJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access_Array_Access;
   use type AlwaysActionScriptConditionJPanel_Access_Array_Access;
   subtype AlwaysActionScriptConditionJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access_Array_Access_Array;
   use type AlwaysActionScriptConditionJPanel_Access_Array_Access_Array;
   subtype AlwaysActionScriptConditionJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   use type AlwaysActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AlwaysActionScriptCondition_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References.AlwaysActionScriptCondition_Access;
   function "=" (Left, Right : AlwaysActionScriptCondition_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References."=";
   subtype AlwaysActionScriptCondition_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References.AlwaysActionScriptCondition_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptCondition_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References."=";
   subtype AlwaysActionScriptCondition_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References.AlwaysActionScriptCondition_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptCondition_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References."=";
   subtype AlwaysActionScriptCondition_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References.AlwaysActionScriptCondition_Access_Array_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptCondition_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References."=";
   subtype AlwaysActionScriptCondition_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References.AlwaysActionScriptCondition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptCondition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package_References."=";

   type AlwaysActionScriptCondition is new BasicProfileActionScriptCondition and AlwaysActionScriptConditionInterface with record
      logUtil : LogUtil_Access;
      alwaysActionScriptConditionJPanel : AlwaysActionScriptConditionJPanel_Access;
      isOn : Boolean;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out AlwaysActionScriptCondition'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return AlwaysActionScriptCondition_Access;
   procedure Initialize (This : in out AlwaysActionScriptCondition'Class);
   function Create return AlwaysActionScriptCondition_Access;
   procedure init (This : in out AlwaysActionScriptCondition);
   function isIsOn (This : in out AlwaysActionScriptCondition) return Boolean;
   procedure setIsOn (This : in out AlwaysActionScriptCondition; isOn : Boolean);
   procedure showDialog (This : in out AlwaysActionScriptCondition);
   function toHashMap (This : in out AlwaysActionScriptCondition) return HashMap_Access;
   function toXmlNode (This : in out AlwaysActionScriptCondition; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out AlwaysActionScriptCondition; document_Param : access Document_Package.Document'Class);
   function shouldProcess (This : in out AlwaysActionScriptCondition; frame : Long_Long_Integer) return Boolean;
   procedure shouldProcess (This : in out AlwaysActionScriptCondition; frame : Long_Long_Integer);
   procedure log (This : in out AlwaysActionScriptCondition);

end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;


