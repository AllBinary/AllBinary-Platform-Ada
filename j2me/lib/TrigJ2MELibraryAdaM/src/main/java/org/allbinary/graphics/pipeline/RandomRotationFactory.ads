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

limited with org.allbinary.graphics.pipeline.RandomRotationFactory_Package;
package org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References is
   type RandomRotationFactory_Access is access all org.allbinary.graphics.pipeline.RandomRotationFactory_Package.RandomRotationFactory'Class;
   type RandomRotationFactory_Access_Array is array (Natural range <>) of RandomRotationFactory_Access;
   type RandomRotationFactory_Access_Array_Access is access all RandomRotationFactory_Access_Array;
   type RandomRotationFactory_Access_Array_Access_Array is array (Natural range <>) of RandomRotationFactory_Access_Array_Access;
   type RandomRotationFactory_Access_Array_Access_Array_Access is access all RandomRotationFactory_Access_Array_Access_Array;
end org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References;

with org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
limited with org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleFactory_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.pipeline.RandomRotationFactory_Package is

   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   use type MyRandomFactory_Access;
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   use type MyRandomFactory_Access_Array;
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access;
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   use type MyRandomFactory_Access_Array_Access_Array;
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access_Array_Access;
   subtype AngleFactory_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access;
   use type AngleFactory_Access;
   subtype AngleFactory_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array;
   use type AngleFactory_Access_Array;
   subtype AngleFactory_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access;
   use type AngleFactory_Access_Array_Access;
   subtype AngleFactory_Access_Array_Access_Array is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array;
   use type AngleFactory_Access_Array_Access_Array;
   subtype AngleFactory_Access_Array_Access_Array_Access is org.allbinary.math.AngleFactory_Package_References.AngleFactory_Access_Array_Access_Array_Access;
   use type AngleFactory_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RandomRotationFactory_Access is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access;
   function "=" (Left, Right : RandomRotationFactory_Access) return Boolean renames org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References."=";
   subtype RandomRotationFactory_Access_Array is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access_Array;
   function "=" (Left, Right : RandomRotationFactory_Access_Array) return Boolean renames org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References."=";
   subtype RandomRotationFactory_Access_Array_Access is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access_Array_Access;
   function "=" (Left, Right : RandomRotationFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References."=";
   subtype RandomRotationFactory_Access_Array_Access_Array is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RandomRotationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References."=";
   subtype RandomRotationFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References.RandomRotationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RandomRotationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.pipeline.RandomRotationFactory_Package_References."=";

   type RandomRotationFactory is new Java_Object with record
      myRandomFactory : MyRandomFactory_Access;
      angleFactory : AngleFactory_Access;
   end record;
   instance : RandomRotationFactory_Access;

   procedure Initialize (This : in out RandomRotationFactory'Class);
   function Create return RandomRotationFactory_Access;
   function getInstance return RandomRotationFactory_Access;
   function getInstanceList (This : in out RandomRotationFactory; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer) return BasicArrayList_Access;
   procedure getInstanceList (This : in out RandomRotationFactory; vector_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer);
   function getNextRandomAngle (This : in out RandomRotationFactory; howMuch : Integer) return Integer;
   procedure getNextRandomAngle (This : in out RandomRotationFactory; howMuch : Integer);

end org.allbinary.graphics.pipeline.RandomRotationFactory_Package;


