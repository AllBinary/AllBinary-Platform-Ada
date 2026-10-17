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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;

package org.allbinary.game.layer.FakeLayerManager_Package is

   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;

   type FakeLayerManager is tagged;
   type FakeLayerManager_Access is access all FakeLayerManager'Class;
   type FakeLayerManager_Access_Array is array (Natural range <>) of FakeLayerManager_Access;
   type FakeLayerManager_Access_Array_Access is access all FakeLayerManager_Access_Array;

   type FakeLayerManager is new AllBinaryGameLayerManager and GeographicMapCompositeInterface with record
      geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access;
      geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access;
   end record;

   procedure Initialize (This : in out FakeLayerManager'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class);
   function Create (gameInfo_Param : access GameInfo_Package.GameInfo'Class) return FakeLayerManager_Access;
   function getGeographicMapInterface (This : in out FakeLayerManager) return BasicGeographicMap_Access_Array_Access;
   procedure setGeographicMapInterface (This : in out FakeLayerManager; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access);
   function geographicMapCellTypeArray (This : in out FakeLayerManager) return GeographicMapCellType_Access_Array_Access;

end org.allbinary.game.layer.FakeLayerManager_Package;


