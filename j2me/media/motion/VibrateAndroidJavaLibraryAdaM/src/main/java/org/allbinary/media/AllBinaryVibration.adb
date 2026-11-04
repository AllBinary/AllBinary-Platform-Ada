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


with android.content.Context_Package; use android.content.Context_Package;
with android.os.Vibrator_Package; use android.os.Vibrator_Package;
with org.allbinary.data.resource.ResourceUtil_Package; use org.allbinary.data.resource.ResourceUtil_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.media.AllBinaryNoVibration_Package; use org.allbinary.media.AllBinaryNoVibration_Package;

package body org.allbinary.media.AllBinaryVibration_Package is

   package Context_Package renames Standard.android.content.Context_Package;
   package ResourceUtil_Package renames Standard.org.allbinary.data.resource.ResourceUtil_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   subtype Vibrator_Access is android.os.Vibrator_Package_References.Vibrator_Access;
   function "=" (Left, Right : Vibrator_Access) return Boolean renames android.os.Vibrator_Package_References."=";
   subtype Vibrator_Access_Array is android.os.Vibrator_Package_References.Vibrator_Access_Array;
   function "=" (Left, Right : Vibrator_Access_Array) return Boolean renames android.os.Vibrator_Package_References."=";
   subtype Vibrator_Access_Array_Access is android.os.Vibrator_Package_References.Vibrator_Access_Array_Access;
   function "=" (Left, Right : Vibrator_Access_Array_Access) return Boolean renames android.os.Vibrator_Package_References."=";
   subtype Vibrator_Access_Array_Access_Array is android.os.Vibrator_Package_References.Vibrator_Access_Array_Access_Array;
   function "=" (Left, Right : Vibrator_Access_Array_Access_Array) return Boolean renames android.os.Vibrator_Package_References."=";
   subtype Vibrator_Access_Array_Access_Array_Access is android.os.Vibrator_Package_References.Vibrator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Vibrator_Access_Array_Access_Array_Access) return Boolean renames android.os.Vibrator_Package_References."=";
   procedure Initialize_Fields (This : in out AllBinaryVibration'Class) is
   begin
      null;
      This.vibrator := Vibrator_Access (ResourceUtil_Package.getInstance.getContext.getSystemService (Context_Package.VIBRATOR_SERVICE));
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryVibration'Class) is
   begin
      AllBinaryVibrationME_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AllBinaryVibration_Access is
      This : constant AllBinaryVibration_Access := new AllBinaryVibration;
   begin
      AllBinaryVibration_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return AllBinaryVibrationME_Access is
   begin
        return AllBinaryVibrationME_Access (AllBinaryVibration_Package.VIBRATION);
   end getInstance;

   procedure init is
   begin
        if (GameConfigurationCentral_Package.getInstance.VIBRATION.getValue.intValue) = (0) then
            AllBinaryVibration_Package.VIBRATION := AllBinaryNoVibration_Package.NO_VIBRATION;
        else
            AllBinaryVibration_Package.VIBRATION := AllBinaryVibration_Package.Create;
        end if;
   end init;

   procedure vibrate (This : in out AllBinaryVibration; duration : Integer; type_Id : Integer; volume : Integer) is
   begin
        This.vibrator.vibrate (Long_Long_Integer (duration));
   end vibrate;

begin
   null;
   VIBRATION := AllBinaryVibrationME_Access (AllBinaryNoVibration_Package.NO_VIBRATION);

end org.allbinary.media.AllBinaryVibration_Package;


