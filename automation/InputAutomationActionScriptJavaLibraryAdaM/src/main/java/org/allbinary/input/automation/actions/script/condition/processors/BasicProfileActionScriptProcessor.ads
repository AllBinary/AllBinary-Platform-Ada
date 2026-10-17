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
with org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package; use org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package; use org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package; use org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

package org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package is

   package JTreeInterfaceFactory_Package renames org.allbinary.input.automation.actions.script.JTreeInterfaceFactory_Package;
   package ProfileActionScriptItem_Package renames org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
   package ProfileActionScriptConditionInterface_Package renames org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
   package Document_Package renames org.w3c.dom.Document_Package;
   package Node_Package renames org.w3c.dom.Node_Package;

   type BasicProfileActionScriptProcessor is tagged;
   type BasicProfileActionScriptProcessor_Access is access all BasicProfileActionScriptProcessor'Class;
   type BasicProfileActionScriptProcessor_Access_Array is array (Natural range <>) of BasicProfileActionScriptProcessor_Access;
   type BasicProfileActionScriptProcessor_Access_Array_Access is access all BasicProfileActionScriptProcessor_Access_Array;

   type BasicProfileActionScriptProcessor is new ProfileActionScriptItem and ProfileActionScriptProcessorInterface with null record;

   procedure Initialize (This : in out BasicProfileActionScriptProcessor'Class; label : Unbounded_String; node : Node_Access);
   function Create (label : Unbounded_String; node : Node_Access) return BasicProfileActionScriptProcessor_Access;
   procedure actionPerformed (This : in out BasicProfileActionScriptProcessor; actionEvent : ActionEvent_Access);
   function toXmlNode (This : in out BasicProfileActionScriptProcessor; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptProcessor; document : Document_Access);

end org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;


