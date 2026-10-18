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


package body org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package is

   procedure Initialize_Fields (This : in out BasicTopViewGeographicMapCellTypeFactory'Class) is
   begin
      null;
      
      
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicTopViewGeographicMapCellTypeFactory'Class; tileTypeToTileIdsMap_Param : access ABHashtable_Package.ABHashtable'Class; maxTileId : Integer) is
      tileTypeToTileIdsMap : constant ABHashtable_Access := ABHashtable_Access (tileTypeToTileIdsMap_Param);
      commonStrings : CommonStrings_Access;
      basicTopViewGeographicMapStrings : BasicTopViewGeographicMapStrings_Access;
      geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
      geographicMapCellTypeArray : GeographicMapCellType_Access_Array_Access;
      type_Id : Integer;
      BLOCK_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      OFF_MAP_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      FLOOR_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      DOOR_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      STAIRS_UP_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      STAIRS_DOWN_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      OTHER_CELL_TYPE : BasicTopViewGeographicMapCellType_Access;
      keyArray : Java_Object_Access_Array_Access;
      size : Integer;
      idsWithTypeList : BasicArrayList_Access;
      key : Unbounded_String;
      basicPlatormGeographicMapCellType : BasicTopViewGeographicMapCellType_Access;
      index : Integer;
   begin
      GeographicMapCellTypeFactory_Package.Initialize (This);
      Initialize_Fields (This);
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (commonStrings.START, BasicTopViewGeographicMapCellTypeFactory_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
        This.maxTileId := maxTileId;
        basicTopViewGeographicMapStrings := BasicTopViewGeographicMapStrings_Package.getInstance;
        geographicMapCellTypeFactory := GeographicMapCellTypeFactory_Package.getInstance;
        geographicMapCellTypeArray := geographicMapCellTypeFactory.getGeographicMapCellTypeArray;
        type_Id := 0;
        if (geographicMapCellTypeArray (type_Id)) = (null) then
            RaceTrackGeographicMapCellType_Package.Create (CommonStrings_Package.getInstance.UNKNOWN, type_Id, 999, 0);
        else
            null;
        end if;
        BLOCK_CELL_TYPE := BasicTopViewGeographicMapCellType_Package.createType (basicTopViewGeographicMapStrings.DEFAULT, 1, 1);
        OFF_MAP_CELL_TYPE := BLOCK_CELL_TYPE;
        FLOOR_CELL_TYPE := BLOCK_CELL_TYPE;
        DOOR_CELL_TYPE := BLOCK_CELL_TYPE;
        STAIRS_UP_CELL_TYPE := BLOCK_CELL_TYPE;
        STAIRS_DOWN_CELL_TYPE := BLOCK_CELL_TYPE;
        OTHER_CELL_TYPE := BLOCK_CELL_TYPE;
        keyArray := HashtableUtil_Package.getInstance.getKeysAsArray (tileTypeToTileIdsMap);
        size := keyArray'Length;
        idsWithTypeList := null;
        key := Null_Unbounded_String;
        basicPlatormGeographicMapCellType := null;
        for index in 0 .. (size) - 1 loop
            key := Java_Unbox (keyArray (index));
            idsWithTypeList := BasicArrayList_Access (tileTypeToTileIdsMap.get (key));
            if (key = basicTopViewGeographicMapStrings.WALL) then
                basicPlatormGeographicMapCellType := BasicTopViewGeographicMapCellType_Package.Create (basicTopViewGeographicMapStrings.WALL, idsWithTypeList, 1000);
                BLOCK_CELL_TYPE := basicPlatormGeographicMapCellType;
            elsif (key = basicTopViewGeographicMapStrings.OFF_MAP) then
                basicPlatormGeographicMapCellType := BasicTopViewGeographicMapCellType_Package.Create (basicTopViewGeographicMapStrings.OFF_MAP, idsWithTypeList, 1001);
                OFF_MAP_CELL_TYPE := basicPlatormGeographicMapCellType;
            elsif (key = basicTopViewGeographicMapStrings.FLOOR) then
                basicPlatormGeographicMapCellType := BasicTopViewGeographicMapCellType_Package.Create (basicTopViewGeographicMapStrings.FLOOR, idsWithTypeList, 1);
                FLOOR_CELL_TYPE := basicPlatormGeographicMapCellType;
            elsif (key = basicTopViewGeographicMapStrings.DOOR) then
                basicPlatormGeographicMapCellType := BasicTopViewGeographicMapCellType_Package.Create (basicTopViewGeographicMapStrings.DOOR, idsWithTypeList, 1);
                DOOR_CELL_TYPE := basicPlatormGeographicMapCellType;
            elsif (key = basicTopViewGeographicMapStrings.STAIRS_UP) then
                basicPlatormGeographicMapCellType := BasicTopViewGeographicMapCellType_Package.Create (basicTopViewGeographicMapStrings.STAIRS_UP, idsWithTypeList, 1);
                STAIRS_UP_CELL_TYPE := basicPlatormGeographicMapCellType;
            elsif (key = basicTopViewGeographicMapStrings.STAIRS_DOWN) then
                basicPlatormGeographicMapCellType := BasicTopViewGeographicMapCellType_Package.Create (basicTopViewGeographicMapStrings.STAIRS_DOWN, idsWithTypeList, 1);
                STAIRS_DOWN_CELL_TYPE := basicPlatormGeographicMapCellType;
            elsif (key = basicTopViewGeographicMapStrings.OTHER) then
                basicPlatormGeographicMapCellType := BasicTopViewGeographicMapCellType_Package.Create (basicTopViewGeographicMapStrings.OTHER, idsWithTypeList, 1);
                OTHER_CELL_TYPE := basicPlatormGeographicMapCellType;
            end if;
        end loop;
        This.BLOCK_CELL_TYPE := BLOCK_CELL_TYPE;
        This.OFF_MAP_CELL_TYPE := OFF_MAP_CELL_TYPE;
        This.FLOOR_CELL_TYPE := FLOOR_CELL_TYPE;
        This.DOOR_CELL_TYPE := DOOR_CELL_TYPE;
        This.STAIRS_UP_CELL_TYPE := STAIRS_UP_CELL_TYPE;
        This.STAIRS_DOWN_CELL_TYPE := STAIRS_DOWN_CELL_TYPE;
        This.OTHER_CELL_TYPE := OTHER_CELL_TYPE;
        type_Id := (This.maxTileId) - (1);
        if (geographicMapCellTypeArray (type_Id)) = (null) then
            RaceTrackGeographicMapCellType_Package.Create (commonStrings.START, type_Id, 1, 0);
        else
            null;
        end if;
        type_Id := (This.maxTileId) - (2);
        if (geographicMapCellTypeArray (type_Id)) = (null) then
            RaceTrackGeographicMapCellType_Package.Create (commonStrings.START, type_Id, 1, 0);
        else
            null;
        end if;
   end Initialize;

   function Create (tileTypeToTileIdsMap_Param : access ABHashtable_Package.ABHashtable'Class; maxTileId : Integer) return BasicTopViewGeographicMapCellTypeFactory_Access is
      This : constant BasicTopViewGeographicMapCellTypeFactory_Access := new BasicTopViewGeographicMapCellTypeFactory;
   begin
      BasicTopViewGeographicMapCellTypeFactory_Package.Initialize (This.all, tileTypeToTileIdsMap_Param, maxTileId);
      return This;
   end Create;

   function getStartType (This : in out BasicTopViewGeographicMapCellTypeFactory) return Integer is
   begin
        return (This.maxTileId) - (1);
   end getStartType;

   function getEndType (This : in out BasicTopViewGeographicMapCellTypeFactory) return Integer is
   begin
        return (This.maxTileId) - (2);
   end getEndType;

   function getEmptyType (This : in out BasicTopViewGeographicMapCellTypeFactory) return Integer is
   begin
        return This.FLOOR_CELL_TYPE.getTypes (0);
   end getEmptyType;

   function isPath (This : in out BasicTopViewGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) return Boolean is
      cellType : constant GeographicMapCellType_Access := GeographicMapCellType_Access (cellType_Param);
   begin
        if This.FLOOR_CELL_TYPE.isType (cellType) then
            return True;
        end if;
        return False;
   end isPath;

   function toString (This : in out BasicTopViewGeographicMapCellTypeFactory) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (To_Unbounded_String ("key: WALL/BLOCK_CELL_TYPE: ")).append (This.BLOCK_CELL_TYPE.toString).append (To_Unbounded_String ("key: FLOOR_CELL_TYPE: ")).append (This.FLOOR_CELL_TYPE.toString).append (To_Unbounded_String ("key: OTHER_CELL_TYPE: ")).append (This.OTHER_CELL_TYPE.toString).append (To_Unbounded_String ("key: OFF_MAP_CELL_TYPE: ")).append (This.OFF_MAP_CELL_TYPE.toString).append (To_Unbounded_String ("key: DOOR_CELL_TYPE: ")).append (This.DOOR_CELL_TYPE.toString).append (To_Unbounded_String ("key: STAIRS_DOWN_CELL_TYPE: ")).append (This.STAIRS_DOWN_CELL_TYPE.toString).append (To_Unbounded_String ("key: STAIRS_UP_CELL_TYPE: ")).append (This.STAIRS_UP_CELL_TYPE.toString).toString;
   end toString;

   procedure isPath (This : in out BasicTopViewGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) is
      Java_Result : constant Boolean := BasicTopViewGeographicMapCellTypeFactory'Class (This).isPath (cellType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPath;

end org.allbinary.media.graphics.geography.map.topview.BasicTopViewGeographicMapCellTypeFactory_Package;


