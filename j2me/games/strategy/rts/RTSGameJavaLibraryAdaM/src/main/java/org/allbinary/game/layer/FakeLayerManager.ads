-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify

with AllBinary_Java;
limited with org.allbinary.game.layer.FakeLayerManager_Package;
package org.allbinary.game.layer.FakeLayerManager_Package_References is
   type FakeLayerManager_Access is access all org.allbinary.game.layer.FakeLayerManager_Package.FakeLayerManager'Class;
   type FakeLayerManager_Access_Array is array (Natural range <>) of FakeLayerManager_Access;
   type FakeLayerManager_Access_Array_Access is access all FakeLayerManager_Access_Array;
   type FakeLayerManager_Access_Array_Access_Array is array (Natural range <>) of FakeLayerManager_Access_Array_Access;
   type FakeLayerManager_Access_Array_Access_Array_Access is access all FakeLayerManager_Access_Array_Access_Array;
   type FakeLayerManager_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FakeLayerManager_Access_Array_Access;
   end record;
   function Java_Box (Value : FakeLayerManager_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FakeLayerManager_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FakeLayerManager_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FakeLayerManager_Access_Array_Access is (if Value /= null and then Value.all in FakeLayerManager_Access_Array_Object'Class then FakeLayerManager_Access_Array_Object'Class (Value.all).Value else null);
   type FakeLayerManager_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FakeLayerManager_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FakeLayerManager_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FakeLayerManager_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FakeLayerManager_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FakeLayerManager_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FakeLayerManager_Access_Array_Access_Array_Object'Class then FakeLayerManager_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.FakeLayerManager_Package_References;

with org.allbinary.game.layer.FakeLayerManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;

package org.allbinary.game.layer.FakeLayerManager_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package Reference_Types is
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   use type GameInfo_Access;
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   use type GameInfo_Access_Array;
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   use type GameInfo_Access_Array_Access;
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   use type GameInfo_Access_Array_Access_Array;
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   use type GameInfo_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   use type GeographicMapCellType_Access;
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   use type GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   use type GeographicMapCellType_Access_Array_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FakeLayerManager_Access is org.allbinary.game.layer.FakeLayerManager_Package_References.FakeLayerManager_Access;
   function "=" (Left, Right : FakeLayerManager_Access) return Boolean renames org.allbinary.game.layer.FakeLayerManager_Package_References."=";
   subtype FakeLayerManager_Access_Array is org.allbinary.game.layer.FakeLayerManager_Package_References.FakeLayerManager_Access_Array;
   function "=" (Left, Right : FakeLayerManager_Access_Array) return Boolean renames org.allbinary.game.layer.FakeLayerManager_Package_References."=";
   subtype FakeLayerManager_Access_Array_Access is org.allbinary.game.layer.FakeLayerManager_Package_References.FakeLayerManager_Access_Array_Access;
   function "=" (Left, Right : FakeLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.layer.FakeLayerManager_Package_References."=";
   function Java_Box (Value : FakeLayerManager_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.FakeLayerManager_Package_References.Java_Box;
   function Java_Unbox_FakeLayerManager_Access_Array (Value : access Java_Object'Class) return FakeLayerManager_Access_Array_Access renames org.allbinary.game.layer.FakeLayerManager_Package_References.Java_Unbox_FakeLayerManager_Access_Array;
   subtype FakeLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.FakeLayerManager_Package_References.FakeLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : FakeLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.FakeLayerManager_Package_References."=";
   subtype FakeLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.FakeLayerManager_Package_References.FakeLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FakeLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.FakeLayerManager_Package_References."=";
   function Java_Box (Value : FakeLayerManager_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.FakeLayerManager_Package_References.Java_Box;
   function Java_Unbox_FakeLayerManager_Access_Array_Access_Array (Value : access Java_Object'Class) return FakeLayerManager_Access_Array_Access_Array_Access renames org.allbinary.game.layer.FakeLayerManager_Package_References.Java_Unbox_FakeLayerManager_Access_Array_Access_Array;

   type FakeLayerManager is new AllBinaryGameLayerManager and GeographicMapCompositeInterface with record
      geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access;
      geographicMapCellTypeArray_Field : GeographicMapCellType_Access_Array_Access;
   end record;

   procedure Initialize (This : in out FakeLayerManager'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class);
   function Create (gameInfo_Param : access GameInfo_Package.GameInfo'Class) return FakeLayerManager_Access;
   function getGeographicMapInterface (This : in out FakeLayerManager) return BasicGeographicMap_Access_Array_Access;
   procedure setGeographicMapInterface (This : in out FakeLayerManager; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access);
   function geographicMapCellTypeArray (This : in out FakeLayerManager) return GeographicMapCellType_Access_Array_Access;

end org.allbinary.game.layer.FakeLayerManager_Package;


