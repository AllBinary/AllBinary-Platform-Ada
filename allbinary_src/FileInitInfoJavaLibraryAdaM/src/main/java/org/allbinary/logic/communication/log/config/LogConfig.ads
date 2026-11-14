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
limited with org.allbinary.logic.communication.log.config.LogConfig_Package;
package org.allbinary.logic.communication.log.config.LogConfig_Package_References is
   type LogConfig_Access is access all org.allbinary.logic.communication.log.config.LogConfig_Package.LogConfig'Class;
   type LogConfig_Access_Array is array (Natural range <>) of LogConfig_Access;
   type LogConfig_Access_Array_Access is access all LogConfig_Access_Array;
   type LogConfig_Access_Array_Access_Array is array (Natural range <>) of LogConfig_Access_Array_Access;
   type LogConfig_Access_Array_Access_Array_Access is access all LogConfig_Access_Array_Access_Array;
   type LogConfig_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfig_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfig_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfig_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfig_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfig_Access_Array_Access is (if Value /= null and then Value.all in LogConfig_Access_Array_Object'Class then LogConfig_Access_Array_Object'Class (Value.all).Value else null);
   type LogConfig_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LogConfig_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LogConfig_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LogConfig_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LogConfig_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LogConfig_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LogConfig_Access_Array_Access_Array_Object'Class then LogConfig_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.log.config.LogConfig_Package_References;

with org.allbinary.logic.communication.log.config.LogConfig_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;

package org.allbinary.logic.communication.log.config.LogConfig_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype LogConfig_Access is org.allbinary.logic.communication.log.config.LogConfig_Package_References.LogConfig_Access;
   function "=" (Left, Right : LogConfig_Access) return Boolean renames org.allbinary.logic.communication.log.config.LogConfig_Package_References."=";
   subtype LogConfig_Access_Array is org.allbinary.logic.communication.log.config.LogConfig_Package_References.LogConfig_Access_Array;
   function "=" (Left, Right : LogConfig_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.LogConfig_Package_References."=";
   subtype LogConfig_Access_Array_Access is org.allbinary.logic.communication.log.config.LogConfig_Package_References.LogConfig_Access_Array_Access;
   function "=" (Left, Right : LogConfig_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.LogConfig_Package_References."=";
   function Java_Box (Value : LogConfig_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.LogConfig_Package_References.Java_Box;
   function Java_Unbox_LogConfig_Access_Array (Value : access Java_Object'Class) return LogConfig_Access_Array_Access renames org.allbinary.logic.communication.log.config.LogConfig_Package_References.Java_Unbox_LogConfig_Access_Array;
   subtype LogConfig_Access_Array_Access_Array is org.allbinary.logic.communication.log.config.LogConfig_Package_References.LogConfig_Access_Array_Access_Array;
   function "=" (Left, Right : LogConfig_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.config.LogConfig_Package_References."=";
   subtype LogConfig_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.config.LogConfig_Package_References.LogConfig_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogConfig_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.config.LogConfig_Package_References."=";
   function Java_Box (Value : LogConfig_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.log.config.LogConfig_Package_References.Java_Box;
   function Java_Unbox_LogConfig_Access_Array_Access_Array (Value : access Java_Object'Class) return LogConfig_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.log.config.LogConfig_Package_References.Java_Unbox_LogConfig_Access_Array_Access_Array;

   type LogConfig is new Java_Object with record
      isEnabled_Field : Boolean;
      name : Unbounded_String;
      description : Unbounded_String;
      path : Unbounded_String;
      fileName : Unbounded_String;
   end record;

   procedure Initialize (This : in out LogConfig'Class; aName : Unbounded_String; aDescription : Unbounded_String; aPath : Unbounded_String; aFileName : Unbounded_String);
   function Create (aName : Unbounded_String; aDescription : Unbounded_String; aPath : Unbounded_String; aFileName : Unbounded_String) return LogConfig_Access;
   procedure Initialize (This : in out LogConfig'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return LogConfig_Access;
   function getName (This : in out LogConfig) return Unbounded_String;
   function isEnabled (This : in out LogConfig) return Boolean;
   procedure enable (This : in out LogConfig);
   procedure disable (This : in out LogConfig);
   function getDescription (This : in out LogConfig) return Unbounded_String;
   function getFileName (This : in out LogConfig) return Unbounded_String;
   procedure setName (This : in out LogConfig; value : Unbounded_String);
   procedure setDescription (This : in out LogConfig; value : Unbounded_String);
   procedure setPath (This : in out LogConfig; value : Unbounded_String);
   procedure setFileName (This : in out LogConfig; value : Unbounded_String);
   function getDoc (This : in out LogConfig) return Document_Access;
   function getTypeVector (This : in out LogConfig) return BasicArrayList_Access;

end org.allbinary.logic.communication.log.config.LogConfig_Package;


