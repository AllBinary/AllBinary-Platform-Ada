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
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutputNode_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicProfileActionScriptOutputNode is tagged;
   type BasicProfileActionScriptOutputNode_Access is access all BasicProfileActionScriptOutputNode'Class;
   type BasicProfileActionScriptOutputNode_Access_Array is array (Natural range <>) of BasicProfileActionScriptOutputNode_Access;
   type BasicProfileActionScriptOutputNode_Access_Array_Access is access all BasicProfileActionScriptOutputNode_Access_Array;

   type BasicProfileActionScriptOutputNode is new Java_Object with null record;

   procedure Initialize (This : in out BasicProfileActionScriptOutputNode'Class; node : Node_Access);
   function Create (node : Node_Access) return BasicProfileActionScriptOutputNode_Access;
   procedure Initialize (This : in out BasicProfileActionScriptOutputNode'Class);
   function Create return BasicProfileActionScriptOutputNode_Access;
   function toXmlNode (This : in out BasicProfileActionScriptOutputNode; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptOutputNode; document : Document_Access);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutputNode_Package;


