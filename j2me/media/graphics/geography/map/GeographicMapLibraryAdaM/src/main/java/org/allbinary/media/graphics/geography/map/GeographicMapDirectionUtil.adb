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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.Direction_Package_References;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package body org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   subtype Direction_Access is org.allbinary.direction.Direction_Package_References.Direction_Access;
   function "=" (Left, Right : Direction_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array;
   function "=" (Left, Right : Direction_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access_Array is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array;
   function "=" (Left, Right : Direction_Access_Array_Access_Array) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype Direction_Access_Array_Access_Array_Access is org.allbinary.direction.Direction_Package_References.Direction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Direction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.direction.Direction_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   procedure Initialize_Fields (This : in out GeographicMapDirectionUtil'Class) is
   begin
      null;
      This.MESSAGE := To_Unbounded_String ("Cell Position should have been cached!!!");
      This.ERROR := To_Unbounded_String ("Error: ");
      This.EQUAL := To_Unbounded_String (" == ");
   end Initialize_Fields;


   function getInstance return GeographicMapDirectionUtil_Access is
   begin
        return GeographicMapDirectionUtil_Access (GeographicMapDirectionUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GeographicMapDirectionUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GeographicMapDirectionUtil_Access is
      This : constant GeographicMapDirectionUtil_Access := new GeographicMapDirectionUtil;
   begin
      GeographicMapDirectionUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Direction_Access is
      fromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (fromGeographicMapCellPosition_Param);
      toGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (toGeographicMapCellPosition_Param);
      fromColumn : Integer;
      fromRow : Integer;
      goColumn : Integer;
      goRow : Integer;
      directionFactory : DirectionFactory_Access;
   begin
        fromColumn := fromGeographicMapCellPosition.getColumn;
        fromRow := fromGeographicMapCellPosition.getRow;
        goColumn := toGeographicMapCellPosition.getColumn;
        goRow := toGeographicMapCellPosition.getRow;
        directionFactory := DirectionFactory_Package.getInstance;
        if ((fromColumn) - (1)) = (goColumn) then
            return Direction_Access (directionFactory.LEFT);
        elsif ((fromColumn) + (1)) = (goColumn) then
            return Direction_Access (directionFactory.RIGHT);
        elsif ((fromRow) - (1)) = (goRow) then
            return Direction_Access (directionFactory.UP);
        elsif ((fromRow) + (1)) = (goRow) then
            return Direction_Access (directionFactory.DOWN);
        elsif org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=" (fromGeographicMapCellPosition, toGeographicMapCellPosition) then
            return Direction_Access (directionFactory.NO_DIRECTION);
        elsif ((fromRow) = (goRow)) and then ((fromColumn) = (goColumn)) then
            Java_Throw (Java_New_Exception ("Exception", This.MESSAGE));
        end if;
        return Direction_Access (directionFactory.NOT_BORDERED_WITH);
   end getDirectionFromCellPositionToAdjacentCellPosition;

   --  throws Exception
   function getEightDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Direction_Access is
      fromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (fromGeographicMapCellPosition_Param);
      toGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (toGeographicMapCellPosition_Param);
      fromColumn : Integer;
      fromRow : Integer;
      goColumn : Integer;
      goRow : Integer;
      directionFactory : DirectionFactory_Access;
   begin
        fromColumn := fromGeographicMapCellPosition.getColumn;
        fromRow := fromGeographicMapCellPosition.getRow;
        goColumn := toGeographicMapCellPosition.getColumn;
        goRow := toGeographicMapCellPosition.getRow;
        directionFactory := DirectionFactory_Package.getInstance;
        if (fromRow) = (goRow) then
            if ((fromColumn) - (1)) = (goColumn) then
                return Direction_Access (directionFactory.LEFT);
            elsif ((fromColumn) + (1)) = (goColumn) then
                return Direction_Access (directionFactory.RIGHT);
            end if;
        elsif ((fromRow) - (1)) = (goRow) then
            if (fromColumn) = (goColumn) then
                return Direction_Access (directionFactory.UP);
            end if;
            if ((fromColumn) - (1)) = (goColumn) then
                return Direction_Access (directionFactory.UP_LEFT);
            elsif ((fromColumn) + (1)) = (goColumn) then
                return Direction_Access (directionFactory.UP_RIGHT);
            end if;
        elsif ((fromRow) + (1)) = (goRow) then
            if (fromColumn) = (goColumn) then
                return Direction_Access (directionFactory.DOWN);
            end if;
            if ((fromColumn) - (1)) = (goColumn) then
                return Direction_Access (directionFactory.DOWN_LEFT);
            elsif ((fromColumn) + (1)) = (goColumn) then
                return Direction_Access (directionFactory.DOWN_RIGHT);
            end if;
        elsif org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=" (fromGeographicMapCellPosition, toGeographicMapCellPosition) then
            return Direction_Access (directionFactory.NO_DIRECTION);
        elsif ((fromRow) = (goRow)) and then ((fromColumn) = (goColumn)) then
            Java_Throw (Java_New_Exception ("Exception", This.MESSAGE));
        end if;
        return Direction_Access (directionFactory.NOT_BORDERED_WITH);
   end getEightDirectionFromCellPositionToAdjacentCellPosition;

   --  throws Exception
   function getDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Direction_Access is
      fromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (fromGeographicMapCellPosition_Param);
      toGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (toGeographicMapCellPosition_Param);
      fromColumn : Integer;
      fromRow : Integer;
      goColumn : Integer;
      goRow : Integer;
      directionFactory : DirectionFactory_Access;
      stringMaker : StringMaker_Access;
      string_Id : Unbounded_String;
   begin
        fromColumn := fromGeographicMapCellPosition.getColumn;
        fromRow := fromGeographicMapCellPosition.getRow;
        goColumn := toGeographicMapCellPosition.getColumn;
        goRow := toGeographicMapCellPosition.getRow;
        directionFactory := DirectionFactory_Package.getInstance;
        if (fromColumn) > (goColumn) then
            return Direction_Access (directionFactory.LEFT);
        elsif (fromColumn) < (goColumn) then
            return Direction_Access (directionFactory.RIGHT);
        elsif (fromRow) > (goRow) then
            return Direction_Access (directionFactory.UP);
        elsif (fromRow) < (goRow) then
            return Direction_Access (directionFactory.DOWN);
        end if;
        stringMaker := StringMaker_Package.Create;
        string_Id := stringMaker.append (CellPosition_Package.toStringCellPosition (fromGeographicMapCellPosition)).append (To_Unbounded_String (" == ")).append (CellPosition_Package.toStringCellPosition (toGeographicMapCellPosition)).toString;
        stringMaker.delete (0, stringMaker.length);
        Java_Throw (Java_New_Exception ("Exception", stringMaker.append (To_Unbounded_String ("Error: ")).append (string_Id).toString));
   end getDirectionFromCellPositionToCellPosition;

   --  throws Exception
   function getEightDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Direction_Access is
      fromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (fromGeographicMapCellPosition_Param);
      toGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (toGeographicMapCellPosition_Param);
      fromColumn : Integer;
      fromRow : Integer;
      goColumn : Integer;
      goRow : Integer;
      directionFactory : DirectionFactory_Access;
      stringBuffer : StringMaker_Access;
   begin
        fromColumn := fromGeographicMapCellPosition.getColumn;
        fromRow := fromGeographicMapCellPosition.getRow;
        goColumn := toGeographicMapCellPosition.getColumn;
        goRow := toGeographicMapCellPosition.getRow;
        directionFactory := DirectionFactory_Package.getInstance;
        if org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=" (fromGeographicMapCellPosition, toGeographicMapCellPosition) then
            return Direction_Access (directionFactory.NO_DIRECTION);
        elsif (fromRow) = (goRow) then
            if (fromColumn) > (goColumn) then
                return Direction_Access (directionFactory.LEFT);
            elsif (fromColumn) < (goColumn) then
                return Direction_Access (directionFactory.RIGHT);
            end if;
        elsif (fromRow) > (goRow) then
            if (fromColumn) > (goColumn) then
                return Direction_Access (directionFactory.UP_LEFT);
            elsif (fromColumn) < (goColumn) then
                return Direction_Access (directionFactory.UP_RIGHT);
            elsif (fromColumn) = (goColumn) then
                return Direction_Access (directionFactory.UP);
            end if;
        elsif (fromRow) < (goRow) then
            if (fromColumn) > (goColumn) then
                return Direction_Access (directionFactory.DOWN_LEFT);
            elsif (fromColumn) < (goColumn) then
                return Direction_Access (directionFactory.DOWN_RIGHT);
            elsif (fromColumn) = (goColumn) then
                return Direction_Access (directionFactory.DOWN);
            end if;
        end if;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.ERROR);
        stringBuffer.append (CellPosition_Package.toStringCellPosition (fromGeographicMapCellPosition));
        stringBuffer.append (This.EQUAL);
        stringBuffer.append (CellPosition_Package.toStringCellPosition (toGeographicMapCellPosition));
        Java_Throw (Java_New_Exception ("Exception", stringBuffer.toString));
   end getEightDirectionFromCellPositionToCellPosition;

   procedure getDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Direction_Access := GeographicMapDirectionUtil'Class (This).getDirectionFromCellPositionToAdjacentCellPosition (fromGeographicMapCellPosition_Param => fromGeographicMapCellPosition_Param, toGeographicMapCellPosition_Param => toGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDirectionFromCellPositionToAdjacentCellPosition;

   procedure getEightDirectionFromCellPositionToAdjacentCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Direction_Access := GeographicMapDirectionUtil'Class (This).getEightDirectionFromCellPositionToAdjacentCellPosition (fromGeographicMapCellPosition_Param => fromGeographicMapCellPosition_Param, toGeographicMapCellPosition_Param => toGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEightDirectionFromCellPositionToAdjacentCellPosition;

   procedure getDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Direction_Access := GeographicMapDirectionUtil'Class (This).getDirectionFromCellPositionToCellPosition (fromGeographicMapCellPosition_Param => fromGeographicMapCellPosition_Param, toGeographicMapCellPosition_Param => toGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDirectionFromCellPositionToCellPosition;

   procedure getEightDirectionFromCellPositionToCellPosition (This : in out GeographicMapDirectionUtil; fromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; toGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Direction_Access := GeographicMapDirectionUtil'Class (This).getEightDirectionFromCellPositionToCellPosition (fromGeographicMapCellPosition_Param => fromGeographicMapCellPosition_Param, toGeographicMapCellPosition_Param => toGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEightDirectionFromCellPositionToCellPosition;

begin
   null;
   instance := GeographicMapDirectionUtil_Package.Create;

end org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;


