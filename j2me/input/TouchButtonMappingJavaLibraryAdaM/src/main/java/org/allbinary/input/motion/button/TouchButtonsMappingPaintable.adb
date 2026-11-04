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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonBlankResource_Package; use org.allbinary.input.motion.button.TouchButtonBlankResource_Package;

package body org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package is

   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype TouchButtonLocationHelper_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access;
   function "=" (Left, Right : TouchButtonLocationHelper_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
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
        TouchButtonsMappingPaintable'Class (This).init;
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
            This.paintableTable := TouchButtonsMappingPaintable'Class (This).createPaintableTable;
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


