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

limited with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;
package org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References is
   type TimeIntervalActionScriptCondition_Access is access all org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package.TimeIntervalActionScriptCondition'Class;
   type TimeIntervalActionScriptCondition_Access_Array is array (Natural range <>) of TimeIntervalActionScriptCondition_Access;
   type TimeIntervalActionScriptCondition_Access_Array_Access is access all TimeIntervalActionScriptCondition_Access_Array;
   type TimeIntervalActionScriptCondition_Access_Array_Access_Array is array (Natural range <>) of TimeIntervalActionScriptCondition_Access_Array_Access;
   type TimeIntervalActionScriptCondition_Access_Array_Access_Array_Access is access all TimeIntervalActionScriptCondition_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References;

with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References;
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
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionInterface_Package;
limited with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References;

package org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
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
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
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
   subtype TimeIntervalActionScriptConditionJPanel_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access;
   use type TimeIntervalActionScriptConditionJPanel_Access;
   subtype TimeIntervalActionScriptConditionJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access_Array;
   use type TimeIntervalActionScriptConditionJPanel_Access_Array;
   subtype TimeIntervalActionScriptConditionJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access_Array_Access;
   use type TimeIntervalActionScriptConditionJPanel_Access_Array_Access;
   subtype TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array;
   use type TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array;
   subtype TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptConditionJPanel_Package_References.TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   use type TimeIntervalActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TimeIntervalActionScriptCondition_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References.TimeIntervalActionScriptCondition_Access;
   function "=" (Left, Right : TimeIntervalActionScriptCondition_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References."=";
   subtype TimeIntervalActionScriptCondition_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References.TimeIntervalActionScriptCondition_Access_Array;
   function "=" (Left, Right : TimeIntervalActionScriptCondition_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References."=";
   subtype TimeIntervalActionScriptCondition_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References.TimeIntervalActionScriptCondition_Access_Array_Access;
   function "=" (Left, Right : TimeIntervalActionScriptCondition_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References."=";
   subtype TimeIntervalActionScriptCondition_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References.TimeIntervalActionScriptCondition_Access_Array_Access_Array;
   function "=" (Left, Right : TimeIntervalActionScriptCondition_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References."=";
   subtype TimeIntervalActionScriptCondition_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References.TimeIntervalActionScriptCondition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeIntervalActionScriptCondition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package_References."=";

   type TimeIntervalActionScriptCondition is new BasicProfileActionScriptCondition and TimeIntervalActionScriptConditionInterface with record
      TimeIntervalActionScriptCondition_Field_logUtil : LogUtil_Access;
      timeIntervalActionScriptConditionJPanel : TimeIntervalActionScriptConditionJPanel_Access;
      timeHelper : TimeDelayHelper_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out TimeIntervalActionScriptCondition'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return TimeIntervalActionScriptCondition_Access;
   procedure Initialize (This : in out TimeIntervalActionScriptCondition'Class);
   function Create return TimeIntervalActionScriptCondition_Access;
   procedure init (This : in out TimeIntervalActionScriptCondition);
   procedure showDialog (This : in out TimeIntervalActionScriptCondition);
   function toHashMap (This : in out TimeIntervalActionScriptCondition) return HashMap_Access;
   function toXmlNode (This : in out TimeIntervalActionScriptCondition; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out TimeIntervalActionScriptCondition; document_Param : access Document_Package.Document'Class);
   procedure log (This : in out TimeIntervalActionScriptCondition);
   function getTimeDelayHelper (This : in out TimeIntervalActionScriptCondition) return TimeDelayHelper_Access;
   procedure setTimeDelayHelper (This : in out TimeIntervalActionScriptCondition; timeHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class);
   function shouldProcess (This : in out TimeIntervalActionScriptCondition; frame : Long_Long_Integer) return Boolean;
   procedure shouldProcess (This : in out TimeIntervalActionScriptCondition; frame : Long_Long_Integer);

end org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;


