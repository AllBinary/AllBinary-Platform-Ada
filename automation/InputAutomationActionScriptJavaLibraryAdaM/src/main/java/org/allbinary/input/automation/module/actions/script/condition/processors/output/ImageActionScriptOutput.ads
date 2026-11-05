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

limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package;
package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References is
   type ImageActionScriptOutput_Access is access all org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package.ImageActionScriptOutput'Class;
   type ImageActionScriptOutput_Access_Array is array (Natural range <>) of ImageActionScriptOutput_Access;
   type ImageActionScriptOutput_Access_Array_Access is access all ImageActionScriptOutput_Access_Array;
   type ImageActionScriptOutput_Access_Array_Access_Array is array (Natural range <>) of ImageActionScriptOutput_Access_Array_Access;
   type ImageActionScriptOutput_Access_Array_Access_Array_Access is access all ImageActionScriptOutput_Access_Array_Access_Array;
end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References;

with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package; use org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputInterface_Package;
limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References;
limited with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package;
with org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References;

package org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
   subtype ImageTypes_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access;
   use type ImageTypes_Access;
   subtype ImageTypes_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access_Array;
   use type ImageTypes_Access_Array;
   subtype ImageTypes_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access_Array_Access;
   use type ImageTypes_Access_Array_Access;
   subtype ImageTypes_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access_Array_Access_Array;
   use type ImageTypes_Access_Array_Access_Array;
   subtype ImageTypes_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageTypes_Package_References.ImageTypes_Access_Array_Access_Array_Access;
   use type ImageTypes_Access_Array_Access_Array_Access;
   subtype ImageActionScriptOutputJPanel_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access;
   use type ImageActionScriptOutputJPanel_Access;
   subtype ImageActionScriptOutputJPanel_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access_Array;
   use type ImageActionScriptOutputJPanel_Access_Array;
   subtype ImageActionScriptOutputJPanel_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access_Array_Access;
   use type ImageActionScriptOutputJPanel_Access_Array_Access;
   subtype ImageActionScriptOutputJPanel_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access_Array_Access_Array;
   use type ImageActionScriptOutputJPanel_Access_Array_Access_Array;
   subtype ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutputJPanel_Package_References.ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access;
   use type ImageActionScriptOutputJPanel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageActionScriptOutput_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References.ImageActionScriptOutput_Access;
   function "=" (Left, Right : ImageActionScriptOutput_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References."=";
   subtype ImageActionScriptOutput_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References.ImageActionScriptOutput_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutput_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References."=";
   subtype ImageActionScriptOutput_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References.ImageActionScriptOutput_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutput_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References."=";
   subtype ImageActionScriptOutput_Access_Array_Access_Array is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References.ImageActionScriptOutput_Access_Array_Access_Array;
   function "=" (Left, Right : ImageActionScriptOutput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References."=";
   subtype ImageActionScriptOutput_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References.ImageActionScriptOutput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageActionScriptOutput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package_References."=";

   type ImageActionScriptOutput is new BasicProfileActionScriptOutput and ImageActionScriptOutputInterface with record
      ImageActionScriptOutput_Field_logUtil : LogUtil_Access;
      saved : Boolean;
      display : Boolean;
      imageTypes : ImageTypes_Access;
      actionScriptOutputJPanel : ImageActionScriptOutputJPanel_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out ImageActionScriptOutput'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return ImageActionScriptOutput_Access;
   procedure Initialize (This : in out ImageActionScriptOutput'Class);
   function Create return ImageActionScriptOutput_Access;
   function getActionScriptOutputJPanel (This : in out ImageActionScriptOutput) return ImageActionScriptOutputJPanel_Access;
   function toHashMap (This : in out ImageActionScriptOutput) return HashMap_Access;
   function toXmlNode (This : in out ImageActionScriptOutput; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out ImageActionScriptOutput; document_Param : access Document_Package.Document'Class);
   procedure process (This : in out ImageActionScriptOutput; frame : Long_Long_Integer);
   procedure showDialog (This : in out ImageActionScriptOutput);
   function isSaved (This : in out ImageActionScriptOutput) return Boolean;
   procedure setSaved (This : in out ImageActionScriptOutput; saved : Boolean);
   function isDisplay (This : in out ImageActionScriptOutput) return Boolean;
   procedure setDisplay (This : in out ImageActionScriptOutput; display : Boolean);
   function future_toString (This : in out ImageActionScriptOutput) return Unbounded_String;
   procedure log (This : in out ImageActionScriptOutput);
   function getImageTypes (This : in out ImageActionScriptOutput) return ImageTypes_Access;
   procedure setImageTypes (This : in out ImageActionScriptOutput; imageTypes_Param : access ImageTypes_Package.ImageTypes'Class);

end org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput_Package;


