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

limited with org.allbinary.game.NullIntermissionEnableListener_Package;
package org.allbinary.game.NullIntermissionEnableListener_Package_References is
   type NullIntermissionEnableListener_Access is access all org.allbinary.game.NullIntermissionEnableListener_Package.NullIntermissionEnableListener'Class;
   type NullIntermissionEnableListener_Access_Array is array (Natural range <>) of NullIntermissionEnableListener_Access;
   type NullIntermissionEnableListener_Access_Array_Access is access all NullIntermissionEnableListener_Access_Array;
   type NullIntermissionEnableListener_Access_Array_Access_Array is array (Natural range <>) of NullIntermissionEnableListener_Access_Array_Access;
   type NullIntermissionEnableListener_Access_Array_Access_Array_Access is access all NullIntermissionEnableListener_Access_Array_Access_Array;
end org.allbinary.game.NullIntermissionEnableListener_Package_References;

with org.allbinary.game.NullIntermissionEnableListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.IntermissionEnableListenerInterface_Package; use org.allbinary.game.IntermissionEnableListenerInterface_Package;

package org.allbinary.game.NullIntermissionEnableListener_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype NullIntermissionEnableListener_Access is org.allbinary.game.NullIntermissionEnableListener_Package_References.NullIntermissionEnableListener_Access;
   function "=" (Left, Right : NullIntermissionEnableListener_Access) return Boolean renames org.allbinary.game.NullIntermissionEnableListener_Package_References."=";
   subtype NullIntermissionEnableListener_Access_Array is org.allbinary.game.NullIntermissionEnableListener_Package_References.NullIntermissionEnableListener_Access_Array;
   function "=" (Left, Right : NullIntermissionEnableListener_Access_Array) return Boolean renames org.allbinary.game.NullIntermissionEnableListener_Package_References."=";
   subtype NullIntermissionEnableListener_Access_Array_Access is org.allbinary.game.NullIntermissionEnableListener_Package_References.NullIntermissionEnableListener_Access_Array_Access;
   function "=" (Left, Right : NullIntermissionEnableListener_Access_Array_Access) return Boolean renames org.allbinary.game.NullIntermissionEnableListener_Package_References."=";
   subtype NullIntermissionEnableListener_Access_Array_Access_Array is org.allbinary.game.NullIntermissionEnableListener_Package_References.NullIntermissionEnableListener_Access_Array_Access_Array;
   function "=" (Left, Right : NullIntermissionEnableListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.NullIntermissionEnableListener_Package_References."=";
   subtype NullIntermissionEnableListener_Access_Array_Access_Array_Access is org.allbinary.game.NullIntermissionEnableListener_Package_References.NullIntermissionEnableListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullIntermissionEnableListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.NullIntermissionEnableListener_Package_References."=";

   type NullIntermissionEnableListener is new Java_Object and IntermissionEnableListenerInterface with null record;
   SINGLETON : IntermissionEnableListenerInterface_Access;

   procedure Initialize (This : in out NullIntermissionEnableListener'Class);
   function Create return NullIntermissionEnableListener_Access;
   function getInstance return IntermissionEnableListenerInterface_Access;
   procedure notifyIntermission (This : in out NullIntermissionEnableListener; enable : Boolean);

end org.allbinary.game.NullIntermissionEnableListener_Package;


