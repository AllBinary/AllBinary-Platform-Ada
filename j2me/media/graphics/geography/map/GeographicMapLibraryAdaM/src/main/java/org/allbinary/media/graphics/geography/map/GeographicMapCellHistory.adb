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


package body org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package is

   procedure Initialize_Fields (This : in out GeographicMapCellHistory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.booleanFactory := BooleanFactory_Package.getInstance;
      
      
      This.MISSED_INFO := To_Unbounded_String ("Missed");
      This.animation := TextAnimation_Package.Create (This.MISSED_INFO, AnimationBehavior_Package.getInstance);
      This.myFontProcessor := UpdateMyFontProcessor_Package.Create (GeographicMapCellHistory_Access'(This'Unchecked_Access));
      This.totalVisited := 0;
      This.halfWidth := 0;
      This.fontHeight := 0;
      This.RED := BasicColorFactory_Package.getInstance.RED.intValue;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellHistory'Class) is
   begin
      Initialize_Fields (This);
        This.list := BasicArrayListD_Package.Create;
        This.visitedList := BasicArrayListD_Package.Create;
        This.init;
   end Initialize;

   function Create return GeographicMapCellHistory_Access is
      This : constant GeographicMapCellHistory_Access := new GeographicMapCellHistory;
   begin
      GeographicMapCellHistory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out GeographicMapCellHistory; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   function getTotalVisited (This : in out GeographicMapCellHistory) return Integer is
   begin
        return This.totalVisited;
   end getTotalVisited;

   function getTotalNotVisited (This : in out GeographicMapCellHistory) return Integer is
   begin
        return (This.getSize) - (This.totalVisited);
   end getTotalNotVisited;

   function getSize (This : in out GeographicMapCellHistory) return Integer is
   begin
        return This.list.size;
   end getSize;

   procedure trackAll (This : in out GeographicMapCellHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        size := list.size;
        This.list.ensureCapacity (size);
        This.visitedList.ensureCapacity (size);
        geographicMapCellPosition := null;
        for index in 0 .. (size) - 1 loop
            geographicMapCellPosition := GeographicMapCellPosition_Access (list.get (index));
            This.track (geographicMapCellPosition);
        end loop;
   end trackAll;

   procedure track (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        if not (This.list.contains (geographicMapCellPosition)) then
            This.list.add (geographicMapCellPosition);
            This.visitedList.add (This.booleanFactory.FALSE);
        end if;
   end track;

   function getTracked (This : in out GeographicMapCellHistory) return BasicArrayList_Access is
   begin
        return This.list;
   end getTracked;

   function getVisited (This : in out GeographicMapCellHistory) return BasicArrayList_Access is
   begin
        return This.visitedList;
   end getVisited;

   function getAfterIfNotLast (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      localList : BasicArrayList_Access;
      index : Integer;
   begin
        localList := This.list;
        index := localList.indexOf (geographicMapCellPosition);
        if (localList.size) > ((index) + (1)) then
            return GeographicMapCellPosition_Access (localList.get ((index) + (1)));
        end if;
        return geographicMapCellPosition;
   end getAfterIfNotLast;

   function getFirstUnvisited (This : in out GeographicMapCellHistory) return GeographicMapCellPosition_Access is
      localList : BasicArrayList_Access;
      localVisitedList : BasicArrayList_Access;
      size : Integer;
      value : Boolean;
      index : Integer;
   begin
        localList := This.list;
        localVisitedList := This.visitedList;
        size := localVisitedList.size;
        value := null;
        for index in 0 .. (size) - 1 loop
            value := Boolean (This.visitedList.get (index));
            if (value) = (This.booleanFactory.FALSE) then
                return GeographicMapCellPosition_Access (localList.get (index));
            end if;
        end loop;
        return GeographicMapCellPosition_Access (localList.get (0));
   end getFirstUnvisited;

   function getFirstUnvisitedIndex (This : in out GeographicMapCellHistory) return Integer is
      localVisitedList : BasicArrayList_Access;
      size : Integer;
      value : Boolean;
      index : Integer;
   begin
        localVisitedList := This.visitedList;
        size := localVisitedList.size;
        value := null;
        for index in 0 .. (size) - 1 loop
            value := Boolean (This.visitedList.get (index));
            if (value) = (This.booleanFactory.FALSE) then
                return index;
            end if;
        end loop;
        return 0;
   end getFirstUnvisitedIndex;

   function getInPathButNotTracked (This : in out GeographicMapCellHistory; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      pathList : constant BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
      inPathButNotTrackedList : BasicArrayList_Access;
      localList : BasicArrayList_Access;
      size : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        inPathButNotTrackedList := BasicArrayListD_Package.Create;
        localList := This.list;
        size := pathList.size;
        geographicMapCellPosition := null;
        for index in 0 .. (size) - 1 loop
            geographicMapCellPosition := GeographicMapCellPosition_Access (pathList.get (index));
            if not (localList.contains (geographicMapCellPosition)) then
                inPathButNotTrackedList.add (geographicMapCellPosition);
            end if;
        end loop;
        return inPathButNotTrackedList;
   end getInPathButNotTracked;

   function isVisited (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      index : Integer;
      value : Boolean;
   begin
        index := This.list.indexOf (geographicMapCellPosition);
        if (index) /= (-(1)) then
            value := Boolean (This.visitedList.get (index));
            if (value) = (This.booleanFactory.TRUE) then
                return True;
            end if;
        else
            null;
        end if;
        return False;
   end isVisited;

   function visit (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      index : Integer;
      value : Boolean;
      TRUE : Boolean;
   begin
        index := This.list.indexOf (geographicMapCellPosition);
        value := null;
        if (index) /= (-(1)) then
            value := Boolean (This.visitedList.get (index));
            TRUE := This.booleanFactory.TRUE;
            if (value) /= (TRUE) then
                This.visitedList.set (index, TRUE);
                This.totalVisited := This.totalVisited + 1;
                return True;
            end if;
        else
            null;
        end if;
        return False;
   end visit;

   --  throws Exception
   function isAllVisited (This : in out GeographicMapCellHistory) return Boolean is
   begin
        if (This.totalVisited) = ((This.getSize) - (1)) then
            return True;
        else
            return False;
        end if;
   end isAllVisited;

   --  throws Exception
   function isAllVisited2 (This : in out GeographicMapCellHistory) return Boolean is
   begin
        if (This.totalVisited) = (This.getSize) then
            return True;
        else
            return False;
        end if;
   end isAllVisited2;

   --  throws Exception
   function isPortionVisited (This : in out GeographicMapCellHistory; basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) return Boolean is
      basicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (basicDecimal_Param);
      size : Integer;
      numberRequired : Integer;
      numberNotVisited : Integer;
   begin
        size := This.getSize;
        numberRequired := ((Java_Shift_Left (size, basicDecimal.getScaledFactor))) / (Integer (basicDecimal.getUnscaled));
        numberNotVisited := ((This.getSize) - (1)) - (This.totalVisited);
        if ((size) - (numberNotVisited)) > (numberRequired) then
            return True;
        else
            return False;
        end if;
   end isPortionVisited;

   --  throws Exception
   procedure reset (This : in out GeographicMapCellHistory) is
      localVisitedList : BasicArrayList_Access;
      localFalseBoolean : Boolean;
      size : Integer;
      index : Integer;
   begin
        localVisitedList := This.visitedList;
        localFalseBoolean := This.booleanFactory.FALSE;
        size := localVisitedList.size;
        for index in reverse 0 .. (size) - (1) loop
            localVisitedList.set (index, localFalseBoolean);
        end loop;
        This.totalVisited := 0;
   end reset;

   procedure paintNotVisitedRelativeToPoint (This : in out GeographicMapCellHistory; graphics_Param : access Graphics_Package.Graphics'Class; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; point_Param : access GPoint_Package.GPoint'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      tiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      x : Integer;
      y : Integer;
      height : Integer;
   begin
        x := (point.getX) - (tiledLayer.getXP);
        y := (point.getY) - (tiledLayer.getYP);
        if (This.halfWidth) = (0) then
            This.halfWidth := (Java_Shift_Right_Arithmetic (graphics.getFont.stringWidth (This.MISSED_INFO), 1));
        end if;
        height := (2) * (This.fontHeight);
        This.animation.paintXY (graphics, (x) + (This.halfWidth), (y) + ((height)));
   end paintNotVisitedRelativeToPoint;

   procedure paintNotVisited (This : in out GeographicMapCellHistory; graphics_Param : access Graphics_Package.Graphics'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      localVisitedList : BasicArrayList_Access;
      size : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      isCellVisitedBoolean : Boolean;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.myFontProcessor.process (graphics);
            graphics.setColor (This.RED);
            localVisitedList := This.visitedList;
            size := localVisitedList.size;
            geographicMapCellPosition := null;
            isCellVisitedBoolean := null;
            index := size;
            while (Java_Pre_Decrement (index)) >= (0) loop
                geographicMapCellPosition := GeographicMapCellPosition_Access (This.list.get (index));
                isCellVisitedBoolean := Boolean (localVisitedList.get (index));
                if not (isCellVisitedBoolean.booleanValue) then
                    This.paintNotVisitedRelativeToPoint (graphics, geographicMapInterface.getAllBinaryTiledLayer, geographicMapCellPosition.getPoint);
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, GeographicMapCellHistory_Access'(This'Unchecked_Access), To_Unbounded_String ("paintNotVisited"), e);
                end;
        end;
   end paintNotVisited;

   procedure init (This : in out GeographicMapCellHistory) is
   begin
        This.list.clear;
        This.visitedList.clear;
        This.totalVisited := 0;
   end init;

   procedure getAfterIfNotLast (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapCellHistory'Class (This).getAfterIfNotLast (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAfterIfNotLast;

   procedure getInPathButNotTracked (This : in out GeographicMapCellHistory; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := GeographicMapCellHistory'Class (This).getInPathButNotTracked (pathList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInPathButNotTracked;

   procedure isVisited (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := GeographicMapCellHistory'Class (This).isVisited (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isVisited;

   procedure visit (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := GeographicMapCellHistory'Class (This).visit (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure isPortionVisited (This : in out GeographicMapCellHistory; basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      Java_Result : constant Boolean := GeographicMapCellHistory'Class (This).isPortionVisited (basicDecimal_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPortionVisited;

begin
   null;
   NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY := new GeographicMapCellHistory_Access_Array'(0 .. (0) - 1 => null);

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;


