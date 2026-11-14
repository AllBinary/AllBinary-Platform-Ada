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

with AllBinary_Java;
limited with org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package;
package org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References is
   type RemoteHighScoresProcessorFactory_Access is access all org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package.RemoteHighScoresProcessorFactory'Class;
   type RemoteHighScoresProcessorFactory_Access_Array is array (Natural range <>) of RemoteHighScoresProcessorFactory_Access;
   type RemoteHighScoresProcessorFactory_Access_Array_Access is access all RemoteHighScoresProcessorFactory_Access_Array;
   type RemoteHighScoresProcessorFactory_Access_Array_Access_Array is array (Natural range <>) of RemoteHighScoresProcessorFactory_Access_Array_Access;
   type RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Access is access all RemoteHighScoresProcessorFactory_Access_Array_Access_Array;
   type RemoteHighScoresProcessorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteHighScoresProcessorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteHighScoresProcessorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteHighScoresProcessorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteHighScoresProcessorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteHighScoresProcessorFactory_Access_Array_Access is (if Value /= null and then Value.all in RemoteHighScoresProcessorFactory_Access_Array_Object'Class then RemoteHighScoresProcessorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RemoteHighScoresProcessorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Object'Class then RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References;

with org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package;
with org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References;

package org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package is

   package Reference_Types is
   subtype RemoteHighScoresProcessorInterface_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access;
   use type RemoteHighScoresProcessorInterface_Access;
   subtype RemoteHighScoresProcessorInterface_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array;
   use type RemoteHighScoresProcessorInterface_Access_Array;
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access;
   use type RemoteHighScoresProcessorInterface_Access_Array_Access;
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access_Array;
   use type RemoteHighScoresProcessorInterface_Access_Array_Access_Array;
   subtype RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorInterface_Package_References.RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access;
   use type RemoteHighScoresProcessorInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RemoteHighScoresProcessorFactory_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References.RemoteHighScoresProcessorFactory_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorFactory_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References."=";
   subtype RemoteHighScoresProcessorFactory_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References.RemoteHighScoresProcessorFactory_Access_Array;
   function "=" (Left, Right : RemoteHighScoresProcessorFactory_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References."=";
   subtype RemoteHighScoresProcessorFactory_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References.RemoteHighScoresProcessorFactory_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorFactory_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References."=";
   function Java_Box (Value : RemoteHighScoresProcessorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_RemoteHighScoresProcessorFactory_Access_Array (Value : access Java_Object'Class) return RemoteHighScoresProcessorFactory_Access_Array_Access renames org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References.Java_Unbox_RemoteHighScoresProcessorFactory_Access_Array;
   subtype RemoteHighScoresProcessorFactory_Access_Array_Access_Array is org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References.RemoteHighScoresProcessorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RemoteHighScoresProcessorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References."=";
   subtype RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Access is org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References.RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References."=";
   function Java_Box (Value : RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References.Java_Box;
   function Java_Unbox_RemoteHighScoresProcessorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return RemoteHighScoresProcessorFactory_Access_Array_Access_Array_Access renames org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package_References.Java_Unbox_RemoteHighScoresProcessorFactory_Access_Array_Access_Array;

   type RemoteHighScoresProcessorFactory is new Java_Object with null record;
   SINGLETON : RemoteHighScoresProcessorInterface_Access;

   procedure Initialize (This : in out RemoteHighScoresProcessorFactory'Class);
   function Create return RemoteHighScoresProcessorFactory_Access;
   function getInstance return RemoteHighScoresProcessorInterface_Access;

end org.allbinary.game.score.remote.RemoteHighScoresProcessorFactory_Package;


