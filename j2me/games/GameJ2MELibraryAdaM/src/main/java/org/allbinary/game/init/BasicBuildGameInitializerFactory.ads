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
limited with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
package org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References is
   type BasicBuildGameInitializerFactory_Access is access all org.allbinary.game.init.BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class;
   type BasicBuildGameInitializerFactory_Access_Array is array (Natural range <>) of BasicBuildGameInitializerFactory_Access;
   type BasicBuildGameInitializerFactory_Access_Array_Access is access all BasicBuildGameInitializerFactory_Access_Array;
   type BasicBuildGameInitializerFactory_Access_Array_Access_Array is array (Natural range <>) of BasicBuildGameInitializerFactory_Access_Array_Access;
   type BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access is access all BasicBuildGameInitializerFactory_Access_Array_Access_Array;
   type BasicBuildGameInitializerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicBuildGameInitializerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicBuildGameInitializerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicBuildGameInitializerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicBuildGameInitializerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicBuildGameInitializerFactory_Access_Array_Access is (if Value /= null and then Value.all in BasicBuildGameInitializerFactory_Access_Array_Object'Class then BasicBuildGameInitializerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type BasicBuildGameInitializerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicBuildGameInitializerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicBuildGameInitializerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicBuildGameInitializerFactory_Access_Array_Access_Array_Object'Class then BasicBuildGameInitializerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References;

with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package; use org.allbinary.game.init.GameInitializationInterfaceFactoryInterface_Package;
limited with org.allbinary.game.init.GameInitializationInterface_Package;
with org.allbinary.game.init.GameInitializationInterface_Package_References;

package org.allbinary.game.init.BasicBuildGameInitializerFactory_Package is

   package Reference_Types is
   subtype GameInitializationInterface_Access is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access;
   use type GameInitializationInterface_Access;
   subtype GameInitializationInterface_Access_Array is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access_Array;
   use type GameInitializationInterface_Access_Array;
   subtype GameInitializationInterface_Access_Array_Access is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access_Array_Access;
   use type GameInitializationInterface_Access_Array_Access;
   subtype GameInitializationInterface_Access_Array_Access_Array is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access_Array_Access_Array;
   use type GameInitializationInterface_Access_Array_Access_Array;
   subtype GameInitializationInterface_Access_Array_Access_Array_Access is org.allbinary.game.init.GameInitializationInterface_Package_References.GameInitializationInterface_Access_Array_Access_Array_Access;
   use type GameInitializationInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype BasicBuildGameInitializerFactory_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   function Java_Box (Value : BasicBuildGameInitializerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.Java_Box;
   function Java_Unbox_BasicBuildGameInitializerFactory_Access_Array (Value : access Java_Object'Class) return BasicBuildGameInitializerFactory_Access_Array_Access renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.Java_Unbox_BasicBuildGameInitializerFactory_Access_Array;
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   subtype BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access is org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References."=";
   function Java_Box (Value : BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.Java_Box;
   function Java_Unbox_BasicBuildGameInitializerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicBuildGameInitializerFactory_Access_Array_Access_Array_Access renames org.allbinary.game.init.BasicBuildGameInitializerFactory_Package_References.Java_Unbox_BasicBuildGameInitializerFactory_Access_Array_Access_Array;

   type BasicBuildGameInitializerFactory is new Java_Object and GameInitializationInterfaceFactoryInterface with null record;
   NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY : BasicBuildGameInitializerFactory_Access;

   procedure Initialize (This : in out BasicBuildGameInitializerFactory'Class);
   function Create return BasicBuildGameInitializerFactory_Access;
   function getInstance (This : in out BasicBuildGameInitializerFactory) return GameInitializationInterface_Access;

end org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;


