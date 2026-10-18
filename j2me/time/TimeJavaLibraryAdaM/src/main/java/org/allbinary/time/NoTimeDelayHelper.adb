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



package body org.allbinary.time.NoTimeDelayHelper_Package is

   procedure Initialize_Fields (This : in out NoTimeDelayHelper'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoTimeDelayHelper'Class) is
   begin
        TimeDelayHelper_Package.Initialize (This, 0);
   end Initialize;

   function Create return NoTimeDelayHelper_Access is
      This : constant NoTimeDelayHelper_Access := new NoTimeDelayHelper;
   begin
      NoTimeDelayHelper_Package.Initialize (This.all);
      return This;
   end Create;

   function isTimeTNT (This : in out NoTimeDelayHelper) return Boolean is
   begin
        return True;
   end isTimeTNT;

   function isTimeSinceTNT (This : in out NoTimeDelayHelper; delay_Id : Integer) return Boolean is
   begin
        return True;
   end isTimeSinceTNT;

   function isTime (This : in out NoTimeDelayHelper; currentTime : Long_Long_Integer) return Boolean is
   begin
        return True;
   end isTime;

   function isTimeSince (This : in out NoTimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer) return Boolean is
   begin
        return True;
   end isTimeSince;

   procedure isTimeSinceTNT (This : in out NoTimeDelayHelper; delay_Id : Integer) is
      Java_Result : constant Boolean := NoTimeDelayHelper'Class (This).isTimeSinceTNT (delay_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTimeSinceTNT;

   procedure isTime (This : in out NoTimeDelayHelper; currentTime : Long_Long_Integer) is
      Java_Result : constant Boolean := NoTimeDelayHelper'Class (This).isTime (currentTime);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTime;

   procedure isTimeSince (This : in out NoTimeDelayHelper; delay_Id : Integer; currentTime : Long_Long_Integer) is
      Java_Result : constant Boolean := NoTimeDelayHelper'Class (This).isTimeSince (delay_Id, currentTime);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTimeSince;

begin
   null;
   SINGLETON := NoTimeDelayHelper_Package.Create;

end org.allbinary.time.NoTimeDelayHelper_Package;


