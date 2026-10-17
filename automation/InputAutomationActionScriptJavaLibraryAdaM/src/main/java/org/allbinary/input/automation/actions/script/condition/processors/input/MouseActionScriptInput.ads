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
--  with java.awt.event.InputEvent_Package; use java.awt.event.InputEvent_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.Point_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.MouseInputAutomationProcessor_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type MouseActionScriptInput is tagged;
   type MouseActionScriptInput_Access is access all MouseActionScriptInput'Class;
   type MouseActionScriptInput_Access_Array is array (Natural range <>) of MouseActionScriptInput_Access;
   type MouseActionScriptInput_Access_Array_Access is access all MouseActionScriptInput_Access_Array;

   type MouseActionScriptInput is new BasicProfileActionScriptInput and MouseActionScriptInputInterface with record
      logUtil : LogUtil_Access;
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


