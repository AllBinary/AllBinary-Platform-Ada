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



package body org.allbinary.debug.NoDebug_Package is

   procedure Initialize_Fields (This : in out NoDebug'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NoDebug'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NoDebug_Access is
      This : constant NoDebug_Access := new NoDebug;
   begin
      NoDebug_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DebugInterface_Access is
   begin
        return DebugInterface_Access (NoDebug_Package.SINGLETON);
   end getInstance;

   procedure start (This : in out NoDebug) is
   begin
        null;
   end start;

   procedure stop (This : in out NoDebug) is
   begin
        null;
   end stop;

   function getMaxTime (This : in out NoDebug) return Long_Long_Integer is
   begin
        return 10000;
   end getMaxTime;

   function getStartTime (This : in out NoDebug) return Long_Long_Integer is
   begin
        return 0;
   end getStartTime;

   function isRunning (This : in out NoDebug) return Boolean is
   begin
        return False;
   end isRunning;

begin
   null;
   SINGLETON := DebugInterface_Access (NoDebug_Package.Create);

end org.allbinary.debug.NoDebug_Package;


