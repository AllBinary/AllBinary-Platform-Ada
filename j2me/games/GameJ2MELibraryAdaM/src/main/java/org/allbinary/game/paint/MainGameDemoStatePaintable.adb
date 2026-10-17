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


package body org.allbinary.game.paint.MainGameDemoStatePaintable_Package is

   procedure Initialize_Fields (This : in out MainGameDemoStatePaintable'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MainGameDemoStatePaintable'Class; ownershipPaintableInterface_Param : access Paintable'Class; menuPaintableInterface_Param : access Paintable'Class) is
      ownershipPaintableInterface : Paintable_Access := Paintable_Access (ownershipPaintableInterface_Param);
      menuPaintableInterface : Paintable_Access := Paintable_Access (menuPaintableInterface_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.ownershipPaintableInterface := ownershipPaintableInterface;
        This.menuPaintableInterface := menuPaintableInterface;
   end Initialize;

   function Create (ownershipPaintableInterface_Param : access Paintable'Class; menuPaintableInterface_Param : access Paintable'Class) return MainGameDemoStatePaintable_Access is
      This : constant MainGameDemoStatePaintable_Access := new MainGameDemoStatePaintable;
   begin
      MainGameDemoStatePaintable_Package.Initialize (This.all, ownershipPaintableInterface_Param, menuPaintableInterface_Param);
      return This;
   end Create;

   procedure paint (This : in out MainGameDemoStatePaintable; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.menuPaintableInterface.paint (graphics);
        This.ownershipPaintableInterface.paint (graphics);
   end paint;

   function getOwnershipPaintableInterface (This : in out MainGameDemoStatePaintable) return Paintable_Access is
   begin
        return This.ownershipPaintableInterface;
   end getOwnershipPaintableInterface;

   function getMenuPaintableInterface (This : in out MainGameDemoStatePaintable) return Paintable_Access is
   begin
        return This.menuPaintableInterface;
   end getMenuPaintableInterface;

end org.allbinary.game.paint.MainGameDemoStatePaintable_Package;


