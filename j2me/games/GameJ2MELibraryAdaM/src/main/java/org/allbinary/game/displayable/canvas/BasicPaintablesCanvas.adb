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


package body org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package is

   procedure Initialize_Fields (This : in out BasicPaintablesCanvas'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicPaintablesCanvas'Class; cmdListener_Param : access CommandListener'Class; name : Unbounded_String; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class; paintableArray : Paintable_Access_Array_Access) is
      cmdListener : CommandListener_Access := CommandListener_Access (cmdListener_Param);
      allBinaryGameLayerManager : AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        GameCommandCanvas_Package.Initialize (This, cmdListener, name, allBinaryGameLayerManager.getBackgroundBasicColor, allBinaryGameLayerManager.getForegroundBasicColor);
        Initialize_Fields (This);
        This.paintableArray := paintableArray;
        This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (allBinaryGameLayerManager.getBackgroundBasicColor, False);
   end Initialize;

   function Create (cmdListener_Param : access CommandListener'Class; name : Unbounded_String; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager'Class; paintableArray : Paintable_Access_Array_Access) return BasicPaintablesCanvas_Access is
      This : constant BasicPaintablesCanvas_Access := new BasicPaintablesCanvas;
   begin
      BasicPaintablesCanvas_Package.Initialize (This.all, cmdListener_Param, name, allBinaryGameLayerManager_Param, paintableArray);
      return This;
   end Create;

   procedure paint (This : in out BasicPaintablesCanvas; graphics_Param : access Graphics'Class) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
      index : Integer;
   begin
        This.colorFillPaintable.paint (graphics);
        graphics.setColor (This.foregroundColor);
        for index in reverse 0 .. (This.paintableArray'Length) - (1) loop
            This.paintableArray (index).paint (graphics);
        end loop;
        GameCommandCanvas (This).paint (graphics);
   end paint;

end org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package;


