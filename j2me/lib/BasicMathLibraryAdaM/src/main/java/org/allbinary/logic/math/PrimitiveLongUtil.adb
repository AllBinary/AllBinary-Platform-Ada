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


package body org.allbinary.logic.math.PrimitiveLongUtil_Package is

   procedure Initialize_Fields (This : in out PrimitiveLongUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      
      
      
      This.currentTotalDigits := 0;
      This.primitiveLongSingleton := PrimitiveLongSingleton_Package.getInstance;
   end Initialize_Fields;


   function createPowerOfTen (powerOfTen : Integer) return PrimitiveLongUtil_Access is
      primitiveLongUtil : PrimitiveLongUtil_Access;
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
   begin
        primitiveLongUtil := PrimitiveLongUtil_Package.Create (powerOfTen, NullUtil_Package.getInstance.NULL_OBJECT);
        if ((powerOfTen) rem (10)) /= (0) then
            logUtil := LogUtil_Package.getInstance;
            commonStrings := CommonStrings_Package.getInstance;
            logUtil.put (commonStrings.EXCEPTION_Id, primitiveLongUtil, commonStrings.CONSTRUCTOR, Java_New_Exception ("Exception", To_Unbounded_String ("Max must be power of 10")));
        end if;
        return primitiveLongUtil;
   end createPowerOfTen;

   procedure Initialize (This : in out PrimitiveLongUtil'Class; powerOfTen : Integer; unused_Param : access Java_Object'Class) is
      unused : constant Java_Object_Access := Java_Object_Access (unused_Param);
   begin
      Initialize_Fields (This);
        This.maxDigits := MathUtil_Package.getInstance.getTotalDigits (powerOfTen);
        This.powerOfTen := powerOfTen;
        This.maxValue := (((powerOfTen) * (10))) - (1);
        This.charArray := new Character_Array'(0 .. (This.maxDigits) - 1 => ASCII.NUL);
   end Initialize;

   function Create (powerOfTen : Integer; unused_Param : access Java_Object'Class) return PrimitiveLongUtil_Access is
      This : constant PrimitiveLongUtil_Access := new PrimitiveLongUtil;
   begin
      PrimitiveLongUtil_Package.Initialize (This.all, powerOfTen, unused_Param);
      return This;
   end Create;

   function getCharArray (This : in out PrimitiveLongUtil; value : Integer) return Character_Array_Access is
      index : Integer;
      div : Integer;
      lastValue : Integer;
      digit : Integer;
   begin
        if (value) < (10) then
            This.setCurrentTotalDigits (1);
            return This.primitiveLongSingleton.NUMBER_CHAR_ARRAYS (value);
        end if;
        if (value) > (This.maxValue) then
            This.setCurrentTotalDigits (3);
            return This.primitiveLongSingleton.UNK;
        end if;
        index := 0;
        div := This.powerOfTen;
        lastValue := 0;
        while (div) >= (1) loop
            digit := (((value) - (lastValue))) / (div);
            if ((digit) >= (0)) and then ((digit) < (10)) then
                if ((digit) = (0)) and then ((index) = (0)) then
                    null;
                else
                    This.charArray (Java_Post_Increment (index)) := This.primitiveLongSingleton.NUMBER_CHAR_ARRAY (digit);
                end if;
                lastValue := (lastValue) + ((digit) * (div));
            end if;
            div := (div) / (10);
        end loop;
        This.setCurrentTotalDigits (index);
        return This.charArray;
   end getCharArray;

   procedure setCurrentTotalDigits (This : in out PrimitiveLongUtil; currentTotalDigits : Integer) is
   begin
        This.currentTotalDigits := currentTotalDigits;
   end setCurrentTotalDigits;

   function getCurrentTotalDigits (This : in out PrimitiveLongUtil) return Integer is
   begin
        return This.currentTotalDigits;
   end getCurrentTotalDigits;

   function getMaxDigits (This : in out PrimitiveLongUtil) return Integer is
   begin
        return This.maxDigits;
   end getMaxDigits;

   procedure createPowerOfTen (powerOfTen : Integer) is
      Java_Result : constant PrimitiveLongUtil_Access := createPowerOfTen (powerOfTen);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPowerOfTen;

   procedure getCharArray (This : in out PrimitiveLongUtil; value : Integer) is
      Java_Result : constant Character_Array_Access := PrimitiveLongUtil'Class (This).getCharArray (value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCharArray;

end org.allbinary.logic.math.PrimitiveLongUtil_Package;


