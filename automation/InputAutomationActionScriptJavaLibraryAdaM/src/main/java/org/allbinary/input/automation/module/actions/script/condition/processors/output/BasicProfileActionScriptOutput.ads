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
with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package; use org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package is

   package BasicProfileActionScriptProcessor_Package renames Standard.org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicProfileActionScriptOutput is tagged;
   type BasicProfileActionScriptOutput_Access is access all BasicProfileActionScriptOutput'Class;
   type BasicProfileActionScriptOutput_Access_Array is array (Natural range <>) of BasicProfileActionScriptOutput_Access;
   type BasicProfileActionScriptOutput_Access_Array_Access is access all BasicProfileActionScriptOutput_Access_Array;

   type BasicProfileActionScriptOutput is new BasicProfileActionScriptProcessor and ProfileActionScriptOutputInterface with null record;

   procedure Initialize (This : in out BasicProfileActionScriptOutput'Class; label : Unbounded_String; node : Node_Access);
   function Create (label : Unbounded_String; node : Node_Access) return BasicProfileActionScriptOutput_Access;
   procedure Initialize (This : in out BasicProfileActionScriptOutput'Class; label : Unbounded_String);
   function Create (label : Unbounded_String) return BasicProfileActionScriptOutput_Access;
   function toXmlNode (This : in out BasicProfileActionScriptOutput; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptOutput; document : Document_Access);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package;


