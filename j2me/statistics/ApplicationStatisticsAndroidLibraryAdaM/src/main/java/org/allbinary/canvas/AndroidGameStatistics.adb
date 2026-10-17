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


package body org.allbinary.canvas.AndroidGameStatistics_Package is

   procedure Initialize_Fields (This : in out AndroidGameStatistics'Class) is
   begin
      null;
      This.view := BaseViewWrapper_Package.NULL_VIEW_WRAPPER;
      This.totalOnDraws := 0;
      This.ANDROID_STRING_ARRAY := new Unbounded_String_Array'(0 .. (14) - 1 => Null_Unbounded_String);
      This.TOTAL_ONDRAWS := To_Unbounded_String (" Total onDraws: ");
      This.ONDRAWS_RATE := To_Unbounded_String (" onDraws(/10) Sec: ");
   end Initialize_Fields;


   procedure Initialize (This : in out AndroidGameStatistics'Class) is
      stringUtil : StringUtil_Access;
      index : Integer;
   begin
      BaseGameStatistics_Package.Initialize (This);
      Initialize_Fields (This);
        stringUtil := StringUtil_Package.getInstance;
        for index in 0 .. (This.ANDROID_STRING_ARRAY'Length) - 1 loop
            This.ANDROID_STRING_ARRAY (index) := stringUtil.EMPTY_STRING;
        end loop;
   end Initialize;

   function Create return AndroidGameStatistics_Access is
      This : constant AndroidGameStatistics_Access := new AndroidGameStatistics;
   begin
      AndroidGameStatistics_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initView (This : in out AndroidGameStatistics; view_Param : access View_Package.View'Class) is
      view : constant View_Access := View_Access (view_Param);
   begin
        BaseGameStatistics (This).init;
        This.view := ViewWrapper_Package.Create (view);
        This.totalOnDraws := 0;
   end initView;

   procedure process (This : in out AndroidGameStatistics) is
   begin
        This.view.postInvalidate;
   end process;

   procedure nextOnDraw (This : in out AndroidGameStatistics) is
   begin
        This.totalOnDraws := This.totalOnDraws + 1;
   end nextOnDraw;

   function toStringArray (This : in out AndroidGameStatistics) return Unbounded_String_Array_Access is
      stringArray : Unbounded_String_Array_Access;
      index : Integer;
      totalTime : Long_Long_Integer;
   begin
        stringArray := BaseGameStatistics (This).toStringArray;
        for index in 0 .. (stringArray'Length) - 1 loop
            This.ANDROID_STRING_ARRAY (index) := stringArray (index);
        end loop;
        totalTime := This.getTimeDelayHelper.getElapsed (This.gameTickTimeDelayHelper.startTime);
        totalTime := ((totalTime) / (10000));
        This.ANDROID_STRING_ARRAY (10) := This.TOTAL_ONDRAWS;
        This.ANDROID_STRING_ARRAY (11) := To_Unbounded_String (Java_Image (This.totalOnDraws));
        This.ANDROID_STRING_ARRAY (12) := This.ONDRAWS_RATE;
        This.ANDROID_STRING_ARRAY (13) := To_Unbounded_String (Java_Image ((This.totalOnDraws) / (totalTime)));
        return This.ANDROID_STRING_ARRAY;
   end toStringArray;

   function toString (This : in out AndroidGameStatistics) return Unbounded_String is
      totalTime : Long_Long_Integer;
      stringBuffer : StringMaker_Access;
      drawsOverTime : Unbounded_String;
   begin
        totalTime := This.getTimeDelayHelper.getElapsed (This.gameTickTimeDelayHelper.startTime);
        totalTime := ((totalTime) / (1000));
        if (totalTime) > (0) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (BaseGameStatistics (This).toStringAt (totalTime));
            if (This.totalOnDraws) > (0) then
                stringBuffer.append (This.TOTAL_ONDRAWS);
                stringBuffer.append (To_Unbounded_String (Java_Image (This.totalOnDraws)));
                stringBuffer.append (This.ONDRAWS_RATE);
                drawsOverTime := To_Unbounded_String (Java_Image ((This.totalOnDraws) / (totalTime)));
                stringBuffer.append (drawsOverTime);
            end if;
            return stringBuffer.toString;
        else
            return This.NOT_Id;
        end if;
   end toString;

end org.allbinary.canvas.AndroidGameStatistics_Package;


