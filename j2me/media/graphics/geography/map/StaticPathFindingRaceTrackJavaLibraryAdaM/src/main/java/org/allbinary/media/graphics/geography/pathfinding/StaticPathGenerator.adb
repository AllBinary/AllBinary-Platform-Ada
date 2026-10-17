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
        PreLogUtil_Package.put (To_Unbounded_String ("Using Static Path Finding"), This'Unchecked_Access, CommonStrings_Package.getInstance.CONSTRUCTOR);
   end Initialize;

   function Create return StaticPathGenerator_Access is
      This : constant StaticPathGenerator_Access := new StaticPathGenerator;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out StaticPathGenerator; geographicMapInterface : Java_Object_Access; totalPaths : Integer) is
   begin
        null;
   end init;

   --  throws Exception
   function getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (This : in out StaticPathGenerator; geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access; pathList : BasicArrayList_Access) return BasicArrayList_Access is
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
   function createList (This : in out StaticPathGenerator; geographicMapInterface : BasicGeographicMap_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) return BasicArrayList_Access is
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
                id := (PathData_Package.getInstance.OFFSET) + (mapIdInteger.intValue);
                basicList := pathCacheFactory.getOrCreate (smallIntegerSingletonFactory.getAt (id));
                size := basicList.size;
                pathList := null;
                for index in 0 .. (size) - 1 loop
                    pathList := This.getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (geographicMapCellPositionFactory, BasicArrayList_Access (basicList.get (index)));
                    list.add (pathList);
                end loop;
                pathCacheFactory.add (mapIdInteger, list);
                pathCacheFactory.remove (smallIntegerSingletonFactory.getAt (id));
            end if;
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Using Cached Path(s): ")).append (StringUtil_Package.getInstance.toString (list)).toString, This'Unchecked_Access, commonStrings.GET_INSTANCE);
            return list;
        exception
            when e : others =>
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.GET_INSTANCE, e);
            return BasicArrayListD_Package.Create;
        end;
   end createList;

   procedure getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (This : in out StaticPathGenerator; geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access; pathList : BasicArrayList_Access) is
      Java_Result : constant BasicArrayList_Access := StaticPathGenerator'Class (This).getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList (geographicMapCellPositionFactory, pathList);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList;

   procedure createList (This : in out StaticPathGenerator; geographicMapInterface : BasicGeographicMap_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := StaticPathGenerator'Class (This).createList (geographicMapInterface, geographicMapCellHistory, pathFindingInfo, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createList;

end org.allbinary.media.graphics.geography.pathfinding.StaticPathGenerator_Package;


