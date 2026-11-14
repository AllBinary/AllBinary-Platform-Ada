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
limited with org.allbinary.game.layer.behavior.GameLayerBehavior_Package;
package org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References is
   type GameLayerBehavior_Access is access all org.allbinary.game.layer.behavior.GameLayerBehavior_Package.GameLayerBehavior'Class;
   type GameLayerBehavior_Access_Array is array (Natural range <>) of GameLayerBehavior_Access;
   type GameLayerBehavior_Access_Array_Access is access all GameLayerBehavior_Access_Array;
   type GameLayerBehavior_Access_Array_Access_Array is array (Natural range <>) of GameLayerBehavior_Access_Array_Access;
   type GameLayerBehavior_Access_Array_Access_Array_Access is access all GameLayerBehavior_Access_Array_Access_Array;
   type GameLayerBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameLayerBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : GameLayerBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameLayerBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameLayerBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameLayerBehavior_Access_Array_Access is (if Value /= null and then Value.all in GameLayerBehavior_Access_Array_Object'Class then GameLayerBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type GameLayerBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameLayerBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameLayerBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameLayerBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameLayerBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameLayerBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameLayerBehavior_Access_Array_Access_Array_Object'Class then GameLayerBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References;

with org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.layer.behavior.GameLayerBehavior_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GameLayerBehavior_Access is org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References.GameLayerBehavior_Access;
   function "=" (Left, Right : GameLayerBehavior_Access) return Boolean renames org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References."=";
   subtype GameLayerBehavior_Access_Array is org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References.GameLayerBehavior_Access_Array;
   function "=" (Left, Right : GameLayerBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References."=";
   subtype GameLayerBehavior_Access_Array_Access is org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References.GameLayerBehavior_Access_Array_Access;
   function "=" (Left, Right : GameLayerBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References."=";
   function Java_Box (Value : GameLayerBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References.Java_Box;
   function Java_Unbox_GameLayerBehavior_Access_Array (Value : access Java_Object'Class) return GameLayerBehavior_Access_Array_Access renames org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References.Java_Unbox_GameLayerBehavior_Access_Array;
   subtype GameLayerBehavior_Access_Array_Access_Array is org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References.GameLayerBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : GameLayerBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References."=";
   subtype GameLayerBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References.GameLayerBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameLayerBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References."=";
   function Java_Box (Value : GameLayerBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References.Java_Box;
   function Java_Unbox_GameLayerBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return GameLayerBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.layer.behavior.GameLayerBehavior_Package_References.Java_Unbox_GameLayerBehavior_Access_Array_Access_Array;

   type GameLayerBehavior is new Java_Object with null record;

   procedure Initialize (This : in out GameLayerBehavior'Class);
   function Create return GameLayerBehavior_Access;

end org.allbinary.game.layer.behavior.GameLayerBehavior_Package;


