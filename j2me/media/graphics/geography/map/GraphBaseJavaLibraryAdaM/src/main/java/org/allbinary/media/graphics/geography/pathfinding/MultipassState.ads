-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
package org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References is
   type MultipassState_Access is access all org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package.MultipassState'Class;
   type MultipassState_Access_Array is array (Natural range <>) of MultipassState_Access;
   type MultipassState_Access_Array_Access is access all MultipassState_Access_Array;
   type MultipassState_Access_Array_Access_Array is array (Natural range <>) of MultipassState_Access_Array_Access;
   type MultipassState_Access_Array_Access_Array_Access is access all MultipassState_Access_Array_Access_Array;
   type MultipassState_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultipassState_Access_Array_Access;
   end record;
   function Java_Box (Value : MultipassState_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultipassState_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultipassState_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultipassState_Access_Array_Access is (if Value /= null and then Value.all in MultipassState_Access_Array_Object'Class then MultipassState_Access_Array_Object'Class (Value.all).Value else null);
   type MultipassState_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MultipassState_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MultipassState_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MultipassState_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MultipassState_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MultipassState_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MultipassState_Access_Array_Access_Array_Object'Class then MultipassState_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MultipassState_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access;
   function "=" (Left, Right : MultipassState_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array;
   function "=" (Left, Right : MultipassState_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access;
   function "=" (Left, Right : MultipassState_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   function Java_Box (Value : MultipassState_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.Java_Box;
   function Java_Unbox_MultipassState_Access_Array (Value : access Java_Object'Class) return MultipassState_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.Java_Unbox_MultipassState_Access_Array;
   subtype MultipassState_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array;
   function "=" (Left, Right : MultipassState_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultipassState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   function Java_Box (Value : MultipassState_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.Java_Box;
   function Java_Unbox_MultipassState_Access_Array_Access_Array (Value : access Java_Object'Class) return MultipassState_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.Java_Unbox_MultipassState_Access_Array_Access_Array;

   type MultipassState is new Java_Object with record
      step : Integer;
      iteration : Integer;
      iteration2 : Integer;
   end record;

   procedure Initialize (This : in out MultipassState'Class);
   function Create return MultipassState_Access;

end org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;


