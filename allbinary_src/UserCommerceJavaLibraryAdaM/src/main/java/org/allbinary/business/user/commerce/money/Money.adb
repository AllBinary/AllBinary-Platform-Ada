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


package body org.allbinary.business.user.commerce.money.Money_Package is

   procedure Initialize_Fields (This : in out Money'Class) is
   begin
      null;
      
      This.DEFAULT_CURRENCY := To_Unbounded_String ("USD");
   end Initialize_Fields;


   procedure Initialize (This : in out Money'Class; money_Param : access Money_Package.Money'Class) is
      money : constant Money_Access := Money_Access (money_Param);
   begin
      Initialize_Fields (This);
        This.units := money.getUnits;
   end Initialize;

   function Create (money_Param : access Money_Package.Money'Class) return Money_Access is
      This : constant Money_Access := new Money;
   begin
      Money_Package.Initialize (This.all, money_Param);
      return This;
   end Create;

   procedure Initialize (This : in out Money'Class) is
   begin
      Initialize_Fields (This);
        This.units := 0;
   end Initialize;

   function Create return Money_Access is
      This : constant Money_Access := new Money;
   begin
      Money_Package.Initialize (This.all);
      return This;
   end Create;

   procedure Initialize (This : in out Money'Class; usDollarStr : Unbounded_String) is
   begin
      Initialize_Fields (This);
        if ((usDollarStr) /= (Null_Unbounded_String)) and then (StringValidationUtil_Package.getInstance.isNumber (usDollarStr)) then
            This.units := Money'Class (This).convertUsdToUnits (usDollarStr);
        end if;
   end Initialize;

   function Create (usDollarStr : Unbounded_String) return Money_Access is
      This : constant Money_Access := new Money;
   begin
      Money_Package.Initialize (This.all, usDollarStr);
      return This;
   end Create;

   procedure Initialize (This : in out Money'Class; units : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.units := units;
   end Initialize;

   function Create (units : Long_Long_Integer) return Money_Access is
      This : constant Money_Access := new Money;
   begin
      Money_Package.Initialize (This.all, units);
      return This;
   end Create;

   function isValid (This : in out Money) return Boolean is
   begin
        if (((This.units) /= (null)) and then ((This.units.longValue) > (0))) and then ((This.units.longValue) < (Long_Package.MAX_VALUE)) then
            return True;
        else
            return False;
        end if;
   end isValid;

   procedure add (This : in out Money; moreMoney_Param : access Money_Package.Money'Class) is
      moreMoney : constant Money_Access := Money_Access (moreMoney_Param);
   begin
        Money'Class (This).add (moreMoney.toString);
   end add;

   procedure add (This : in out Money; usDollarStr : Unbounded_String) is
   begin
        This.units := (This.units.longValue) + (Money'Class (This).convertUsdToUnits (usDollarStr));
   end add;

   procedure subtract (This : in out Money; usDollarStr : Unbounded_String) is
   begin
        This.units := (This.units.longValue) - (Money'Class (This).convertUsdToUnits (usDollarStr));
   end subtract;

   procedure multiply (This : in out Money; multiplier : Float) is
   begin
        This.units := (This.units.longValue) * (multiplier.floatValue).longValue;
   end multiply;

   procedure multiply (This : in out Money; multiplier : Integer) is
   begin
        This.units := (This.units.longValue) * (multiplier);
   end multiply;

   function convertUnitsTo (This : in out Money; currency : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      dollar : Long_Long_Integer;
      cents : Long_Long_Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        if (currency.compareTo (This.DEFAULT_CURRENCY)) = (0) then
            dollar := (This.units.longValue) / (100);
            cents := (This.units.longValue) - (((dollar) * (100)));
            stringBuffer.append (dollar.toString);
            stringBuffer.append (AbPathData_Package.getInstance.EXTENSION_SEP);
            if (cents) < (10) then
                stringBuffer.append (CommonPhoneStrings_Package.getInstance.ZERO);
            end if;
            stringBuffer.append (cents.toString);
        end if;
        return stringBuffer.toString;
   end convertUnitsTo;

   function convertUsdToUnits (This : in out Money; usDollarStr : Unbounded_String) return Long_Long_Integer is
      localUnit : Long_Long_Integer;
      index : Integer;
      stringUtil : StringUtil_Access;
      dollarStr : Unbounded_String;
      centsStr : Unbounded_String;
   begin
        localUnit := 0;
        index := (Index (usDollarStr, Java_Image (AbPathData_Package.getInstance.EXTENSION_SEP)) - 1);
        stringUtil := StringUtil_Package.getInstance;
        dollarStr := stringUtil.EMPTY_STRING;
        centsStr := stringUtil.EMPTY_STRING;
        if (index) < (1) then
            dollarStr := Java_New_String (usDollarStr);
            centsStr := To_Unbounded_String ("00");
        else
            dollarStr := Java_New_String (Unbounded_Slice (usDollarStr, (0) + 1, index));
            centsStr := Java_New_String (Unbounded_Slice (usDollarStr, ((index) + (1)) + 1, Length (usDollarStr)));
        end if;
        localUnit := (dollarStr.longValue) * (100).longValue;
        localUnit := (localUnit) + (centsStr.longValue);
        return localUnit;
   end convertUsdToUnits;

   function getUnits (This : in out Money) return Long_Long_Integer is
   begin
        return This.units.longValue;
   end getUnits;

   function getUnitsLong (This : in out Money) return Long_Long_Integer is
   begin
        return This.units;
   end getUnitsLong;

   function toString (This : in out Money) return Unbounded_String is
   begin
        return Java_New_String (Money'Class (This).convertUnitsTo (This.DEFAULT_CURRENCY));
   end toString;

   procedure convertUnitsTo (This : in out Money; currency : Unbounded_String) is
      Java_Result : constant Unbounded_String := Money'Class (This).convertUnitsTo (currency);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end convertUnitsTo;

   procedure convertUsdToUnits (This : in out Money; usDollarStr : Unbounded_String) is
      Java_Result : constant Long_Long_Integer := Money'Class (This).convertUsdToUnits (usDollarStr);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end convertUsdToUnits;

end org.allbinary.business.user.commerce.money.Money_Package;


