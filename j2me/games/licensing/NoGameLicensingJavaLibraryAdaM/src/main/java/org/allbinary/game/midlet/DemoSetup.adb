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


with org.allbinary.game.midlet.GameMidlet_Package; use org.allbinary.game.midlet.GameMidlet_Package;
with org.allbinary.game.midlet.GameMidlet_Package_References;

package body org.allbinary.game.midlet.DemoSetup_Package is

   subtype GameMidlet_Access is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access;
   function "=" (Left, Right : GameMidlet_Access) return Boolean renames org.allbinary.game.midlet.GameMidlet_Package_References."=";
   subtype GameMidlet_Access_Array is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access_Array;
   function "=" (Left, Right : GameMidlet_Access_Array) return Boolean renames org.allbinary.game.midlet.GameMidlet_Package_References."=";
   subtype GameMidlet_Access_Array_Access is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access_Array_Access;
   function "=" (Left, Right : GameMidlet_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.GameMidlet_Package_References."=";
   subtype GameMidlet_Access_Array_Access_Array is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access_Array_Access_Array;
   function "=" (Left, Right : GameMidlet_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.GameMidlet_Package_References."=";
   subtype GameMidlet_Access_Array_Access_Array_Access is org.allbinary.game.midlet.GameMidlet_Package_References.GameMidlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameMidlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.GameMidlet_Package_References."=";
   procedure Initialize_Fields (This : in out DemoSetup'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out DemoSetup'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DemoSetup_Access is
      This : constant DemoSetup_Access := new DemoSetup;
   begin
      DemoSetup_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out DemoSetup; gameMidlet_Param : access GameMidlet_Package.GameMidlet'Class) is
      gameMidlet : constant GameMidlet_Access := GameMidlet_Access (gameMidlet_Param);
   begin
        null;
   end init;

end org.allbinary.game.midlet.DemoSetup_Package;


