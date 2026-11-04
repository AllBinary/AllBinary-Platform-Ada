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

limited with org.allbinary.graphics.paint.PaintableFactory_Package;
package org.allbinary.graphics.paint.PaintableFactory_Package_References is
   type PaintableFactory_Access is access all org.allbinary.graphics.paint.PaintableFactory_Package.PaintableFactory'Class;
   type PaintableFactory_Access_Array is array (Natural range <>) of PaintableFactory_Access;
   type PaintableFactory_Access_Array_Access is access all PaintableFactory_Access_Array;
   type PaintableFactory_Access_Array_Access_Array is array (Natural range <>) of PaintableFactory_Access_Array_Access;
   type PaintableFactory_Access_Array_Access_Array_Access is access all PaintableFactory_Access_Array_Access_Array;
end org.allbinary.graphics.paint.PaintableFactory_Package_References;

with org.allbinary.graphics.paint.PaintableFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.Paintable_Package_References;

package org.allbinary.graphics.paint.PaintableFactory_Package is

   package Reference_Types is
   subtype Paintable_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access;
   use type Paintable_Access;
   subtype Paintable_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array;
   use type Paintable_Access_Array;
   subtype Paintable_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access;
   use type Paintable_Access_Array_Access;
   subtype Paintable_Access_Array_Access_Array is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array;
   use type Paintable_Access_Array_Access_Array;
   subtype Paintable_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.Paintable_Package_References.Paintable_Access_Array_Access_Array_Access;
   use type Paintable_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaintableFactory_Access is org.allbinary.graphics.paint.PaintableFactory_Package_References.PaintableFactory_Access;
   function "=" (Left, Right : PaintableFactory_Access) return Boolean renames org.allbinary.graphics.paint.PaintableFactory_Package_References."=";
   subtype PaintableFactory_Access_Array is org.allbinary.graphics.paint.PaintableFactory_Package_References.PaintableFactory_Access_Array;
   function "=" (Left, Right : PaintableFactory_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableFactory_Package_References."=";
   subtype PaintableFactory_Access_Array_Access is org.allbinary.graphics.paint.PaintableFactory_Package_References.PaintableFactory_Access_Array_Access;
   function "=" (Left, Right : PaintableFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableFactory_Package_References."=";
   subtype PaintableFactory_Access_Array_Access_Array is org.allbinary.graphics.paint.PaintableFactory_Package_References.PaintableFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.PaintableFactory_Package_References."=";
   subtype PaintableFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.PaintableFactory_Package_References.PaintableFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.PaintableFactory_Package_References."=";

   type PaintableFactory is new Java_Object with null record;

   procedure Initialize (This : in out PaintableFactory'Class);
   function Create return PaintableFactory_Access;
   function getInstance (This : in out PaintableFactory) return Paintable_Access;

end org.allbinary.graphics.paint.PaintableFactory_Package;


