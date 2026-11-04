-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.displayable.canvas.DemoGameBehavior_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.GameCanvasPauseRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
with org.allbinary.game.GameStrings_Package;

package body org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package is

   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   subtype DisplayChangeEvent_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access_Array is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype DisplayChangeEvent_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References.DisplayChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package_References."=";
   subtype AllBinaryGameCanvas_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   subtype AllBinaryGameCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References.AllBinaryGameCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package_References."=";
   procedure Initialize_Fields (This : in out BaseMenuBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BaseMenuBehavior'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BaseMenuBehavior_Access is
      This : constant BaseMenuBehavior_Access := new BaseMenuBehavior;
   begin
      BaseMenuBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return BaseMenuBehavior_Access is
   begin
        return BaseMenuBehavior_Access (BaseMenuBehavior_Package.instance);
   end getInstance;

   --  throws Exception
   procedure onDisplayChangeEvent (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
   begin
        null;
   end onDisplayChangeEvent;

   procedure initSpecialPaint (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        allBinaryGameCanvas.setNonBotPaintableP (NullPaintable_Package.getInstance);
   end initSpecialPaint;

   --  throws Exception
   procedure initMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end initMenu;

   --  throws Exception
   procedure updateMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end updateMenu;

   --  throws Exception
   procedure popupMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end popupMenu;

   procedure closeMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas_Param : access AllBinaryGameCanvas_Package.AllBinaryGameCanvas'Class) is
      allBinaryGameCanvas : constant AllBinaryGameCanvas_Access := AllBinaryGameCanvas_Access (allBinaryGameCanvas_Param);
   begin
        null;
   end closeMenu;

begin
   null;
   instance := BaseMenuBehavior_Package.Create;

end org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;


