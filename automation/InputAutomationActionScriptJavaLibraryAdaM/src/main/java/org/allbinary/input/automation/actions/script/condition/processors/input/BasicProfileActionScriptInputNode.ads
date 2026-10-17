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
with org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package;

package org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package is

   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type BasicProfileActionScriptInputNode is tagged;
   type BasicProfileActionScriptInputNode_Access is access all BasicProfileActionScriptInputNode'Class;
   type BasicProfileActionScriptInputNode_Access_Array is array (Natural range <>) of BasicProfileActionScriptInputNode_Access;
   type BasicProfileActionScriptInputNode_Access_Array_Access is access all BasicProfileActionScriptInputNode_Access_Array;

   type BasicProfileActionScriptInputNode is new Java_Object with null record;

   procedure Initialize (This : in out BasicProfileActionScriptInputNode'Class; node_Param : access Node'Class);
   function Create (node_Param : access Node'Class) return BasicProfileActionScriptInputNode_Access;
   procedure Initialize (This : in out BasicProfileActionScriptInputNode'Class);
   function Create return BasicProfileActionScriptInputNode_Access;
   function toXmlNode (This : in out BasicProfileActionScriptInputNode; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out BasicProfileActionScriptInputNode; document_Param : access Document'Class);

end org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInputNode_Package;


