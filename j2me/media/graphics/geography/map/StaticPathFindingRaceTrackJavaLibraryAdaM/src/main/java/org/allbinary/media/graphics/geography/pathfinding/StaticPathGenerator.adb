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


package body org.allbinary.media.graphics.geography.pathfinding.StaticPathGenerator_Package is

   procedure Initialize_Fields (This : in out StaticPathGenerator'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out StaticPathGenerator'Class) is
   begin
      Initialize_Fields (This);
        PreLogUtil_Package.put (To_Unbounded_String ("Using Static Path Finding"), StaticPathGenerator_Access'(This'Unchecked_Access), CommonStrings_Package.getInstance.CONSTRUCTOR);
   end Initialize;

   function Create return StaticPathGenerator_Access is
      This : constant StaticPathGenerator_Access := new StaticPathGenerator;
   begin
      StaticPathGenerator_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out StaticPathGenerator; geographicMapInterface_Param : access Java_Object'Class; totalPaths : Integer) is
      geographicMapInterface : constant Java_Object_Access := Java_Object_Access (geographicMapInterface_Param);
   begin
        null;
   end init;

   --  throws Exception
   function getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (This : in out StaticPathGenerator; geographicMapCellPositionFactory_Param : access BasicGeographicMapCellPositionFactory_Package.BasicGeographicMapCellPositionFactory'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapCellPositionFactory : constant BasicGeographicMapCellPositionFactory_Access := BasicGeographicMapCellPositionFactory_Access (geographicMapCellPositionFactory_Param);
      pathList : constant BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
      list : BasicArrayList_Access;
      size : Integer;
      basicGeographicMapCellPosition : CellPosition_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        list := BasicArrayListD_Package.Create;
        size := pathList.size;
        basicGeographicMapCellPosition := null;
        geographicMapCellPosition := null;
        for index in 0 .. (size) - 1 loop
            basicGeographicMapCellPosition := CellPosition_Access (pathList.get (index));
            geographicMapCellPosition := geographicMapCellPositionFactory.getAt (basicGeographicMapCellPosition.getColumn, basicGeographicMapCellPosition.getRow);
            list.add (geographicMapCellPosition);
        end loop;
        return list;
   end getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList;

   --  throws Exception
   function createList (This : in out StaticPathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      commonStrings : CommonStrings_Access;
      pathCacheFactory : PathCacheFactory_Access;
      mapIdInteger : Integer;
      list : BasicArrayList_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      id : Integer;
      basicList : BasicArrayList_Access;
      size : Integer;
      pathList : BasicArrayList_Access;
      index : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            pathCacheFactory := PathCacheFactory_Package.getInstance;
            mapIdInteger := geographicMapInterface.getAllBinaryTiledLayer.getDataId;
            list := pathCacheFactory.getOrCreate (mapIdInteger);
            if (list) = (This.basicArrayListUtil.getImmutableInstance) then
                list := BasicArrayListD_Package.Create;
                smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
                geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
                id := (PathData_Package.getInstance.OFFSET) + (Integer (mapIdInteger));
                basicList := pathCacheFactory.getOrCreate (smallIntegerSingletonFactory.getAt (id));
                size := basicList.size;
                pathList := null;
                for index in 0 .. (size) - 1 loop
                    pathList := StaticPathGenerator'Class (This).getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (geographicMapCellPositionFactory, BasicArrayList_Access (basicList.get (index)));
                    list.add (pathList);
                end loop;
                pathCacheFactory.add (mapIdInteger, list);
                pathCacheFactory.remove (smallIntegerSingletonFactory.getAt (id));
            end if;
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Using Cached Path(s): ")).append (StringUtil_Package.getInstance.toString (list)).toString, StaticPathGenerator_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
            return list;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (commonStrings.EXCEPTION_Id, StaticPathGenerator_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            return BasicArrayListD_Package.Create;
                end;
        end;
   end createList;

   procedure getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (This : in out StaticPathGenerator; geographicMapCellPositionFactory_Param : access BasicGeographicMapCellPositionFactory_Package.BasicGeographicMapCellPositionFactory'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := StaticPathGenerator'Class (This).getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (geographicMapCellPositionFactory_Param, pathList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList;

   procedure createList (This : in out StaticPathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := StaticPathGenerator'Class (This).createList (geographicMapInterface_Param, geographicMapCellHistory_Param, pathFindingInfo_Param, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createList;

end org.allbinary.media.graphics.geography.pathfinding.StaticPathGenerator_Package;


