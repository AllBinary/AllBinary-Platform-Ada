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


package body org.allbinary.graphics.j2me.workarea.canvas.Grid_Package is

   procedure Initialize_Fields (This : in out Grid'Class) is
   begin
      null;
      
      This.isGridOn := True;
      This.isGridPossible := False;
      This.zoom := 3;
      This.isChanged := True;
   end Initialize_Fields;


   procedure Initialize (This : in out Grid'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Grid_Access is
      This : constant Grid_Access := new Grid;
   begin
      Grid_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out Grid'Class; grid_Param : access Grid'Class) is
      grid : Grid_Access := Grid_Access (grid_Param);
   begin
      Initialize_Fields (This);
        This.grid := grid.grid;
        This.showGrid (grid.isGridOn);
        This.isGridPossible := grid.isGridPossible;
        This.setZoom (grid.getZoom);
   end Initialize;

   function Create (grid_Param : access Grid'Class) return Grid_Access is
      This : constant Grid_Access := new Grid;
   begin
      Grid_Package.Initialize (This.all, grid_Param);
      return This;
   end Create;

   function isGridOn (This : in out Grid) return Boolean is
   begin
        return This.isGridOn;
   end isGridOn;

   function isGridPossible (This : in out Grid) return Boolean is
   begin
        return This.isGridPossible;
   end isGridPossible;

   function getGrid (This : in out Grid) return GPoint_Access is
   begin
        return This.grid;
   end getGrid;

   function getZoom (This : in out Grid) return Integer is
   begin
        return This.zoom;
   end getZoom;

   procedure showGrid (This : in out Grid; value : Boolean) is
   begin
        This.isGridOn := value;
   end showGrid;

   procedure setZoom (This : in out Grid; zoom_Param : Integer) is
      zoom : Integer := zoom_Param;
   begin
        This.zoom := zoom;
        if (This.zoom) < (1) then
            zoom := 1;
        end if;
        This.isChanged := True;
   end setZoom;

end org.allbinary.graphics.j2me.workarea.canvas.Grid_Package;


