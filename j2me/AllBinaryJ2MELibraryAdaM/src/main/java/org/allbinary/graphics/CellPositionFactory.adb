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


package body org.allbinary.graphics.CellPositionFactory_Package is

   procedure Initialize_Fields (This : in out CellPositionFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.NONE := CellPosition_Package.Create (-(1), -(1), -(1), -(1));
      This.cellPositionArray := new CellPosition_Access_Array_Access_Array'(0 .. (0) - 1 => new CellPosition_Access_Array'(0 .. (0) - 1 => null));
      This.columns := 0;
      This.rows := 0;
   end Initialize_Fields;


   function getInstance return CellPositionFactory_Access is
   begin
        return CellPositionFactory_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out CellPositionFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CellPositionFactory_Access is
      This : constant CellPositionFactory_Access := new CellPositionFactory;
   begin
      CellPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out CellPositionFactory; columns : Integer; rows : Integer) is
      commonStrings : CommonStrings_Access;
      stringBuffer : StringMaker_Access;
      row : Integer;
      column : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Init: columns: "));
        stringBuffer.appendint (columns);
        stringBuffer.append (To_Unbounded_String (" rows: "));
        stringBuffer.appendint (rows);
        This.logUtil.putF (stringBuffer.toString, CellPositionFactory_Access'(This'Unchecked_Access), commonStrings.INIT);
        This.cellPositionArray := new CellPosition_Access_Array_Access_Array'(0 .. (columns) - 1 => new CellPosition_Access_Array'(0 .. (rows) - 1 => null));
        This.columns := columns;
        This.rows := rows;
        for column in 0 .. (columns) - 1 loop
            for row in 0 .. (rows) - 1 loop
                CellPositionFactory'Class (This).createInstance (column, row);
            end loop;
        end loop;
   end init;

   function getInstanceColRow (This : in out CellPositionFactory; i_column : Integer; i_row : Integer) return CellPosition_Access is
      commonStrings : CommonStrings_Access;
   begin
        begin
            return This.cellPositionArray (i_column) (i_row);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (StringMaker_Package.Create.append (To_Unbounded_String ("columns: ")).appendint (CellPositionFactory'Class (This).getColumns).append (To_Unbounded_String (" rows: ")).appendint (CellPositionFactory'Class (This).getRows).append (To_Unbounded_String (" col: ")).appendint (i_column).append (To_Unbounded_String (" row: ")).appendint (i_row).toString, CellPositionFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE, e);
            return This.NONE;
                end;
        end;
   end getInstanceColRow;

   function createInstance (This : in out CellPositionFactory; i_column : Integer; i_row : Integer) return CellPosition_Access is
      cellPositionCanBeNull : CellPosition_Access;
   begin
        cellPositionCanBeNull := This.cellPositionArray (i_column) (i_row);
        if (cellPositionCanBeNull) = (null) then
            cellPositionCanBeNull := CellPosition_Package.Create (i_column, i_row, This.columns, This.rows);
            This.cellPositionArray (i_column) (i_row) := cellPositionCanBeNull;
        end if;
        return cellPositionCanBeNull;
   end createInstance;

   function getColumns (This : in out CellPositionFactory) return Integer is
   begin
        return This.columns;
   end getColumns;

   function getRows (This : in out CellPositionFactory) return Integer is
   begin
        return This.rows;
   end getRows;

   procedure getInstanceColRow (This : in out CellPositionFactory; i_column : Integer; i_row : Integer) is
      Java_Result : constant CellPosition_Access := CellPositionFactory'Class (This).getInstanceColRow (i_column, i_row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceColRow;

   procedure createInstance (This : in out CellPositionFactory; i_column : Integer; i_row : Integer) is
      Java_Result : constant CellPosition_Access := CellPositionFactory'Class (This).createInstance (i_column, i_row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createInstance;

begin
   null;
   SINGLETON := CellPositionFactory_Package.Create;

end org.allbinary.graphics.CellPositionFactory_Package;


