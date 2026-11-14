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
limited with org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package;
package org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References is
   type LazyProgressCanvas_Access is access all org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package.LazyProgressCanvas'Class;
   type LazyProgressCanvas_Access_Array is array (Natural range <>) of LazyProgressCanvas_Access;
   type LazyProgressCanvas_Access_Array_Access is access all LazyProgressCanvas_Access_Array;
   type LazyProgressCanvas_Access_Array_Access_Array is array (Natural range <>) of LazyProgressCanvas_Access_Array_Access;
   type LazyProgressCanvas_Access_Array_Access_Array_Access is access all LazyProgressCanvas_Access_Array_Access_Array;
   type LazyProgressCanvas_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LazyProgressCanvas_Access_Array_Access;
   end record;
   function Java_Box (Value : LazyProgressCanvas_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LazyProgressCanvas_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LazyProgressCanvas_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LazyProgressCanvas_Access_Array_Access is (if Value /= null and then Value.all in LazyProgressCanvas_Access_Array_Object'Class then LazyProgressCanvas_Access_Array_Object'Class (Value.all).Value else null);
   type LazyProgressCanvas_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LazyProgressCanvas_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LazyProgressCanvas_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LazyProgressCanvas_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LazyProgressCanvas_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LazyProgressCanvas_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LazyProgressCanvas_Access_Array_Access_Array_Object'Class then LazyProgressCanvas_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References;

with org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

package org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LazyProgressCanvas_Access is org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References.LazyProgressCanvas_Access;
   function "=" (Left, Right : LazyProgressCanvas_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References."=";
   subtype LazyProgressCanvas_Access_Array is org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References.LazyProgressCanvas_Access_Array;
   function "=" (Left, Right : LazyProgressCanvas_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References."=";
   subtype LazyProgressCanvas_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References.LazyProgressCanvas_Access_Array_Access;
   function "=" (Left, Right : LazyProgressCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References."=";
   function Java_Box (Value : LazyProgressCanvas_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References.Java_Box;
   function Java_Unbox_LazyProgressCanvas_Access_Array (Value : access Java_Object'Class) return LazyProgressCanvas_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References.Java_Unbox_LazyProgressCanvas_Access_Array;
   subtype LazyProgressCanvas_Access_Array_Access_Array is org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References.LazyProgressCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : LazyProgressCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References."=";
   subtype LazyProgressCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References.LazyProgressCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LazyProgressCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References."=";
   function Java_Box (Value : LazyProgressCanvas_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References.Java_Box;
   function Java_Unbox_LazyProgressCanvas_Access_Array_Access_Array (Value : access Java_Object'Class) return LazyProgressCanvas_Access_Array_Access_Array_Access renames org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package_References.Java_Unbox_LazyProgressCanvas_Access_Array_Access_Array;

   type LazyProgressCanvas is new ProgressCanvas with null record;

   procedure Initialize (This : in out LazyProgressCanvas'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return LazyProgressCanvas_Access;
   procedure start (This : in out LazyProgressCanvas);
   procedure end_Id (This : in out LazyProgressCanvas);
   procedure inGame (This : in out LazyProgressCanvas);
   procedure endFromInitialLazyLoadingComplete (This : in out LazyProgressCanvas);
   procedure endIfPaintedSinceStart (This : in out LazyProgressCanvas);

end org.allbinary.graphics.canvas.transition.progress.LazyProgressCanvas_Package;


