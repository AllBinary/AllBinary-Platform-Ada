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


with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.game.NullIntermissionEnableListener_Package; use org.allbinary.game.NullIntermissionEnableListener_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package; use org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionEnableListenerInterface_Package;
with org.allbinary.game.IntermissionInterface_Package;
with org.allbinary.game.NullIntermissionEnableListener_Package;

package body org.allbinary.game.Intermission_Package is

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
   subtype IntermissionEnableListenerInterface_Access is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access;
   function "=" (Left, Right : IntermissionEnableListenerInterface_Access) return Boolean renames org.allbinary.game.IntermissionEnableListenerInterface_Package_References."=";
   subtype IntermissionEnableListenerInterface_Access_Array is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array;
   function "=" (Left, Right : IntermissionEnableListenerInterface_Access_Array) return Boolean renames org.allbinary.game.IntermissionEnableListenerInterface_Package_References."=";
   subtype IntermissionEnableListenerInterface_Access_Array_Access is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array_Access;
   function "=" (Left, Right : IntermissionEnableListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.IntermissionEnableListenerInterface_Package_References."=";
   subtype IntermissionEnableListenerInterface_Access_Array_Access_Array is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : IntermissionEnableListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.IntermissionEnableListenerInterface_Package_References."=";
   subtype IntermissionEnableListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.IntermissionEnableListenerInterface_Package_References.IntermissionEnableListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : IntermissionEnableListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.IntermissionEnableListenerInterface_Package_References."=";
   procedure Initialize_Fields (This : in out Intermission'Class) is
   begin
      null;
      This.enabled := False;
      This.timeElapsedHelper := TimeDelayHelper_Package.Create (0);
      This.intermissionEnableListener := IntermissionEnableListenerInterface_Access (NullIntermissionEnableListener_Package.getInstance);
   end Initialize_Fields;


   procedure Initialize (This : in out Intermission'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Intermission_Access is
      This : constant Intermission_Access := new Intermission;
   begin
      Intermission_Package.Initialize (This.all);
      return This;
   end Create;

   procedure setListener (This : in out Intermission; enableListener_Param : access IntermissionEnableListenerInterface_Package.IntermissionEnableListenerInterface'Class) is
      enableListener : constant IntermissionEnableListenerInterface_Access := IntermissionEnableListenerInterface_Access (enableListener_Param);
   begin
        This.intermissionEnableListener := enableListener;
   end setListener;

   function getTimeDelayHelper (This : in out Intermission) return TimeDelayHelper_Access is
   begin
        return This.timeElapsedHelper;
   end getTimeDelayHelper;

   procedure setEnabled (This : in out Intermission; enabled : Boolean) is
   begin
        This.enabled := enabled;
        if Intermission'Class (This).isEnabled then
            Intermission'Class (This).getTimeDelayHelper.setStartTimeTNT;
        end if;
        This.intermissionEnableListener.notifyIntermission (enabled);
   end setEnabled;

   function isEnabled (This : in out Intermission) return Boolean is
   begin
        return This.enabled;
   end isEnabled;

end org.allbinary.game.Intermission_Package;


