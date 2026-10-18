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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Iterator_Package; use java.util.Iterator_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package; use org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicProfileActionScriptProcessor_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
   package InputRobotInterface_Package renames Standard.org.allbinary.input.automation.robot.InputRobotInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicProfileActionScriptInput is tagged;
   type BasicProfileActionScriptInput_Access is access all BasicProfileActionScriptInput'Class;
   type BasicProfileActionScriptInput_Access_Array is array (Natural range <>) of BasicProfileActionScriptInput_Access;
   type BasicProfileActionScriptInput_Access_Array_Access is access all BasicProfileActionScriptInput_Access_Array;
   type BasicProfileActionScriptInput_Access_Array_Access_Array is array (Natural range <>) of BasicProfileActionScriptInput_Access_Array_Access;
   type BasicProfileActionScriptInput_Access_Array_Access_Array_Access is access all BasicProfileActionScriptInput_Access_Array_Access_Array;

   type BasicProfileActionScriptInput is new BasicProfileActionScriptProcessor and ProfileActionScriptInputInterface with record
      logUtil : LogUtil_Access;
      inputRobotInterface : InputRobotInterface_Access;
      time : Integer;
   end record;

   procedure Initialize (This : in out BasicProfileActionScriptInput'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class);
   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptInput_Access;
   procedure Initialize (This : in out BasicProfileActionScriptInput'Class; label : Unbounded_String);
   function Create (label : Unbounded_String) return BasicProfileActionScriptInput_Access;
   function getTime (This : in out BasicProfileActionScriptInput) return Integer;
   procedure setTime (This : in out BasicProfileActionScriptInput; time : Integer);
   function BasicProfileActionScriptInput_toHashMap (This : in out BasicProfileActionScriptInput) return HashMap_Access;
   function toXmlNode (This : in out BasicProfileActionScriptInput; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptInput; document_Param : access Document_Package.Document'Class);
   procedure setInputRobotInterface (This : in out BasicProfileActionScriptInput; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class);
   function getInputRobotInterface (This : in out BasicProfileActionScriptInput) return InputRobotInterface_Access;
   function toString (This : in out BasicProfileActionScriptInput) return Unbounded_String;

end org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package;


