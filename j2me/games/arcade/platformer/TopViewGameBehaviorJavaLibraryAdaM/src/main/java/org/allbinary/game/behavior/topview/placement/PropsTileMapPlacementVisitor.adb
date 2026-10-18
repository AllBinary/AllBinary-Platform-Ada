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


package body org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package is

   procedure Initialize_Fields (This : in out PropsTileMapPlacementVisitor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.randomFactory := MyRandomFactory_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out PropsTileMapPlacementVisitor'Class) is
   begin
      TileMapPlacementVisitor_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return PropsTileMapPlacementVisitor_Access is
      This : constant PropsTileMapPlacementVisitor_Access := new PropsTileMapPlacementVisitor;
   begin
      PropsTileMapPlacementVisitor_Package.Initialize (This.all);
      return This;
   end Create;


   procedure visit (This : in out PropsTileMapPlacementVisitor; lastMap_Param : access TiledMap_Package.TiledMap'Class; mapData : Integer_Array_Access_Array_Access) is
      lastMap : constant TiledMap_Access := TiledMap_Access (lastMap_Param);
      layerIndex : Integer;
      tileLayer : TileLayer_Access;
      mapArray : Integer_Array_Access_Array_Access;
      size : Integer;
      size2 : Integer;
      randomInt : Integer;
      index2 : Integer;
      index : Integer;
   begin
        layerIndex := 0;
        tileLayer := (TileLayer_Access (lastMap.getLayer (layerIndex)));
        mapArray := tileLayer.getMapArray;
        size := mapData'Length;
        size2 := mapData (0)'Length;
        for index in 0 .. (size) - 1 loop
            for index2 in 0 .. (size2) - 1 loop
                if (mapArray (index) (index2)) = (14) then
                    null;
                else
                    PropsTileMapPlacementVisitor'Class (This).visit2 (mapArray, mapData, index, index2);
                end if;
                if ((index) rem (7)) = (0) then
                    if (mapArray (index) (index2)) = (19) then
                        randomInt := This.randomFactory.getAbsoluteNextIntAllowZero (3);
                        if (randomInt) = (0) then
                            mapData (index) (index2) := 1;
                        elsif (randomInt) = (1) then
                            mapData (index) (index2) := 81;
                        elsif (randomInt) = (2) then
                            mapData (index) (index2) := 97;
                        end if;
                    elsif (mapArray (index) (index2)) = (17) then
                        randomInt := This.randomFactory.getAbsoluteNextIntAllowZero (3);
                        if (randomInt) = (0) then
                            mapData (index) (index2) := 17;
                        elsif (randomInt) = (1) then
                            mapData (index) (index2) := 81;
                        elsif (randomInt) = (2) then
                            mapData (index) (index2) := 97;
                        end if;
                    end if;
                end if;
                if ((index2) rem (7)) = (0) then
                    if (mapArray (index) (index2)) = (34) then
                        randomInt := This.randomFactory.getAbsoluteNextIntAllowZero (4);
                        if (randomInt) = (0) then
                            mapData (index) (index2) := 33;
                        elsif (randomInt) = (1) then
                            mapData (index) (index2) := 65;
                        elsif (randomInt) = (2) then
                            mapData (index) (index2) := 81;
                        elsif (randomInt) = (3) then
                            mapData (index) (index2) := 97;
                        end if;
                    end if;
                end if;
            end loop;
        end loop;
   end visit;

   procedure visit2 (This : in out PropsTileMapPlacementVisitor; mapArray : Integer_Array_Access_Array_Access; mapData : Integer_Array_Access_Array_Access; index : Integer; index2 : Integer) is
      commonStrings : CommonStrings_Access;
      countX : Integer;
      countY : Integer;
      index3 : Integer;
      index6 : Integer;
      index5 : Integer;
      x : Integer;
      y : Integer;
      index4 : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        countX := 0;
        countY := 0;
        index3 := (index) - (1);
        for index4 in reverse (0) + 1 .. (index2) - (1) loop
            index3 := index3 - 1;
            if ((index3) < (0)) or else ((index4) < (0)) then
                return;
            end if;
            if ((mapArray (index3) (index4)) /= (14)) or else ((mapData (index3) (index4)) /= (0)) then
                if ((countX) > (10)) and then ((countY) > (10)) then
                    for index5 in (index3) + (1) .. ((index) - (1)) - 1 loop
                        for index6 in (index4) + (1) .. ((index2) - (1)) - 1 loop
                            if ((mapArray (index5) (index6)) /= (14)) or else ((mapData (index5) (index6)) /= (0)) then
                                return;
                            end if;
                        end loop;
                    end loop;
                    x := (index) - (((countX) / (2)));
                    y := (index2) - (((countY) / (2)));
                    if ((((x) >= (0)) and then ((y) >= (0))) and then ((x) < (mapData'Length))) and then ((y) < (mapData (0)'Length)) then
                        null;
                    end if;
                end if;
                return;
            end if;
            countY := countY + 1;
            countX := countX + 1;
        end loop;
   end visit2;

end org.allbinary.game.behavior.topview.placement.PropsTileMapPlacementVisitor_Package;


