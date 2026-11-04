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


with org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package; use org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package;
with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package; use org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package;
with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References;
with org.allbinary.game.score.remote.RemoteHighScores_Package;
with org.allbinary.game.score.remote.RemoteHighScoresProcessor_Package;
with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package;

package body org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package is

   subtype RemoteHighScoresProcessorInterface_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References."=";
   procedure Initialize_Fields (This : in out RemoteHighScoresProcessorFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out RemoteHighScoresProcessorFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return RemoteHighScoresProcessorFactory_Access is
      This : constant RemoteHighScoresProcessorFactory_Access := new RemoteHighScoresProcessorFactory;
   begin
      RemoteHighScoresProcessorFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return RemoteHighScoresProcessorInterface_Access is
   begin
        return RemoteHighScoresProcessorInterface_Access (RemoteHighScoresProcessorFactory_Package.SINGLETON);
   end getInstance;

begin
   null;
   SINGLETON := RemoteHighScoresProcessorInterface_Access (RemoteHighScoresProcessor_Package.Create);

end org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package;


