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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputData_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputProcessor_Package;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;

   type ImageActionScriptOutput is tagged;
   type ImageActionScriptOutput_Access is access all ImageActionScriptOutput'Class;
   type ImageActionScriptOutput_Access_Array is array (Natural range <>) of ImageActionScriptOutput_Access;
   type ImageActionScriptOutput_Access_Array_Access is access all ImageActionScriptOutput_Access_Array;

   type ImageActionScriptOutput is new BasicProfileActionScriptOutput and ImageActionScriptOutputInterface with record
      logUtil : LogUtil_Access;
      saved : Boolean;
      display : Boolean;
      imageTypes : ImageTypes_Access;
      actionScriptOutputJPanel : ImageActionScriptOutputJPanel_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out ImageActionScriptOutput'Class; node_Param : access Node'Class);
   function Create (node_Param : access Node'Class) return ImageActionScriptOutput_Access;
   procedure Initialize (This : in out ImageActionScriptOutput'Class);
   function Create return ImageActionScriptOutput_Access;
   function getActionScriptOutputJPanel (This : in out ImageActionScriptOutput) return ImageActionScriptOutputJPanel_Access;
   function toHashMap (This : in out ImageActionScriptOutput) return HashMap_Access;
   function toXmlNode (This : in out ImageActionScriptOutput; document_Param : access Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ImageActionScriptOutput; document_Param : access Document'Class);
   procedure process (This : in out ImageActionScriptOutput; frame : Long_Long_Integer);
   procedure showDialog (This : in out ImageActionScriptOutput);
   function isSaved (This : in out ImageActionScriptOutput) return Boolean;
   procedure setSaved (This : in out ImageActionScriptOutput; saved : Boolean);
   function isDisplay (This : in out ImageActionScriptOutput) return Boolean;
   procedure setDisplay (This : in out ImageActionScriptOutput; display : Boolean);
   function future_toString (This : in out ImageActionScriptOutput) return Unbounded_String;
   procedure log (This : in out ImageActionScriptOutput);
   function getImageTypes (This : in out ImageActionScriptOutput) return ImageTypes_Access;
   procedure setImageTypes (This : in out ImageActionScriptOutput; imageTypes_Param : access ImageTypes'Class);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package;


