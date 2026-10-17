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


package body org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package is

   procedure Initialize_Fields (This : in out InGameMenuBehavior'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out InGameMenuBehavior'Class) is
   begin
      BaseMenuBehavior_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return InGameMenuBehavior_Access is
      This : constant InGameMenuBehavior_Access := new InGameMenuBehavior;
   begin
      InGameMenuBehavior_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return InGameMenuBehavior_Access is
   begin
        return InGameMenuBehavior_Package.instanceC;
   end getInstance;

   --  throws Exception
   procedure onDisplayChangeEvent (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access; displayChangeEvent : DisplayChangeEvent_Access) is
   begin
        allBinaryGameCanvas.updateMenuFromEvent (displayChangeEvent);
   end onDisplayChangeEvent;

   procedure initSpecialPaint (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        allBinaryGameCanvas.setNonBotPaintableP (GameCanvasNonBotPaintable_Package.Create (allBinaryGameCanvas));
   end initSpecialPaint;

   --  throws Exception
   procedure initMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        allBinaryGameCanvas.initMenu2;
   end initMenu;

   --  throws Exception
   procedure updateMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        allBinaryGameCanvas.initMenu2;
   end updateMenu;

   --  throws Exception
   procedure popupMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        allBinaryGameCanvas.popupMenu2;
   end popupMenu;

   procedure closeMenu (This : in out InGameMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        allBinaryGameCanvas.closeMenu2;
   end closeMenu;

begin
   null;
   instanceC := InGameMenuBehavior_Package.Create;

end org.allbinary.game.displayable.canvas.InGameMenuBehavior_Package;


