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
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;

package body org.allbinary.game.paint.MainGameDemoStatePaintable_Package is

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
   procedure Initialize_Fields (This : in out MainGameDemoStatePaintable'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out MainGameDemoStatePaintable'Class; ownershipPaintableInterface_Param : access Paintable_Package.Paintable'Class; menuPaintableInterface_Param : access Paintable_Package.Paintable'Class) is
      ownershipPaintableInterface : constant Paintable_Access := Paintable_Access (ownershipPaintableInterface_Param);
      menuPaintableInterface : constant Paintable_Access := Paintable_Access (menuPaintableInterface_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.ownershipPaintableInterface := ownershipPaintableInterface;
        This.menuPaintableInterface := menuPaintableInterface;
   end Initialize;

   function Create (ownershipPaintableInterface_Param : access Paintable_Package.Paintable'Class; menuPaintableInterface_Param : access Paintable_Package.Paintable'Class) return MainGameDemoStatePaintable_Access is
      This : constant MainGameDemoStatePaintable_Access := new MainGameDemoStatePaintable;
   begin
      MainGameDemoStatePaintable_Package.Initialize (This.all, ownershipPaintableInterface_Param, menuPaintableInterface_Param);
      return This;
   end Create;

   procedure paint (This : in out MainGameDemoStatePaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
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


