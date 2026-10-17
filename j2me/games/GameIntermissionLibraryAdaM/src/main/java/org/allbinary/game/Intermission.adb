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


package body org.allbinary.game.Intermission_Package is

   procedure Initialize_Fields (This : in out Intermission'Class) is
   begin
      null;
      This.enabled := False;
      This.timeElapsedHelper := TimeDelayHelper_Package.Create (0);
      This.intermissionEnableListener := NullIntermissionEnableListener_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out Intermission'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Intermission_Access is
      This : constant Intermission_Access := new Intermission;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure setListener (This : in out Intermission; enableListener : IntermissionEnableListenerInterface_Access) is
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
        if This.isEnabled then
            This.getTimeDelayHelper.setStartTimeTNT;
        end if;
        This.intermissionEnableListener.notifyIntermission (enabled);
   end setEnabled;

   function isEnabled (This : in out Intermission) return Boolean is
   begin
        return This.enabled;
   end isEnabled;

   procedure getTimeDelayHelper (This : in out Intermission) is
      Java_Result : constant TimeDelayHelper_Access := Intermission'Class (This).getTimeDelayHelper;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTimeDelayHelper;

   procedure isEnabled (This : in out Intermission) is
      Java_Result : constant Boolean := Intermission'Class (This).isEnabled;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEnabled;

end org.allbinary.game.Intermission_Package;


