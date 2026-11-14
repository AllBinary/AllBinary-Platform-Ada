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
limited with org.allbinary.game.ag.ai.KeyPressesAI_Package;
package org.allbinary.game.ag.ai.KeyPressesAI_Package_References is
   type KeyPressesAI_Access is access all org.allbinary.game.ag.ai.KeyPressesAI_Package.KeyPressesAI'Class;
   type KeyPressesAI_Access_Array is array (Natural range <>) of KeyPressesAI_Access;
   type KeyPressesAI_Access_Array_Access is access all KeyPressesAI_Access_Array;
   type KeyPressesAI_Access_Array_Access_Array is array (Natural range <>) of KeyPressesAI_Access_Array_Access;
   type KeyPressesAI_Access_Array_Access_Array_Access is access all KeyPressesAI_Access_Array_Access_Array;
   type KeyPressesAI_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyPressesAI_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyPressesAI_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyPressesAI_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyPressesAI_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyPressesAI_Access_Array_Access is (if Value /= null and then Value.all in KeyPressesAI_Access_Array_Object'Class then KeyPressesAI_Access_Array_Object'Class (Value.all).Value else null);
   type KeyPressesAI_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyPressesAI_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyPressesAI_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyPressesAI_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyPressesAI_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyPressesAI_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeyPressesAI_Access_Array_Access_Array_Object'Class then KeyPressesAI_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.ai.KeyPressesAI_Package_References;

with org.allbinary.game.ag.ai.KeyPressesAI_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInput_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.ai.BasicAI_Package; use org.allbinary.game.ai.BasicAI_Package;
limited with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;

package org.allbinary.game.ag.ai.KeyPressesAI_Package is

   package GameInput_Package renames Standard.org.allbinary.game.input.GameInput_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicAI_Package renames Standard.org.allbinary.game.ai.BasicAI_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Reference_Types is
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   use type GameInput_Access;
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   use type GameInput_Access_Array;
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   use type GameInput_Access_Array_Access;
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   use type GameInput_Access_Array_Access_Array;
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   use type GameInput_Access_Array_Access_Array_Access;
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
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


   subtype KeyPressesAI_Access is org.allbinary.game.ag.ai.KeyPressesAI_Package_References.KeyPressesAI_Access;
   function "=" (Left, Right : KeyPressesAI_Access) return Boolean renames org.allbinary.game.ag.ai.KeyPressesAI_Package_References."=";
   subtype KeyPressesAI_Access_Array is org.allbinary.game.ag.ai.KeyPressesAI_Package_References.KeyPressesAI_Access_Array;
   function "=" (Left, Right : KeyPressesAI_Access_Array) return Boolean renames org.allbinary.game.ag.ai.KeyPressesAI_Package_References."=";
   subtype KeyPressesAI_Access_Array_Access is org.allbinary.game.ag.ai.KeyPressesAI_Package_References.KeyPressesAI_Access_Array_Access;
   function "=" (Left, Right : KeyPressesAI_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.KeyPressesAI_Package_References."=";
   function Java_Box (Value : KeyPressesAI_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.KeyPressesAI_Package_References.Java_Box;
   function Java_Unbox_KeyPressesAI_Access_Array (Value : access Java_Object'Class) return KeyPressesAI_Access_Array_Access renames org.allbinary.game.ag.ai.KeyPressesAI_Package_References.Java_Unbox_KeyPressesAI_Access_Array;
   subtype KeyPressesAI_Access_Array_Access_Array is org.allbinary.game.ag.ai.KeyPressesAI_Package_References.KeyPressesAI_Access_Array_Access_Array;
   function "=" (Left, Right : KeyPressesAI_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.ai.KeyPressesAI_Package_References."=";
   subtype KeyPressesAI_Access_Array_Access_Array_Access is org.allbinary.game.ag.ai.KeyPressesAI_Package_References.KeyPressesAI_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyPressesAI_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.ai.KeyPressesAI_Package_References."=";
   function Java_Box (Value : KeyPressesAI_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.ai.KeyPressesAI_Package_References.Java_Box;
   function Java_Unbox_KeyPressesAI_Access_Array_Access_Array (Value : access Java_Object'Class) return KeyPressesAI_Access_Array_Access_Array_Access renames org.allbinary.game.ag.ai.KeyPressesAI_Package_References.Java_Unbox_KeyPressesAI_Access_Array_Access_Array;

   type KeyPressesAI is new BasicAI with record
      on : Boolean;
      keys : Integer_Array_Access;
   end record;

   procedure Initialize (This : in out KeyPressesAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class);
   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return KeyPressesAI_Access;
   procedure processAI (This : in out KeyPressesAI; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure toggle (This : in out KeyPressesAI);
   procedure disable (This : in out KeyPressesAI);
   procedure enable (This : in out KeyPressesAI);
   procedure setOn (This : in out KeyPressesAI; on : Boolean);
   function isOn (This : in out KeyPressesAI) return Boolean;

end org.allbinary.game.ag.ai.KeyPressesAI_Package;


