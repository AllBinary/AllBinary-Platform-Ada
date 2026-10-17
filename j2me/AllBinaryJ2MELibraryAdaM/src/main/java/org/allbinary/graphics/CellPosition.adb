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


package body org.allbinary.graphics.CellPosition_Package is

   procedure Initialize_Fields (This : in out CellPosition'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CellPosition'Class; column : Integer; row : Integer; columns : Integer; rows : Integer) is
   begin
      V_Package.Initialize (This);
      Initialize_Fields (This);
        This.column := column;
        This.row := row;
        This.id := (((row) * (columns))) + (column);
   end Initialize;

   function Create (column : Integer; row : Integer; columns : Integer; rows : Integer) return CellPosition_Access is
      This : constant CellPosition_Access := new CellPosition;
   begin
      CellPosition_Package.Initialize (This.all, column, row, columns, rows);
      return This;
   end Create;

   function getColumn (This : in out CellPosition) return Integer is
   begin
        return This.column;
   end getColumn;

   function getRow (This : in out CellPosition) return Integer is
   begin
        return This.row;
   end getRow;

   function toString (This : in out CellPosition) return Unbounded_String is
   begin
        return CellPosition_Package.toStringColRow (This.getColumn, This.getRow);
   end toString;

   function toStringCellPosition (basicGeographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class) return Unbounded_String is
      basicGeographicMapCellPosition : constant CellPosition_Access := CellPosition_Access (basicGeographicMapCellPosition_Param);
   begin
        return CellPosition_Package.toStringColRow (basicGeographicMapCellPosition.getColumn, basicGeographicMapCellPosition.getRow);
   end toStringCellPosition;

   function toStringColRow (i_column : Integer; i_row : Integer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      commonSeps : CommonSeps_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        commonSeps := CommonSeps_Package.getInstance;
        stringBuffer.append (commonSeps.PARENTHESIS_OPEN);
        stringBuffer.appendint (i_column);
        stringBuffer.append (commonSeps.COMMA);
        stringBuffer.appendint (i_row);
        stringBuffer.append (commonSeps.PARENTHESIS_CLOSE);
        return stringBuffer.toString;
   end toStringColRow;

   function getId (This : in out CellPosition) return Integer is
   begin
        return This.id;
   end getId;

   procedure toStringCellPosition (basicGeographicMapCellPosition_Param : access CellPosition_Package.CellPosition'Class) is
      Java_Result : constant Unbounded_String := toStringCellPosition (basicGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringCellPosition;

   procedure toStringColRow (i_column : Integer; i_row : Integer) is
      Java_Result : constant Unbounded_String := toStringColRow (i_column, i_row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringColRow;

end org.allbinary.graphics.CellPosition_Package;


