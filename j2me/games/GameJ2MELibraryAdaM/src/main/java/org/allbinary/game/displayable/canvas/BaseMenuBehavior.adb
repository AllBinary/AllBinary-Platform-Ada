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


package body org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package is

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
        return BaseMenuBehavior_Package.instance;
   end getInstance;

   --  throws Exception
   procedure onDisplayChangeEvent (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access; displayChangeEvent : DisplayChangeEvent_Access) is
   begin
        null;
   end onDisplayChangeEvent;

   procedure initSpecialPaint (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        allBinaryGameCanvas.setNonBotPaintableP (NullPaintable_Package.getInstance);
   end initSpecialPaint;

   --  throws Exception
   procedure initMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end initMenu;

   --  throws Exception
   procedure updateMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end updateMenu;

   --  throws Exception
   procedure popupMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end popupMenu;

   procedure closeMenu (This : in out BaseMenuBehavior; allBinaryGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        null;
   end closeMenu;

begin
   null;
   instance := BaseMenuBehavior_Package.Create;

end org.allbinary.game.displayable.canvas.BaseMenuBehavior_Package;


