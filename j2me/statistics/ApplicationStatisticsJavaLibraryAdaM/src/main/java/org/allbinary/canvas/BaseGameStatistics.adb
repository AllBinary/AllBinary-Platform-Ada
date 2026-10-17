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


package body org.allbinary.canvas.BaseGameStatistics_Package is

   procedure Initialize_Fields (This : in out BaseGameStatistics'Class) is
   begin
      null;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (Integer_Package.MAX_VALUE);
      This.updateDelayHelper := TimeDelayHelper_Package.Create (2000);
      This.totalRefreshes := 0;
      This.totalFrames := 0;
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
      This.DEFAULT_SCALE_FACTOR := ScaleFactorFactory_Package.getInstance.DEFAULT_SCALE_FACTOR;
      This.NOT_Id := To_Unbounded_String ("Not enough Time to Calculate");
      This.EMPTY_STRING := StringUtil_Package.getInstance.EMPTY_STRING;
      This.STRING_ARRAY := new Unbounded_String_Array'(To_Unbounded_String (" Total Time: "), This.EMPTY_STRING, To_Unbounded_String (" Total Frames: "), This.EMPTY_STRING, To_Unbounded_String (" Frames/10 Sec: "), This.EMPTY_STRING, To_Unbounded_String (" Total Paints: "), This.EMPTY_STRING, To_Unbounded_String (" Paints/10 Sec: "), This.EMPTY_STRING);
      This.SPACE_CHAR := ' ';
      This.PLUS_CHAR := '+';
      This.X_CHAR := 'X';
      This.CHAR_ARRAY := new Character_Array_Access_Array'(new Character_Array'('F', 'r', 'a', 'm', 'e', 's', '/', '1', '0', ' ', 'S', 'e', 'c', ':'), new Character_Array'('X', 'X'), new Character_Array'('P', 'a', 'i', 'n', 't', 's', '/', '1', '0', ' ', 'S', 'e', 'c', ':'), new Character_Array'('X', 'X'));
      This.primitiveLongSingleton := PrimitiveLongSingleton_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out BaseGameStatistics'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BaseGameStatistics_Access is
      This : constant BaseGameStatistics_Access := new BaseGameStatistics;
   begin
      BaseGameStatistics_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out BaseGameStatistics) is
   begin
        This.timeDelayHelper.setStartTimeTNT;
        This.totalRefreshes := 0;
        This.totalFrames := 0;
   end init;

   procedure add (This : in out BaseGameStatistics; string_Id : Unbounded_String) is
   begin
        null;
   end add;

   procedure process (This : in out BaseGameStatistics) is
   begin
        null;
   end process;

   procedure nextFrame (This : in out BaseGameStatistics) is
   begin
        This.totalFrames := This.totalFrames + 1;
   end nextFrame;

   procedure nextRefresh (This : in out BaseGameStatistics) is
   begin
        This.totalRefreshes := This.totalRefreshes + 1;
   end nextRefresh;

   function getRefreshRate (This : in out BaseGameStatistics) return Short_Integer is
      elapsed : Long_Long_Integer;
      time : Short_Integer;
   begin
        elapsed := This.timeDelayHelper.getElapsed (This.gameTickTimeDelayHelper.startTime);
        if (elapsed) > (1) then
            time := Short_Integer (((This.totalRefreshes) / ((Java_Shift_Right_Arithmetic (elapsed, This.DEFAULT_SCALE_FACTOR)))));
            return time;
        else
            return 0;
        end if;
   end getRefreshRate;

   function getTimeDelayHelper (This : in out BaseGameStatistics) return TimeDelayHelper_Access is
   begin
        return This.timeDelayHelper;
   end getTimeDelayHelper;

   function to2DCharArray (This : in out BaseGameStatistics) return Character_Array_Access_Array_Access is
      totalTime : Long_Long_Integer;
      framesPerSec : Integer;
      tens : Integer;
      removeTens : Integer;
      refreshesPerSec : Integer;
   begin
        totalTime := This.timeDelayHelper.getElapsed (This.gameTickTimeDelayHelper.startTime);
        totalTime := (Java_Shift_Right_Arithmetic (totalTime, This.DEFAULT_SCALE_FACTOR));
        if ((totalTime) > (0)) and then (This.updateDelayHelper.isTime (This.gameTickTimeDelayHelper.startTime)) then
            framesPerSec := Integer (((This.totalFrames) / (totalTime)));
            if (framesPerSec) < (10) then
                This.CHAR_ARRAY (1) (0) := This.SPACE_CHAR;
                This.CHAR_ARRAY (1) (1) := This.primitiveLongSingleton.NUMBER_CHAR_ARRAY (framesPerSec);
            elsif (framesPerSec) < (100) then
                tens := (framesPerSec) / (10);
                removeTens := (tens) * (10);
                This.CHAR_ARRAY (1) (0) := This.primitiveLongSingleton.NUMBER_CHAR_ARRAY (tens);
                This.CHAR_ARRAY (1) (1) := This.primitiveLongSingleton.NUMBER_CHAR_ARRAY ((framesPerSec) - (removeTens));
            else
                This.CHAR_ARRAY (1) (0) := This.PLUS_CHAR;
                This.CHAR_ARRAY (1) (1) := This.PLUS_CHAR;
            end if;
            refreshesPerSec := Integer (((This.totalRefreshes) / (totalTime)));
            if (refreshesPerSec) < (10) then
                This.CHAR_ARRAY (3) (0) := This.X_CHAR;
                This.CHAR_ARRAY (3) (1) := This.primitiveLongSingleton.NUMBER_CHAR_ARRAY (refreshesPerSec);
            elsif (refreshesPerSec) < (100) then
                tens := (refreshesPerSec) / (10);
                removeTens := (tens) * (10);
                This.CHAR_ARRAY (3) (0) := This.primitiveLongSingleton.NUMBER_CHAR_ARRAY ((refreshesPerSec) / (10));
                This.CHAR_ARRAY (3) (1) := This.primitiveLongSingleton.NUMBER_CHAR_ARRAY ((refreshesPerSec) - (removeTens));
            else
                This.CHAR_ARRAY (3) (0) := This.PLUS_CHAR;
                This.CHAR_ARRAY (3) (1) := This.PLUS_CHAR;
            end if;
        end if;
        return This.CHAR_ARRAY;
   end to2DCharArray;

   function toStringArray (This : in out BaseGameStatistics) return Unbounded_String_Array_Access is
      totalTime : Long_Long_Integer;
      string_Id : Unbounded_String;
   begin
        totalTime := This.timeDelayHelper.getElapsed (This.gameTickTimeDelayHelper.startTime);
        totalTime := ((totalTime) / (10000));
        if (totalTime) > (0) then
            This.STRING_ARRAY (1) := To_Unbounded_String (Java_Image (totalTime));
            This.STRING_ARRAY (3) := To_Unbounded_String (Java_Image (This.totalFrames));
            This.STRING_ARRAY (5) := To_Unbounded_String (Java_Image ((This.totalFrames) / (totalTime)));
            This.STRING_ARRAY (7) := To_Unbounded_String (Java_Image (This.totalRefreshes));
            This.STRING_ARRAY (9) := To_Unbounded_String (Java_Image ((This.totalRefreshes) / (totalTime)));
        else
            string_Id := This.EMPTY_STRING;
            This.STRING_ARRAY (1) := string_Id;
            This.STRING_ARRAY (3) := string_Id;
            This.STRING_ARRAY (5) := string_Id;
            This.STRING_ARRAY (7) := string_Id;
            This.STRING_ARRAY (9) := string_Id;
        end if;
        return This.STRING_ARRAY;
   end toStringArray;

   function toStringAt (This : in out BaseGameStatistics; totalTime : Long_Long_Integer) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.STRING_ARRAY (0));
        stringBuffer.appendlong (totalTime);
        stringBuffer.append (This.STRING_ARRAY (2));
        stringBuffer.appendlong (This.totalFrames);
        stringBuffer.append (This.STRING_ARRAY (4));
        stringBuffer.appendlong ((This.totalFrames) / (totalTime));
        if (This.totalRefreshes) > (0) then
            stringBuffer.append (This.STRING_ARRAY (6));
            stringBuffer.appendlong (This.totalRefreshes);
            stringBuffer.append (This.STRING_ARRAY (8));
            stringBuffer.appendlong ((This.totalRefreshes) / (totalTime));
            stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        end if;
        return stringBuffer.toString;
   end toStringAt;

   function toString (This : in out BaseGameStatistics) return Unbounded_String is
      totalTime : Long_Long_Integer;
   begin
        totalTime := This.timeDelayHelper.getElapsed (This.gameTickTimeDelayHelper.startTime);
        totalTime := ((totalTime) / (1000));
        if (totalTime) > (0) then
            return This.toStringAt (totalTime);
        else
            return This.NOT_Id;
        end if;
   end toString;

   procedure toStringAt (This : in out BaseGameStatistics; totalTime : Long_Long_Integer) is
      Java_Result : constant Unbounded_String := BaseGameStatistics'Class (This).toStringAt (totalTime);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toStringAt;

end org.allbinary.canvas.BaseGameStatistics_Package;


