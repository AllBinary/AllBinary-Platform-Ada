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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.business.advertisement.GameAdStateFactory_Package; use org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.Processor_Package_References;
with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.graphics.CustomGPoint_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package; use org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package;
with org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package; use org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package GameAdStateFactory_Package renames Standard.org.allbinary.business.advertisement.GameAdStateFactory_Package;
   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
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
   subtype GameNotification_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access;
   function "=" (Left, Right : GameNotification_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array;
   function "=" (Left, Right : GameNotification_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access;
   function "=" (Left, Right : GameNotification_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotification_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotification_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype CustomGPoint_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access;
   function "=" (Left, Right : CustomGPoint_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array;
   function "=" (Left, Right : CustomGPoint_Access_Array) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
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
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   function "=" (Left, Right : CircularIndexUtil_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   procedure Initialize_Fields (This : in out PlayerGameNotificationHud'Class) is
   begin
      null;
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (0);
      
      This.gameNotification := GameNotification_Package.Create;
      This.permanentGameNotification := GameNotification_Package.Create;
      This.setAndRemoveProcessor_Var := Processor_Access (SetAndRemoveProcessor_Package.Create (PlayerGameNotificationHud_Access'(This'Unchecked_Access)));
      This.nextUnremoveableProcessor_Var := Processor_Access (NextUnremoveableProcessor_Package.Create (PlayerGameNotificationHud_Access'(This'Unchecked_Access)));
      This.processor := Processor_Package.getInstance;
      This.PERMANENT_GAME_NOTIFICATION := To_Unbounded_String ("Permanent Game Notification: ");
      This.lastString := StringUtil_Package.getInstance.EMPTY_STRING;
      This.string_Id := This.EMPTY_STRING;
      This.point := CustomGPoint_Access (CustomGPoint_Package.NULL_CUSTOM_POINT);
      This.width := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out PlayerGameNotificationHud'Class; location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      gameNotificationEventHandler : GameNotificationEventHandler_Access;
   begin
        GameNotificationHud_Package.Initialize (This, location, direction, bufferZone, basicColor);
        Initialize_Fields (This);
        This.circularIndexUtil := CircularIndexUtil_Package.createInstance (0);
        gameNotificationEventHandler := GameNotificationEventHandler_Package.getInstance;
        gameNotificationEventHandler.removeAllListeners;
        gameNotificationEventHandler.addListenerInterface (PlayerGameNotificationHud_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (location : Integer; direction : Integer; bufferZone : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) return PlayerGameNotificationHud_Access is
      This : constant PlayerGameNotificationHud_Access := new PlayerGameNotificationHud;
   begin
      PlayerGameNotificationHud_Package.Initialize (This.all, location, direction, bufferZone, basicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out PlayerGameNotificationHud; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            GameNotificationHud_Package.GameNotificationHud (This).updateMeasurement (graphics);
            font := graphics.getFont;
            This.width := font.stringWidth (This.string_Id);
            This.processor.process;
            This.processor := Processor_Package.getInstance;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, PlayerGameNotificationHud_Access'(This'Unchecked_Access), commonStrings.UPDATE, e);
                end;
        end;
   end updateMeasurement;

   function getPoint (This : in out PlayerGameNotificationHud; x : Integer; y : Integer) return GPoint_Access is
   begin
        This.point := CustomGPoint_Package.getInstance3 (0, 0);
        This.point.setX (x);
        This.point.setY (y);
        return GPoint_Access (This.point);
   end getPoint;

   procedure add (This : in out PlayerGameNotificationHud; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; permanent : Boolean) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        if permanent then
            if (This.lastString) /= (string_Id) then
                This.lastString := string_Id;
                This.logUtil.putF (StringMaker_Package.Create.append (This.PERMANENT_GAME_NOTIFICATION).append (string_Id).toString, PlayerGameNotificationHud_Access'(This'Unchecked_Access), This.commonStrings.ADD);
            end if;
            This.permanentGameNotification.add (string_Id, seconds, basicColor);
            This.circularIndexUtil.setSize (This.permanentGameNotification.getSize);
        else
            This.gameNotification.add (string_Id, seconds, basicColor);
        end if;
   end add;

   --  throws Exception
   procedure processTick (This : in out PlayerGameNotificationHud) is
      gameAdState : GameAdState_Access;
   begin
        if This.timeDelayHelper.isTime (This.gameTickTimeDelayHelper.startTime) then
            gameAdState := GameAdStateFactory_Package.getInstance.getCurrentInstance;
            if gameAdState.isShowingAtLocation (PlayerGameNotificationHud'Class (This).getLocation) then
                This.offsetY := -(54);
            else
                This.offsetY := 0;
            end if;
            if (This.gameNotification.getSize) > (0) then
                PlayerGameNotificationHud'Class (This).setAndRemove;
            elsif (This.permanentGameNotification.getSize) > (0) then
                PlayerGameNotificationHud'Class (This).setNextUnremoveable;
            else
                This.string_Id := This.EMPTY_STRING;
            end if;
        end if;
   end processTick;

   --  throws Exception
   procedure setAndRemove (This : in out PlayerGameNotificationHud) is
   begin
        This.string_Id := Java_Unbox (This.gameNotification.stringList.removeAt (0));
        This.processor := This.setAndRemoveProcessor_Var;
   end setAndRemove;

   --  throws Exception
   procedure setAndRemoveProcess (This : in out PlayerGameNotificationHud) is
      time : Integer;
      iTime : Integer;
   begin
        PlayerGameNotificationHud'Class (This).setX (Java_Shift_Right_Arithmetic (((This.displayInfo.getLastWidth) - (This.width)), 1));
        This.point.setX (PlayerGameNotificationHud'Class (This).getX);
        This.point.setY (PlayerGameNotificationHud'Class (This).getY);
        time := Java_Unbox_Integer (This.gameNotification.timeList.removeAt (0));
        iTime := (Integer (time)) * (1000);
        if (iTime) = (0) then
            iTime := 500;
        end if;
        This.timeDelayHelper.delay_Id := iTime;
        PlayerGameNotificationHud'Class (This).setBasicColorP (BasicColor_Access (This.gameNotification.colorList.removeAt (0)));
   end setAndRemoveProcess;

   --  throws Exception
   procedure setNextUnremoveable (This : in out PlayerGameNotificationHud) is
      index : Integer;
   begin
        index := This.circularIndexUtil.getIndex;
        This.string_Id := Java_Unbox (This.permanentGameNotification.stringList.objectArray (index));
        This.processor := This.nextUnremoveableProcessor_Var;
   end setNextUnremoveable;

   --  throws Exception
   procedure setNextUnremoveableProcess (This : in out PlayerGameNotificationHud) is
      index : Integer;
      time : Integer;
   begin
        index := This.circularIndexUtil.getIndex;
        PlayerGameNotificationHud'Class (This).setX (Java_Shift_Right_Arithmetic (((This.displayInfo.getLastWidth) - (This.width)), 1));
        This.point.setX (PlayerGameNotificationHud'Class (This).getX);
        This.point.setY (PlayerGameNotificationHud'Class (This).getY);
        time := Java_Unbox_Integer (This.permanentGameNotification.timeList.objectArray (index));
        This.timeDelayHelper.delay_Id := (Integer (time)) * (1000);
        PlayerGameNotificationHud'Class (This).setBasicColorP (BasicColor_Access (This.permanentGameNotification.colorList.objectArray (index)));
        declare Java_Result renames This.circularIndexUtil.next; pragma Unreferenced (Java_Result); begin null; end;
   end setNextUnremoveableProcess;

   procedure clear (This : in out PlayerGameNotificationHud) is
   begin
        This.gameNotification.clear;
        This.permanentGameNotification.clear;
   end clear;

   procedure paint (This : in out PlayerGameNotificationHud; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        GameNotificationHud_Package.GameNotificationHud (This).paintString (graphics, This.string_Id);
   end paint;

   procedure getPoint (This : in out PlayerGameNotificationHud; x : Integer; y : Integer) is
      Java_Result : constant GPoint_Access := PlayerGameNotificationHud'Class (This).getPoint (x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoint;

end org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package;


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.business.advertisement.GameAdStateFactory_Package; use org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.graphics.CustomGPoint_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package;
with org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References;
with org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package; use org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package GameAdStateFactory_Package renames Standard.org.allbinary.business.advertisement.GameAdStateFactory_Package;
   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
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
   subtype GameNotification_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access;
   function "=" (Left, Right : GameNotification_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array;
   function "=" (Left, Right : GameNotification_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access;
   function "=" (Left, Right : GameNotification_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotification_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotification_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotificationHud_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access;
   function "=" (Left, Right : GameNotificationHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array;
   function "=" (Left, Right : GameNotificationHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype CustomGPoint_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access;
   function "=" (Left, Right : CustomGPoint_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array;
   function "=" (Left, Right : CustomGPoint_Access_Array) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
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
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
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
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   function "=" (Left, Right : CircularIndexUtil_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype PlayerGameNotificationHud_Access is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access;
   function "=" (Left, Right : PlayerGameNotificationHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   subtype PlayerGameNotificationHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access_Array;
   function "=" (Left, Right : PlayerGameNotificationHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   subtype PlayerGameNotificationHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access_Array_Access;
   function "=" (Left, Right : PlayerGameNotificationHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   subtype PlayerGameNotificationHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameNotificationHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   subtype PlayerGameNotificationHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameNotificationHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   procedure Initialize_Fields (This : in out SetAndRemoveProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out SetAndRemoveProcessor'Class; updateMeasurementProcessor_Param : access PlayerGameNotificationHud_Package.PlayerGameNotificationHud'Class) is
      updateMeasurementProcessor : constant PlayerGameNotificationHud_Access := PlayerGameNotificationHud_Access (updateMeasurementProcessor_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
            This.updateMeasurementProcessor := updateMeasurementProcessor;
   end Initialize;

   function Create (updateMeasurementProcessor_Param : access PlayerGameNotificationHud_Package.PlayerGameNotificationHud'Class) return SetAndRemoveProcessor_Access is
      This : constant SetAndRemoveProcessor_Access := new SetAndRemoveProcessor;
   begin
      SetAndRemoveProcessor_Package.Initialize (This.all, updateMeasurementProcessor_Param);
      return This;
   end Create;
    
   --  throws Exception
   procedure process (This : in out SetAndRemoveProcessor) is
   begin
            This.updateMeasurementProcessor.setAndRemoveProcess;
   end process;

end org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package;


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.business.advertisement.GameAdStateFactory_Package; use org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package;
with org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.graphics.CustomGPoint_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package; use org.allbinary.time.GameTickTimeDelayHelper_Package;
with org.allbinary.time.GameTickTimeDelayHelper_Package_References;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.CircularIndexUtil_Package; use org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package_References;
with org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package; use org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package;
with org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References;
with org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package; use org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package;
with org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package GameAdStateFactory_Package renames Standard.org.allbinary.business.advertisement.GameAdStateFactory_Package;
   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
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
   subtype GameNotification_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access;
   function "=" (Left, Right : GameNotification_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array;
   function "=" (Left, Right : GameNotification_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access;
   function "=" (Left, Right : GameNotification_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotification_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotification_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References.GameNotification_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotification_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotification_Package_References."=";
   subtype GameNotificationHud_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access;
   function "=" (Left, Right : GameNotificationHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array;
   function "=" (Left, Right : GameNotificationHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype GameNotificationHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References.GameNotificationHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameNotificationHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud_Package_References."=";
   subtype CustomGPoint_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access;
   function "=" (Left, Right : CustomGPoint_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array;
   function "=" (Left, Right : CustomGPoint_Access_Array) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access_Array is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype CustomGPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.CustomGPoint_Package_References.CustomGPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomGPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.CustomGPoint_Package_References."=";
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
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
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
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
   subtype GameTickTimeDelayHelper_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype GameTickTimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.GameTickTimeDelayHelper_Package_References.GameTickTimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameTickTimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.GameTickTimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype CircularIndexUtil_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access;
   function "=" (Left, Right : CircularIndexUtil_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype CircularIndexUtil_Access_Array_Access_Array_Access is org.allbinary.util.CircularIndexUtil_Package_References.CircularIndexUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CircularIndexUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.CircularIndexUtil_Package_References."=";
   subtype PlayerGameNotificationHud_Access is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access;
   function "=" (Left, Right : PlayerGameNotificationHud_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   subtype PlayerGameNotificationHud_Access_Array is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access_Array;
   function "=" (Left, Right : PlayerGameNotificationHud_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   subtype PlayerGameNotificationHud_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access_Array_Access;
   function "=" (Left, Right : PlayerGameNotificationHud_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   subtype PlayerGameNotificationHud_Access_Array_Access_Array is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameNotificationHud_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   subtype PlayerGameNotificationHud_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References.PlayerGameNotificationHud_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameNotificationHud_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package_References."=";
   procedure Initialize_Fields (This : in out NextUnremoveableProcessor'Class) is
   begin
      null;
      
   end Initialize_Fields;

    
   procedure Initialize (This : in out NextUnremoveableProcessor'Class; updateMeasurementProcessor_Param : access PlayerGameNotificationHud_Package.PlayerGameNotificationHud'Class) is
      updateMeasurementProcessor : constant PlayerGameNotificationHud_Access := PlayerGameNotificationHud_Access (updateMeasurementProcessor_Param);
   begin
      Processor_Package.Initialize (This);
      Initialize_Fields (This);
            This.updateMeasurementProcessor := updateMeasurementProcessor;
   end Initialize;

   function Create (updateMeasurementProcessor_Param : access PlayerGameNotificationHud_Package.PlayerGameNotificationHud'Class) return NextUnremoveableProcessor_Access is
      This : constant NextUnremoveableProcessor_Access := new NextUnremoveableProcessor;
   begin
      NextUnremoveableProcessor_Package.Initialize (This.all, updateMeasurementProcessor_Param);
      return This;
   end Create;
    
   --  throws Exception
   procedure process (This : in out NextUnremoveableProcessor) is
   begin
            This.updateMeasurementProcessor.setNextUnremoveableProcess;
   end process;

end org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package;


