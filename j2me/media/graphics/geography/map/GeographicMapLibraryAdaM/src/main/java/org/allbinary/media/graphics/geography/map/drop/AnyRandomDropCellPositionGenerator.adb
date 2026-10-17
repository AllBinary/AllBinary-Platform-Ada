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


package body org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package is

   procedure Initialize_Fields (This : in out AnyRandomDropCellPositionGenerator'Class) is
   begin
      null;
      This.list := BasicArrayListD_Package.Create;
      This.geographicMapInterface := NullUtil_Package.getInstance.NULL_OBJECT;
   end Initialize_Fields;

   procedure Initialize (This : in out AnyRandomDropCellPositionGenerator'Class) is
   begin
      BaseDropCellPositionGenerator_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return AnyRandomDropCellPositionGenerator_Access is
      This : constant AnyRandomDropCellPositionGenerator_Access := new AnyRandomDropCellPositionGenerator;
   begin
      AnyRandomDropCellPositionGenerator_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure update (This : in out AnyRandomDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      basicGeographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      randomFactory : MyRandomFactory_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      total : Integer;
      randomColumn : Integer;
      randomRow : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        This.geographicMapInterface := geographicMapInterface;
        basicGeographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        randomFactory := MyRandomFactory_Package.getInstance;
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        total := (tiledLayer.getColumns) * (tiledLayer.getRows);
        randomColumn := 0;
        randomRow := 0;
        geographicMapCellPosition := null;
        index := total;
        while (Java_Pre_Decrement (index)) >= (0) loop
            randomColumn := randomFactory.getAbsoluteNextInt (tiledLayer.getColumns);
            randomRow := randomFactory.getAbsoluteNextInt (tiledLayer.getRows);
            geographicMapCellPosition := basicGeographicMapCellPositionFactory.getAt (randomColumn, randomRow);
            if This.isDropAllowedAt (geographicMapCellPosition) then
                This.list.add (geographicMapCellPosition);
            end if;
        end loop;
   end update;

   --  throws Exception
   procedure processTick (This : in out AnyRandomDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
   begin
        null;
   end processTick;

end org.allbinary.media.graphics.geography.map.drop.AnyRandomDropCellPositionGenerator_Package;


