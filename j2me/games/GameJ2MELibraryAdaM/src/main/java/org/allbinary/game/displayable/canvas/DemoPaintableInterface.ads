-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
package org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References is
   type DemoPaintableInterface_Access is access all org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package.DemoPaintableInterface'Class;
   type DemoPaintableInterface_Access_Array is array (Natural range <>) of DemoPaintableInterface_Access;
   type DemoPaintableInterface_Access_Array_Access is access all DemoPaintableInterface_Access_Array;
   type DemoPaintableInterface_Access_Array_Access_Array is array (Natural range <>) of DemoPaintableInterface_Access_Array_Access;
   type DemoPaintableInterface_Access_Array_Access_Array_Access is access all DemoPaintableInterface_Access_Array_Access_Array;
   type DemoPaintableInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoPaintableInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoPaintableInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoPaintableInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoPaintableInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoPaintableInterface_Access_Array_Access is (if Value /= null and then Value.all in DemoPaintableInterface_Access_Array_Object'Class then DemoPaintableInterface_Access_Array_Object'Class (Value.all).Value else null);
   type DemoPaintableInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DemoPaintableInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DemoPaintableInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DemoPaintableInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DemoPaintableInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DemoPaintableInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DemoPaintableInterface_Access_Array_Access_Array_Object'Class then DemoPaintableInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References;

with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type DemoPaintableInterface is interface;
   subtype DemoPaintableInterface_Access is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access;
   function "=" (Left, Right : DemoPaintableInterface_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   subtype DemoPaintableInterface_Access_Array is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access_Array;
   function "=" (Left, Right : DemoPaintableInterface_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   subtype DemoPaintableInterface_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access_Array_Access;
   function "=" (Left, Right : DemoPaintableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   function Java_Box (Value : DemoPaintableInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.Java_Box;
   function Java_Unbox_DemoPaintableInterface_Access_Array (Value : access Java_Object'Class) return DemoPaintableInterface_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.Java_Unbox_DemoPaintableInterface_Access_Array;
   subtype DemoPaintableInterface_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DemoPaintableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   subtype DemoPaintableInterface_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.DemoPaintableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DemoPaintableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References."=";
   function Java_Box (Value : DemoPaintableInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.Java_Box;
   function Java_Unbox_DemoPaintableInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return DemoPaintableInterface_Access_Array_Access_Array_Access renames org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package_References.Java_Unbox_DemoPaintableInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_DemoPaintableInterface (Value : DemoPaintableInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure showGamePaintable (This : in out DemoPaintableInterface) is abstract;

end org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;


