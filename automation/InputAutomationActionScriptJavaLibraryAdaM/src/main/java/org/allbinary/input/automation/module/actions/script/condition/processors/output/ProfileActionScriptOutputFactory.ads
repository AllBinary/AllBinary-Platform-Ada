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
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type ProfileActionScriptOutputFactory is tagged;
   type ProfileActionScriptOutputFactory_Access is access all ProfileActionScriptOutputFactory'Class;
   type ProfileActionScriptOutputFactory_Access_Array is array (Natural range <>) of ProfileActionScriptOutputFactory_Access;
   type ProfileActionScriptOutputFactory_Access_Array_Access is access all ProfileActionScriptOutputFactory_Access_Array;

   type ProfileActionScriptOutputFactory is new Java_Object with null record;

   procedure Initialize (This : in out ProfileActionScriptOutputFactory'Class);
   function Create return ProfileActionScriptOutputFactory_Access;
   function getInstance (node_Param : access Node_Package.Node'Class) return ProfileActionScriptOutputInterface_Access;
   procedure getInstance (node_Param : access Node_Package.Node'Class);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory_Package;


