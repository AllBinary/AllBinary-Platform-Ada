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

limited with org.allbinary.logic.math.vector.Vertex_Package;
package org.allbinary.logic.math.vector.Vertex_Package_References is
   type Vertex_Access is access all org.allbinary.logic.math.vector.Vertex_Package.Vertex'Class;
   type Vertex_Access_Array is array (Natural range <>) of Vertex_Access;
   type Vertex_Access_Array_Access is access all Vertex_Access_Array;
   type Vertex_Access_Array_Access_Array is array (Natural range <>) of Vertex_Access_Array_Access;
   type Vertex_Access_Array_Access_Array_Access is access all Vertex_Access_Array_Access_Array;
end org.allbinary.logic.math.vector.Vertex_Package_References;

with org.allbinary.logic.math.vector.Vertex_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;

package org.allbinary.logic.math.vector.Vertex_Package is

   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;
   package Reference_Types is
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   use type BasicDecimal_Access;
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   use type BasicDecimal_Access_Array;
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access;
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   use type BasicDecimal_Access_Array_Access_Array;
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   use type BasicDecimal_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype Vertex_Access is org.allbinary.logic.math.vector.Vertex_Package_References.Vertex_Access;
   function "=" (Left, Right : Vertex_Access) return Boolean renames org.allbinary.logic.math.vector.Vertex_Package_References."=";
   subtype Vertex_Access_Array is org.allbinary.logic.math.vector.Vertex_Package_References.Vertex_Access_Array;
   function "=" (Left, Right : Vertex_Access_Array) return Boolean renames org.allbinary.logic.math.vector.Vertex_Package_References."=";
   subtype Vertex_Access_Array_Access is org.allbinary.logic.math.vector.Vertex_Package_References.Vertex_Access_Array_Access;
   function "=" (Left, Right : Vertex_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.Vertex_Package_References."=";
   subtype Vertex_Access_Array_Access_Array is org.allbinary.logic.math.vector.Vertex_Package_References.Vertex_Access_Array_Access_Array;
   function "=" (Left, Right : Vertex_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.vector.Vertex_Package_References."=";
   subtype Vertex_Access_Array_Access_Array_Access is org.allbinary.logic.math.vector.Vertex_Package_References.Vertex_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Vertex_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.vector.Vertex_Package_References."=";

   type Vertex is new Java_Object with record
      x : BasicDecimal_Access;
      y : BasicDecimal_Access;
      z : BasicDecimal_Access;
   end record;

   procedure Initialize (This : in out Vertex'Class);
   function Create return Vertex_Access;
   function toString (This : in out Vertex) return Unbounded_String;

end org.allbinary.logic.math.vector.Vertex_Package;


