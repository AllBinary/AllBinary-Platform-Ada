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


package body org.allbinary.game.layer.AllBinaryGameLayer_Package is

   procedure Initialize_Fields (This : in out AllBinaryGameLayer'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      This.RED := BasicColorFactory_Package.getInstance.RED;
      This.paintable := (if SWTUtil_Package.isSWT then Paintable_Package.Create  --  Java anonymous class body: implement it as a named type
--          This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
--          This.BLACK := BasicColorFactory_Package.getInstance.BLACK;
--          
--     procedure paint (This : in out ; graphics : Graphics_Access) is
--     begin
--              This.basicSetColorUtil.setBasicColorP (graphics, This.BLACK);
--     end paint;
 else NullPaintable_Package.getInstance);
      This.gameKeyEventList := BasicArrayListD_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryGameLayer'Class; name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access) is
   begin
        AllBinaryLayer_Package.Initialize (This, name, layerInfo, viewPosition);
        Initialize_Fields (This);
   end Initialize;

   function Create (name : Unbounded_String; layerInfo : Rectangle_Access; viewPosition : ViewPositionBase_Access) return AllBinaryGameLayer_Access is
      This : constant AllBinaryGameLayer_Access := new AllBinaryGameLayer;
   begin
      Initialize (This.all, name, layerInfo, viewPosition);
      return This;
   end Create;

   --  throws Exception
   procedure set (This : in out AllBinaryGameLayer; gl : GL_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end set;

   procedure move (This : in out AllBinaryGameLayer) is
   begin
        null;
   end move;

   function getGameKeyEventList (This : in out AllBinaryGameLayer) return BasicArrayList_Access is
   begin
        return This.gameKeyEventList;
   end getGameKeyEventList;

   --  throws Exception
   procedure processInput (This : in out AllBinaryGameLayer; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end processInput;

   --  throws Exception
   procedure processTick (This : in out AllBinaryGameLayer; allBinaryLayerManager : AllBinaryLayerManager_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end processTick;

   procedure onEvent (This : in out AllBinaryGameLayer; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   --  throws Exception
   procedure onViewPositionChangeEvent (This : in out AllBinaryGameLayer) is
   begin
        This.onChangeEvent (This.viewPositionEvent);
   end onViewPositionChangeEvent;

   --  throws Exception
   procedure onChangeEvent (This : in out AllBinaryGameLayer; layerManagerEvent : ViewPositionEvent_Access) is
   begin
        if GameLayerUtil_Package.isOnScreen (This'Unchecked_Access) then
            This.setVisible (True);
        else
            This.setVisible (False);
        end if;
   end onChangeEvent;

   procedure paintFirst (This : in out AllBinaryGameLayer; graphics : Graphics_Access) is
   begin
        This.paintable.paint (graphics);
   end paintFirst;

   procedure paintDebug (This : in out AllBinaryGameLayer; graphics : Graphics_Access) is
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        viewPosition := This.getViewPosition;
        viewX := viewPosition.getX;
        viewY := viewPosition.getY;
        This.basicSetColorUtil.setBasicColorP (graphics, This.RED);
        graphics.drawRect (viewX, viewY, This.getWidth, This.getHeight);
   end paintDebug;

   procedure setWidth (This : in out AllBinaryGameLayer; width : Integer) is
   begin
        AllBinaryLayer (This).setLayerWidth (width);
        This.setHalfWidth (Java_Shift_Right_Arithmetic (width, 1));
   end setWidth;

   procedure setHeight (This : in out AllBinaryGameLayer; height : Integer) is
   begin
        AllBinaryLayer (This).setLayerHeight (height);
        This.setHalfHeight (Java_Shift_Right_Arithmetic (height, 1));
   end setHeight;

   procedure getGameKeyEventList (This : in out AllBinaryGameLayer) is
      Java_Result : constant BasicArrayList_Access := AllBinaryGameLayer'Class (This).getGameKeyEventList;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getGameKeyEventList;

end org.allbinary.game.layer.AllBinaryGameLayer_Package;


