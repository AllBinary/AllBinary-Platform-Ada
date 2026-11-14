-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
limited with org.allbinary.game.layer.TiledLayerUtil_Package;
package org.allbinary.game.layer.TiledLayerUtil_Package_References is
   type TiledLayerUtil_Access is access all org.allbinary.game.layer.TiledLayerUtil_Package.TiledLayerUtil'Class;
   type TiledLayerUtil_Access_Array is array (Natural range <>) of TiledLayerUtil_Access;
   type TiledLayerUtil_Access_Array_Access is access all TiledLayerUtil_Access_Array;
   type TiledLayerUtil_Access_Array_Access_Array is array (Natural range <>) of TiledLayerUtil_Access_Array_Access;
   type TiledLayerUtil_Access_Array_Access_Array_Access is access all TiledLayerUtil_Access_Array_Access_Array;
   type TiledLayerUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TiledLayerUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : TiledLayerUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TiledLayerUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TiledLayerUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TiledLayerUtil_Access_Array_Access is (if Value /= null and then Value.all in TiledLayerUtil_Access_Array_Object'Class then TiledLayerUtil_Access_Array_Object'Class (Value.all).Value else null);
   type TiledLayerUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TiledLayerUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TiledLayerUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TiledLayerUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TiledLayerUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TiledLayerUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TiledLayerUtil_Access_Array_Access_Array_Object'Class then TiledLayerUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.TiledLayerUtil_Package_References;

with org.allbinary.game.layer.TiledLayerUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;

package org.allbinary.game.layer.TiledLayerUtil_Package is

   package Reference_Types is
   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   use type AllBinaryTiledLayer_Access;
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   use type AllBinaryTiledLayer_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   use type AllBinaryTiledLayer_Access_Array_Access_Array;
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   use type AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype TiledLayerUtil_Access is org.allbinary.game.layer.TiledLayerUtil_Package_References.TiledLayerUtil_Access;
   function "=" (Left, Right : TiledLayerUtil_Access) return Boolean renames org.allbinary.game.layer.TiledLayerUtil_Package_References."=";
   subtype TiledLayerUtil_Access_Array is org.allbinary.game.layer.TiledLayerUtil_Package_References.TiledLayerUtil_Access_Array;
   function "=" (Left, Right : TiledLayerUtil_Access_Array) return Boolean renames org.allbinary.game.layer.TiledLayerUtil_Package_References."=";
   subtype TiledLayerUtil_Access_Array_Access is org.allbinary.game.layer.TiledLayerUtil_Package_References.TiledLayerUtil_Access_Array_Access;
   function "=" (Left, Right : TiledLayerUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.TiledLayerUtil_Package_References."=";
   function Java_Box (Value : TiledLayerUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.TiledLayerUtil_Package_References.Java_Box;
   function Java_Unbox_TiledLayerUtil_Access_Array (Value : access Java_Object'Class) return TiledLayerUtil_Access_Array_Access renames org.allbinary.game.layer.TiledLayerUtil_Package_References.Java_Unbox_TiledLayerUtil_Access_Array;
   subtype TiledLayerUtil_Access_Array_Access_Array is org.allbinary.game.layer.TiledLayerUtil_Package_References.TiledLayerUtil_Access_Array_Access_Array;
   function "=" (Left, Right : TiledLayerUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.TiledLayerUtil_Package_References."=";
   subtype TiledLayerUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.TiledLayerUtil_Package_References.TiledLayerUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TiledLayerUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.TiledLayerUtil_Package_References."=";
   function Java_Box (Value : TiledLayerUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.TiledLayerUtil_Package_References.Java_Box;
   function Java_Unbox_TiledLayerUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return TiledLayerUtil_Access_Array_Access_Array_Access renames org.allbinary.game.layer.TiledLayerUtil_Package_References.Java_Unbox_TiledLayerUtil_Access_Array_Access_Array;

   type TiledLayerUtil is new Java_Object with null record;
   instance : TiledLayerUtil_Access;

   procedure Initialize (This : in out TiledLayerUtil'Class);
   function Create return TiledLayerUtil_Access;
   function getInstance return TiledLayerUtil_Access;
   function keepOnBorderdMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer; mapBorderBufferWidth : Integer) return Integer;
   procedure keepOnBorderdMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer; mapBorderBufferWidth : Integer);
   function keepOnBorderdMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer; mapBorderBufferHeight : Integer) return Integer;
   procedure keepOnBorderdMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer; mapBorderBufferHeight : Integer);
   function keepOnMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer) return Integer;
   procedure keepOnMapX (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; x : Integer; width : Integer);
   function keepOnMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer) return Integer;
   procedure keepOnMapY (This : in out TiledLayerUtil; terrainTiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; y : Integer; height : Integer);

end org.allbinary.game.layer.TiledLayerUtil_Package;


