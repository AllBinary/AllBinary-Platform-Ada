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


package body org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package is

   procedure Initialize_Fields (This : in out PreGameSelectorPaintable'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out PreGameSelectorPaintable'Class; title : Unbounded_String; preGameScrollSelectionForm_Param : access PreGameScrollSelectionForm_Package.PreGameScrollSelectionForm'Class) is
      preGameScrollSelectionForm : constant PreGameScrollSelectionForm_Access := PreGameScrollSelectionForm_Access (preGameScrollSelectionForm_Param);
      displayInfo : DisplayInfoSingleton_Access;
   begin
      InitUpdatePaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.title := title;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        This.canvasDrawLineString := CanvasDrawLineString_Package.Create (displayInfo.getLastHalfWidth, 0);
        This.preGameScrollSelectionForm := preGameScrollSelectionForm;
   end Initialize;

   function Create (title : Unbounded_String; preGameScrollSelectionForm_Param : access PreGameScrollSelectionForm_Package.PreGameScrollSelectionForm'Class) return PreGameSelectorPaintable_Access is
      This : constant PreGameSelectorPaintable_Access := new PreGameSelectorPaintable;
   begin
      PreGameSelectorPaintable_Package.Initialize (This.all, title, preGameScrollSelectionForm_Param);
      return This;
   end Create;

   procedure update (This : in out PreGameSelectorPaintable) is
      displayInfo : DisplayInfoSingleton_Access;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        This.canvasDrawLineString := CanvasDrawLineString_Package.Create (displayInfo.getLastHalfWidth, 0);
   end update;

   procedure paint (This : in out PreGameSelectorPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.setColor (BasicColorFactory_Package.getInstance.WHITE.intValue);
        This.canvasDrawLineString.paint (graphics, This.title, 0);
        PreGameSelectorPaintable'Class (This).getPreGameSelectionForm.paint (graphics);
   end paint;

   function getPreGameSelectionForm (This : in out PreGameSelectorPaintable) return PreGameScrollSelectionForm_Access is
   begin
        return This.preGameScrollSelectionForm;
   end getPreGameSelectionForm;

end org.allbinary.game.displayable.canvas.PreGameSelectorPaintable_Package;


