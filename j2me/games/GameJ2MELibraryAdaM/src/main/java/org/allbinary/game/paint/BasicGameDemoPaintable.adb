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


with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;

package body org.allbinary.game.paint.BasicGameDemoPaintable_Package is

   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   procedure Initialize_Fields (This : in out BasicGameDemoPaintable'Class) is
   begin
      null;
      
      
      
      This.currentStatePaintable := NullPaintable_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGameDemoPaintable'Class; mainDemoStatePaintable_Param : access Paintable_Package.Paintable'Class; ownershipPaintable_Param : access Paintable_Package.Paintable'Class; helpPaintableInterface_Param : access Paintable_Package.Paintable'Class) is
      mainDemoStatePaintable : constant Paintable_Access := Paintable_Access (mainDemoStatePaintable_Param);
      ownershipPaintable : constant Paintable_Access := Paintable_Access (ownershipPaintable_Param);
      helpPaintableInterface : constant Paintable_Access := Paintable_Access (helpPaintableInterface_Param);
   begin
      StatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.mainDemoStatePaintable := mainDemoStatePaintable;
        BasicGameDemoPaintable'Class (This).setCurrentStatePaintable (NullPaintable_Package.getInstance);
        This.ownershipPaintable := ownershipPaintable;
        This.helpPaintableInterface := helpPaintableInterface;
   end Initialize;

   function Create (mainDemoStatePaintable_Param : access Paintable_Package.Paintable'Class; ownershipPaintable_Param : access Paintable_Package.Paintable'Class; helpPaintableInterface_Param : access Paintable_Package.Paintable'Class) return BasicGameDemoPaintable_Access is
      This : constant BasicGameDemoPaintable_Access := new BasicGameDemoPaintable;
   begin
      BasicGameDemoPaintable_Package.Initialize (This.all, mainDemoStatePaintable_Param, ownershipPaintable_Param, helpPaintableInterface_Param);
      return This;
   end Create;

   procedure setState (This : in out BasicGameDemoPaintable; state : Integer) is
   begin
        if (state) = (0) then
            BasicGameDemoPaintable'Class (This).setCurrentStatePaintable (BasicGameDemoPaintable'Class (This).getMainDemoStatePaintable);
        elsif (state) = (1) then
            BasicGameDemoPaintable'Class (This).setCurrentStatePaintable (This.helpPaintableInterface);
        else
            BasicGameDemoPaintable'Class (This).setCurrentStatePaintable (This.ownershipPaintable);
        end if;
   end setState;

   procedure paint (This : in out BasicGameDemoPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        BasicGameDemoPaintable'Class (This).getCurrentStatePaintable.paint (graphics);
   end paint;

   function getHelpPaintableInterface (This : in out BasicGameDemoPaintable) return Paintable_Access is
   begin
        return This.helpPaintableInterface;
   end getHelpPaintableInterface;

   procedure setCurrentStatePaintable (This : in out BasicGameDemoPaintable; currentStatePaintable_Param : access Paintable_Package.Paintable'Class) is
      currentStatePaintable : constant Paintable_Access := Paintable_Access (currentStatePaintable_Param);
   begin
        This.currentStatePaintable := currentStatePaintable;
   end setCurrentStatePaintable;

   function getCurrentStatePaintable (This : in out BasicGameDemoPaintable) return Paintable_Access is
   begin
        return This.currentStatePaintable;
   end getCurrentStatePaintable;

   function getMainDemoStatePaintable (This : in out BasicGameDemoPaintable) return Paintable_Access is
   begin
        return This.mainDemoStatePaintable;
   end getMainDemoStatePaintable;

end org.allbinary.game.paint.BasicGameDemoPaintable_Package;


