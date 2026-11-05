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

limited with org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;
package org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References is
   type BasicProfileActionScriptCondition_Access is access all org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package.BasicProfileActionScriptCondition'Class;
   type BasicProfileActionScriptCondition_Access_Array is array (Natural range <>) of BasicProfileActionScriptCondition_Access;
   type BasicProfileActionScriptCondition_Access_Array_Access is access all BasicProfileActionScriptCondition_Access_Array;
   type BasicProfileActionScriptCondition_Access_Array_Access_Array is array (Natural range <>) of BasicProfileActionScriptCondition_Access_Array_Access;
   type BasicProfileActionScriptCondition_Access_Array_Access_Array_Access is access all BasicProfileActionScriptCondition_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References;

with org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.swing.tree.TreePath_Package; use javax.swing.tree.TreePath_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
limited with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References;
limited with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
limited with org.allbinary.input.automation.actions.script.condition.JMenu_Package;
with org.allbinary.input.automation.actions.script.condition.JMenu_Package_References;

package org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ProfileActionScriptItem_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
   package ProfileActionScriptNodeInterface_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
   package ProfileActionScriptProcessorInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype ProfileActionScriptNodeInterface_Access is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access;
   use type ProfileActionScriptNodeInterface_Access;
   subtype ProfileActionScriptNodeInterface_Access_Array is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access_Array;
   use type ProfileActionScriptNodeInterface_Access_Array;
   subtype ProfileActionScriptNodeInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access_Array_Access;
   use type ProfileActionScriptNodeInterface_Access_Array_Access;
   subtype ProfileActionScriptNodeInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access_Array_Access_Array;
   use type ProfileActionScriptNodeInterface_Access_Array_Access_Array;
   subtype ProfileActionScriptNodeInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package_References.ProfileActionScriptNodeInterface_Access_Array_Access_Array_Access;
   use type ProfileActionScriptNodeInterface_Access_Array_Access_Array_Access;
   subtype ProfileActionScriptProcessorInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access;
   use type ProfileActionScriptProcessorInterface_Access;
   subtype ProfileActionScriptProcessorInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array;
   use type ProfileActionScriptProcessorInterface_Access_Array;
   subtype ProfileActionScriptProcessorInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array_Access;
   use type ProfileActionScriptProcessorInterface_Access_Array_Access;
   subtype ProfileActionScriptProcessorInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array_Access_Array;
   use type ProfileActionScriptProcessorInterface_Access_Array_Access_Array;
   subtype ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package_References.ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access;
   use type ProfileActionScriptProcessorInterface_Access_Array_Access_Array_Access;
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
   subtype JMenu_Access is org.allbinary.input.automation.actions.script.condition.JMenu_Package_References.JMenu_Access;
   use type JMenu_Access;
   subtype JMenu_Access_Array is org.allbinary.input.automation.actions.script.condition.JMenu_Package_References.JMenu_Access_Array;
   use type JMenu_Access_Array;
   subtype JMenu_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.JMenu_Package_References.JMenu_Access_Array_Access;
   use type JMenu_Access_Array_Access;
   subtype JMenu_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.JMenu_Package_References.JMenu_Access_Array_Access_Array;
   use type JMenu_Access_Array_Access_Array;
   subtype JMenu_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.JMenu_Package_References.JMenu_Access_Array_Access_Array_Access;
   use type JMenu_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicProfileActionScriptCondition_Access is org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References.BasicProfileActionScriptCondition_Access;
   function "=" (Left, Right : BasicProfileActionScriptCondition_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References."=";
   subtype BasicProfileActionScriptCondition_Access_Array is org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References.BasicProfileActionScriptCondition_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptCondition_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References."=";
   subtype BasicProfileActionScriptCondition_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References.BasicProfileActionScriptCondition_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptCondition_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References."=";
   subtype BasicProfileActionScriptCondition_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References.BasicProfileActionScriptCondition_Access_Array_Access_Array;
   function "=" (Left, Right : BasicProfileActionScriptCondition_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References."=";
   subtype BasicProfileActionScriptCondition_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References.BasicProfileActionScriptCondition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicProfileActionScriptCondition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package_References."=";

   type BasicProfileActionScriptCondition is new ProfileActionScriptItem and ProfileActionScriptConditionInterface with record
      BasicProfileActionScriptCondition_Field_logUtil : LogUtil_Access;
      profileActionProcessorInterfaceVector : BasicArrayList_Access;
      profileActionConditionInterfaceVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BasicProfileActionScriptCondition'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class);
   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptCondition_Access;
   procedure Initialize (This : in out BasicProfileActionScriptCondition'Class; label : Unbounded_String);
   function Create (label : Unbounded_String) return BasicProfileActionScriptCondition_Access;
   procedure addProcessorNodes (This : in out BasicProfileActionScriptCondition; node_Param : access Node_Package.Node'Class);
   procedure init (This : in out BasicProfileActionScriptCondition);
   function getConditionJPopupMenu (This : in out BasicProfileActionScriptCondition) return JMenu_Access;
   function getInputJPopupMenu (This : in out BasicProfileActionScriptCondition) return JMenu_Access;
   function getOutputJPopupMenu (This : in out BasicProfileActionScriptCondition) return JMenu_Access;
   procedure addProcessor (This : in out BasicProfileActionScriptCondition; profileActionProcessorInterface_Param : access ProfileActionScriptProcessorInterface_Package.ProfileActionScriptProcessorInterface'Class);
   procedure removeProcessor (This : in out BasicProfileActionScriptCondition; profileActionProcessorInterface_Param : access ProfileActionScriptProcessorInterface_Package.ProfileActionScriptProcessorInterface'Class);
   procedure removeCondition (This : in out BasicProfileActionScriptCondition; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class);
   procedure addCondition (This : in out BasicProfileActionScriptCondition; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class);
   function toXmlNode (This : in out BasicProfileActionScriptCondition; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptCondition; document_Param : access Document_Package.Document'Class);
   function getProfileActionConditionInterfaceVector (This : in out BasicProfileActionScriptCondition) return BasicArrayList_Access;
   procedure setProfileActionConditionInterfaceVector (This : in out BasicProfileActionScriptCondition; profileActionConditionInterfaceVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure actionPerformed (This : in out BasicProfileActionScriptCondition; actionEvent_Param : access ActionEvent_Package.ActionEvent'Class);
   function getProfileActionProcessorInterfaceVector (This : in out BasicProfileActionScriptCondition) return BasicArrayList_Access;
   procedure setProfileActionProcessorInterfaceVector (This : in out BasicProfileActionScriptCondition; profileActionProcessorInterfaceVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure updateTree (This : in out BasicProfileActionScriptCondition);
   function shouldProcess (This : in out BasicProfileActionScriptCondition; frame : Long_Long_Integer) return Boolean;
   procedure shouldProcess (This : in out BasicProfileActionScriptCondition; frame : Long_Long_Integer);
   procedure process (This : in out BasicProfileActionScriptCondition; frame : Long_Long_Integer);

end org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;


