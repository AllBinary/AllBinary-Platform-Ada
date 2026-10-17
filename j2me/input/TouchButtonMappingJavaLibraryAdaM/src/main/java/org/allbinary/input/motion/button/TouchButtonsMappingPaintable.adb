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


package body org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package is

   procedure Initialize_Fields (This : in out TouchButtonsMappingPaintable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.paintableTable := new Paintable_Access_Array_Access_Array'(0 .. (0) - 1 => new Paintable_Access_Array'(0 .. (0) - 1 => null));
      This.touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonsMappingPaintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.foregroundColor := basicColor.intValue;
        This.init;
   end Initialize;

   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return TouchButtonsMappingPaintable_Access is
      This : constant TouchButtonsMappingPaintable_Access := new TouchButtonsMappingPaintable;
   begin
      TouchButtonsMappingPaintable_Package.Initialize (This.all, basicColor_Param);
      return This;
   end Create;

   procedure init (This : in out TouchButtonsMappingPaintable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.paintableTable := This.createPaintableTable;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, TouchButtonsMappingPaintable_Access'(This'Unchecked_Access), To_Unbounded_String ("updateRectangle"), e);
                end;
        end;
   end init;

   --  throws Exception
   function createPaintableTable (This : in out TouchButtonsMappingPaintable) return Paintable_Access_Array_Access_Array_Access is
      totalColumns : Integer;
      totalRows : Integer;
      paintableTable : Paintable_Access_Array_Access_Array_Access;
      cellPositionFactory : CellPositionFactory_Access;
      commonButtons : CommonButtons_Access;
      rowIndex : Integer;
      index : Integer;
   begin
        totalColumns := This.touchButtonLocationHelper.getTotalColumns;
        totalRows := This.touchButtonLocationHelper.getTotalRows;
        paintableTable := new Paintable_Access_Array_Access_Array'(0 .. (totalColumns) - 1 => new Paintable_Access_Array'(0 .. (totalRows) - 1 => null));
        cellPositionFactory := CellPositionFactory_Package.getInstance;
        commonButtons := CommonButtons_Package.getInstance;
        for index in reverse 0 .. (totalColumns) - (1) loop
            for rowIndex in reverse 0 .. (totalRows) - (1) loop
                This.paintableTable (index) (rowIndex) := TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.NONE, TouchButtonBlankResource_Package.getInstance, commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow (index, rowIndex), This.touchButtonLocationHelper.getColumnsRemainderHalf, This.touchButtonLocationHelper.getRowsRemainderHalf);
            end loop;
        end loop;
        return paintableTable;
   end createPaintableTable;

   procedure paint (This : in out TouchButtonsMappingPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      totalColumns : Integer;
      totalRows : Integer;
      rowIndex : Integer;
      index : Integer;
   begin
        totalColumns := This.touchButtonLocationHelper.getTotalColumns;
        totalRows := This.touchButtonLocationHelper.getTotalRows;
        for index in reverse 0 .. (totalColumns) - (1) loop
            for rowIndex in reverse 0 .. (totalRows) - (1) loop
                This.paintableTable (index) (rowIndex).paint (graphics);
            end loop;
        end loop;
   end paint;

end org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package;


