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

limited with org.allbinary.graphics.RectangleFactory_Package;
package org.allbinary.graphics.RectangleFactory_Package_References is
   type RectangleFactory_Access is access all org.allbinary.graphics.RectangleFactory_Package.RectangleFactory'Class;
   type RectangleFactory_Access_Array is array (Natural range <>) of RectangleFactory_Access;
   type RectangleFactory_Access_Array_Access is access all RectangleFactory_Access_Array;
   type RectangleFactory_Access_Array_Access_Array is array (Natural range <>) of RectangleFactory_Access_Array_Access;
   type RectangleFactory_Access_Array_Access_Array_Access is access all RectangleFactory_Access_Array_Access_Array;
end org.allbinary.graphics.RectangleFactory_Package_References;

with org.allbinary.graphics.RectangleFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;

package org.allbinary.graphics.RectangleFactory_Package is

   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RectangleFactory_Access is org.allbinary.graphics.RectangleFactory_Package_References.RectangleFactory_Access;
   function "=" (Left, Right : RectangleFactory_Access) return Boolean renames org.allbinary.graphics.RectangleFactory_Package_References."=";
   subtype RectangleFactory_Access_Array is org.allbinary.graphics.RectangleFactory_Package_References.RectangleFactory_Access_Array;
   function "=" (Left, Right : RectangleFactory_Access_Array) return Boolean renames org.allbinary.graphics.RectangleFactory_Package_References."=";
   subtype RectangleFactory_Access_Array_Access is org.allbinary.graphics.RectangleFactory_Package_References.RectangleFactory_Access_Array_Access;
   function "=" (Left, Right : RectangleFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.RectangleFactory_Package_References."=";
   subtype RectangleFactory_Access_Array_Access_Array is org.allbinary.graphics.RectangleFactory_Package_References.RectangleFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RectangleFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.RectangleFactory_Package_References."=";
   subtype RectangleFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.RectangleFactory_Package_References.RectangleFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RectangleFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.RectangleFactory_Package_References."=";

   type RectangleFactory is new Java_Object with null record;
   SINGLETON : Rectangle_Access;
   ARRAY_OF_ARRAYS : Rectangle_Access_Array_Access_Array_Access;

   procedure Initialize (This : in out RectangleFactory'Class);
   function Create return RectangleFactory_Access;

end org.allbinary.graphics.RectangleFactory_Package;


