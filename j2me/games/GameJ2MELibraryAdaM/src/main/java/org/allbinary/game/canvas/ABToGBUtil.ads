-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.game.canvas.ABToGBUtil_Package;
package org.allbinary.game.canvas.ABToGBUtil_Package_References is
   type ABToGBUtil_Access is access all org.allbinary.game.canvas.ABToGBUtil_Package.ABToGBUtil'Class;
   type ABToGBUtil_Access_Array is array (Natural range <>) of ABToGBUtil_Access;
   type ABToGBUtil_Access_Array_Access is access all ABToGBUtil_Access_Array;
   type ABToGBUtil_Access_Array_Access_Array is array (Natural range <>) of ABToGBUtil_Access_Array_Access;
   type ABToGBUtil_Access_Array_Access_Array_Access is access all ABToGBUtil_Access_Array_Access_Array;
   type ABToGBUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABToGBUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ABToGBUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABToGBUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABToGBUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABToGBUtil_Access_Array_Access is (if Value /= null and then Value.all in ABToGBUtil_Access_Array_Object'Class then ABToGBUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ABToGBUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ABToGBUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ABToGBUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ABToGBUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ABToGBUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ABToGBUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ABToGBUtil_Access_Array_Access_Array_Object'Class then ABToGBUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.canvas.ABToGBUtil_Package_References;

with org.allbinary.game.canvas.ABToGBUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;

package org.allbinary.game.canvas.ABToGBUtil_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ABToGBUtil_Access is org.allbinary.game.canvas.ABToGBUtil_Package_References.ABToGBUtil_Access;
   function "=" (Left, Right : ABToGBUtil_Access) return Boolean renames org.allbinary.game.canvas.ABToGBUtil_Package_References."=";
   subtype ABToGBUtil_Access_Array is org.allbinary.game.canvas.ABToGBUtil_Package_References.ABToGBUtil_Access_Array;
   function "=" (Left, Right : ABToGBUtil_Access_Array) return Boolean renames org.allbinary.game.canvas.ABToGBUtil_Package_References."=";
   subtype ABToGBUtil_Access_Array_Access is org.allbinary.game.canvas.ABToGBUtil_Package_References.ABToGBUtil_Access_Array_Access;
   function "=" (Left, Right : ABToGBUtil_Access_Array_Access) return Boolean renames org.allbinary.game.canvas.ABToGBUtil_Package_References."=";
   function Java_Box (Value : ABToGBUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.canvas.ABToGBUtil_Package_References.Java_Box;
   function Java_Unbox_ABToGBUtil_Access_Array (Value : access Java_Object'Class) return ABToGBUtil_Access_Array_Access renames org.allbinary.game.canvas.ABToGBUtil_Package_References.Java_Unbox_ABToGBUtil_Access_Array;
   subtype ABToGBUtil_Access_Array_Access_Array is org.allbinary.game.canvas.ABToGBUtil_Package_References.ABToGBUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ABToGBUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.canvas.ABToGBUtil_Package_References."=";
   subtype ABToGBUtil_Access_Array_Access_Array_Access is org.allbinary.game.canvas.ABToGBUtil_Package_References.ABToGBUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABToGBUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.canvas.ABToGBUtil_Package_References."=";
   function Java_Box (Value : ABToGBUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.canvas.ABToGBUtil_Package_References.Java_Box;
   function Java_Unbox_ABToGBUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ABToGBUtil_Access_Array_Access_Array_Access renames org.allbinary.game.canvas.ABToGBUtil_Package_References.Java_Unbox_ABToGBUtil_Access_Array_Access_Array;

   type ABToGBUtil is new Java_Object with record
      abCanvas : Canvas_Access;
      allBinaryGameLayerManager : AllBinaryGameLayerManager_Access;
   end record;
   instance : ABToGBUtil_Access;

   procedure Initialize (This : in out ABToGBUtil'Class);
   function Create return ABToGBUtil_Access;
   function getInstance return ABToGBUtil_Access;

end org.allbinary.game.canvas.ABToGBUtil_Package;


