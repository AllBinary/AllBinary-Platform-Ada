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

limited with org.allbinary.game.part.PartInterfaceUtil_Package;
package org.allbinary.game.part.PartInterfaceUtil_Package_References is
   type PartInterfaceUtil_Access is access all org.allbinary.game.part.PartInterfaceUtil_Package.PartInterfaceUtil'Class;
   type PartInterfaceUtil_Access_Array is array (Natural range <>) of PartInterfaceUtil_Access;
   type PartInterfaceUtil_Access_Array_Access is access all PartInterfaceUtil_Access_Array;
   type PartInterfaceUtil_Access_Array_Access_Array is array (Natural range <>) of PartInterfaceUtil_Access_Array_Access;
   type PartInterfaceUtil_Access_Array_Access_Array_Access is access all PartInterfaceUtil_Access_Array_Access_Array;
end org.allbinary.game.part.PartInterfaceUtil_Package_References;

with org.allbinary.game.part.PartInterfaceUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.part.PartInterface_Package_References;

package org.allbinary.game.part.PartInterfaceUtil_Package is

   package Reference_Types is
   subtype PartInterface_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access;
   use type PartInterface_Access;
   subtype PartInterface_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array;
   use type PartInterface_Access_Array;
   subtype PartInterface_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access;
   use type PartInterface_Access_Array_Access;
   subtype PartInterface_Access_Array_Access_Array is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array;
   use type PartInterface_Access_Array_Access_Array;
   subtype PartInterface_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterface_Package_References.PartInterface_Access_Array_Access_Array_Access;
   use type PartInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PartInterfaceUtil_Access is org.allbinary.game.part.PartInterfaceUtil_Package_References.PartInterfaceUtil_Access;
   function "=" (Left, Right : PartInterfaceUtil_Access) return Boolean renames org.allbinary.game.part.PartInterfaceUtil_Package_References."=";
   subtype PartInterfaceUtil_Access_Array is org.allbinary.game.part.PartInterfaceUtil_Package_References.PartInterfaceUtil_Access_Array;
   function "=" (Left, Right : PartInterfaceUtil_Access_Array) return Boolean renames org.allbinary.game.part.PartInterfaceUtil_Package_References."=";
   subtype PartInterfaceUtil_Access_Array_Access is org.allbinary.game.part.PartInterfaceUtil_Package_References.PartInterfaceUtil_Access_Array_Access;
   function "=" (Left, Right : PartInterfaceUtil_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterfaceUtil_Package_References."=";
   subtype PartInterfaceUtil_Access_Array_Access_Array is org.allbinary.game.part.PartInterfaceUtil_Package_References.PartInterfaceUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PartInterfaceUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.PartInterfaceUtil_Package_References."=";
   subtype PartInterfaceUtil_Access_Array_Access_Array_Access is org.allbinary.game.part.PartInterfaceUtil_Package_References.PartInterfaceUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PartInterfaceUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.PartInterfaceUtil_Package_References."=";

   type PartInterfaceUtil is new Java_Object with null record;
   SINGLETON : PartInterface_Access_Array_Access;

   procedure Initialize (This : in out PartInterfaceUtil'Class);
   function Create return PartInterfaceUtil_Access;
   function getZeroArray return PartInterface_Access_Array_Access;

end org.allbinary.game.part.PartInterfaceUtil_Package;


