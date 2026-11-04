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


with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with javax.microedition.lcdui.NullCommandListener_Package; use javax.microedition.lcdui.NullCommandListener_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package; use org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package; use org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package_References;
with org.allbinary.thread.PathFindingThreadPool_Package; use org.allbinary.thread.PathFindingThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package;

package body org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package NullCanvas_Package renames Standard.javax.microedition.lcdui.NullCanvas_Package;
   package NullCommandListener_Package renames Standard.javax.microedition.lcdui.NullCommandListener_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   function "=" (Left, Right : CommandListener_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
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
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   function "=" (Left, Right : Processor_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   function "=" (Left, Right : Processor_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   function "=" (Left, Right : Processor_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   function "=" (Left, Right : MyFontProcessor_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype ABCustomGaugeItem_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access;
   function "=" (Left, Right : ABCustomGaugeItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   function "=" (Left, Right : Paintable_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Paintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.Paintable_Package_References."=";
   subtype AllBinaryMidlet_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access;
   function "=" (Left, Right : AllBinaryMidlet_Access) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array_Access) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype ProgressEndListener_Access is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access;
   function "=" (Left, Right : ProgressEndListener_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   subtype ProgressEndListener_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array;
   function "=" (Left, Right : ProgressEndListener_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   subtype ProgressEndListener_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array_Access;
   function "=" (Left, Right : ProgressEndListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   subtype ProgressEndListener_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressEndListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   subtype ProgressEndListener_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressEndListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   procedure Initialize_Fields (This : in out ProgressCanvas'Class) is
   begin
      null;
      This.hasPainted := False;
      
      This.GAUGE_PAINTABLE := Paintable_Access (ProgressPaintable_Package.Create (ProgressCanvas_Access'(This'Unchecked_Access)));
      This.maxValue := 100.0;
      
      This.TEXT := This.commonStrings.LOADING;
      This.updateMyFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (ProgressCanvas_Access'(This'Unchecked_Access)));
      This.myFontProcessor := This.updateMyFontProcessor;
      This.allbinaryMidlet := AllBinaryMidlet_Package.getNullInstance;
      This.value := 0.0;
      This.text_Case := This.TEXT;
      This.background := True;
      This.paintable := PaintableInterface_Access (This.GAUGE_PAINTABLE);
      This.inProgress := False;
      This.IN_GAME_PROCESSOR := Processor_Package.Create  --  Java anonymous class body: implement it as a named type
--          This.pathFindingThreadPool := PathFindingThreadPool_Package.getInstance;
--          
--     --  throws Exception
--     procedure process (This : in out ) is
--     begin
--              This.pathFindingThreadPool.runAPriorityTask;
--     end process;
;
      This.inGameProcessor := Processor_Package.getInstance;
      This.progressEndListener := ProgressEndListener_Access (ProgressEndListener_Package.instance);
      This.backgroundLabel := To_Unbounded_String ("Background AI Game Loading...");
      This.START_BACKGROUND := To_Unbounded_String ("startBackground");
      This.ADD_PORTION := To_Unbounded_String ("addPortion");
      This.ADD_EARLY_PORTION := To_Unbounded_String ("addEarlyPortion");
   end Initialize_Fields;


   procedure Initialize (This : in out ProgressCanvas'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        RunnableCanvas_Package.Initialize (This, NullCommandListener_Package.NULL_COMMAND_LISTENER, CanvasStrings_Package.getInstance.EMPTY_CHILD_NAME_LIST, False);
        Initialize_Fields (This);
        This.backgroundBasicColor := backgroundBasicColor;
        This.gauge := ABCustomGaugeItem_Package.Create (StringUtil_Package.getInstance.EMPTY_STRING, Integer (This.maxValue), 0, backgroundBasicColor, foregroundBasicColor);
   end Initialize;

   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ProgressCanvas_Access is
      This : constant ProgressCanvas_Access := new ProgressCanvas;
   begin
      ProgressCanvas_Package.Initialize (This.all, title, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.gauge.setHeight ((font.getHeight) + (2));
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure init (This : in out ProgressCanvas; gameMidlet_Param : access AllBinaryMidlet_Package.AllBinaryMidlet'Class) is
      gameMidlet : constant AllBinaryMidlet_Access := AllBinaryMidlet_Access (gameMidlet_Param);
   begin
        This.allbinaryMidlet := gameMidlet;
   end init;

   --  throws Exception
   procedure update (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end update;

   procedure initCommands (This : in out ProgressCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        null;
   end initCommands;

   function getMaxValue (This : in out ProgressCanvas) return Float is
   begin
        return This.maxValue;
   end getMaxValue;

   procedure start (This : in out ProgressCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, ProgressCanvas_Access'(This'Unchecked_Access), This.commonStrings.START_METHOD_NAME);
        ProgressCanvas'Class (This).setBackground (True);
        This.gauge.setHeight (30);
        This.gauge.setLabel (This.commonStrings.PLEASE_WAIT);
        ProgressCanvas'Class (This).setText (This.TEXT);
        ProgressCanvas'Class (This).setValue (0);
        This.inGameProcessor := Processor_Package.getInstance;
        This.paintable := PaintableInterface_Access (This.GAUGE_PAINTABLE);
        This.inProgress := True;
   end start;

   procedure startBackground (This : in out ProgressCanvas; background : Boolean) is
   begin
        This.logUtil.putF (This.commonStrings.START, ProgressCanvas_Access'(This'Unchecked_Access), This.START_BACKGROUND);
        ProgressCanvas'Class (This).setBackground (background);
        This.myFontProcessor := This.updateMyFontProcessor;
        This.gauge.setLabel (This.backgroundLabel);
        ProgressCanvas'Class (This).setText (This.TEXT);
        ProgressCanvas'Class (This).setValue (0);
        This.inGameProcessor := Processor_Package.getInstance;
        This.paintable := PaintableInterface_Access (This.GAUGE_PAINTABLE);
   end startBackground;

   procedure endActual (This : in out ProgressCanvas) is
   begin
        This.allbinaryMidlet.commandAction (GameCommandsFactory_Package.getInstance.SHOW_GAME_CANVAS, NullCanvas_Package.NULL_CANVAS);
        This.inProgress := False;
        ProgressCanvas'Class (This).inGame;
   end endActual;

   procedure inGame (This : in out ProgressCanvas) is
   begin
        This.progressEndListener.onEndEvent;
        This.inGameProcessor := This.IN_GAME_PROCESSOR;
   end inGame;

   procedure end_Id (This : in out ProgressCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, ProgressCanvas_Access'(This'Unchecked_Access), This.commonStrings.END_METHOD_NAME);
        This.gauge.setValue (ProgressCanvas'Class (This).getMaxValue);
        ProgressCanvas'Class (This).endActual;
        This.paintable := PaintableInterface_Access (NullPaintable_Package.getInstance);
   end end_Id;

   procedure endFromInitialLazyLoadingComplete (This : in out ProgressCanvas) is
   begin
        This.progressEndListener.onEndEvent;
        This.gauge.setValue (ProgressCanvas'Class (This).getMaxValue);
        This.inGameProcessor := This.IN_GAME_PROCESSOR;
   end endFromInitialLazyLoadingComplete;

   function isInGame (This : in out ProgressCanvas) return Boolean is
   begin
        if (This.inGameProcessor) = (This.IN_GAME_PROCESSOR) then
            return True;
        end if;
        return False;
   end isInGame;

   procedure endIfPaintedSinceStart (This : in out ProgressCanvas) is
   begin
        null;
   end endIfPaintedSinceStart;

   procedure addEarlyPortion (This : in out ProgressCanvas; value : Integer; text : Unbounded_String; index : Integer) is
   begin
        ProgressCanvas'Class (This).setText (StringMaker_Package.Create.append (text).append (SmallIntegerSingletonFactory_Package.getInstance.getAt (index).toString).toString);
        This.gauge.setValue ((This.gauge.getValue) + ((ProgressCanvas'Class (This).getMaxValue) / (Float (value))));
   end addEarlyPortion;

   procedure addPortion (This : in out ProgressCanvas; value : Integer; text : Unbounded_String; index : Integer) is
   begin
        ProgressCanvas'Class (This).setText (StringMaker_Package.Create.append (text).append (SmallIntegerSingletonFactory_Package.getInstance.getAt (index).toString).toString);
        PreLogUtil_Package.put (This.text_Case, ProgressCanvas_Access'(This'Unchecked_Access), This.ADD_PORTION);
        This.gauge.setValue ((This.gauge.getValue) + ((ProgressCanvas'Class (This).getMaxValue) / (Float (value))));
   end addPortion;

   procedure addNormalPortion (This : in out ProgressCanvas; value : Integer; text : Unbounded_String) is
   begin
        if (This.text_Case) /= (text) then
            PreLogUtil_Package.put (text, ProgressCanvas_Access'(This'Unchecked_Access), This.ADD_PORTION);
        end if;
        ProgressCanvas'Class (This).setText (text);
        This.gauge.setValue ((This.gauge.getValue) + ((ProgressCanvas'Class (This).getMaxValue) / (Float (value))));
   end addNormalPortion;

   procedure setValue (This : in out ProgressCanvas; value : Integer) is
   begin
        This.value := Float (value);
        This.gauge.setValue (Float (value));
   end setValue;

   procedure paint (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.paintable.paint (graphics);
   end paint;

   procedure paint2 (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        graphics.setColor (This.backgroundBasicColor.intValue);
        graphics.fillRect (0, 0, This.displayInfo.getLastWidth, This.displayInfo.getLastHeight);
        This.gauge.paintXY (graphics, 0, 0);
        This.hasPainted := True;
   end paint2;

   procedure paintThreed (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   function getValue (This : in out ProgressCanvas) return Float is
   begin
        return This.value;
   end getValue;

   procedure setText (This : in out ProgressCanvas; text : Unbounded_String) is
   begin
        This.text_Case := text;
   end setText;

   function getText (This : in out ProgressCanvas) return Unbounded_String is
   begin
        return This.text_Case;
   end getText;

   procedure setBackground (This : in out ProgressCanvas; background : Boolean) is
   begin
        This.background := background;
   end setBackground;

   function isBackground (This : in out ProgressCanvas) return Boolean is
   begin
        return This.background;
   end isBackground;

end org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;


with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.CommandListener_Package_References;
with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with javax.microedition.lcdui.NullCommandListener_Package; use javax.microedition.lcdui.NullCommandListener_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.canvas.RunnableCanvas_Package_References;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package_References;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package; use org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package; use org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package_References;
with org.allbinary.thread.PathFindingThreadPool_Package; use org.allbinary.thread.PathFindingThreadPool_Package;
with org.allbinary.thread.ThreadPool_Package; use org.allbinary.thread.ThreadPool_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;

package body org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package NullCanvas_Package renames Standard.javax.microedition.lcdui.NullCanvas_Package;
   package NullCommandListener_Package renames Standard.javax.microedition.lcdui.NullCommandListener_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   subtype CommandListener_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access;
   function "=" (Left, Right : CommandListener_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
   subtype CommandListener_Access_Array_Access_Array_Access is javax.microedition.lcdui.CommandListener_Package_References.CommandListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandListener_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.CommandListener_Package_References."=";
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
   subtype Processor_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access;
   function "=" (Left, Right : Processor_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array;
   function "=" (Left, Right : Processor_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array;
   function "=" (Left, Right : Processor_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype Processor_Access_Array_Access_Array_Access is org.allbinary.canvas.Processor_Package_References.Processor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Processor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.Processor_Package_References."=";
   subtype RunnableCanvas_Access is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access;
   function "=" (Left, Right : RunnableCanvas_Access) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   subtype RunnableCanvas_Access_Array is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array;
   function "=" (Left, Right : RunnableCanvas_Access_Array) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   subtype RunnableCanvas_Access_Array_Access is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array_Access;
   function "=" (Left, Right : RunnableCanvas_Access_Array_Access) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   subtype RunnableCanvas_Access_Array_Access_Array is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : RunnableCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   subtype RunnableCanvas_Access_Array_Access_Array_Access is org.allbinary.canvas.RunnableCanvas_Package_References.RunnableCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RunnableCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.canvas.RunnableCanvas_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   function "=" (Left, Right : MyFontProcessor_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype UpdateMyFontInterface_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access;
   function "=" (Left, Right : UpdateMyFontInterface_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array_Access_Array is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype UpdateMyFontInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.font.UpdateMyFontInterface_Package_References.UpdateMyFontInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpdateMyFontInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.UpdateMyFontInterface_Package_References."=";
   subtype ABCustomGaugeItem_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access;
   function "=" (Left, Right : ABCustomGaugeItem_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array_Access_Array is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access_Array;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype ABCustomGaugeItem_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References.ABCustomGaugeItem_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABCustomGaugeItem_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ABCustomGaugeItem_Package_References."=";
   subtype PaintableInterface_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access;
   function "=" (Left, Right : PaintableInterface_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array;
   function "=" (Left, Right : PaintableInterface_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access_Array is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype PaintableInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.PaintableInterface_Package_References.PaintableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableInterface_Package_References."=";
   subtype AllBinaryMidlet_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access;
   function "=" (Left, Right : AllBinaryMidlet_Access) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array_Access) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array_Access_Array is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array_Access_Array) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype AllBinaryMidlet_Access_Array_Access_Array_Access is org.allbinary.midlet.AllBinaryMidlet_Package_References.AllBinaryMidlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryMidlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.midlet.AllBinaryMidlet_Package_References."=";
   subtype ProgressEndListener_Access is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access;
   function "=" (Left, Right : ProgressEndListener_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   subtype ProgressEndListener_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array;
   function "=" (Left, Right : ProgressEndListener_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   subtype ProgressEndListener_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array_Access;
   function "=" (Left, Right : ProgressEndListener_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   subtype ProgressEndListener_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array_Access_Array;
   function "=" (Left, Right : ProgressEndListener_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   subtype ProgressEndListener_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References.ProgressEndListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ProgressEndListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package_References."=";
   procedure Initialize_Fields (This : in out ProgressPaintable'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out ProgressPaintable'Class; progressCanvas_Var_Param : access ProgressCanvas_Package.ProgressCanvas'Class) is
      progressCanvas_Var : constant ProgressCanvas_Access := ProgressCanvas_Access (progressCanvas_Var_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
            This.progressCanvas_Var := progressCanvas_Var;
   end Initialize;

   function Create (progressCanvas_Var_Param : access ProgressCanvas_Package.ProgressCanvas'Class) return ProgressPaintable_Access is
      This : constant ProgressPaintable_Access := new ProgressPaintable;
   begin
      ProgressPaintable_Package.Initialize (This.all, progressCanvas_Var_Param);
      return This;
   end Create;
    
   procedure paint (This : in out ProgressPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
            This.progressCanvas_Var.paint2 (graphics);
   end paint;

end org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package;


