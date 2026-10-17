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


package body org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package is

   procedure Initialize_Fields (This : in out GamePersistanceSingleton'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GamePersistanceSingleton_Access is
   begin
        return GamePersistanceSingleton_Package.GAME_PERSISTANCE;
   end getInstance;

   procedure Initialize (This : in out GamePersistanceSingleton'Class) is
   begin
        KeyValuePersistance_Package.Initialize (This, GamePersistanceStrings_Package.getInstance.SAVED_GAME_RECORD_ID);
   end Initialize;

   function Create return GamePersistanceSingleton_Access is
      This : constant GamePersistanceSingleton_Access := new GamePersistanceSingleton;
   begin
      GamePersistanceSingleton_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   GAME_PERSISTANCE := GamePersistanceSingleton_Package.Create;

end org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package;


