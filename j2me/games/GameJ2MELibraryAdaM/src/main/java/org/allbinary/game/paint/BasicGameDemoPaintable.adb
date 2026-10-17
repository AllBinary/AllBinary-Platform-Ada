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


package body org.allbinary.game.paint.BasicGameDemoPaintable_Package is

   procedure Initialize_Fields (This : in out BasicGameDemoPaintable'Class) is
   begin
      null;
      
      
      
      This.currentStatePaintable := NullPaintable_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGameDemoPaintable'Class; mainDemoStatePaintable : Paintable_Access; ownershipPaintable : Paintable_Access; helpPaintableInterface : Paintable_Access) is
   begin
      StatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.mainDemoStatePaintable := mainDemoStatePaintable;
        This.setCurrentStatePaintable (NullPaintable_Package.getInstance);
        This.ownershipPaintable := ownershipPaintable;
        This.helpPaintableInterface := helpPaintableInterface;
   end Initialize;

   function Create (mainDemoStatePaintable : Paintable_Access; ownershipPaintable : Paintable_Access; helpPaintableInterface : Paintable_Access) return BasicGameDemoPaintable_Access is
      This : constant BasicGameDemoPaintable_Access := new BasicGameDemoPaintable;
   begin
      BasicGameDemoPaintable_Package.Initialize (This.all, mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface);
      return This;
   end Create;

   procedure setState (This : in out BasicGameDemoPaintable; state : Integer) is
   begin
        if (state) = (0) then
            This.setCurrentStatePaintable (This.getMainDemoStatePaintable);
        elsif (state) = (1) then
            This.setCurrentStatePaintable (This.helpPaintableInterface);
        else
            This.setCurrentStatePaintable (This.ownershipPaintable);
        end if;
   end setState;

   procedure paint (This : in out BasicGameDemoPaintable; graphics : Graphics_Access) is
   begin
        This.getCurrentStatePaintable.paint (graphics);
   end paint;

   function getHelpPaintableInterface (This : in out BasicGameDemoPaintable) return Paintable_Access is
   begin
        return This.helpPaintableInterface;
   end getHelpPaintableInterface;

   procedure setCurrentStatePaintable (This : in out BasicGameDemoPaintable; currentStatePaintable : Paintable_Access) is
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


