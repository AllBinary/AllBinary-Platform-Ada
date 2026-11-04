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

limited with org.allbinary.graphics.pipeline.RandomTranslation_Package;
package org.allbinary.graphics.pipeline.RandomTranslation_Package_References is
   type RandomTranslation_Access is access all org.allbinary.graphics.pipeline.RandomTranslation_Package.RandomTranslation'Class;
   type RandomTranslation_Access_Array is array (Natural range <>) of RandomTranslation_Access;
   type RandomTranslation_Access_Array_Access is access all RandomTranslation_Access_Array;
   type RandomTranslation_Access_Array_Access_Array is array (Natural range <>) of RandomTranslation_Access_Array_Access;
   type RandomTranslation_Access_Array_Access_Array_Access is access all RandomTranslation_Access_Array_Access_Array;
end org.allbinary.graphics.pipeline.RandomTranslation_Package_References;

with org.allbinary.graphics.pipeline.RandomTranslation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.pipeline.RandomTranslation_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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


   subtype RandomTranslation_Access is org.allbinary.graphics.pipeline.RandomTranslation_Package_References.RandomTranslation_Access;
   function "=" (Left, Right : RandomTranslation_Access) return Boolean renames org.allbinary.graphics.pipeline.RandomTranslation_Package_References."=";
   subtype RandomTranslation_Access_Array is org.allbinary.graphics.pipeline.RandomTranslation_Package_References.RandomTranslation_Access_Array;
   function "=" (Left, Right : RandomTranslation_Access_Array) return Boolean renames org.allbinary.graphics.pipeline.RandomTranslation_Package_References."=";
   subtype RandomTranslation_Access_Array_Access is org.allbinary.graphics.pipeline.RandomTranslation_Package_References.RandomTranslation_Access_Array_Access;
   function "=" (Left, Right : RandomTranslation_Access_Array_Access) return Boolean renames org.allbinary.graphics.pipeline.RandomTranslation_Package_References."=";
   subtype RandomTranslation_Access_Array_Access_Array is org.allbinary.graphics.pipeline.RandomTranslation_Package_References.RandomTranslation_Access_Array_Access_Array;
   function "=" (Left, Right : RandomTranslation_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.pipeline.RandomTranslation_Package_References."=";
   subtype RandomTranslation_Access_Array_Access_Array_Access is org.allbinary.graphics.pipeline.RandomTranslation_Package_References.RandomTranslation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RandomTranslation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.pipeline.RandomTranslation_Package_References."=";

   type RandomTranslation is new Java_Object with null record;

   procedure Initialize (This : in out RandomTranslation'Class);
   function Create return RandomTranslation_Access;
   function getInstance (vector_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer) return BasicArrayList_Access;
   procedure getInstance (vector_Param : access BasicArrayList_Package.BasicArrayList'Class; howMuch : Integer);

end org.allbinary.graphics.pipeline.RandomTranslation_Package;


