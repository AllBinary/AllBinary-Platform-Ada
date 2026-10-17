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


   procedure Initialize (This : in out GeographicMapCellPositionEvent'Class; anyType : Java_Object_Access; geographicMapCellPosition : CellPosition_Access) is
   begin
        AllBinaryEventObject_Package.Initialize (This, anyType);
        Initialize_Fields (This);
        This.geographicMapCellPosition := geographicMapCellPosition;
   end Initialize;

   function Create (anyType : Java_Object_Access; geographicMapCellPosition : CellPosition_Access) return GeographicMapCellPositionEvent_Access is
      This : constant GeographicMapCellPositionEvent_Access := new GeographicMapCellPositionEvent;
   begin
      Initialize (This.all, anyType, geographicMapCellPosition);
      return This;
   end Create;

   procedure init (This : in out GeographicMapCellPositionEvent; anyType : Java_Object_Access) is
   begin
        This.setSource (anyType);
   end init;

   procedure setGeographicMapCellPosition (This : in out GeographicMapCellPositionEvent; geographicMapCellPosition : GeographicMapCellPosition_Access) is
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
        stringBuffer.append (StringUtil_Package.getInstance.toString (This.getGeographicMapCellPosition));
        return stringBuffer.toString;
   end toString;

   procedure getGeographicMapCellPosition (This : in out GeographicMapCellPositionEvent) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapCellPositionEvent'Class (This).getGeographicMapCellPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGeographicMapCellPosition;

   procedure toString (This : in out GeographicMapCellPositionEvent) is
      Java_Result : constant Unbounded_String := GeographicMapCellPositionEvent'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;


