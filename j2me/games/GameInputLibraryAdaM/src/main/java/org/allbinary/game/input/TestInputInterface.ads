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
limited with org.allbinary.game.input.TestInputInterface_Package;
package org.allbinary.game.input.TestInputInterface_Package_References is
   type TestInputInterface_Access is access all org.allbinary.game.input.TestInputInterface_Package.TestInputInterface'Class;
   type TestInputInterface_Access_Array is array (Natural range <>) of TestInputInterface_Access;
   type TestInputInterface_Access_Array_Access is access all TestInputInterface_Access_Array;
   type TestInputInterface_Access_Array_Access_Array is array (Natural range <>) of TestInputInterface_Access_Array_Access;
   type TestInputInterface_Access_Array_Access_Array_Access is access all TestInputInterface_Access_Array_Access_Array;
   type TestInputInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TestInputInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TestInputInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TestInputInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TestInputInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TestInputInterface_Access_Array_Access is (if Value /= null and then Value.all in TestInputInterface_Access_Array_Object'Class then TestInputInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TestInputInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TestInputInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TestInputInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TestInputInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TestInputInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TestInputInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TestInputInterface_Access_Array_Access_Array_Object'Class then TestInputInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.TestInputInterface_Package_References;

with org.allbinary.game.input.TestInputInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;

package org.allbinary.game.input.TestInputInterface_Package is

   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type TestInputInterface is interface and PaintableInterface;
   subtype TestInputInterface_Access is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access;
   function "=" (Left, Right : TestInputInterface_Access) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   subtype TestInputInterface_Access_Array is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array;
   function "=" (Left, Right : TestInputInterface_Access_Array) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   subtype TestInputInterface_Access_Array_Access is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array_Access;
   function "=" (Left, Right : TestInputInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   function Java_Box (Value : TestInputInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.TestInputInterface_Package_References.Java_Box;
   function Java_Unbox_TestInputInterface_Access_Array (Value : access Java_Object'Class) return TestInputInterface_Access_Array_Access renames org.allbinary.game.input.TestInputInterface_Package_References.Java_Unbox_TestInputInterface_Access_Array;
   subtype TestInputInterface_Access_Array_Access_Array is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TestInputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   subtype TestInputInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestInputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   function Java_Box (Value : TestInputInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.TestInputInterface_Package_References.Java_Box;
   function Java_Unbox_TestInputInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TestInputInterface_Access_Array_Access_Array_Access renames org.allbinary.game.input.TestInputInterface_Package_References.Java_Unbox_TestInputInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TestInputInterface (Value : TestInputInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure up (This : in out TestInputInterface) is abstract;
   procedure down (This : in out TestInputInterface) is abstract;
   procedure left (This : in out TestInputInterface) is abstract;
   procedure right (This : in out TestInputInterface) is abstract;
   procedure strafeLeft (This : in out TestInputInterface) is abstract;
   procedure strafeRight (This : in out TestInputInterface) is abstract;

end org.allbinary.game.input.TestInputInterface_Package;


