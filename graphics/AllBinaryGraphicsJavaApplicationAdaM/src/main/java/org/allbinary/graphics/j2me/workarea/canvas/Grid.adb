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
      Initialize (This.all);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out Grid'Class; grid : Grid_Access) is
   begin
      Initialize_Fields (This);
        This.grid := grid.grid;
        This.showGrid (grid.isGridOn);
        This.isGridPossible := grid.isGridPossible;
        This.setZoom (grid.getZoom);
   end Initialize;

   function Create (grid : Grid_Access) return Grid_Access is
      This : constant Grid_Access := new Grid;
   begin
      Initialize (This.all, grid);
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

   procedure setZoom (This : in out Grid; zoom : Integer) is
   begin
        This.zoom := zoom;
        if (This.zoom) < (1) then
            zoom := 1;
        end if;
        This.isChanged := True;
   end setZoom;

   procedure isGridOn (This : in out Grid) is
      Java_Result : constant Boolean := Grid'Class (This).isGridOn;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isGridOn;

   procedure isGridPossible (This : in out Grid) is
      Java_Result : constant Boolean := Grid'Class (This).isGridPossible;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isGridPossible;

   procedure getGrid (This : in out Grid) is
      Java_Result : constant GPoint_Access := Grid'Class (This).getGrid;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGrid;

   procedure getZoom (This : in out Grid) is
      Java_Result : constant Integer := Grid'Class (This).getZoom;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getZoom;

end org.allbinary.graphics.j2me.workarea.canvas.Grid_Package;


