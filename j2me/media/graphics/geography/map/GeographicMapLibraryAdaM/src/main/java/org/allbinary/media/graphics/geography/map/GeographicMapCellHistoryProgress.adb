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


with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package;

package body org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
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
        GeographicMapCellHistoryProgress'Class (This).init;
   end Initialize;

   function Create (geographicMapCellHistoryArray : GeographicMapCellHistory_Access_Array_Access) return GeographicMapCellHistoryProgress_Access is
      This : constant GeographicMapCellHistoryProgress_Access := new GeographicMapCellHistoryProgress;
   begin
      GeographicMapCellHistoryProgress_Package.Initialize (This.all, geographicMapCellHistoryArray);
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

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistoryProgress_Package;


