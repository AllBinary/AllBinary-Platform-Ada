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
limited with org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package;
package org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References is
   type FormPlayerGameInputProcessor_Access is access all org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package.FormPlayerGameInputProcessor'Class;
   type FormPlayerGameInputProcessor_Access_Array is array (Natural range <>) of FormPlayerGameInputProcessor_Access;
   type FormPlayerGameInputProcessor_Access_Array_Access is access all FormPlayerGameInputProcessor_Access_Array;
   type FormPlayerGameInputProcessor_Access_Array_Access_Array is array (Natural range <>) of FormPlayerGameInputProcessor_Access_Array_Access;
   type FormPlayerGameInputProcessor_Access_Array_Access_Array_Access is access all FormPlayerGameInputProcessor_Access_Array_Access_Array;
   type FormPlayerGameInputProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FormPlayerGameInputProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : FormPlayerGameInputProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FormPlayerGameInputProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FormPlayerGameInputProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FormPlayerGameInputProcessor_Access_Array_Access is (if Value /= null and then Value.all in FormPlayerGameInputProcessor_Access_Array_Object'Class then FormPlayerGameInputProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type FormPlayerGameInputProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : FormPlayerGameInputProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : FormPlayerGameInputProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new FormPlayerGameInputProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_FormPlayerGameInputProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return FormPlayerGameInputProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in FormPlayerGameInputProcessor_Access_Array_Access_Array_Object'Class then FormPlayerGameInputProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References;

with org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
limited with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References;

package org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package is

   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package PlayerGameInputCompositeInterface_Package renames Standard.org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
   package Reference_Types is
   subtype PlayerGameInputCompositeInterface_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access;
   use type PlayerGameInputCompositeInterface_Access;
   subtype PlayerGameInputCompositeInterface_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array;
   use type PlayerGameInputCompositeInterface_Access_Array;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access;
   use type PlayerGameInputCompositeInterface_Access_Array_Access;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   use type PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   use type PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype FormPlayerGameInputProcessor_Access is org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References.FormPlayerGameInputProcessor_Access;
   function "=" (Left, Right : FormPlayerGameInputProcessor_Access) return Boolean renames org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References."=";
   subtype FormPlayerGameInputProcessor_Access_Array is org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References.FormPlayerGameInputProcessor_Access_Array;
   function "=" (Left, Right : FormPlayerGameInputProcessor_Access_Array) return Boolean renames org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References."=";
   subtype FormPlayerGameInputProcessor_Access_Array_Access is org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References.FormPlayerGameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : FormPlayerGameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References."=";
   function Java_Box (Value : FormPlayerGameInputProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_FormPlayerGameInputProcessor_Access_Array (Value : access Java_Object'Class) return FormPlayerGameInputProcessor_Access_Array_Access renames org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References.Java_Unbox_FormPlayerGameInputProcessor_Access_Array;
   subtype FormPlayerGameInputProcessor_Access_Array_Access_Array is org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References.FormPlayerGameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : FormPlayerGameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References."=";
   subtype FormPlayerGameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References.FormPlayerGameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FormPlayerGameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References."=";
   function Java_Box (Value : FormPlayerGameInputProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References.Java_Box;
   function Java_Unbox_FormPlayerGameInputProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return FormPlayerGameInputProcessor_Access_Array_Access_Array_Access renames org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package_References.Java_Unbox_FormPlayerGameInputProcessor_Access_Array_Access_Array;

   type FormPlayerGameInputProcessor is new Processor with record
      playerGameInputCompositeInterface : PlayerGameInputCompositeInterface_Access;
   end record;

   procedure Initialize (This : in out FormPlayerGameInputProcessor'Class; playerGameInputCompositeInterface_Param : access PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class);
   function Create (playerGameInputCompositeInterface_Param : access PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class) return FormPlayerGameInputProcessor_Access;
   procedure process (This : in out FormPlayerGameInputProcessor);

end org.allbinary.graphics.form.FormPlayerGameInputProcessor_Package;


