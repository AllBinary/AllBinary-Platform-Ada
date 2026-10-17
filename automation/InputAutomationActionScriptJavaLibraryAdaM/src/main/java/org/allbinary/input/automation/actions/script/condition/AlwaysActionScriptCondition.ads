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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package; use org.allbinary.input.automation.actions.script.condition.BasicProfileActionScriptCondition_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package;

package org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type AlwaysActionScriptCondition is tagged;
   type AlwaysActionScriptCondition_Access is access all AlwaysActionScriptCondition'Class;
   type AlwaysActionScriptCondition_Access_Array is array (Natural range <>) of AlwaysActionScriptCondition_Access;
   type AlwaysActionScriptCondition_Access_Array_Access is access all AlwaysActionScriptCondition_Access_Array;

   type AlwaysActionScriptCondition is new BasicProfileActionScriptCondition and AlwaysActionScriptConditionInterface with record
      logUtil : LogUtil_Access;
      alwaysActionScriptConditionJPanel : AlwaysActionScriptConditionJPanel_Access;
      isOn : Boolean;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out AlwaysActionScriptCondition'Class; node : Node_Access);
   function Create (node : Node_Access) return AlwaysActionScriptCondition_Access;
   procedure init (This : in out AlwaysActionScriptCondition);
   function isIsOn (This : in out AlwaysActionScriptCondition) return Boolean;
   procedure setIsOn (This : in out AlwaysActionScriptCondition; isOn : Boolean);
   procedure showDialog (This : in out AlwaysActionScriptCondition);
   function toHashMap (This : in out AlwaysActionScriptCondition) return HashMap_Access;
   function toXmlNode (This : in out AlwaysActionScriptCondition; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out AlwaysActionScriptCondition; document : Document_Access);
   function shouldProcess (This : in out AlwaysActionScriptCondition; frame : Long_Long_Integer) return Boolean;
   procedure shouldProcess (This : in out AlwaysActionScriptCondition; frame : Long_Long_Integer);
   procedure log (This : in out AlwaysActionScriptCondition);

end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;


