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


with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package body org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package is

   package Enumeration_Package renames Standard.java.util.Enumeration_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   procedure Initialize_Fields (This : in out BasicPlatormGeographicMapCellTypeFactory'Class) is
   begin
      null;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicPlatormGeographicMapCellTypeFactory'Class; tileTypeToTileIdsMap_Param : access ABHashtable_Package.ABHashtable'Class; maxTileId : Integer) is
      tileTypeToTileIdsMap : constant ABHashtable_Access := ABHashtable_Access (tileTypeToTileIdsMap_Param);
      commonStrings : CommonStrings_Access;
      BLOCK_CELL_TYPE : BasicPlatormGeographicMapCellType_Access;
      JUMP_THRU_CELL_TYPE : BasicPlatormGeographicMapCellType_Access;
      LADDER_CELL_TYPE : BasicPlatormGeographicMapCellType_Access;
      PLATFORM : Unbounded_String;
      JUMP_TRHU : Unbounded_String;
      LADDER : Unbounded_String;
      enumeration : Enumeration_Access;
      idsWithTypeList : BasicArrayList_Access;
      key : Unbounded_String;
      basicPlatormGeographicMapCellType : BasicPlatormGeographicMapCellType_Access;
   begin
      GeographicMapCellTypeFactory_Package.Initialize (This);
      Initialize_Fields (This);
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (commonStrings.START, BasicPlatormGeographicMapCellTypeFactory_Access'(This'Unchecked_Access), commonStrings.INIT);
        This.maxTileId := maxTileId;
        GeographicMapCellType_Package.Create (0, 0);
        BLOCK_CELL_TYPE := BasicPlatormGeographicMapCellType_Package.createType (1);
        JUMP_THRU_CELL_TYPE := BLOCK_CELL_TYPE;
        LADDER_CELL_TYPE := BLOCK_CELL_TYPE;
        PLATFORM := To_Unbounded_String ("Platform");
        JUMP_TRHU := To_Unbounded_String ("JumpThru");
        LADDER := To_Unbounded_String ("Ladder");
        enumeration := tileTypeToTileIdsMap.keys;
        idsWithTypeList := null;
        key := Null_Unbounded_String;
        basicPlatormGeographicMapCellType := null;
        while This.enumerationUtil.hasMoreElements (enumeration) loop
            key := Java_Unbox (This.enumerationUtil.nextElement (enumeration));
            This.logUtil.putF (key, BasicPlatormGeographicMapCellTypeFactory_Access'(This'Unchecked_Access), commonStrings.INIT);
            idsWithTypeList := BasicArrayList_Access (tileTypeToTileIdsMap.get (key));
            basicPlatormGeographicMapCellType := BasicPlatormGeographicMapCellType_Package.Create (idsWithTypeList);
            if (key = PLATFORM) then
                BLOCK_CELL_TYPE := basicPlatormGeographicMapCellType;
            end if;
            if (key = JUMP_TRHU) then
                JUMP_THRU_CELL_TYPE := basicPlatormGeographicMapCellType;
            end if;
            if (key = LADDER) then
                LADDER_CELL_TYPE := basicPlatormGeographicMapCellType;
            end if;
        end loop;
        This.BLOCK_CELL_TYPE := BLOCK_CELL_TYPE;
        This.JUMP_THRU_CELL_TYPE := JUMP_THRU_CELL_TYPE;
        This.LADDER_CELL_TYPE := LADDER_CELL_TYPE;
        GeographicMapCellType_Package.Create ((This.maxTileId) - (1), 0);
        GeographicMapCellType_Package.Create ((This.maxTileId) - (2), 0);
   end Initialize;

   function Create (tileTypeToTileIdsMap_Param : access ABHashtable_Package.ABHashtable'Class; maxTileId : Integer) return BasicPlatormGeographicMapCellTypeFactory_Access is
      This : constant BasicPlatormGeographicMapCellTypeFactory_Access := new BasicPlatormGeographicMapCellTypeFactory;
   begin
      BasicPlatormGeographicMapCellTypeFactory_Package.Initialize (This.all, tileTypeToTileIdsMap_Param, maxTileId);
      return This;
   end Create;

   function getStartType (This : in out BasicPlatormGeographicMapCellTypeFactory) return Integer is
   begin
        return (This.maxTileId) - (1);
   end getStartType;

   function getEndType (This : in out BasicPlatormGeographicMapCellTypeFactory) return Integer is
   begin
        return (This.maxTileId) - (2);
   end getEndType;

   function getEmptyType (This : in out BasicPlatormGeographicMapCellTypeFactory) return Integer is
   begin
        return 0;
   end getEmptyType;

   function isPath (This : in out BasicPlatormGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) return Boolean is
      cellType : constant GeographicMapCellType_Access := GeographicMapCellType_Access (cellType_Param);
   begin
        if (cellType.getType) = (0) then
            return True;
        end if;
        return False;
   end isPath;

   procedure isPath (This : in out BasicPlatormGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) is
      Java_Result : constant Boolean := BasicPlatormGeographicMapCellTypeFactory'Class (This).isPath (cellType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPath;

end org.allbinary.media.graphics.geography.map.platform.BasicPlatormGeographicMapCellTypeFactory_Package;


