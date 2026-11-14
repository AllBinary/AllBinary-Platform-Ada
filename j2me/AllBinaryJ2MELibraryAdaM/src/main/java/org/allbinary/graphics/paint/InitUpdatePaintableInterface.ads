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
limited with org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package;
package org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References is
   type InitUpdatePaintableInterface_Access is access all org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package.InitUpdatePaintableInterface'Class;
   type InitUpdatePaintableInterface_Access_Array is array (Natural range <>) of InitUpdatePaintableInterface_Access;
   type InitUpdatePaintableInterface_Access_Array_Access is access all InitUpdatePaintableInterface_Access_Array;
   type InitUpdatePaintableInterface_Access_Array_Access_Array is array (Natural range <>) of InitUpdatePaintableInterface_Access_Array_Access;
   type InitUpdatePaintableInterface_Access_Array_Access_Array_Access is access all InitUpdatePaintableInterface_Access_Array_Access_Array;
   type InitUpdatePaintableInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitUpdatePaintableInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : InitUpdatePaintableInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitUpdatePaintableInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitUpdatePaintableInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitUpdatePaintableInterface_Access_Array_Access is (if Value /= null and then Value.all in InitUpdatePaintableInterface_Access_Array_Object'Class then InitUpdatePaintableInterface_Access_Array_Object'Class (Value.all).Value else null);
   type InitUpdatePaintableInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitUpdatePaintableInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitUpdatePaintableInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitUpdatePaintableInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitUpdatePaintableInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitUpdatePaintableInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitUpdatePaintableInterface_Access_Array_Access_Array_Object'Class then InitUpdatePaintableInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References;

with org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.init.InitInterface_Package; use org.allbinary.init.InitInterface_Package;
with org.allbinary.init.UpdateInterface_Package; use org.allbinary.init.UpdateInterface_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package is

   package InitInterface_Package renames Standard.org.allbinary.init.InitInterface_Package;
   package UpdateInterface_Package renames Standard.org.allbinary.init.UpdateInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type InitUpdatePaintableInterface is interface and InitInterface and UpdateInterface and PaintableInterface;
   subtype InitUpdatePaintableInterface_Access is org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References.InitUpdatePaintableInterface_Access;
   function "=" (Left, Right : InitUpdatePaintableInterface_Access) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References."=";
   subtype InitUpdatePaintableInterface_Access_Array is org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References.InitUpdatePaintableInterface_Access_Array;
   function "=" (Left, Right : InitUpdatePaintableInterface_Access_Array) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References."=";
   subtype InitUpdatePaintableInterface_Access_Array_Access is org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References.InitUpdatePaintableInterface_Access_Array_Access;
   function "=" (Left, Right : InitUpdatePaintableInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References."=";
   function Java_Box (Value : InitUpdatePaintableInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References.Java_Box;
   function Java_Unbox_InitUpdatePaintableInterface_Access_Array (Value : access Java_Object'Class) return InitUpdatePaintableInterface_Access_Array_Access renames org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References.Java_Unbox_InitUpdatePaintableInterface_Access_Array;
   subtype InitUpdatePaintableInterface_Access_Array_Access_Array is org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References.InitUpdatePaintableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InitUpdatePaintableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References."=";
   subtype InitUpdatePaintableInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References.InitUpdatePaintableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitUpdatePaintableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References."=";
   function Java_Box (Value : InitUpdatePaintableInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References.Java_Box;
   function Java_Unbox_InitUpdatePaintableInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return InitUpdatePaintableInterface_Access_Array_Access_Array_Access renames org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package_References.Java_Unbox_InitUpdatePaintableInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_InitUpdatePaintableInterface (Value : InitUpdatePaintableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));

end org.allbinary.graphics.paint.InitUpdatePaintableInterface_Package;


