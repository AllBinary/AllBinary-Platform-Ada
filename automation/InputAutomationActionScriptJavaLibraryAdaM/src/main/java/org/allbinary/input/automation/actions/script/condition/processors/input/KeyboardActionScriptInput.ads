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
--  with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.KeySingletonFactory_Package; use org.allbinary.input.KeySingletonFactory_Package;
with org.allbinary.input.KeyUtil_Package; use org.allbinary.input.KeyUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package KeySingletonFactory_Package renames Standard.org.allbinary.input.KeySingletonFactory_Package;
   package KeyUtil_Package renames Standard.org.allbinary.input.KeyUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type KeyboardActionScriptInput is tagged;
   type KeyboardActionScriptInput_Access is access all KeyboardActionScriptInput'Class;
   type KeyboardActionScriptInput_Access_Array is array (Natural range <>) of KeyboardActionScriptInput_Access;
   type KeyboardActionScriptInput_Access_Array_Access is access all KeyboardActionScriptInput_Access_Array;

   type KeyboardActionScriptInput is new BasicProfileActionScriptInput and KeyboardActionScriptInputInterface with record
      logUtil : LogUtil_Access;
      keyArray : Integer_Array_Access;
      keyboardActionScriptInputJPanel : KeyboardActionScriptInputJPanel_Access;
      press : Boolean;
      release : Boolean;
      delayBetweenKeys : Integer;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out KeyboardActionScriptInput'Class; node_Param : access Node'Class);
   function Create (node_Param : access Node'Class) return KeyboardActionScriptInput_Access;
   procedure Initialize (This : in out KeyboardActionScriptInput'Class);
   function Create return KeyboardActionScriptInput_Access;
   function getDelayBetweenKeys (This : in out KeyboardActionScriptInput) return Integer;
   procedure setDelayBetweenKeys (This : in out KeyboardActionScriptInput; delayBetweenKeys : Integer);
   function isPress (This : in out KeyboardActionScriptInput) return Boolean;
   procedure setPress (This : in out KeyboardActionScriptInput; press : Boolean);
   function isRelease (This : in out KeyboardActionScriptInput) return Boolean;
   procedure setRelease (This : in out KeyboardActionScriptInput; release : Boolean);
   function isNormal (This : in out KeyboardActionScriptInput) return Boolean;
   procedure setNormal (This : in out KeyboardActionScriptInput);
   function getKeyArray (This : in out KeyboardActionScriptInput) return Integer_Array_Access;
   procedure setKeyArray (This : in out KeyboardActionScriptInput; keyArray : Integer_Array_Access);
   procedure showDialog (This : in out KeyboardActionScriptInput);
   function getText (This : in out KeyboardActionScriptInput) return Unbounded_String;
   procedure setText (This : in out KeyboardActionScriptInput; text : Unbounded_String);
   function getText (integerArray : Integer_Array_Access) return Unbounded_String;
   procedure getText (integerArray : Integer_Array_Access);
   function integerArrayValue (This : in out KeyboardActionScriptInput; text : Unbounded_String) return Integer_Array_Access;
   procedure integerArrayValue (This : in out KeyboardActionScriptInput; text : Unbounded_String);
   function toHashMap (This : in out KeyboardActionScriptInput) return HashMap_Access;
   function toXmlNode (This : in out KeyboardActionScriptInput; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out KeyboardActionScriptInput; document_Param : access Document'Class);
   procedure process (This : in out KeyboardActionScriptInput; frame : Long_Long_Integer);
   procedure log (This : in out KeyboardActionScriptInput);
   function toString (This : in out KeyboardActionScriptInput) return Unbounded_String;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package;


