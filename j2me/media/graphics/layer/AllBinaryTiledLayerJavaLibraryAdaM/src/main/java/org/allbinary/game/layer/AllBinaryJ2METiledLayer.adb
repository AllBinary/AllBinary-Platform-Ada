-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.AllBinaryJ2METiledLayer_Package is

   procedure Initialize_Fields (This : in out AllBinaryJ2METiledLayer'Class) is
   begin
      null;
      
      
      This.font2 := Font_Package.getFont (Font_Package.FACE_SYSTEM, Font_Package.STYLE_PLAIN, 4);
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryJ2METiledLayer'Class; dataId : Integer; tiledLayer : TiledLayer_Access; mapTwoDArray : Integer_Array_Access_Array_Access; debugColor : Integer) is
   begin
        AllBinaryTiledLayer_Package.Initialize (This, dataId, tiledLayer.getWidth, tiledLayer.getHeight, tiledLayer.getCellWidth, tiledLayer.getCellHeight);
        Initialize_Fields (This);
        This.tiledLayerP := tiledLayer;
        This.debugColor := debugColor;
        This.setCells (mapTwoDArray);
   end Initialize;

   function Create (dataId : Integer; tiledLayer : TiledLayer_Access; mapTwoDArray : Integer_Array_Access_Array_Access; debugColor : Integer) return AllBinaryJ2METiledLayer_Access is
      This : constant AllBinaryJ2METiledLayer_Access := new AllBinaryJ2METiledLayer;
   begin
      Initialize (This.all, dataId, tiledLayer, mapTwoDArray, debugColor);
      return This;
   end Create;

   procedure paint (This : in out AllBinaryJ2METiledLayer; graphics : Graphics_Access) is
   begin
        This.tiledLayerP.paint (graphics);
   end paint;

   procedure paintDebug (This : in out AllBinaryJ2METiledLayer; graphics : Graphics_Access) is
      font : Font_Access;
      x : Integer;
      y : Integer;
      firstColumn : Integer;
      firstRow : Integer;
      totalColumns : Integer;
      totalRows : Integer;
      x0 : Integer;
      tile : Integer;
      tileHeight : Integer;
      tileWidth : Integer;
      commonSeps : CommonSeps_Access;
      stringMaker : StringMaker_Access;
      columnIndex : Integer;
      rowIndex : Integer;
   begin
        font := graphics.getFont;
        graphics.setFont (This.font2);
        graphics.setColor (This.debugColor);
        x := This.tiledLayerP.getX;
        y := This.tiledLayerP.getY;
        firstColumn := 0;
        firstRow := 0;
        totalColumns := This.tiledLayerP.getColumns;
        totalRows := This.tiledLayerP.getRows;
        x0 := x;
        tile := 0;
        tileHeight := This.tiledLayerP.getCellHeight;
        tileWidth := This.tiledLayerP.getCellWidth;
        commonSeps := CommonSeps_Package.getInstance;
        stringMaker := StringMaker_Package.Create;
        rowIndex := firstRow;
        while (rowIndex) < (totalRows) loop
            x := x0;
            columnIndex := firstColumn;
            while (columnIndex) < (totalColumns) loop
                tile := This.tiledLayerP.getCell (columnIndex, rowIndex);
                if (tile) < (0) then
                    tile := This.tiledLayerP.getAnimatedTile (tile);
                end if;
                if (tile) = (0) then
                    goto Continue_N66931;
                end if;
                tile := tile - 1;
                stringMaker.delete (0, stringMaker.length);
                graphics.drawString (stringMaker.appendint (columnIndex).append (commonSeps.COMMA).appendint (rowIndex).append (commonSeps.COLON).appendint (tile).toString, (x) + (5), (y) + (10), 0);
                <<Continue_N66931>> null;
                columnIndex := columnIndex + 1;
                x := (x) + (tileWidth);
            end loop;
            rowIndex := rowIndex + 1;
            y := (y) + (tileHeight);
        end loop;
        graphics.setFont (font);
   end paintDebug;

   procedure moveDXY (This : in out AllBinaryJ2METiledLayer; dx : Integer; dy : Integer) is
   begin
        This.tiledLayerP.move (dx, dy);
        AllBinaryTiledLayer (This).moveDXY (-(dx), -(dy));
   end moveDXY;

   procedure setPosition (This : in out AllBinaryJ2METiledLayer; x : Integer; y : Integer; z : Integer) is
   begin
        This.tiledLayerP.setPosition (x, y);
        AllBinaryTiledLayer (This).setPosition (-(x), -(y), z);
   end setPosition;

   function getTiledLayer (This : in out AllBinaryJ2METiledLayer) return TiledLayer_Access is
   begin
        return This.tiledLayerP;
   end getTiledLayer;

   function getCellWidth (This : in out AllBinaryJ2METiledLayer) return Integer is
   begin
        return This.tiledLayerP.getCellWidth;
   end getCellWidth;

   function getCellHeight (This : in out AllBinaryJ2METiledLayer) return Integer is
   begin
        return This.tiledLayerP.getCellHeight;
   end getCellHeight;

   function getCell (This : in out AllBinaryJ2METiledLayer; col : Integer; row : Integer) return Integer is
   begin
        return This.tiledLayerP.getCell (col, row);
   end getCell;

   function getColumns (This : in out AllBinaryJ2METiledLayer) return Integer is
   begin
        return This.tiledLayerP.getColumns;
   end getColumns;

   function getRows (This : in out AllBinaryJ2METiledLayer) return Integer is
   begin
        return This.tiledLayerP.getRows;
   end getRows;

   procedure setCell (This : in out AllBinaryJ2METiledLayer; col : Integer; row : Integer; index : Integer) is
   begin
        This.tiledLayerP.setCell (col, row, index);
   end setCell;

   function getAnimatedTile (This : in out AllBinaryJ2METiledLayer; animationTileIndex : Integer) return Integer is
   begin
        return This.tiledLayerP.getAnimatedTile (animationTileIndex);
   end getAnimatedTile;

   procedure getTiledLayer (This : in out AllBinaryJ2METiledLayer) is
      Java_Result : constant TiledLayer_Access := AllBinaryJ2METiledLayer'Class (This).getTiledLayer;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTiledLayer;

   procedure getCellWidth (This : in out AllBinaryJ2METiledLayer) is
      Java_Result : constant Integer := AllBinaryJ2METiledLayer'Class (This).getCellWidth;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellWidth;

   procedure getCellHeight (This : in out AllBinaryJ2METiledLayer) is
      Java_Result : constant Integer := AllBinaryJ2METiledLayer'Class (This).getCellHeight;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellHeight;

   procedure getCell (This : in out AllBinaryJ2METiledLayer; col : Integer; row : Integer) is
      Java_Result : constant Integer := AllBinaryJ2METiledLayer'Class (This).getCell (col, row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCell;

   procedure getColumns (This : in out AllBinaryJ2METiledLayer) is
      Java_Result : constant Integer := AllBinaryJ2METiledLayer'Class (This).getColumns;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getColumns;

   procedure getRows (This : in out AllBinaryJ2METiledLayer) is
      Java_Result : constant Integer := AllBinaryJ2METiledLayer'Class (This).getRows;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRows;

   procedure getAnimatedTile (This : in out AllBinaryJ2METiledLayer; animationTileIndex : Integer) is
      Java_Result : constant Integer := AllBinaryJ2METiledLayer'Class (This).getAnimatedTile (animationTileIndex);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimatedTile;

end org.allbinary.game.layer.AllBinaryJ2METiledLayer_Package;


