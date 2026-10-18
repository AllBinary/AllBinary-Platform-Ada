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
      
      This.isGridOn_Field := True;
      This.isGridPossible_Field := False;
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

   procedure Initialize (This : in out Grid'Class; grid_Var_Param : access Grid_Package.Grid'Class) is
      grid_Var : constant Grid_Access := Grid_Access (grid_Var_Param);
   begin
      Initialize_Fields (This);
        This.grid_Var := grid_Var.grid_Var;
        Grid'Class (This).showGrid (grid_Var.isGridOn);
        This.isGridPossible_Field := grid_Var.isGridPossible;
        Grid'Class (This).setZoom (grid_Var.getZoom);
   end Initialize;

   function Create (grid_Var_Param : access Grid_Package.Grid'Class) return Grid_Access is
      This : constant Grid_Access := new Grid;
   begin
      Grid_Package.Initialize (This.all, grid_Var_Param);
      return This;
   end Create;

   function isGridOn (This : in out Grid) return Boolean is
   begin
        return This.isGridOn_Field;
   end isGridOn;

   function isGridPossible (This : in out Grid) return Boolean is
   begin
        return This.isGridPossible_Field;
   end isGridPossible;

   function getGrid (This : in out Grid) return GPoint_Access is
   begin
        return This.grid_Var;
   end getGrid;

   function getZoom (This : in out Grid) return Integer is
   begin
        return This.zoom;
   end getZoom;

   procedure showGrid (This : in out Grid; value : Boolean) is
   begin
        This.isGridOn_Field := value;
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


