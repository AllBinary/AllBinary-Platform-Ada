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


package body org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package is

   procedure Initialize_Fields (This : in out PlayerGameNotificationHud'Class) is
   begin
      null;
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (0);
      
      This.gameNotification := GameNotification_Package.Create;
      This.permanentGameNotification := GameNotification_Package.Create;
      This.setAndRemoveProcessor := SetAndRemoveProcessor_Package.Create (PlayerGameNotificationHud_Access'(This'Unchecked_Access));
      This.nextUnremoveableProcessor := NextUnremoveableProcessor_Package.Create (PlayerGameNotificationHud_Access'(This'Unchecked_Access));
      This.processor := Processor_Package.getInstance;
      This.PERMANENT_GAME_NOTIFICATION := To_Unbounded_String ("Permanent Game Notification: ");
      This.lastString := StringUtil_Package.getInstance.EMPTY_STRING;
      This.string_Id := This.EMPTY_STRING;
      This.point := CustomGPoint_Package.NULL_CUSTOM_POINT;
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
            GameNotificationHud (This).updateMeasurement (graphics);
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
        return This.point;
   end getPoint;

   procedure add (This : in out PlayerGameNotificationHud; string_Id : Unbounded_String; seconds : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class; permanent : Boolean) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        if permanent.booleanValue then
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
            if gameAdState.isShowingAtLocation (This.getLocation) then
                This.offsetY := -(54);
            else
                This.offsetY := 0;
            end if;
            if (This.gameNotification.getSize) > (0) then
                This.setAndRemove;
            elsif (This.permanentGameNotification.getSize) > (0) then
                This.setNextUnremoveable;
            else
                This.string_Id := This.EMPTY_STRING;
            end if;
        end if;
   end processTick;

   --  throws Exception
   procedure setAndRemove (This : in out PlayerGameNotificationHud) is
   begin
        This.string_Id := Unbounded_String (This.gameNotification.stringList.removeAt (0));
        This.processor := This.setAndRemoveProcessor;
   end setAndRemove;

   --  throws Exception
   procedure setAndRemoveProcess (This : in out PlayerGameNotificationHud) is
      time : Integer;
      iTime : Integer;
   begin
        This.setX (Java_Shift_Right_Arithmetic (((This.displayInfo.getLastWidth) - (This.width)), 1));
        This.point.setX (This.getX);
        This.point.setY (This.getY);
        time := Integer (This.gameNotification.timeList.removeAt (0));
        iTime := (time.intValue) * (1000);
        if (iTime) = (0) then
            iTime := 500;
        end if;
        This.timeDelayHelper.delay_Id := iTime;
        This.setBasicColorP (BasicColor_Access (This.gameNotification.colorList.removeAt (0)));
   end setAndRemoveProcess;

   --  throws Exception
   procedure setNextUnremoveable (This : in out PlayerGameNotificationHud) is
      index : Integer;
   begin
        index := This.circularIndexUtil.getIndex;
        This.string_Id := Unbounded_String (This.permanentGameNotification.stringList.objectArray (index));
        This.processor := This.nextUnremoveableProcessor;
   end setNextUnremoveable;

   --  throws Exception
   procedure setNextUnremoveableProcess (This : in out PlayerGameNotificationHud) is
      index : Integer;
      time : Integer;
   begin
        index := This.circularIndexUtil.getIndex;
        This.setX (Java_Shift_Right_Arithmetic (((This.displayInfo.getLastWidth) - (This.width)), 1));
        This.point.setX (This.getX);
        This.point.setY (This.getY);
        time := Integer (This.permanentGameNotification.timeList.objectArray (index));
        This.timeDelayHelper.delay_Id := (time.intValue) * (1000);
        This.setBasicColorP (BasicColor_Access (This.permanentGameNotification.colorList.objectArray (index)));
        This.circularIndexUtil.next;
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
        GameNotificationHud (This).paintString (graphics, This.string_Id);
   end paint;

   procedure getPoint (This : in out PlayerGameNotificationHud; x : Integer; y : Integer) is
      Java_Result : constant GPoint_Access := PlayerGameNotificationHud'Class (This).getPoint (x, y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoint;

end org.allbinary.game.ag.layer.hud.basic.PlayerGameNotificationHud_Package;


package body org.allbinary.game.ag.layer.hud.basic.SetAndRemoveProcessor_Package is

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


package body org.allbinary.game.ag.layer.hud.basic.NextUnremoveableProcessor_Package is

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


