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
--  with java.util.Iterator_Package; use java.util.Iterator_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package; use org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package BasicProfileActionScriptProcessor_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicProfileActionScriptInput is tagged;
   type BasicProfileActionScriptInput_Access is access all BasicProfileActionScriptInput'Class;
   type BasicProfileActionScriptInput_Access_Array is array (Natural range <>) of BasicProfileActionScriptInput_Access;
   type BasicProfileActionScriptInput_Access_Array_Access is access all BasicProfileActionScriptInput_Access_Array;

   type BasicProfileActionScriptInput is new BasicProfileActionScriptProcessor and ProfileActionScriptInputInterface with record
      logUtil : LogUtil_Access;
      inputRobotInterface : InputRobotInterface_Access;
      time : Integer;
   end record;

   procedure Initialize (This : in out BasicProfileActionScriptInput'Class; label : Unbounded_String; node : Node_Access);
   function Create (label : Unbounded_String; node : Node_Access) return BasicProfileActionScriptInput_Access;
   function getTime (This : in out BasicProfileActionScriptInput) return Integer;
   procedure getTime (This : in out BasicProfileActionScriptInput);
   procedure setTime (This : in out BasicProfileActionScriptInput; time : Integer);
   function BasicProfileActionScriptInput_toHashMap (This : in out BasicProfileActionScriptInput) return HashMap_Access;
   procedure BasicProfileActionScriptInput_toHashMap (This : in out BasicProfileActionScriptInput);
   function toXmlNode (This : in out BasicProfileActionScriptInput; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptInput; document : Document_Access);
   procedure setInputRobotInterface (This : in out BasicProfileActionScriptInput; inputRobotInterface : InputRobotInterface_Access);
   function getInputRobotInterface (This : in out BasicProfileActionScriptInput) return InputRobotInterface_Access;
   procedure getInputRobotInterface (This : in out BasicProfileActionScriptInput);
   function toString (This : in out BasicProfileActionScriptInput) return Unbounded_String;
   procedure toString (This : in out BasicProfileActionScriptInput);

end org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package;


