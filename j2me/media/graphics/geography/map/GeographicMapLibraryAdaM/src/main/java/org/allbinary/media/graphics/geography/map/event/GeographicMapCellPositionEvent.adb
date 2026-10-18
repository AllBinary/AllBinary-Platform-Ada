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


package body org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellPositionEvent'Class) is
   begin
      null;
      This.geographicMapCellPosition := CellPositionFactory_Package.getInstance.NONE;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellPositionEvent'Class; anyType_Param : access Java_Object'Class; geographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      geographicMapCellPosition : constant CellPosition_Access := CellPosition_Access (geographicMapCellPosition_Param);
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.geographicMapCellPosition := geographicMapCellPosition;
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class; geographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class) return GeographicMapCellPositionEvent_Access is
      This : constant GeographicMapCellPositionEvent_Access := new GeographicMapCellPositionEvent;
   begin
      GeographicMapCellPositionEvent_Package.Initialize (This.all, anyType_Param, geographicMapCellPosition_Param);
      return This;
   end Create;

   procedure init (This : in out GeographicMapCellPositionEvent; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        GeographicMapCellPositionEvent'Class (This).setSource (anyType);
   end init;

   procedure setGeographicMapCellPosition (This : in out GeographicMapCellPositionEvent; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        This.geographicMapCellPosition := geographicMapCellPosition;
   end setGeographicMapCellPosition;

   function getGeographicMapCellPosition (This : in out GeographicMapCellPositionEvent) return GeographicMapCellPosition_Access is
   begin
        return GeographicMapCellPosition_Access (This.geographicMapCellPosition);
   end getGeographicMapCellPosition;

   function toString (This : in out GeographicMapCellPositionEvent) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("CellPositionEvent: "));
        stringBuffer.append (To_Unbounded_String ("" & ASCII.LF & "GeographicMapCellPosition: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (GeographicMapCellPositionEvent'Class (This).getGeographicMapCellPosition));
        return stringBuffer.toString;
   end toString;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;


