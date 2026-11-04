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

limited with org.allbinary.game.configuration.GameConfigurationTextInput_Package;
package org.allbinary.game.configuration.GameConfigurationTextInput_Package_References is
   type GameConfigurationTextInput_Access is access all org.allbinary.game.configuration.GameConfigurationTextInput_Package.GameConfigurationTextInput'Class;
   type GameConfigurationTextInput_Access_Array is array (Natural range <>) of GameConfigurationTextInput_Access;
   type GameConfigurationTextInput_Access_Array_Access is access all GameConfigurationTextInput_Access_Array;
   type GameConfigurationTextInput_Access_Array_Access_Array is array (Natural range <>) of GameConfigurationTextInput_Access_Array_Access;
   type GameConfigurationTextInput_Access_Array_Access_Array_Access is access all GameConfigurationTextInput_Access_Array_Access_Array;
end org.allbinary.game.configuration.GameConfigurationTextInput_Package_References;

with org.allbinary.game.configuration.GameConfigurationTextInput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.TextField_Package_References;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.configuration.GameConfigurationTextInput_Package is

   package TextField_Package renames Standard.javax.microedition.lcdui.TextField_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype TextField_Access is javax.microedition.lcdui.TextField_Package_References.TextField_Access;
   use type TextField_Access;
   subtype TextField_Access_Array is javax.microedition.lcdui.TextField_Package_References.TextField_Access_Array;
   use type TextField_Access_Array;
   subtype TextField_Access_Array_Access is javax.microedition.lcdui.TextField_Package_References.TextField_Access_Array_Access;
   use type TextField_Access_Array_Access;
   subtype TextField_Access_Array_Access_Array is javax.microedition.lcdui.TextField_Package_References.TextField_Access_Array_Access_Array;
   use type TextField_Access_Array_Access_Array;
   subtype TextField_Access_Array_Access_Array_Access is javax.microedition.lcdui.TextField_Package_References.TextField_Access_Array_Access_Array_Access;
   use type TextField_Access_Array_Access_Array_Access;
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   use type ABHashtable_Access;
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   use type ABHashtable_Access_Array;
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   use type ABHashtable_Access_Array_Access;
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   use type ABHashtable_Access_Array_Access_Array;
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   use type ABHashtable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameConfigurationTextInput_Access is org.allbinary.game.configuration.GameConfigurationTextInput_Package_References.GameConfigurationTextInput_Access;
   function "=" (Left, Right : GameConfigurationTextInput_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationTextInput_Package_References."=";
   subtype GameConfigurationTextInput_Access_Array is org.allbinary.game.configuration.GameConfigurationTextInput_Package_References.GameConfigurationTextInput_Access_Array;
   function "=" (Left, Right : GameConfigurationTextInput_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationTextInput_Package_References."=";
   subtype GameConfigurationTextInput_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationTextInput_Package_References.GameConfigurationTextInput_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationTextInput_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationTextInput_Package_References."=";
   subtype GameConfigurationTextInput_Access_Array_Access_Array is org.allbinary.game.configuration.GameConfigurationTextInput_Package_References.GameConfigurationTextInput_Access_Array_Access_Array;
   function "=" (Left, Right : GameConfigurationTextInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.GameConfigurationTextInput_Package_References."=";
   subtype GameConfigurationTextInput_Access_Array_Access_Array_Access is org.allbinary.game.configuration.GameConfigurationTextInput_Package_References.GameConfigurationTextInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameConfigurationTextInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.GameConfigurationTextInput_Package_References."=";

   type GameConfigurationTextInput is new Java_Object with record
      label : Unbounded_String;
      text : Unbounded_String;
   end record;
   hashtable : ABHashtable_Access;
   SIMULATOR_IP : GameConfigurationTextInput_Access;
   SIMULATOR_PORT : GameConfigurationTextInput_Access;

   procedure Initialize (This : in out GameConfigurationTextInput'Class; label : Unbounded_String; text : Unbounded_String);
   function Create (label : Unbounded_String; text : Unbounded_String) return GameConfigurationTextInput_Access;
   procedure update (textField_Param : access TextField_Package.TextField'Class);
   procedure setText (This : in out GameConfigurationTextInput; text : Unbounded_String);
   function getText (This : in out GameConfigurationTextInput) return Unbounded_String;
   procedure setLabel (This : in out GameConfigurationTextInput; label : Unbounded_String);
   function getLabel (This : in out GameConfigurationTextInput) return Unbounded_String;
   function getHashtable return ABHashtable_Access;

end org.allbinary.game.configuration.GameConfigurationTextInput_Package;


