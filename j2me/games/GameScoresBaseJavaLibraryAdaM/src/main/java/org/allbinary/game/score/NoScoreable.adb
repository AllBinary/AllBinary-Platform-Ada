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


package body org.allbinary.game.score.NoScoreable_Package is

   procedure Initialize_Fields (This : in out NoScoreable'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return NoScoreable_Access is
   begin
        return NoScoreable_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out NoScoreable'Class) is
   begin
        Scoreable_Package.Initialize (This, 0);
   end Initialize;

   function Create return NoScoreable_Access is
      This : constant NoScoreable_Access := new NoScoreable;
   begin
      NoScoreable_Package.Initialize (This.all);
      return This;
   end Create;

   procedure addPoints (This : in out NoScoreable; points : Integer) is
   begin
        null;
   end addPoints;

   procedure removePoints (This : in out NoScoreable; points : Integer) is
   begin
        null;
   end removePoints;

begin
   null;
   SINGLETON := NoScoreable_Package.Create;

end org.allbinary.game.score.NoScoreable_Package;


