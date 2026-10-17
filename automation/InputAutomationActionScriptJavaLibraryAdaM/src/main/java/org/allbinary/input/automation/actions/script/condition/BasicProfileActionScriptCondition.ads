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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.ActionEvent_Package; use java.awt.event.ActionEvent_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.swing.tree.TreePath_Package; use javax.swing.tree.TreePath_Package;
with org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package; use org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputFactory_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputFactory_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.GenericProfileActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.GenericProfileActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionFactory_Package;
with org.allbinary.input.automation.actions.script.condition.JMenu_Package; use org.allbinary.input.automation.actions.script.condition.JMenu_Package;
with org.allbinary.input.automation.actions.script.condition.JMenuItem_Package; use org.allbinary.input.automation.actions.script.condition.JMenuItem_Package;
with org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition_Package;

package org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package JTreeInterfaceFactory_Package renames Standard.org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
   package ProfileActionScriptItem_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
   package ProfileActionScriptNodeInterface_Package renames Standard.org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
   package ProfileActionScriptProcessorInterface_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;
   package GenericProfileActionScriptInputData_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package;
   package KeyboardActionScriptInput_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package;
   package MouseActionScriptInput_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package;
   package ProfileActionScriptInputFactory_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputFactory_Package;
   package GenericProfileActionScriptOutputData_Package renames Standard.org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package;
   package ImageActionScriptOutput_Package renames Standard.org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package;
   package ProfileActionScriptOutputFactory_Package renames Standard.org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type BasicProfileActionScriptCondition is tagged;
   type BasicProfileActionScriptCondition_Access is access all BasicProfileActionScriptCondition'Class;
   type BasicProfileActionScriptCondition_Access_Array is array (Natural range <>) of BasicProfileActionScriptCondition_Access;
   type BasicProfileActionScriptCondition_Access_Array_Access is access all BasicProfileActionScriptCondition_Access_Array;

   type BasicProfileActionScriptCondition is new ProfileActionScriptItem and ProfileActionScriptConditionInterface with record
      logUtil : LogUtil_Access;
      profileActionProcessorInterfaceVector : BasicArrayList_Access;
      profileActionConditionInterfaceVector : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out BasicProfileActionScriptCondition'Class; label : Unbounded_String; node_Param : access Node'Class);
   function Create (label : Unbounded_String; node_Param : access Node'Class) return BasicProfileActionScriptCondition_Access;
   procedure Initialize (This : in out BasicProfileActionScriptCondition'Class; label : Unbounded_String);
   function Create (label : Unbounded_String) return BasicProfileActionScriptCondition_Access;
   procedure addProcessorNodes (This : in out BasicProfileActionScriptCondition; node_Param : access Node'Class);
   procedure init (This : in out BasicProfileActionScriptCondition);
   function getConditionJPopupMenu (This : in out BasicProfileActionScriptCondition) return JMenu_Access;
   function getInputJPopupMenu (This : in out BasicProfileActionScriptCondition) return JMenu_Access;
   function getOutputJPopupMenu (This : in out BasicProfileActionScriptCondition) return JMenu_Access;
   procedure addProcessor (This : in out BasicProfileActionScriptCondition; profileActionProcessorInterface_Param : access ProfileActionScriptProcessorInterface'Class);
   procedure removeProcessor (This : in out BasicProfileActionScriptCondition; profileActionProcessorInterface_Param : access ProfileActionScriptProcessorInterface'Class);
   procedure removeCondition (This : in out BasicProfileActionScriptCondition; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface'Class);
   procedure addCondition (This : in out BasicProfileActionScriptCondition; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface'Class);
   function toXmlNode (This : in out BasicProfileActionScriptCondition; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptCondition; document_Param : access Document'Class);
   function getProfileActionConditionInterfaceVector (This : in out BasicProfileActionScriptCondition) return BasicArrayList_Access;
   procedure setProfileActionConditionInterfaceVector (This : in out BasicProfileActionScriptCondition; profileActionConditionInterfaceVector_Param : access BasicArrayList'Class);
   procedure actionPerformed (This : in out BasicProfileActionScriptCondition; actionEvent_Param : access ActionEvent'Class);
   function getProfileActionProcessorInterfaceVector (This : in out BasicProfileActionScriptCondition) return BasicArrayList_Access;
   procedure setProfileActionProcessorInterfaceVector (This : in out BasicProfileActionScriptCondition; profileActionProcessorInterfaceVector_Param : access BasicArrayList'Class);
   procedure updateTree (This : in out BasicProfileActionScriptCondition);
   function shouldProcess (This : in out BasicProfileActionScriptCondition; frame : Long_Long_Integer) return Boolean;
   procedure shouldProcess (This : in out BasicProfileActionScriptCondition; frame : Long_Long_Integer);
   procedure process (This : in out BasicProfileActionScriptCondition; frame : Long_Long_Integer);

end org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;


