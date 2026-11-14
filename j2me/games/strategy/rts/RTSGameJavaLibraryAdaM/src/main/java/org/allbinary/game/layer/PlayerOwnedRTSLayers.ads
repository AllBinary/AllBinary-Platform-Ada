-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;
package org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References is
   type PlayerOwnedRTSLayers_Access is access all org.allbinary.game.layer.PlayerOwnedRTSLayers_Package.PlayerOwnedRTSLayers'Class;
   type PlayerOwnedRTSLayers_Access_Array is array (Natural range <>) of PlayerOwnedRTSLayers_Access;
   type PlayerOwnedRTSLayers_Access_Array_Access is access all PlayerOwnedRTSLayers_Access_Array;
   type PlayerOwnedRTSLayers_Access_Array_Access_Array is array (Natural range <>) of PlayerOwnedRTSLayers_Access_Array_Access;
   type PlayerOwnedRTSLayers_Access_Array_Access_Array_Access is access all PlayerOwnedRTSLayers_Access_Array_Access_Array;
   type PlayerOwnedRTSLayers_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerOwnedRTSLayers_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerOwnedRTSLayers_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerOwnedRTSLayers_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerOwnedRTSLayers_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerOwnedRTSLayers_Access_Array_Access is (if Value /= null and then Value.all in PlayerOwnedRTSLayers_Access_Array_Object'Class then PlayerOwnedRTSLayers_Access_Array_Object'Class (Value.all).Value else null);
   type PlayerOwnedRTSLayers_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PlayerOwnedRTSLayers_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PlayerOwnedRTSLayers_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PlayerOwnedRTSLayers_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PlayerOwnedRTSLayers_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PlayerOwnedRTSLayers_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PlayerOwnedRTSLayers_Access_Array_Access_Array_Object'Class then PlayerOwnedRTSLayers_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References;

with org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References;
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

package org.allbinary.game.layer.PlayerOwnedRTSLayers_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype PlayerOwnedRTSLayers_Access is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   subtype PlayerOwnedRTSLayers_Access_Array is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access_Array) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   subtype PlayerOwnedRTSLayers_Access_Array_Access is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array_Access;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   function Java_Box (Value : PlayerOwnedRTSLayers_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.Java_Box;
   function Java_Unbox_PlayerOwnedRTSLayers_Access_Array (Value : access Java_Object'Class) return PlayerOwnedRTSLayers_Access_Array_Access renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.Java_Unbox_PlayerOwnedRTSLayers_Access_Array;
   subtype PlayerOwnedRTSLayers_Access_Array_Access_Array is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   subtype PlayerOwnedRTSLayers_Access_Array_Access_Array_Access is org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.PlayerOwnedRTSLayers_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerOwnedRTSLayers_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References."=";
   function Java_Box (Value : PlayerOwnedRTSLayers_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.Java_Box;
   function Java_Unbox_PlayerOwnedRTSLayers_Access_Array_Access_Array (Value : access Java_Object'Class) return PlayerOwnedRTSLayers_Access_Array_Access_Array_Access renames org.allbinary.game.layer.PlayerOwnedRTSLayers_Package_References.Java_Unbox_PlayerOwnedRTSLayers_Access_Array_Access_Array;

   type PlayerOwnedRTSLayers is new Java_Object with record
      rtsLayerList : BasicArrayList_Access;
   end record;

   procedure Initialize (This : in out PlayerOwnedRTSLayers'Class);
   function Create return PlayerOwnedRTSLayers_Access;
   function toString (This : in out PlayerOwnedRTSLayers) return Unbounded_String;

end org.allbinary.game.layer.PlayerOwnedRTSLayers_Package;


