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


with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package is

   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   procedure Initialize_Fields (This : in out DisplayPointScalar'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return DisplayPointScalar_Access is
   begin
        return DisplayPointScalar_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DisplayPointScalar'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DisplayPointScalar_Access is
      This : constant DisplayPointScalar_Access := new DisplayPointScalar;
   begin
      DisplayPointScalar_Package.Initialize (This.all);
      return This;
   end Create;

   function processX (This : in out DisplayPointScalar; value : Integer) return Integer is
   begin
        return value;
   end processX;

   function processY (This : in out DisplayPointScalar; value : Integer) return Integer is
   begin
        return value;
   end processY;

   function process (This : in out DisplayPointScalar; point_Param : access GPoint_Package.GPoint'Class) return GPoint_Access is
      point : constant GPoint_Access := GPoint_Access (point_Param);
   begin
        return point;
   end process;

   procedure processX (This : in out DisplayPointScalar; value : Integer) is
      Java_Result : constant Integer := DisplayPointScalar'Class (This).processX (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processX;

   procedure processY (This : in out DisplayPointScalar; value : Integer) is
      Java_Result : constant Integer := DisplayPointScalar'Class (This).processY (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processY;

   procedure process (This : in out DisplayPointScalar; point_Param : access GPoint_Package.GPoint'Class) is
      Java_Result : constant GPoint_Access := DisplayPointScalar'Class (This).process (point_Param => point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

begin
   null;
   instance := DisplayPointScalar_Package.Create;

end org.allbinary.graphics.displayable.screen.DisplayPointScalar_Package;


