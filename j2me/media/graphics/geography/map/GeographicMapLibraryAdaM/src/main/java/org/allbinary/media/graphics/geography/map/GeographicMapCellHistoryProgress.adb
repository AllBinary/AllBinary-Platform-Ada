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


package body org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellHistoryProgress'Class) is
   begin
      null;
      This.totalVisitedArray := NullUtil_Package.getInstance.NULL_INT_ARRAY;
      This.geographicMapCellHistoryArray := GeographicMapCellHistory_Package.NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellHistoryProgress'Class; geographicMapCellHistoryArray : GeographicMapCellHistory_Access_Array_Access) is
   begin
      GeographicMapCellHistoryProgressBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.geographicMapCellHistoryArray := geographicMapCellHistoryArray;
        This.init;
   end Initialize;

   function Create (geographicMapCellHistoryArray : GeographicMapCellHistory_Access_Array_Access) return GeographicMapCellHistoryProgress_Access is
      This : constant GeographicMapCellHistoryProgress_Access := new GeographicMapCellHistoryProgress;
   begin
      Initialize (This.all, geographicMapCellHistoryArray);
      return This;
   end Create;

   procedure init (This : in out GeographicMapCellHistoryProgress) is
   begin
        This.totalVisitedArray := new Integer_Array'(0 .. (This.geographicMapCellHistoryArray'Length) - 1 => 0);
   end init;

   function isAnyProgress (This : in out GeographicMapCellHistoryProgress) return Boolean is
      isProgressing : Boolean;
      size : Integer;
      currentTotalVisited : Integer;
      totalVisited : Integer;
      index : Integer;
   begin
        isProgressing := False;
        size := This.geographicMapCellHistoryArray'Length;
        currentTotalVisited := 0;
        totalVisited := 0;
        for index in 0 .. (size) - 1 loop
            totalVisited := This.geographicMapCellHistoryArray (index).getTotalVisited;
            currentTotalVisited := This.totalVisitedArray (index);
            if (currentTotalVisited) < (totalVisited) then
                isProgressing := True;
                This.totalVisitedArray (index) := totalVisited;
            end if;
        end loop;
        return isProgressing;
   end isAnyProgress;

   procedure isAnyProgress (This : in out GeographicMapCellHistoryProgress) is
      Java_Result : constant Boolean := GeographicMapCellHistoryProgress'Class (This).isAnyProgress;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isAnyProgress;

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package;


