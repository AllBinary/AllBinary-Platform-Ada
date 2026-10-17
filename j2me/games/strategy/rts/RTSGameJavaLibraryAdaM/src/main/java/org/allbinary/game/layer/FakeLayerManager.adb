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


package body org.allbinary.game.layer.FakeLayerManager_Package is

   procedure Initialize_Fields (This : in out FakeLayerManager'Class) is
   begin
      null;
      This.geographicMapInterfaceArray := BasicGeographicMap_Package.NULL_BASIC_GEOGRAPHIC_MAP_ARRAY;
      This.geographicMapCellTypeArray := GeographicMapCellType_Package.NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY;
   end Initialize_Fields;


   procedure Initialize (This : in out FakeLayerManager'Class; gameInfo_Param : access GameInfo'Class) is
      gameInfo : GameInfo_Access := GameInfo_Access (gameInfo_Param);
   begin
        AllBinaryGameLayerManager_Package.Initialize (This, BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE, gameInfo);
        Initialize_Fields (This);
   end Initialize;

   function Create (gameInfo_Param : access GameInfo'Class) return FakeLayerManager_Access is
      This : constant FakeLayerManager_Access := new FakeLayerManager;
   begin
      FakeLayerManager_Package.Initialize (This.all, gameInfo_Param);
      return This;
   end Create;

   function getGeographicMapInterface (This : in out FakeLayerManager) return BasicGeographicMap_Access_Array_Access is
   begin
        return This.geographicMapInterfaceArray;
   end getGeographicMapInterface;

   procedure setGeographicMapInterface (This : in out FakeLayerManager; geographicMapInterfaceArray : BasicGeographicMap_Access_Array_Access) is
   begin
        This.geographicMapInterfaceArray := geographicMapInterfaceArray;
        This.geographicMapCellTypeArray := new GeographicMapCellType_Access_Array'(0 .. (This.geographicMapInterfaceArray'Length) - 1 => null);
   end setGeographicMapInterface;

   function geographicMapCellTypeArray (This : in out FakeLayerManager) return GeographicMapCellType_Access_Array_Access is
   begin
        return This.geographicMapCellTypeArray;
   end geographicMapCellTypeArray;

end org.allbinary.game.layer.FakeLayerManager_Package;


