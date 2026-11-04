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

limited with org.allbinary.game.ag.life.LifeVisitorInterface_Package;
package org.allbinary.game.ag.life.LifeVisitorInterface_Package_References is
   type LifeVisitorInterface_Access is access all org.allbinary.game.ag.life.LifeVisitorInterface_Package.LifeVisitorInterface'Class;
   type LifeVisitorInterface_Access_Array is array (Natural range <>) of LifeVisitorInterface_Access;
   type LifeVisitorInterface_Access_Array_Access is access all LifeVisitorInterface_Access_Array;
   type LifeVisitorInterface_Access_Array_Access_Array is array (Natural range <>) of LifeVisitorInterface_Access_Array_Access;
   type LifeVisitorInterface_Access_Array_Access_Array_Access is access all LifeVisitorInterface_Access_Array_Access_Array;
end org.allbinary.game.ag.life.LifeVisitorInterface_Package_References;

with org.allbinary.game.ag.life.LifeVisitorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.ag.life.Life_Package;
with org.allbinary.game.ag.life.Life_Package_References;

package org.allbinary.game.ag.life.LifeVisitorInterface_Package is

   package Reference_Types is
   subtype Life_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access;
   use type Life_Access;
   subtype Life_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array;
   use type Life_Access_Array;
   subtype Life_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access;
   use type Life_Access_Array_Access;
   subtype Life_Access_Array_Access_Array is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array;
   use type Life_Access_Array_Access_Array;
   subtype Life_Access_Array_Access_Array_Access is org.allbinary.game.ag.life.Life_Package_References.Life_Access_Array_Access_Array_Access;
   use type Life_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type LifeVisitorInterface is interface;
   subtype LifeVisitorInterface_Access is org.allbinary.game.ag.life.LifeVisitorInterface_Package_References.LifeVisitorInterface_Access;
   function "=" (Left, Right : LifeVisitorInterface_Access) return Boolean renames org.allbinary.game.ag.life.LifeVisitorInterface_Package_References."=";
   subtype LifeVisitorInterface_Access_Array is org.allbinary.game.ag.life.LifeVisitorInterface_Package_References.LifeVisitorInterface_Access_Array;
   function "=" (Left, Right : LifeVisitorInterface_Access_Array) return Boolean renames org.allbinary.game.ag.life.LifeVisitorInterface_Package_References."=";
   subtype LifeVisitorInterface_Access_Array_Access is org.allbinary.game.ag.life.LifeVisitorInterface_Package_References.LifeVisitorInterface_Access_Array_Access;
   function "=" (Left, Right : LifeVisitorInterface_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.LifeVisitorInterface_Package_References."=";
   subtype LifeVisitorInterface_Access_Array_Access_Array is org.allbinary.game.ag.life.LifeVisitorInterface_Package_References.LifeVisitorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : LifeVisitorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.life.LifeVisitorInterface_Package_References."=";
   subtype LifeVisitorInterface_Access_Array_Access_Array_Access is org.allbinary.game.ag.life.LifeVisitorInterface_Package_References.LifeVisitorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LifeVisitorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.life.LifeVisitorInterface_Package_References."=";
   function Java_Object_Access_From_LifeVisitorInterface (Value : LifeVisitorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure visit (This : in out LifeVisitorInterface; lifeInterface_Param : access Life_Package.Life'Class) is abstract;

end org.allbinary.game.ag.life.LifeVisitorInterface_Package;


