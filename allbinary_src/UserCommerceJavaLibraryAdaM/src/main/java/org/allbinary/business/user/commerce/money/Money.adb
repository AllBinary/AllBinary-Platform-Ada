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


with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;

package body org.allbinary.business.user.commerce.money.Money_Package is

   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   procedure Initialize_Fields (This : in out Money'Class) is
   begin
      null;
      
      This.DEFAULT_CURRENCY := To_Unbounded_String ("USD");
   end Initialize_Fields;


   procedure Initialize (This : in out Money'Class; money_Var_Param : access Money_Package.Money'Class) is
      money_Var : constant Money_Access := Money_Access (money_Var_Param);
   begin
      Initialize_Fields (This);
        This.units := money_Var.getUnits;
   end Initialize;

   function Create (money_Var_Param : access Money_Package.Money'Class) return Money_Access is
      This : constant Money_Access := new Money;
   begin
      Money_Package.Initialize (This.all, money_Var_Param);
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
        if (((This.units) /= (0)) and then ((Long_Long_Integer (This.units)) > (0))) and then ((Long_Long_Integer (This.units)) < (Long_Long_Integer'Last)) then
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
        This.units := (Long_Long_Integer (This.units)) + (Money'Class (This).convertUsdToUnits (usDollarStr));
   end add;

   procedure subtract (This : in out Money; usDollarStr : Unbounded_String) is
   begin
        This.units := (Long_Long_Integer (This.units)) - (Money'Class (This).convertUsdToUnits (usDollarStr));
   end subtract;

   procedure multiply (This : in out Money; multiplier : Float) is
   begin
        This.units := (Float (Long_Long_Integer (This.units))) * (Float (multiplier)).longValue;
   end multiply;

   procedure multiply (This : in out Money; multiplier : Integer) is
   begin
        This.units := (Long_Long_Integer (This.units)) * (Long_Long_Integer (multiplier));
   end multiply;

   function convertUnitsTo (This : in out Money; currency : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      dollar : Long_Long_Integer;
      cents : Long_Long_Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        if (Java_Compare_To (currency, This.DEFAULT_CURRENCY)) = (0) then
            dollar := (Long_Long_Integer (This.units)) / (100);
            cents := (Long_Long_Integer (This.units)) - (((dollar) * (100)));
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
        index := Java_Index_Of (usDollarStr, Java_Image (AbPathData_Package.getInstance.EXTENSION_SEP));
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
        return Long_Long_Integer (This.units);
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
      Java_Result : constant Unbounded_String := Money'Class (This).convertUnitsTo (currency => currency);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end convertUnitsTo;

   procedure convertUsdToUnits (This : in out Money; usDollarStr : Unbounded_String) is
      Java_Result : constant Long_Long_Integer := Money'Class (This).convertUsdToUnits (usDollarStr => usDollarStr);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end convertUsdToUnits;

end org.allbinary.business.user.commerce.money.Money_Package;


