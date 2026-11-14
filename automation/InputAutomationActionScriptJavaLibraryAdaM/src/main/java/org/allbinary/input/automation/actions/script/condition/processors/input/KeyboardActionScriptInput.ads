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

with AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References is
   type KeyboardActionScriptInput_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package.KeyboardActionScriptInput'Class;
   type KeyboardActionScriptInput_Access_Array is array (Natural range <>) of KeyboardActionScriptInput_Access;
   type KeyboardActionScriptInput_Access_Array_Access is access all KeyboardActionScriptInput_Access_Array;
   type KeyboardActionScriptInput_Access_Array_Access_Array is array (Natural range <>) of KeyboardActionScriptInput_Access_Array_Access;
   type KeyboardActionScriptInput_Access_Array_Access_Array_Access is access all KeyboardActionScriptInput_Access_Array_Access_Array;
   type KeyboardActionScriptInput_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyboardActionScriptInput_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyboardActionScriptInput_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyboardActionScriptInput_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyboardActionScriptInput_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyboardActionScriptInput_Access_Array_Access is (if Value /= null and then Value.all in KeyboardActionScriptInput_Access_Array_Object'Class then KeyboardActionScriptInput_Access_Array_Object'Class (Value.all).Value else null);
   type KeyboardActionScriptInput_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyboardActionScriptInput_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyboardActionScriptInput_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyboardActionScriptInput_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyboardActionScriptInput_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyboardActionScriptInput_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeyboardActionScriptInput_Access_Array_Access_Array_Object'Class then KeyboardActionScriptInput_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References;
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
with org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package is

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
   subtype KeyboardActionScriptInputJPanel_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access;
   use type KeyboardActionScriptInputJPanel_Access;
   subtype KeyboardActionScriptInputJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array;
   use type KeyboardActionScriptInputJPanel_Access_Array;
   subtype KeyboardActionScriptInputJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array_Access;
   use type KeyboardActionScriptInputJPanel_Access_Array_Access;
   subtype KeyboardActionScriptInputJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array_Access_Array;
   use type KeyboardActionScriptInputJPanel_Access_Array_Access_Array;
   subtype KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access;
   use type KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype KeyboardActionScriptInput_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References.KeyboardActionScriptInput_Access;
   function "=" (Left, Right : KeyboardActionScriptInput_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References."=";
   subtype KeyboardActionScriptInput_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References.KeyboardActionScriptInput_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInput_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References."=";
   subtype KeyboardActionScriptInput_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References.KeyboardActionScriptInput_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInput_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References."=";
   function Java_Box (Value : KeyboardActionScriptInput_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References.Java_Box;
   function Java_Unbox_KeyboardActionScriptInput_Access_Array (Value : access Java_Object'Class) return KeyboardActionScriptInput_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References.Java_Unbox_KeyboardActionScriptInput_Access_Array;
   subtype KeyboardActionScriptInput_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References.KeyboardActionScriptInput_Access_Array_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInput_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References."=";
   subtype KeyboardActionScriptInput_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References.KeyboardActionScriptInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References."=";
   function Java_Box (Value : KeyboardActionScriptInput_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References.Java_Box;
   function Java_Unbox_KeyboardActionScriptInput_Access_Array_Access_Array (Value : access Java_Object'Class) return KeyboardActionScriptInput_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package_References.Java_Unbox_KeyboardActionScriptInput_Access_Array_Access_Array;

   type KeyboardActionScriptInput is new BasicProfileActionScriptInput and KeyboardActionScriptInputInterface with record
      KeyboardActionScriptInput_Field_logUtil : LogUtil_Access;
      keyArray : Integer_Array_Access;
      keyboardActionScriptInputJPanel : KeyboardActionScriptInputJPanel_Access;
      press : Boolean;
      release : Boolean;
      delayBetweenKeys : Integer;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out KeyboardActionScriptInput'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return KeyboardActionScriptInput_Access;
   procedure Initialize (This : in out KeyboardActionScriptInput'Class);
   function Create return KeyboardActionScriptInput_Access;
   function getDelayBetweenKeys (This : in out KeyboardActionScriptInput) return Integer;
   procedure setDelayBetweenKeys (This : in out KeyboardActionScriptInput; delayBetweenKeys : Integer);
   function isPress (This : in out KeyboardActionScriptInput) return Boolean;
   procedure setPress (This : in out KeyboardActionScriptInput; press : Boolean);
   function isRelease (This : in out KeyboardActionScriptInput) return Boolean;
   procedure setRelease (This : in out KeyboardActionScriptInput; release : Boolean);
   function isNormal (This : in out KeyboardActionScriptInput) return Boolean;
   procedure setNormal (This : in out KeyboardActionScriptInput);
   function getKeyArray (This : in out KeyboardActionScriptInput) return Integer_Array_Access;
   procedure setKeyArray (This : in out KeyboardActionScriptInput; keyArray : Integer_Array_Access);
   procedure showDialog (This : in out KeyboardActionScriptInput);
   function getText (This : in out KeyboardActionScriptInput) return Unbounded_String;
   procedure setText (This : in out KeyboardActionScriptInput; text : Unbounded_String);
   function getText (integerArray : Integer_Array_Access) return Unbounded_String;
   procedure getText (integerArray : Integer_Array_Access);
   function integerArrayValue (This : in out KeyboardActionScriptInput; text : Unbounded_String) return Integer_Array_Access;
   procedure integerArrayValue (This : in out KeyboardActionScriptInput; text : Unbounded_String);
   function toHashMap (This : in out KeyboardActionScriptInput) return HashMap_Access;
   function toXmlNode (This : in out KeyboardActionScriptInput; document_Param : access Document_Package.Document'Class) return Node_Access;
   procedure toXmlNode (This : in out KeyboardActionScriptInput; document_Param : access Document_Package.Document'Class);
   procedure process (This : in out KeyboardActionScriptInput; frame : Long_Long_Integer);
   procedure log (This : in out KeyboardActionScriptInput);
   function toString (This : in out KeyboardActionScriptInput) return Unbounded_String;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package;


