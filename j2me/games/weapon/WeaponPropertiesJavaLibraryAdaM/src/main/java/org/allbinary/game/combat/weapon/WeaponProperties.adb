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


with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package body org.allbinary.game.combat.weapon.WeaponProperties_Package is

   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out WeaponProperties'Class) is
   begin
      null;
      This.reloadTime := 0;
      This.targetingTime := 0;
      This.speed := BasicDecimal_Package.ZERO_BIGDECIMAL;
      This.MAX := 10240;
      This.ZERO := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out WeaponProperties'Class; reloadTime : Long_Long_Integer; targetingTime : Long_Long_Integer; speed : Long_Long_Integer; damage : Integer; dissipation : Short_Integer) is
      MESSAGE : Unbounded_String;
      commonStrings : CommonStrings_Access;
      unscaledDamage : Long_Long_Integer;
      scaledDissipation : Integer;
      value : Long_Long_Integer;
   begin
      SimpleWeaponProperties_Package.Initialize (This);
      Initialize_Fields (This);
        if (((speed) < (This.MAX)) and then ((speed) /= (0))) and then (not (WeaponProperties_Package.messageSent)) then
            MESSAGE := To_Unbounded_String ("Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ");
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.put (StringMaker_Package.Create.append (MESSAGE).appendlong (speed).toString, WeaponProperties_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR);
            WeaponProperties_Package.messageSent := True;
        end if;
        WeaponProperties'Class (This).setReloadTime (reloadTime);
        WeaponProperties'Class (This).setTargetingTime (targetingTime);
        WeaponProperties'Class (This).setDamage (damage);
        WeaponProperties'Class (This).setDissipation (dissipation);
        WeaponProperties'Class (This).setSpeed (BasicDecimal_Package.Create (speed));
        if (dissipation) /= (This.ZERO) then
            unscaledDamage := (This.speed.getUnscaled) * (damage);
            scaledDissipation := (dissipation) * (This.speed.getScaledFactorValue);
            value := ((unscaledDamage) / (Long_Long_Integer (scaledDissipation)));
            WeaponProperties'Class (This).setRange ((Integer (((value) * (9)))) / (10));
        end if;
   end Initialize;

   function Create (reloadTime : Long_Long_Integer; targetingTime : Long_Long_Integer; speed : Long_Long_Integer; damage : Integer; dissipation : Short_Integer) return WeaponProperties_Access is
      This : constant WeaponProperties_Access := new WeaponProperties;
   begin
      WeaponProperties_Package.Initialize (This.all, reloadTime, targetingTime, speed, damage, dissipation);
      return This;
   end Create;

   procedure setReloadTime (This : in out WeaponProperties; reloadTime : Long_Long_Integer) is
   begin
        This.reloadTime := reloadTime;
   end setReloadTime;

   function getReloadTime (This : in out WeaponProperties) return Long_Long_Integer is
   begin
        return This.reloadTime;
   end getReloadTime;

   procedure setTargetingTime (This : in out WeaponProperties; targetingTime : Long_Long_Integer) is
   begin
        This.targetingTime := targetingTime;
   end setTargetingTime;

   function getTargetingTime (This : in out WeaponProperties) return Long_Long_Integer is
   begin
        return This.targetingTime;
   end getTargetingTime;

   function getSpeed (This : in out WeaponProperties) return BasicDecimal_Access is
   begin
        return This.speed;
   end getSpeed;

   procedure setSpeed (This : in out WeaponProperties; speed_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      speed : constant BasicDecimal_Access := BasicDecimal_Access (speed_Param);
   begin
        This.speed := speed;
   end setSpeed;

   function getDamageI (This : in out WeaponProperties; range_Id : Integer) return Integer is
   begin
        return (WeaponProperties'Class (This).getDamage) - (((((WeaponProperties'Class (This).getDissipation) * (range_Id))) / (This.speed.getScaled)));
   end getDamageI;

   function toStringArray (This : in out WeaponProperties) return Unbounded_String_Array_Access is
      index : Integer;
      stringArray : Unbounded_String_Array_Access;
      stringBuffer : StringMaker_Access;
   begin
        index := 0;
        stringArray := new Unbounded_String_Array'(0 .. (3) - 1 => Null_Unbounded_String);
        stringBuffer := StringMaker_Package.Create;
        stringArray (Java_Post_Increment (index)) := stringBuffer.append (WeaponProperties_Package.DAMAGE).appendint (Integer (WeaponProperties'Class (This).getDamage)).toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringArray (Java_Post_Increment (index)) := stringBuffer.append (WeaponProperties_Package.RANGE_Id).appendint (Integer (WeaponProperties'Class (This).getRange)).toString;
        stringBuffer.delete (0, stringBuffer.length);
        stringArray (Java_Post_Increment (index)) := stringBuffer.append (WeaponProperties_Package.RELOAD).appendlong (WeaponProperties'Class (This).getReloadTime).toString;
        return stringArray;
   end toStringArray;

   function toString (This : in out WeaponProperties) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (WeaponProperties_Package.DAMAGE).appendint (Integer (WeaponProperties'Class (This).getDamage));
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (WeaponProperties_Package.RANGE_Id).appendint (Integer (WeaponProperties'Class (This).getRange));
        stringBuffer.append (CommonSeps_Package.getInstance.SPACE);
        stringBuffer.append (WeaponProperties_Package.RELOAD).appendlong (WeaponProperties'Class (This).getReloadTime);
        return stringBuffer.toString;
   end toString;

   procedure getDamageI (This : in out WeaponProperties; range_Id : Integer) is
      Java_Result : constant Integer := WeaponProperties'Class (This).getDamageI (range_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getDamageI;

begin
   null;
   NULL_WEAPON_PROPERTIES := WeaponProperties_Package.Create (0, 0, 0, 0, Short_Integer (0));
   messageSent := False;
   DAMAGE := To_Unbounded_String ("Damage: ");
   RANGE_Id := To_Unbounded_String ("Range: ");
   RELOAD := To_Unbounded_String ("Reload: ");

end org.allbinary.game.combat.weapon.WeaponProperties_Package;


